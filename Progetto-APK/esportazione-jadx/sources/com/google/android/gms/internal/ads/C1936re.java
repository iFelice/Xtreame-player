package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.re, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C1936re extends IB {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20746G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f20747H;

    public C1936re(Executor executor) {
        this.f20747H = executor;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j8, TimeUnit timeUnit) {
        switch (this.f20746G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return ((ExecutorService) this.f20747H).awaitTermination(j8, timeUnit);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i8 = this.f20746G;
        Executor executor = this.f20747H;
        switch (i8) {
            case 0:
                executor.execute(runnable);
                break;
            default:
                ((ExecutorService) executor).execute(runnable);
                break;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        switch (this.f20746G) {
            case 0:
                return false;
            default:
                return ((ExecutorService) this.f20747H).isShutdown();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        switch (this.f20746G) {
            case 0:
                return false;
            default:
                return ((ExecutorService) this.f20747H).isTerminated();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        switch (this.f20746G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                ((ExecutorService) this.f20747H).shutdown();
                return;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        switch (this.f20746G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return ((ExecutorService) this.f20747H).shutdownNow();
        }
    }

    public final String toString() {
        switch (this.f20746G) {
            case 1:
                return A0.O.B(super.toString(), "[", String.valueOf((ExecutorService) this.f20747H), "]");
            default:
                return super.toString();
        }
    }

    public C1936re(ExecutorService executorService) {
        executorService.getClass();
        this.f20747H = executorService;
    }
}
