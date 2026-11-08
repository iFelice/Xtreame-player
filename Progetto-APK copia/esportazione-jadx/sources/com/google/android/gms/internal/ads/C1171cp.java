package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1171cp implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f18243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18244b;

    public C1171cp(MJ mj, C1008Yj c1008Yj) {
        this.f18243a = mj;
        this.f18244b = c1008Yj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Map map = ((LJ) this.f18243a).f13346a;
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C1120bp(map, c1936re, new C0994Xj(((NJ) ((C1008Yj) this.f18244b).f17634a).zzb()));
    }
}
