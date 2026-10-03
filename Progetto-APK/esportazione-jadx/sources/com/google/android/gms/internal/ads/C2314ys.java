package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ys, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2314ys implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f22079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f22080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f22081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f22082d;

    public C2314ys(MJ mj, C1523jg c1523jg, C1526jj c1526jj, C0822Lh c0822Lh) {
        this.f22079a = mj;
        this.f22080b = c1523jg;
        this.f22081c = c1526jj;
        this.f22082d = c0822Lh;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2210ws zzb() {
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = (InterfaceExecutorServiceC1504jC) this.f22079a.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C2210ws(interfaceExecutorServiceC1504jC, c1936re, ((C1523jg) this.f22080b).a(), ((C1526jj) this.f22081c).a(), ((C0822Lh) this.f22082d).f14530a.f14391a);
    }
}
