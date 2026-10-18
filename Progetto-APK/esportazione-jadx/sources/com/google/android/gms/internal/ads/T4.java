package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class T4 implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16587G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicInteger f16588H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f16589I;

    public T4() {
        this.f16587G = 0;
        this.f16589I = Executors.defaultThreadFactory();
        this.f16588H = new AtomicInteger(1);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f16588H;
        int i8 = this.f16587G;
        Object obj = this.f16589I;
        switch (i8) {
            case 0:
                Thread threadNewThread = ((ThreadFactory) obj).newThread(runnable);
                threadNewThread.setName("gads-" + atomicInteger.getAndIncrement());
                return threadNewThread;
            default:
                return new Thread(runnable, "AdWorker(" + ((String) obj) + ") #" + atomicInteger.getAndIncrement());
        }
    }

    public T4(String str) {
        this.f16587G = 1;
        this.f16589I = str;
        this.f16588H = new AtomicInteger(1);
    }
}
