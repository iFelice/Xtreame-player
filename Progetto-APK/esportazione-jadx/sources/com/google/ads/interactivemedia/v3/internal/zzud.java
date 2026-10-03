package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzud extends zzqv implements Future {
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z7) {
        return zzb().cancel(z7);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return zzb().get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return zzb().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return zzb().isDone();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqv
    public /* bridge */ /* synthetic */ Object zza() {
        throw null;
    }

    public abstract Future zzb();

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        return zzb().get(j8, timeUnit);
    }
}
