package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class R1 extends N1 implements ScheduledExecutorService {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ScheduledExecutorService f22526H;

    public R1(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f22526H = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j8, TimeUnit timeUnit) {
        T1 t7 = new T1(Executors.callable(runnable, null));
        return new O1(t7, this.f22526H.schedule(t7, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j8, long j9, TimeUnit timeUnit) {
        Q1 q7 = new Q1(runnable);
        return new O1(q7, this.f22526H.scheduleAtFixedRate(q7, j8, j9, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j8, long j9, TimeUnit timeUnit) {
        Q1 q7 = new Q1(runnable);
        return new O1(q7, this.f22526H.scheduleWithFixedDelay(q7, j8, j9, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j8, TimeUnit timeUnit) {
        T1 t7 = new T1(callable);
        return new O1(t7, this.f22526H.schedule(t7, j8, timeUnit));
    }
}
