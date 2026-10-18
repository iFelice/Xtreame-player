package com.google.android.gms.internal.ads;

import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1888qh implements InterfaceC1993sj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Qv f20598G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Tv f20599H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1438hx f20600I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1488ix f20601J;

    public C1888qh(Tv tv, C1488ix c1488ix, C1438hx c1438hx) {
        this.f20599H = tv;
        this.f20601J = c1488ix;
        this.f20600I = c1438hx;
        this.f20598G = (Qv) tv.f16755b.f21883I;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        this.f20601J.b(this.f20600I.a(this.f20599H, null, this.f20598G.f16149a));
    }
}
