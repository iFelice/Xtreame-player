package com.google.android.gms.internal.ads;

import p090l3.AbstractBinderC3114y;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1748nx extends AbstractBinderC3114y {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C1816pC f20212G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ p090l3.J f20213H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C1644lx f20214I;

    public BinderC1748nx(C1644lx c1644lx, C1816pC c1816pC, BinderC1587ks binderC1587ks) {
        this.f20212G = c1816pC;
        this.f20213H = binderC1587ks;
        this.f20214I = c1644lx;
    }

    @Override // p090l3.InterfaceC3116z
    public final void I1(C3117z0 c3117z0) {
        String string = c3117z0.l().toString();
        C1644lx c1644lx = this.f20214I;
        p120p3.h.g("Failed to load interstitial ad with error: " + string + " for ad unit: " + c1644lx.f21162e.f26500G);
        new C0871Om(c1644lx, this.f20212G).i(c3117z0);
    }

    @Override // p090l3.InterfaceC3116z
    public final void zzc() {
        new C0871Om(this.f20214I, this.f20212G).mo3zzb(this.f20213H);
    }
}
