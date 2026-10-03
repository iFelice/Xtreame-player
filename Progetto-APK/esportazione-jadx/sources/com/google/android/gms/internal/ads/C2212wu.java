package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2212wu implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f21763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f21765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f21766d;

    public C2212wu(C1523jg c1523jg, NJ nj, MJ mj, MJ mj2) {
        this.f21763a = c1523jg;
        this.f21764b = nj;
        this.f21765c = mj;
        this.f21766d = mj2;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2160vu zzb() {
        Context contextA = ((C1523jg) this.f21763a).a();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C2160vu(contextA, c1936re, ((NJ) this.f21764b).zzb(), (Tw) this.f21765c.zzb(), (C0738Fn) this.f21766d.zzb());
    }
}
