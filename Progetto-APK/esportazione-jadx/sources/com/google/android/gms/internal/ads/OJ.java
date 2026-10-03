package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class OJ implements MJ {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f15151c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile MJ f15152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f15153b;

    public static MJ a(IJ ij) {
        if ((ij instanceof OJ) || (ij instanceof HJ)) {
            return ij;
        }
        OJ oj = new OJ();
        oj.f15153b = f15151c;
        oj.f15152a = ij;
        return oj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Object obj = this.f15153b;
        if (obj != f15151c) {
            return obj;
        }
        MJ mj = this.f15152a;
        if (mj == null) {
            return this.f15153b;
        }
        Object objZzb = mj.zzb();
        this.f15153b = objZzb;
        this.f15152a = null;
        return objZzb;
    }
}
