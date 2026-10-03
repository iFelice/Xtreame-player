package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzva extends zzux implements ScheduledExecutorService, zzuv {
    final ScheduledExecutorService zza;

    public zzva(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j8, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzvh zzvhVarZzs = zzvh.zzs(runnable, null);
        return new zzuy(zzvhVarZzs, scheduledExecutorService.schedule(zzvhVarZzs, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j8, long j9, TimeUnit timeUnit) {
        zzuz zzuzVar = new zzuz(runnable);
        return new zzuy(zzuzVar, this.zza.scheduleAtFixedRate(zzuzVar, j8, j9, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j8, long j9, TimeUnit timeUnit) {
        zzuz zzuzVar = new zzuz(runnable);
        return new zzuy(zzuzVar, this.zza.scheduleWithFixedDelay(zzuzVar, j8, j9, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j8, TimeUnit timeUnit) {
        zzvh zzvhVar = new zzvh(callable);
        return new zzuy(zzvhVar, this.zza.schedule(zzvhVar, j8, timeUnit));
    }
}
