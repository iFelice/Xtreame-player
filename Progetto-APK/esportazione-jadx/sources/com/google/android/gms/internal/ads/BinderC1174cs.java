package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.Collections;
import p090l3.C3099q;
import p090l3.InterfaceC3068a0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3104t;
import p090l3.InterfaceC3110w;
import p090l3.InterfaceC3113x0;
import p090l3.InterfaceC3116z;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1174cs extends p090l3.I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f18260G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC3110w f18261H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Yv f18262I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AbstractC0852Nh f18263J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final FrameLayout f18264K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C0738Fn f18265L;

    public BinderC1174cs(Context context, InterfaceC3110w interfaceC3110w, Yv yv, C0866Oh c0866Oh, C0738Fn c0738Fn) {
        this.f18260G = context;
        this.f18261H = interfaceC3110w;
        this.f18262I = yv;
        this.f18263J = c0866Oh;
        this.f18265L = c0738Fn;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        frameLayout.addView(c0866Oh.f15182k, new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setMinimumHeight(zzg().f26550I);
        frameLayout.setMinimumWidth(zzg().f26553L);
        this.f18264K = frameLayout;
    }

    @Override // p090l3.J
    public final void A() {
    }

    @Override // p090l3.J
    public final void C0(InterfaceC3110w interfaceC3110w) {
        p120p3.h.f("setAdListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final void D() {
        p120p3.h.f("setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final void G0(p090l3.Y0 y7) {
        p120p3.h.f("setVideoOptions is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final void H2(boolean z7) {
    }

    @Override // p090l3.J
    public final void I() {
    }

    @Override // p090l3.J
    public final void L() {
    }

    @Override // p090l3.J
    public final void N2(InterfaceC3100q0 interfaceC3100q0) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.Ta)).booleanValue()) {
            p120p3.h.f("setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader.");
            return;
        }
        C1433hs c1433hs = this.f18262I.f17676c;
        if (c1433hs != null) {
            try {
                if (!interfaceC3100q0.zzf()) {
                    this.f18265L.b();
                }
            } catch (RemoteException e8) {
                p120p3.h.c("Error in making CSI ping for reporting paid event callback", e8);
            }
            c1433hs.f19166I.set(interfaceC3100q0);
        }
    }

    @Override // p090l3.J
    public final boolean P() {
        return false;
    }

    @Override // p090l3.J
    public final boolean R() {
        AbstractC0852Nh abstractC0852Nh = this.f18263J;
        return abstractC0852Nh != null && abstractC0852Nh.f21913b.f15279q0;
    }

    @Override // p090l3.J
    public final void S() {
    }

    @Override // p090l3.J
    public final void U() {
    }

    @Override // p090l3.J
    public final void a2(p090l3.Y y7) {
        p120p3.h.f("setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final void c0(Z7 z7) {
        p120p3.h.f("setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final String e() {
        BinderC1630lj binderC1630lj = this.f18263J.f21917f;
        if (binderC1630lj != null) {
            return binderC1630lj.f19824G;
        }
        return null;
    }

    @Override // p090l3.J
    public final void f() {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        C0689Cj c0689Cj = this.f18263J.f21914c;
        c0689Cj.getClass();
        c0689Cj.Z0(new I7(null, 3));
    }

    @Override // p090l3.J
    public final void g1(InterfaceC1366gd interfaceC1366gd) {
    }

    @Override // p090l3.J
    public final void h2(InterfaceC3104t interfaceC3104t) {
        p120p3.h.f("setAdClickListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final boolean h3(p090l3.b1 b1Var) {
        p120p3.h.f("loadAd is not supported for an Ad Manager AdView returned from AdLoader.");
        return false;
    }

    @Override // p090l3.J
    public final boolean j3() {
        return false;
    }

    @Override // p090l3.J
    public final void k2(InterfaceC1292f6 interfaceC1292f6) {
    }

    @Override // p090l3.J
    public final void p0(p090l3.U u7) {
        C1433hs c1433hs = this.f18262I.f17676c;
        if (c1433hs != null) {
            c1433hs.i(u7);
        }
    }

    @Override // p090l3.J
    public final void r() {
    }

    @Override // p090l3.J
    public final void s3(boolean z7) {
        p120p3.h.f("setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override // p090l3.J
    public final void t() {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        C0689Cj c0689Cj = this.f18263J.f21914c;
        c0689Cj.getClass();
        c0689Cj.Z0(new I7(null, 2));
    }

    @Override // p090l3.J
    public final void u0(p090l3.d1 d1Var) {
        com.bumptech.glide.c.d("setAdSize must be called on the main UI thread.");
        AbstractC0852Nh abstractC0852Nh = this.f18263J;
        if (abstractC0852Nh != null) {
            abstractC0852Nh.i(this.f18264K, d1Var);
        }
    }

    @Override // p090l3.J
    public final void v() {
        this.f18263J.h();
    }

    @Override // p090l3.J
    public final void y0() {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        C0689Cj c0689Cj = this.f18263J.f21914c;
        c0689Cj.getClass();
        c0689Cj.Z0(new I7(null, 1));
    }

    @Override // p090l3.J
    public final Bundle zzd() {
        p120p3.h.f("getAdMetadata is not supported in Ad Manager AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // p090l3.J
    public final p090l3.d1 zzg() {
        com.bumptech.glide.c.d("getAdSize must be called on the main UI thread.");
        return U4.a.l(this.f18260G, Collections.singletonList(this.f18263J.f()));
    }

    @Override // p090l3.J
    public final InterfaceC3110w zzi() {
        return this.f18261H;
    }

    @Override // p090l3.J
    public final p090l3.U zzj() {
        return this.f18262I.f17687n;
    }

    @Override // p090l3.J
    public final InterfaceC3113x0 zzk() {
        return this.f18263J.f21917f;
    }

    @Override // p090l3.J
    public final p090l3.B0 zzl() {
        return this.f18263J.e();
    }

    @Override // p090l3.J
    public final R3.a zzn() {
        return new R3.b(this.f18264K);
    }

    @Override // p090l3.J
    public final String zzr() {
        return this.f18262I.f17679f;
    }

    @Override // p090l3.J
    public final String zzs() {
        BinderC1630lj binderC1630lj = this.f18263J.f21917f;
        if (binderC1630lj != null) {
            return binderC1630lj.f19824G;
        }
        return null;
    }

    @Override // p090l3.J
    public final void D2(R3.a aVar) {
    }

    @Override // p090l3.J
    public final void E0(p090l3.h1 h1Var) {
    }

    @Override // p090l3.J
    public final void d3(InterfaceC3068a0 interfaceC3068a0) {
    }

    @Override // p090l3.J
    public final void S2(p090l3.b1 b1Var, InterfaceC3116z interfaceC3116z) {
    }
}
