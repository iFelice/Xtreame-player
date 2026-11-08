package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Yt implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f17666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f17667b;

    public Yt(C1523jg c1523jg, MJ mj) {
        this.f17666a = c1523jg;
        this.f17667b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new Xt(c1936re, ((C1523jg) this.f17666a).a(), (Set) this.f17667b.zzb());
    }
}
