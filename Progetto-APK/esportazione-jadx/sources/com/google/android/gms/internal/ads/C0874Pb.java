package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Pb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0874Pb implements p105n3.m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ zzbsd f15391G;

    public C0874Pb(zzbsd zzbsdVar) {
        this.f15391G = zzbsdVar;
    }

    @Override // p105n3.m
    public final void O2() {
        p120p3.h.b("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // p105n3.m
    public final void Y() {
        p120p3.h.b("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // p105n3.m
    public final void k3() {
    }

    @Override // p105n3.m
    public final void r1(int i8) {
        p120p3.h.b("AdMobCustomTabsAdapter overlay is closed.");
        ((p004a3.b) this.f15391G.f22242b).e();
    }

    @Override // p105n3.m
    public final void u3() {
        p120p3.h.b("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // p105n3.m
    public final void v0() {
        p120p3.h.b("Opening AdMobCustomTabsAdapter overlay.");
        ((p004a3.b) this.f15391G.f22242b).k();
    }
}
