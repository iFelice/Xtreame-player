package com.google.android.gms.internal.ads;

import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Wn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0984Wn extends AbstractBinderC1987sd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C0998Xn f17320G;

    public BinderC0984Wn(C0998Xn c0998Xn) {
        this.f17320G = c0998Xn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void Y1(InterfaceC1728nd interfaceC1728nd) {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onUserEarnedReward";
        c1950rs.f20799K = interfaceC1728nd.zzf();
        c1950rs.f20800L = Integer.valueOf(interfaceC1728nd.J());
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void a() {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onAdImpression";
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void b() {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onAdClicked";
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void j2(C3117z0 c3117z0) {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        int i8 = c3117z0.f26629G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdFailedToShow";
        c1950rs.f20798J = Integer.valueOf(i8);
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void zzg() {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdClosed";
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void zzh(int i8) {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdFailedToShow";
        c1950rs.f20798J = Integer.valueOf(i8);
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2039td
    public final void zzj() {
        C0998Xn c0998Xn = this.f17320G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdOpened";
        c0900Qn.b(c1950rs);
    }
}
