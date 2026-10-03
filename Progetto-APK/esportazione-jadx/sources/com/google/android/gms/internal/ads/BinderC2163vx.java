package com.google.android.gms.internal.ads;

import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2163vx extends AbstractBinderC2195wd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C1816pC f21617G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1884qd f21618H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C1644lx f21619I;

    public BinderC2163vx(C1644lx c1644lx, C1816pC c1816pC, Lv lv) {
        this.f21617G = c1816pC;
        this.f21618H = lv;
        this.f21619I = c1644lx;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void c(C3117z0 c3117z0) {
        String string = c3117z0.l().toString();
        C1644lx c1644lx = this.f21619I;
        p120p3.h.g("Failed to load rewarded ad with error: " + string + ", adUnitId: " + c1644lx.f21162e.f26500G);
        new C0871Om(c1644lx, this.f21617G).i(c3117z0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void d(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void zzg() {
        new C0871Om(this.f21619I, this.f21617G).mo3zzb(this.f21618H);
    }
}
