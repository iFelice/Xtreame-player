import React, { useEffect, useRef, useState } from 'react';

const MAX_ACTIVE_IMAGES = 4;

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

  constructor(private readonly maximum = MAX_ACTIVE_IMAGES) {}

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

  private pump(): void {
    while (this.active < this.maximum && this.pending.length > 0) {
      const entry = this.pending.shift();
      if (!entry || entry.cancelled) continue;
      if (this.failed.has(entry.url)) {
        entry.onSkipped();
        continue;
      }
      this.active += 1;
      let completed = false;
      entry.start((success) => {
        if (completed) return;
        completed = true;
        this.active -= 1;
        if (!success) this.failed.add(entry.url);
        this.pump();
      });
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
  const [started, setStarted] = useState(!remote);
  const [failed, setFailed] = useState(() => remote && remoteImageQueue.hasFailed(src));
  const completeRef = useRef<Complete | null>(null);

  useEffect(() => {
    setStarted(!remote);
    const alreadyFailed = remote && remoteImageQueue.hasFailed(src);
    setFailed(alreadyFailed);
    if (!remote || alreadyFailed) {
      if (alreadyFailed) onRemoteError?.();
      return;
    }

    const cancel = remoteImageQueue.enqueue(
      src,
      (complete) => {
        completeRef.current = complete;
        setStarted(true);
      },
      () => {
        setFailed(true);
        onRemoteError?.();
      },
    );
    return () => {
      cancel();
      completeRef.current?.(true);
      completeRef.current = null;
    };
  }, [src, remote, onRemoteError]);

  if (failed) return <>{fallback}</>;
  if (!started) return null;

  return (
    <img
      {...props}
      src={src}
      loading="lazy"
      decoding="async"
      onLoad={(event) => {
        completeRef.current?.(true);
        completeRef.current = null;
        onLoad?.(event);
      }}
      onError={(event) => {
        completeRef.current?.(false);
        completeRef.current = null;
        setFailed(true);
        onRemoteError?.();
        onError?.(event);
      }}
    />
  );
};
