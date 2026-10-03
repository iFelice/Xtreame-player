package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ScheduledExecutorServiceC1764oC extends C1936re implements ScheduledExecutorService {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ScheduledExecutorService f20250I;

    public ScheduledExecutorServiceC1764oC(ScheduledExecutorService scheduledExecutorService) {
        super((ExecutorService) scheduledExecutorService);
        this.f20250I = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j8, TimeUnit timeUnit) {
        RunnableFutureC2023tC runnableFutureC2023tC = new RunnableFutureC2023tC(Executors.callable(runnable, null));
        return new ScheduledFutureC1660mC(runnableFutureC2023tC, this.f20250I.schedule(runnableFutureC2023tC, j8, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j8, long j9, TimeUnit timeUnit) {
        RunnableC1712nC runnableC1712nC = new RunnableC1712nC(runnable);
        return new ScheduledFutureC1660mC(runnableC1712nC, this.f20250I.scheduleAtFixedRate(runnableC1712nC, j8, j9, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j8, long j9, TimeUnit timeUnit) {
        RunnableC1712nC runnableC1712nC = new RunnableC1712nC(runnable);
        return new ScheduledFutureC1660mC(runnableC1712nC, this.f20250I.scheduleWithFixedDelay(runnableC1712nC, j8, j9, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j8, TimeUnit timeUnit) {
        RunnableFutureC2023tC runnableFutureC2023tC = new RunnableFutureC2023tC(callable);
        return new ScheduledFutureC1660mC(runnableFutureC2023tC, this.f20250I.schedule(runnableFutureC2023tC, j8, timeUnit));
    }
}
