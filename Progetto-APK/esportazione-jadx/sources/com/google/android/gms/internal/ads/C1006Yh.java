package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1006Yh implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f17628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f17629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f17630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f17631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f17632f;

    public /* synthetic */ C1006Yh(Object obj, MJ mj, IJ ij, MJ mj2, MJ mj3, int i8) {
        this.f17627a = i8;
        this.f17632f = obj;
        this.f17628b = mj;
        this.f17629c = ij;
        this.f17630d = mj2;
        this.f17631e = mj3;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f17627a;
        QJ qj = this.f17631e;
        QJ qj2 = this.f17630d;
        QJ qj3 = this.f17629c;
        QJ qj4 = this.f17628b;
        switch (i8) {
            case 0:
                return new C0825Lk(new C0894Qh((Context) qj4.zzb(), ((C1938rg) qj3).a(), C0688Ci.a(((C0688Ci) qj2).f12681a), ((C1526jj) qj).a(), 0), AbstractC1988se.f20911f);
            default:
                P3.a aVar = (P3.a) qj4.zzb();
                C1846pr c1846pr = (C1846pr) qj3;
                C1794or c1794or = new C1794or((C1229dw) c1846pr.f20493a.zzb(), (C1842pn) c1846pr.f20494b.zzb(), (C0738Fn) c1846pr.f20495c.zzb());
                C2104uq c2104uq = (C2104uq) qj2.zzb();
                C1488ix c1488ix = (C1488ix) qj.zzb();
                C1690mr c1690mr = ((C2053tr) this.f17632f).f21152a;
                return c1690mr != null ? c1690mr : new C1690mr(aVar, c1794or, c2104uq, c1488ix);
        }
    }
}
