package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0725Fa extends p039f.H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f13356c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0770Ia f13357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13358e;

    public C0725Fa(C0770Ia c0770Ia) {
        this.f13357d = c0770Ia;
    }

    public final void s() {
        p113o3.I.k("release: Trying to acquire lock");
        synchronized (this.f13356c) {
            try {
                p113o3.I.k("release: Lock acquired");
                if (this.f13358e) {
                    p113o3.I.k("release: Lock already released");
                    return;
                }
                this.f13358e = true;
                r(new C0650Aa(1, 0), new C0650Aa(11));
                r(new C0740Ga(this, 1), new C0740Ga(this, 2));
                p113o3.I.k("release: Lock released");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
