package com.google.android.gms.internal.ads;

import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1592kx extends AbstractBinderC1240e6 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C1816pC f19673G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ p090l3.T0 f19674H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C1644lx f19675I;

    public BinderC1592kx(C1644lx c1644lx, C1816pC c1816pC, p090l3.T0 t7) {
        this.f19673G = c1816pC;
        this.f19674H = t7;
        this.f19675I = c1644lx;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1292f6
    public final void U2(InterfaceC1137c6 interfaceC1137c6) {
        new C0871Om(this.f19675I, this.f19673G).mo3zzb(interfaceC1137c6);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1292f6
    public final void b3(C3117z0 c3117z0) {
        p120p3.h.g("Failed to load app open ad with error parcel: " + c3117z0.l().toString() + " for ad unit: " + this.f19674H.f26500G);
        new C0871Om(this.f19675I, this.f19673G).i(c3117z0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1292f6
    public final void zzb(int i8) {
    }
}
