package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class HJ implements MJ, EJ {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f13739c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile MJ f13740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f13741b = f13739c;

    public HJ(MJ mj) {
        this.f13740a = mj;
    }

    public static EJ a(MJ mj) {
        return mj instanceof EJ ? (EJ) mj : new HJ(mj);
    }

    public static MJ b(IJ ij) {
        return ij instanceof HJ ? ij : new HJ(ij);
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Object objZzb = this.f13741b;
        Object obj = f13739c;
        if (objZzb == obj) {
            synchronized (this) {
                try {
                    objZzb = this.f13741b;
                    if (objZzb == obj) {
                        objZzb = this.f13740a.zzb();
                        Object obj2 = this.f13741b;
                        if (obj2 != obj && obj2 != objZzb) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + objZzb + ". This is likely due to a circular dependency.");
                        }
                        this.f13741b = objZzb;
                        this.f13740a = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return objZzb;
    }
}
