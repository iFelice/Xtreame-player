import { describe, expect, it } from 'vitest';
import { RemoteImageQueue } from './RemoteImage';

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

  it('does not start a queued image after it is cancelled', () => {
    const queue = new RemoteImageQueue(1);
    let finishFirst: ((success: boolean) => void) | undefined;
    let cancelledStarted = false;
    queue.enqueue('https://images.example/first.jpg', (complete) => {
      finishFirst = complete;
    });
    const cancel = queue.enqueue('https://images.example/cancelled.jpg', () => {
      cancelledStarted = true;
    });

    cancel();
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
});
