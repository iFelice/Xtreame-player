package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1712nC extends CB implements Runnable {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Runnable f20078N;

    public RunnableC1712nC(Runnable runnable) {
        runnable.getClass();
        this.f20078N = runnable;
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        return p000a.r.g("task=[", this.f20078N.toString(), "]");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f20078N.run();
        } catch (Throwable th) {
            g(th);
            throw th;
        }
    }
}
