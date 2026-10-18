package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC1608lC implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Executor f19723G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ GB f19724H;

    public ExecutorC1608lC(Executor executor, ZB zb) {
        this.f19723G = executor;
        this.f19724H = zb;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f19723G.execute(runnable);
        } catch (RejectedExecutionException e8) {
            this.f19724H.g(e8);
        }
    }
}
