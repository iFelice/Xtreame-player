package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1893qm implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f20613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f20614b;

    public C1893qm(C2152vm c2152vm, C2308ym c2308ym) {
        this.f20613a = c2152vm;
        this.f20614b = c2308ym;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        C2100um c2100umZzb = ((C2152vm) this.f20613a).zzb();
        C2308ym c2308ym = (C2308ym) this.f20614b;
        c2308ym.getClass();
        return new C1841pm(c1936re, c2100umZzb, new C2256xm(c1936re, ((C2152vm) c2308ym.f22052a).zzb()));
    }
}
