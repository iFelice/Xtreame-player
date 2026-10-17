import React, { useEffect, useRef, useState } from 'react';

const MAX_ACTIVE_IMAGES = 4;
const SLOT_TIMEOUT_MS = 10_000;

type Complete = (success: boolean) => void;
type Start = (complete: Complete) => void;

interface QueueEntry {
  cancelled: boolean;
  onSkipped: () => void;
  start: Start;
  url: string;
}

export class RemoteImageQueue {
  private active = 0;
  private readonly failed = new Set<string>();
  private readonly pending: QueueEntry[] = [];

  constructor(
    private readonly maximum = MAX_ACTIVE_IMAGES,
    private readonly slotTimeoutMs = SLOT_TIMEOUT_MS,
  ) {}

  enqueue(url: string, start: Start, onSkipped: () => void = () => {}): () => void {
    if (this.failed.has(url)) {
      onSkipped();
      return () => {};
    }
    const entry = { cancelled: false, onSkipped, start, url };
    this.pending.push(entry);
    this.pump();
    return () => {
      entry.cancelled = true;
      this.pump();
    };
  }

  hasFailed(url: string): boolean {
    return this.failed.has(url);
  }

  markFailed(url: string): void {
    this.failed.add(url);
    this.pump();
  }

  private pump(): void {
    while (this.active < this.maximum && this.pending.length > 0) {
      const entry = this.pending.pop();
      if (!entry || entry.cancelled) continue;
      if (this.failed.has(entry.url)) {
        entry.onSkipped();
        continue;
      }
      this.active += 1;
      let completed = false;
      let timeout: ReturnType<typeof setTimeout>;
      const complete = (success: boolean) => {
        if (completed) return;
        completed = true;
        clearTimeout(timeout);
        this.active -= 1;
        if (!success) this.failed.add(entry.url);
        this.pump();
      };
      timeout = setTimeout(() => complete(true), this.slotTimeoutMs);
      entry.start(complete);
    }
  }
}

export const remoteImageQueue = new RemoteImageQueue();

type RemoteImageProps = Omit<React.ImgHTMLAttributes<HTMLImageElement>, 'src'> & {
  src: string;
  fallback?: React.ReactNode;
  onRemoteError?: () => void;
};

function isRemoteUrl(url: string): boolean {
  return /^https?:\/\//i.test(url);
}

export const RemoteImage: React.FC<RemoteImageProps> = ({
  src,
  fallback = null,
  onLoad,
  onError,
  onRemoteError,
  ...props
}) => {
  const remote = isRemoteUrl(src);
  const [startedSrc, setStartedSrc] = useState<string | null>(remote ? null : src);
  const [failedSrc, setFailedSrc] = useState<string | null>(() =>
    remote && remoteImageQueue.hasFailed(src) ? src : null,
  );
  const imageRef = useRef<HTMLImageElement | null>(null);
  const completeRef = useRef<Complete | null>(null);
  const onLoadRef = useRef(onLoad);
  const onErrorRef = useRef(onError);
  const onRemoteErrorRef = useRef(onRemoteError);
  onLoadRef.current = onLoad;
  onErrorRef.current = onError;
  onRemoteErrorRef.current = onRemoteError;

  useEffect(() => {
    if (!isRemoteUrl(src)) {
      setStartedSrc(src);
      setFailedSrc(null);
      return;
    }
    if (remoteImageQueue.hasFailed(src)) {
      setFailedSrc(src);
      onRemoteErrorRef.current?.();
      return;
    }

    setStartedSrc(null);
    setFailedSrc(null);
    let queued = false;
    let started = false;
    let cancelQueued = () => {};

    const enterLoadingZone = () => {
      if (queued || started) return;
      queued = true;
      cancelQueued = remoteImageQueue.enqueue(
        src,
        (complete) => {
          queued = false;
          started = true;
          completeRef.current = complete;
          setStartedSrc(src);
        },
        () => {
          queued = false;
          setFailedSrc(src);
          onRemoteErrorRef.current?.();
        },
      );
    };

    const leaveLoadingZone = () => {
      if (!queued || started) return;
      cancelQueued();
      queued = false;
    };

    const element = imageRef.current;
    const observer = typeof IntersectionObserver === 'undefined'
      ? null
      : new IntersectionObserver(
        (entries) => {
          if (entries.some((entry) => entry.isIntersecting)) enterLoadingZone();
          else leaveLoadingZone();
        },
        { rootMargin: '300px' },
      );

    if (observer && element) observer.observe(element);
    else enterLoadingZone();

    return () => {
      observer?.disconnect();
      cancelQueued();
      completeRef.current?.(true);
      completeRef.current = null;
    };
  }, [src]);

  if (failedSrc === src) return <>{fallback}</>;

  return (
    <img
      {...props}
      ref={imageRef}
      src={!remote || startedSrc === src ? src : undefined}
      loading={remote ? undefined : 'lazy'}
      decoding="async"
      onLoad={(event) => {
        completeRef.current?.(true);
        completeRef.current = null;
        onLoadRef.current?.(event);
      }}
      onError={(event) => {
        remoteImageQueue.markFailed(src);
        completeRef.current?.(false);
        completeRef.current = null;
        setFailedSrc(src);
        onRemoteErrorRef.current?.();
        onErrorRef.current?.(event);
      }}
    />
  );
};
