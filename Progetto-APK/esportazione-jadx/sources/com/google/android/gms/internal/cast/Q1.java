package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class Q1 extends F1 implements Runnable {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Runnable f22525N;

    public Q1(Runnable runnable) {
        runnable.getClass();
        this.f22525N = runnable;
    }

    @Override // com.google.android.gms.internal.cast.F1
    public final String N() {
        return p000a.r.g("task=[", this.f22525N.toString(), "]");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f22525N.run();
        } catch (Error | RuntimeException e8) {
            if (F1.f22458L.w(this, null, new C2519y1(e8))) {
                F1.Q(this);
            }
            throw e8;
        }
    }
}
