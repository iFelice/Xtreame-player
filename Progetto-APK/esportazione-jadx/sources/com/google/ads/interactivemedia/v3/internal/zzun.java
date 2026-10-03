package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.protobuf.U2;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes.dex */
final class zzun implements zzuu {
    static final zzuu zza = new zzun(null);
    private static final zzut zzb = new zzut(zzun.class);
    private final Object zzc;

    public zzun(Object obj) {
        this.zzc = obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.zzc;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return O.B(super.toString(), "[status=SUCCESS, result=[", String.valueOf(this.zzc), "]]");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzuu
    public final void zzo(Runnable runnable, Executor executor) {
        zzqh.zzc(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e8) {
            zzb.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", U2.m("RuntimeException while executing runnable ", runnable.toString(), " with executor ", String.valueOf(executor)), (Throwable) e8);
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.zzc;
    }
}
