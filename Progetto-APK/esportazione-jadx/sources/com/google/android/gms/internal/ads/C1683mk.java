package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1683mk implements InterfaceC1942rk, InterfaceC2121v6 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19989G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1397h7 f19990H;

    public /* synthetic */ C1683mk(C1397h7 c1397h7, int i8) {
        this.f19989G = i8;
        this.f19990H = c1397h7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2121v6
    public final void g(C7 c8) {
        c8.e(this.f19990H);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f19989G;
        C1397h7 c1397h7 = this.f19990H;
        switch (i8) {
            case 0:
                ((InterfaceC1787ok) obj).E(c1397h7);
                break;
            case 1:
                ((InterfaceC1787ok) obj).w(c1397h7);
                break;
            default:
                ((InterfaceC1787ok) obj).t(c1397h7);
                break;
        }
    }
}
