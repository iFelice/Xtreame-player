package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableFutureC2023tC extends ZB implements RunnableFuture {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile C1971sC f21049N;

    public RunnableFutureC2023tC(Callable callable) {
        this.f21049N = new C1971sC(this, callable);
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        C1971sC c1971sC = this.f21049N;
        return c1971sC != null ? p000a.r.g("task=[", c1971sC.toString(), "]") : super.d();
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final void e() {
        C1971sC c1971sC;
        if (m() && (c1971sC = this.f21049N) != null) {
            c1971sC.g();
        }
        this.f21049N = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        C1971sC c1971sC = this.f21049N;
        if (c1971sC != null) {
            c1971sC.run();
        }
        this.f21049N = null;
    }
}
