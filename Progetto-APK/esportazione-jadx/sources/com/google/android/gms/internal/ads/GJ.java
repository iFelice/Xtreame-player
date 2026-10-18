package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class GJ implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MJ f13496a;

    public static void a(GJ gj, MJ mj) {
        if (gj.f13496a != null) {
            throw new IllegalStateException();
        }
        gj.f13496a = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        MJ mj = this.f13496a;
        if (mj != null) {
            return mj.zzb();
        }
        throw new IllegalStateException();
    }
}
