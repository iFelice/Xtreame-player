package com.google.android.gms.internal.ads;

import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0970Vn extends AbstractBinderC2195wd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C0998Xn f17115G;

    public BinderC0970Vn(C0998Xn c0998Xn) {
        this.f17115G = c0998Xn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void c(C3117z0 c3117z0) {
        C0998Xn c0998Xn = this.f17115G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        int i8 = c3117z0.f26629G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdFailedToLoad";
        c1950rs.f20798J = Integer.valueOf(i8);
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void d(int i8) {
        C0998Xn c0998Xn = this.f17115G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdFailedToLoad";
        c1950rs.f20798J = Integer.valueOf(i8);
        c0900Qn.b(c1950rs);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void zzg() {
        C0998Xn c0998Xn = this.f17115G;
        C0900Qn c0900Qn = c0998Xn.f17507b;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("rewarded");
        c1950rs.f20796H = Long.valueOf(c0998Xn.f17506a);
        c1950rs.f20795G = "onRewardedAdLoaded";
        c0900Qn.b(c1950rs);
    }
}
