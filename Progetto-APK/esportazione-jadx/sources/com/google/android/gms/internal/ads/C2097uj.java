package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2097uj implements InterfaceC1942rk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21362G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1322fl f21363H;

    public /* synthetic */ C2097uj(C1322fl c1322fl, int i8) {
        this.f21362G = i8;
        this.f21363H = c1322fl;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f21362G;
        C1322fl c1322fl = this.f21363H;
        switch (i8) {
            case 0:
                ((InterfaceC2045tj) obj).H(c1322fl);
                break;
            default:
                ((InterfaceC2305yj) obj).d(p113o3.r.H(12, c1322fl.getMessage(), null));
                break;
        }
    }
}
