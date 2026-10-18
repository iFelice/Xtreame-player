package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Zp implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f17802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f17803b;

    public Zp(MJ mj, Vp vp) {
        this.f17802a = mj;
        this.f17803b = vp;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Up up = (Up) this.f17802a.zzb();
        Vp vp = (Vp) this.f17803b;
        return new Yp(up, new F5.g(((Sp) vp.f17118a).zzb(), ((C1472ig) vp.f17119b).zzb()));
    }
}
