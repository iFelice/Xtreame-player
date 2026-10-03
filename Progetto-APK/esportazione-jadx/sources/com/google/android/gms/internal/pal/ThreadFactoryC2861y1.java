package com.google.android.gms.internal.pal;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC2861y1 implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ThreadFactory f24071G = Executors.defaultThreadFactory();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicInteger f24072H = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f24071G.newThread(runnable);
        threadNewThread.setName("gads-" + this.f24072H.getAndIncrement());
        return threadNewThread;
    }
}
