package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1384gv implements InterfaceC2161vv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InterfaceC1165cj f19024a;

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final /* bridge */ /* synthetic */ D4.b a(C0871Om c0871Om, Xu xu) {
        return b(c0871Om, xu, null);
    }

    public final D4.b b(C0871Om c0871Om, InterfaceC2109uv interfaceC2109uv, InterfaceC1165cj interfaceC1165cj) {
        InterfaceC1165cj interfaceC1165cjA;
        C0701Dg c0701DgF = ((Xu) interfaceC2109uv).f((InterfaceC2057tv) c0871Om.f15197I);
        C2369zv c2369zv = new C2369zv();
        int i8 = c0701DgF.f12838a;
        switch (i8) {
            case 0:
                c0701DgF.f12840c = c2369zv;
                break;
            default:
                c0701DgF.f12840c = c2369zv;
                break;
        }
        switch (i8) {
            case 0:
                interfaceC1165cjA = c0701DgF.a();
                break;
            default:
                interfaceC1165cjA = c0701DgF.b();
                break;
        }
        this.f19024a = interfaceC1165cjA;
        C0823Li c0823LiZzb = interfaceC1165cjA.zzb();
        C1851pw c1851pw = new C1851pw();
        AbstractC1040aC abstractC1040aCR = AbstractC1040aC.r(c0823LiZzb.b());
        C0957Va c0957Va = new C0957Va(c1851pw, c0823LiZzb, 14);
        XB xb = XB.f17385G;
        return Cw.b2(Cw.d2(abstractC1040aCR, c0957Va, xb), new C0917Sc(c1851pw, 9), xb);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2161vv
    public final /* synthetic */ Object zzd() {
        return this.f19024a;
    }
}
