package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class QH implements InterfaceC1098bI {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NH f16005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2272y1 f16006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1561kH f16007c;

    public QH(C2272y1 c2272y1, NH nh) {
        C1561kH c1561kH = AbstractC1613lH.f19730a;
        this.f16006b = c2272y1;
        this.f16007c = c1561kH;
        this.f16005a = nh;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void a(Object obj, C1251eH c1251eH, C1509jH c1509jH) {
        this.f16006b.getClass();
        C2272y1.f(obj);
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void b(Object obj, C1459iH c1459iH) {
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void c(Object obj, byte[] bArr, int i8, int i9, SG sg) {
        AbstractC1873qH abstractC1873qH = (AbstractC1873qH) obj;
        if (abstractC1873qH.zzt == C1408hI.f19078f) {
            abstractC1873qH.zzt = C1408hI.b();
        }
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final int zza(Object obj) {
        C1408hI c1408hI = ((AbstractC1873qH) obj).zzt;
        int i8 = c1408hI.f19082d;
        if (i8 != -1) {
            return i8;
        }
        int iM = 0;
        for (int i9 = 0; i9 < c1408hI.f19079a; i9++) {
            int i10 = c1408hI.f19080b[i9] >>> 3;
            XG xg = (XG) c1408hI.f19081c[i9];
            int iM2 = AbstractC1407hH.M(8);
            int iM3 = AbstractC1407hH.M(i10) + AbstractC1407hH.M(16);
            int iM4 = AbstractC1407hH.M(24);
            int iN = xg.n();
            iM += iM2 + iM2 + iM3 + AbstractC2090uc.m(iN, iN, iM4);
        }
        c1408hI.f19082d = iM;
        return iM;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final int zzb(Object obj) {
        return ((AbstractC1873qH) obj).zzt.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final AbstractC1873qH zze() {
        NH nh = this.f16005a;
        return nh instanceof AbstractC1873qH ? ((AbstractC1873qH) nh).q() : ((AbstractC1769oH) ((AbstractC1873qH) nh).x(5, null)).c();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void zzf(Object obj) {
        this.f16006b.getClass();
        C2272y1.k(obj);
        this.f16007c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final void zzg(Object obj, Object obj2) {
        AbstractC1149cI.x(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final boolean zzk(Object obj, Object obj2) {
        return ((AbstractC1873qH) obj).zzt.equals(((AbstractC1873qH) obj2).zzt);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1098bI
    public final boolean zzl(Object obj) {
        A0.O.I(obj);
        throw null;
    }
}
