package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1682mj implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f19984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f19985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f19986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f19987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f19988e;

    public C1682mj(MJ mj, C0703Di c0703Di, MJ mj2, MJ mj3, MJ mj4) {
        this.f19984a = mj;
        this.f19985b = c0703Di;
        this.f19986c = mj2;
        this.f19987d = mj3;
        this.f19988e = mj4;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final BinderC1630lj zzb() {
        return new BinderC1630lj(C0688Ci.a(((C0688Ci) this.f19984a).f12681a), (String) ((C0703Di) this.f19985b).f12851a.f8652J, (C2104uq) this.f19986c.zzb(), ((C0718Ei) this.f19987d).f13174a.o(), (String) this.f19988e.zzb());
    }
}
