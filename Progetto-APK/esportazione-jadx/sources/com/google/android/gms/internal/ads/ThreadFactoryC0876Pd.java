package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Pd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC0876Pd implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15392G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicInteger f15393H = new AtomicInteger(1);

    public ThreadFactoryC0876Pd() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f15393H;
        switch (this.f15392G) {
            case 0:
                return new Thread(runnable, p000a.r.f("AdWorker(SCION_TASK_EXECUTOR) #", atomicInteger.getAndIncrement()));
            default:
                return new Thread(runnable, p000a.r.f("AdWorker(NG) #", atomicInteger.getAndIncrement()));
        }
    }

    public ThreadFactoryC0876Pd(int i8) {
    }
}
