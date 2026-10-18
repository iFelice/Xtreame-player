package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ii, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1474ii implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f19314G;

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = (Runnable) this.f19314G.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }
}
