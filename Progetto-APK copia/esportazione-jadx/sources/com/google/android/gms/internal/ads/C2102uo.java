package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdView;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2102uo extends p043f3.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f21385G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AdView f21386H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f21387I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ BinderC2258xo f21388J;

    public C2102uo(BinderC2258xo binderC2258xo, String str, AdView adView, String str2) {
        this.f21385G = str;
        this.f21386H = adView;
        this.f21387I = str2;
        this.f21388J = binderC2258xo;
    }

    @Override // p043f3.b
    public final void b(p043f3.j jVar) {
        this.f21388J.E3(BinderC2258xo.D3(jVar), this.f21387I);
    }

    @Override // p043f3.b
    public final void d() {
        this.f21388J.z3(this.f21386H, this.f21385G, this.f21387I);
    }
}
