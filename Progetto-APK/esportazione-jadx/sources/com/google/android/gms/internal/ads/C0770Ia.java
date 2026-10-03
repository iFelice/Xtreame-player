package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ia, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0770Ia extends p039f.H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f13881c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f13882d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13883e = 0;

    public final C0725Fa s() {
        C0725Fa c0725Fa = new C0725Fa(this);
        p113o3.I.k("createNewReference: Trying to acquire lock");
        synchronized (this.f13881c) {
            p113o3.I.k("createNewReference: Lock acquired");
            r(new C0740Ga(c0725Fa, 0 == true ? 1 : 0, 0 == true ? 1 : 0), new C0740Ga(c0725Fa, 3, 0 == true ? 1 : 0));
            com.bumptech.glide.c.k(this.f13883e >= 0);
            this.f13883e++;
        }
        p113o3.I.k("createNewReference: Lock released");
        return c0725Fa;
    }

    public final void t() {
        p113o3.I.k("markAsDestroyable: Trying to acquire lock");
        synchronized (this.f13881c) {
            p113o3.I.k("markAsDestroyable: Lock acquired");
            com.bumptech.glide.c.k(this.f13883e >= 0);
            p113o3.I.k("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f13882d = true;
            u();
        }
        p113o3.I.k("markAsDestroyable: Lock released");
    }

    public final void u() {
        p113o3.I.k("maybeDestroy: Trying to acquire lock");
        synchronized (this.f13881c) {
            try {
                p113o3.I.k("maybeDestroy: Lock acquired");
                com.bumptech.glide.c.k(this.f13883e >= 0);
                if (this.f13882d && this.f13883e == 0) {
                    p113o3.I.k("No reference is left (including root). Cleaning up engine.");
                    r(new K4(this, 19), new C0650Aa(11));
                } else {
                    p113o3.I.k("There are still references to the engine. Not destroying.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p113o3.I.k("maybeDestroy: Lock released");
    }

    public final void v() {
        p113o3.I.k("releaseOneReference: Trying to acquire lock");
        synchronized (this.f13881c) {
            p113o3.I.k("releaseOneReference: Lock acquired");
            com.bumptech.glide.c.k(this.f13883e > 0);
            p113o3.I.k("Releasing 1 reference for JS Engine");
            this.f13883e--;
            u();
        }
        p113o3.I.k("releaseOneReference: Lock released");
    }
}
