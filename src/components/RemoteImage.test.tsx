import React from 'react';
import { act, create } from 'react-test-renderer';
import { afterEach, describe, expect, it, vi } from 'vitest';
import { RemoteImage, RemoteImageQueue } from './RemoteImage';

afterEach(() => {
  vi.useRealTimers();
  vi.unstubAllGlobals();
  vi.restoreAllMocks();
  delete (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT;
});

describe('remote image queue', () => {
  it('never starts more than four image loads concurrently', () => {
    const queue = new RemoteImageQueue(4);
    const completions: Array<(success: boolean) => void> = [];
    let active = 0;
    let maximumActive = 0;

    for (let index = 0; index < 10; index += 1) {
      queue.enqueue(`https://images.example/${index}.jpg`, (complete) => {
        active += 1;
        maximumActive = Math.max(maximumActive, active);
        completions.push((success) => {
          active -= 1;
          complete(success);
        });
      });
    }
    while (completions.length > 0) completions.shift()?.(true);

    expect(maximumActive).toBe(4);
    expect(active).toBe(0);
  });

  it('does not start an element that leaves the loading zone before receiving a slot', () => {
    const queue = new RemoteImageQueue(1);
    let finishFirst: ((success: boolean) => void) | undefined;
    let cancelledStarted = false;
    queue.enqueue('https://images.example/first.jpg', (complete) => {
      finishFirst = complete;
    });
    const leaveLoadingZone = queue.enqueue('https://images.example/cancelled.jpg', () => {
      cancelledStarted = true;
    });

    leaveLoadingZone();
    finishFirst?.(true);

    expect(cancelledStarted).toBe(false);
  });

  it('does not request a failed URL a second time', () => {
    const queue = new RemoteImageQueue(1);
    let requests = 0;
    let skipped = 0;
    queue.enqueue('https://images.example/broken.jpg', (complete) => {
      requests += 1;
      complete(false);
    });

    queue.enqueue(
      'https://images.example/broken.jpg',
      () => { requests += 1; },
      () => { skipped += 1; },
    );

    expect(requests).toBe(1);
    expect(skipped).toBe(1);
  });

  it('releases a stalled slot after ten seconds and starts the next image', () => {
    vi.useFakeTimers();
    const queue = new RemoteImageQueue(1, 10_000);
    let nextStarted = false;
    queue.enqueue('https://images.example/stalled.jpg', () => {});
    queue.enqueue('https://images.example/next.jpg', () => {
      nextStarted = true;
    });

    vi.advanceTimersByTime(9_999);
    expect(nextStarted).toBe(false);
    vi.advanceTimersByTime(1);
    expect(nextStarted).toBe(true);
  });

  it('does not restart a request when a render supplies a new onRemoteError function', async () => {
    (globalThis as { IS_REACT_ACT_ENVIRONMENT?: boolean }).IS_REACT_ACT_ENVIRONMENT = true;
    vi.spyOn(console, 'error').mockImplementation(() => {});
    let intersectionCallback: IntersectionObserverCallback | undefined;
    let observerCount = 0;
    class TestIntersectionObserver {
      readonly root = null;
      readonly rootMargin = '300px';
      readonly thresholds = [0];
      constructor(callback: IntersectionObserverCallback) {
        intersectionCallback = callback;
        observerCount += 1;
      }
      disconnect() {}
      observe() {}
      takeRecords(): IntersectionObserverEntry[] { return []; }
      unobserve() {}
    }
    vi.stubGlobal('IntersectionObserver', TestIntersectionObserver);

    let renderer: ReturnType<typeof create>;
    await act(async () => {
      renderer = create(
        <RemoteImage
          src="https://images.example/rerender.jpg"
          alt="test"
          onRemoteError={() => {}}
        />,
        { createNodeMock: () => ({}) },
      );
    });
    await act(async () => {
      intersectionCallback?.([{ isIntersecting: true } as IntersectionObserverEntry], {} as IntersectionObserver);
    });
    await act(async () => {
      renderer.update(
        <RemoteImage
          src="https://images.example/rerender.jpg"
          alt="test"
          onRemoteError={() => {}}
        />,
      );
    });

    expect(observerCount).toBe(1);
    await act(async () => {
      renderer.unmount();
    });
  });
});
