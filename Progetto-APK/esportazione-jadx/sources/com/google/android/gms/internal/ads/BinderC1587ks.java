package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p090l3.InterfaceC3068a0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3104t;
import p090l3.InterfaceC3110w;
import p090l3.InterfaceC3113x0;
import p090l3.InterfaceC3116z;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ks, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1587ks extends p090l3.I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p090l3.d1 f19655G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f19656H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Dv f19657I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f19658J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p120p3.a f19659K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1433hs f19660L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Gv f19661M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final H4 f19662N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final C0738Fn f19663O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public C0967Vk f19664P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f19665Q = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15970x0)).booleanValue();

    public BinderC1587ks(Context context, p090l3.d1 d1Var, String str, Dv dv, C1433hs c1433hs, Gv gv, p120p3.a aVar, H4 h8, C0738Fn c0738Fn) {
        this.f19655G = d1Var;
        this.f19658J = str;
        this.f19656H = context;
        this.f19657I = dv;
        this.f19660L = c1433hs;
        this.f19661M = gv;
        this.f19659K = aVar;
        this.f19662N = h8;
        this.f19663O = c0738Fn;
    }

    @Override // p090l3.J
    public final synchronized void A() {
        com.bumptech.glide.c.d("showInterstitial must be called on the main UI thread.");
        if (this.f19664P == null) {
            p120p3.h.g("Interstitial can not be shown before loaded.");
            this.f19660L.d(p113o3.r.H(9, null, null));
        } else {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue()) {
                this.f19662N.f13700b.b(new Throwable().getStackTrace());
            }
            this.f19664P.b(null, this.f19665Q);
        }
    }

    @Override // p090l3.J
    public final void C0(InterfaceC3110w interfaceC3110w) {
        com.bumptech.glide.c.d("setAdListener must be called on the main UI thread.");
        this.f19660L.f19164G.set(interfaceC3110w);
    }

    @Override // p090l3.J
    public final void D() {
        com.bumptech.glide.c.d("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // p090l3.J
    public final synchronized void D2(R3.a aVar) {
        if (this.f19664P == null) {
            p120p3.h.g("Interstitial can not be shown before loaded.");
            this.f19660L.d(p113o3.r.H(9, null, null));
            return;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue()) {
            this.f19662N.f13700b.b(new Throwable().getStackTrace());
        }
        this.f19664P.b((Activity) R3.b.v0(aVar), this.f19665Q);
    }

    @Override // p090l3.J
    public final synchronized void H2(boolean z7) {
        com.bumptech.glide.c.d("setImmersiveMode must be called on the main UI thread.");
        this.f19665Q = z7;
    }

    @Override // p090l3.J
    public final void I() {
    }

    @Override // p090l3.J
    public final void L() {
    }

    @Override // p090l3.J
    public final void N2(InterfaceC3100q0 interfaceC3100q0) {
        com.bumptech.glide.c.d("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!interfaceC3100q0.zzf()) {
                this.f19663O.b();
            }
        } catch (RemoteException e8) {
            p120p3.h.c("Error in making CSI ping for reporting paid event callback", e8);
        }
        this.f19660L.f19166I.set(interfaceC3100q0);
    }

    @Override // p090l3.J
    public final synchronized boolean P() {
        com.bumptech.glide.c.d("isLoaded must be called on the main UI thread.");
        return z3();
    }

    @Override // p090l3.J
    public final synchronized boolean R() {
        return false;
    }

    @Override // p090l3.J
    public final void S() {
    }

    @Override // p090l3.J
    public final void S2(p090l3.b1 b1Var, InterfaceC3116z interfaceC3116z) {
        this.f19660L.f19167J.set(interfaceC3116z);
        h3(b1Var);
    }

    @Override // p090l3.J
    public final void U() {
    }

    @Override // p090l3.J
    public final synchronized void c0(Z7 z7) {
        com.bumptech.glide.c.d("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f19657I.f12902L = z7;
    }

    @Override // p090l3.J
    public final void d3(InterfaceC3068a0 interfaceC3068a0) {
        this.f19660L.f19168K.set(interfaceC3068a0);
    }

    @Override // p090l3.J
    public final synchronized String e() {
        BinderC1630lj binderC1630lj;
        C0967Vk c0967Vk = this.f19664P;
        if (c0967Vk == null || (binderC1630lj = c0967Vk.f21917f) == null) {
            return null;
        }
        return binderC1630lj.f19824G;
    }

    @Override // p090l3.J
    public final synchronized void f() {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        C0967Vk c0967Vk = this.f19664P;
        if (c0967Vk != null) {
            C0689Cj c0689Cj = c0967Vk.f21914c;
            c0689Cj.getClass();
            c0689Cj.Z0(new I7(null, 3));
        }
    }

    @Override // p090l3.J
    public final void g1(InterfaceC1366gd interfaceC1366gd) {
        this.f19661M.f13659K.set(interfaceC1366gd);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002f  */
    @Override // p090l3.J
    public final synchronized boolean h3(p090l3.b1 b1Var) {
        boolean z7;
        try {
            if (!b1Var.f26519I.getBoolean("is_sdk_preload", false)) {
                if (((Boolean) AbstractC1812p8.f20427g.l()).booleanValue()) {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else {
                    z7 = false;
                }
                if (this.f19659K.f28198I < ((Integer) C3099q.f26624d.f26627c.a(Q7.ya)).intValue() || !z7) {
                    com.bumptech.glide.c.d("loadAd must be called on the main UI thread.");
                }
            }
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            if (p113o3.O.f(this.f19656H) && b1Var.f26535Y == null) {
                p120p3.h.d("Failed to load the ad because app ID is missing.");
                C1433hs c1433hs = this.f19660L;
                if (c1433hs != null) {
                    c1433hs.y(p113o3.r.H(4, null, null));
                }
            } else if (!z3()) {
                AbstractC2987b.f0(this.f19656H, b1Var.f26522L);
                this.f19664P = null;
                return this.f19657I.b(b1Var, this.f19658J, new Av(this.f19655G), new C0864Of(this, 27));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.J
    public final synchronized boolean j3() {
        return this.f19657I.a();
    }

    @Override // p090l3.J
    public final void k2(InterfaceC1292f6 interfaceC1292f6) {
    }

    @Override // p090l3.J
    public final void p0(p090l3.U u7) {
        com.bumptech.glide.c.d("setAppEventListener must be called on the main UI thread.");
        this.f19660L.i(u7);
    }

    @Override // p090l3.J
    public final void r() {
    }

    @Override // p090l3.J
    public final void s3(boolean z7) {
    }

    @Override // p090l3.J
    public final synchronized void t() {
        com.bumptech.glide.c.d("resume must be called on the main UI thread.");
        C0967Vk c0967Vk = this.f19664P;
        if (c0967Vk != null) {
            C0689Cj c0689Cj = c0967Vk.f21914c;
            c0689Cj.getClass();
            c0689Cj.Z0(new I7(null, 2));
        }
    }

    @Override // p090l3.J
    public final void v() {
    }

    @Override // p090l3.J
    public final synchronized void y0() {
        com.bumptech.glide.c.d("pause must be called on the main UI thread.");
        C0967Vk c0967Vk = this.f19664P;
        if (c0967Vk != null) {
            C0689Cj c0689Cj = c0967Vk.f21914c;
            c0689Cj.getClass();
            c0689Cj.Z0(new I7(null, 1));
        }
    }

    public final synchronized boolean z3() {
        C0967Vk c0967Vk = this.f19664P;
        return (c0967Vk == null || c0967Vk.f17097n.f13625H.get()) ? false : true;
    }

    @Override // p090l3.J
    public final Bundle zzd() {
        com.bumptech.glide.c.d("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // p090l3.J
    public final p090l3.d1 zzg() {
        return null;
    }

    @Override // p090l3.J
    public final InterfaceC3110w zzi() {
        return this.f19660L.c();
    }

    @Override // p090l3.J
    public final p090l3.U zzj() {
        p090l3.U u7;
        C1433hs c1433hs = this.f19660L;
        synchronized (c1433hs) {
            u7 = (p090l3.U) c1433hs.f19165H.get();
        }
        return u7;
    }

    @Override // p090l3.J
    public final synchronized InterfaceC3113x0 zzk() {
        C0967Vk c0967Vk;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15873k6)).booleanValue() && (c0967Vk = this.f19664P) != null) {
            return c0967Vk.f21917f;
        }
        return null;
    }

    @Override // p090l3.J
    public final p090l3.B0 zzl() {
        return null;
    }

    @Override // p090l3.J
    public final R3.a zzn() {
        return null;
    }

    @Override // p090l3.J
    public final synchronized String zzr() {
        return this.f19658J;
    }

    @Override // p090l3.J
    public final synchronized String zzs() {
        BinderC1630lj binderC1630lj;
        C0967Vk c0967Vk = this.f19664P;
        if (c0967Vk == null || (binderC1630lj = c0967Vk.f21917f) == null) {
            return null;
        }
        return binderC1630lj.f19824G;
    }

    @Override // p090l3.J
    public final void E0(p090l3.h1 h1Var) {
    }

    @Override // p090l3.J
    public final void G0(p090l3.Y0 y7) {
    }

    @Override // p090l3.J
    public final void a2(p090l3.Y y7) {
    }

    @Override // p090l3.J
    public final void h2(InterfaceC3104t interfaceC3104t) {
    }

    @Override // p090l3.J
    public final void u0(p090l3.d1 d1Var) {
    }
}
