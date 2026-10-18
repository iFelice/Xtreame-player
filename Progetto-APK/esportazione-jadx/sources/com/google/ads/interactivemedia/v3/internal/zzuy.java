package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzuy extends zzue implements ScheduledFuture, zzuu {
    private final ScheduledFuture zza;

    public zzuy(zzuu zzuuVar, ScheduledFuture scheduledFuture) {
        super(zzuuVar);
        this.zza = scheduledFuture;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzud, java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        boolean zCancel = zzb().cancel(z7);
        if (zCancel) {
            this.zza.cancel(z7);
        }
        return zCancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.zza.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.zza.getDelay(timeUnit);
    }
}
