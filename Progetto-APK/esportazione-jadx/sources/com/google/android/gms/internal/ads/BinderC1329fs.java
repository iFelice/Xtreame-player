package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Collections;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p090l3.InterfaceC3068a0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3104t;
import p090l3.InterfaceC3110w;
import p090l3.InterfaceC3113x0;
import p090l3.InterfaceC3116z;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1329fs extends p090l3.I implements InterfaceC0938Tj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f18812G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1332fv f18813H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f18814I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1433hs f18815J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p090l3.d1 f18816K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Xv f18817L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p120p3.a f18818M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0738Fn f18819N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public AbstractC0852Nh f18820O;

    public BinderC1329fs(Context context, p090l3.d1 d1Var, String str, C1332fv c1332fv, C1433hs c1433hs, p120p3.a aVar, C0738Fn c0738Fn) {
        this.f18812G = context;
        this.f18813H = c1332fv;
        this.f18816K = d1Var;
        this.f18814I = str;
        this.f18815J = c1433hs;
        this.f18817L = c1332fv.f18843Q;
        this.f18818M = aVar;
        this.f18819N = c0738Fn;
        c1332fv.f18840N.Y0(this, c1332fv.f18834H);
    }

    @Override // p090l3.J
    public final void A() {
    }

    public final synchronized boolean A3(p090l3.b1 b1Var) {
        try {
            if (B3()) {
                com.bumptech.glide.c.d("loadAd must be called on the main UI thread.");
            }
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            if (!p113o3.O.f(this.f18812G) || b1Var.f26535Y != null) {
                AbstractC2987b.f0(this.f18812G, b1Var.f26522L);
                return this.f18813H.b(b1Var, this.f18814I, null, new C0864Of(this, 25));
            }
            p120p3.h.d("Failed to load the ad because app ID is missing.");
            C1433hs c1433hs = this.f18815J;
            if (c1433hs != null) {
                c1433hs.y(p113o3.r.H(4, null, null));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    public final boolean B3() {
        boolean z7;
        if (((Boolean) AbstractC1812p8.f20424d.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        return this.f18818M.f28198I < ((Integer) C3099q.f26624d.f26627c.a(Q7.ya)).intValue() || !z7;
    }

    @Override // p090l3.J
    public final void C0(InterfaceC3110w interfaceC3110w) {
        if (B3()) {
            com.bumptech.glide.c.d("setAdListener must be called on the main UI thread.");
        }
        this.f18815J.f19164G.set(interfaceC3110w);
    }

    @Override // p090l3.J
    public final void D() {
        com.bumptech.glide.c.d("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // p090l3.J
    public final synchronized void G0(p090l3.Y0 y7) {
        try {
            if (B3()) {
                com.bumptech.glide.c.d("setVideoOptions must be called on the main UI thread.");
            }
            this.f18817L.f17533d = y7;
        } catch (Throwable th) {
            throw th;
        }
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
        if (B3()) {
            com.bumptech.glide.c.d("setPaidEventListener must be called on the main UI thread.");
        }
        try {
            if (!interfaceC3100q0.zzf()) {
                this.f18819N.b();
            }
        } catch (RemoteException e8) {
            p120p3.h.c("Error in making CSI ping for reporting paid event callback", e8);
        }
        this.f18815J.f19166I.set(interfaceC3100q0);
    }

    @Override // p090l3.J
    public final boolean P() {
        return false;
    }

    @Override // p090l3.J
    public final synchronized boolean R() {
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        return abstractC0852Nh != null && abstractC0852Nh.f21913b.f15279q0;
    }

    @Override // p090l3.J
    public final void S() {
    }

    @Override // p090l3.J
    public final void U() {
    }

    @Override // p090l3.J
    public final synchronized void a2(p090l3.Y y7) {
        com.bumptech.glide.c.d("setCorrelationIdProvider must be called on the main UI thread");
        this.f18817L.f17550u = y7;
    }

    @Override // p090l3.J
    public final synchronized void c0(Z7 z7) {
        com.bumptech.glide.c.d("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f18813H.f18839M = z7;
    }

    @Override // p090l3.J
    public final synchronized String e() {
        BinderC1630lj binderC1630lj;
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        if (abstractC0852Nh == null || (binderC1630lj = abstractC0852Nh.f21917f) == null) {
            return null;
        }
        return binderC1630lj.f19824G;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0038 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:13:0x003d, B:15:0x0041, B:12:0x0038), top: B:22:0x0001 }] */
    @Override // p090l3.J
    public final synchronized void f() {
        try {
            if (((Boolean) AbstractC1812p8.f20423c.l()).booleanValue()) {
                J7 j8 = Q7.ua;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    if (this.f18818M.f28198I < ((Integer) c3099q.f26627c.a(Q7.za)).intValue()) {
                        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
                    }
                } else {
                    com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
                }
            } else {
                com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
            }
            AbstractC0852Nh abstractC0852Nh = this.f18820O;
            if (abstractC0852Nh != null) {
                C0689Cj c0689Cj = abstractC0852Nh.f21914c;
                c0689Cj.getClass();
                c0689Cj.Z0(new I7(null, 3));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.J
    public final void g1(InterfaceC1366gd interfaceC1366gd) {
    }

    @Override // p090l3.J
    public final void h2(InterfaceC3104t interfaceC3104t) {
        if (B3()) {
            com.bumptech.glide.c.d("setAdListener must be called on the main UI thread.");
        }
        C1535js c1535js = this.f18813H.f18837K;
        synchronized (c1535js) {
            c1535js.f19518G = interfaceC3104t;
        }
    }

    @Override // p090l3.J
    public final synchronized boolean h3(p090l3.b1 b1Var) {
        z3(this.f18816K);
        return A3(b1Var);
    }

    @Override // p090l3.J
    public final synchronized boolean j3() {
        return this.f18813H.a();
    }

    @Override // p090l3.J
    public final void k2(InterfaceC1292f6 interfaceC1292f6) {
    }

    @Override // p090l3.J
    public final void p0(p090l3.U u7) {
        if (B3()) {
            com.bumptech.glide.c.d("setAppEventListener must be called on the main UI thread.");
        }
        this.f18815J.i(u7);
    }

    @Override // p090l3.J
    public final void r() {
    }

    @Override // p090l3.J
    public final synchronized void s3(boolean z7) {
        try {
            if (B3()) {
                com.bumptech.glide.c.d("setManualImpressionsEnabled must be called from the main thread.");
            }
            this.f18817L.f17534e = z7;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0038 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:13:0x003d, B:15:0x0041, B:12:0x0038), top: B:22:0x0001 }] */
    @Override // p090l3.J
    public final synchronized void t() {
        try {
            if (((Boolean) AbstractC1812p8.f20426f.l()).booleanValue()) {
                J7 j8 = Q7.ta;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    if (this.f18818M.f28198I < ((Integer) c3099q.f26627c.a(Q7.za)).intValue()) {
                        com.bumptech.glide.c.d("resume must be called on the main UI thread.");
                    }
                } else {
                    com.bumptech.glide.c.d("resume must be called on the main UI thread.");
                }
            } else {
                com.bumptech.glide.c.d("resume must be called on the main UI thread.");
            }
            AbstractC0852Nh abstractC0852Nh = this.f18820O;
            if (abstractC0852Nh != null) {
                C0689Cj c0689Cj = abstractC0852Nh.f21914c;
                c0689Cj.getClass();
                c0689Cj.Z0(new I7(null, 2));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.J
    public final synchronized void u0(p090l3.d1 d1Var) {
        com.bumptech.glide.c.d("setAdSize must be called on the main UI thread.");
        this.f18817L.f17531b = d1Var;
        this.f18816K = d1Var;
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        if (abstractC0852Nh != null) {
            abstractC0852Nh.i(this.f18813H.f18838L, d1Var);
        }
    }

    @Override // p090l3.J
    public final synchronized void v() {
        com.bumptech.glide.c.d("recordManualImpression must be called on the main UI thread.");
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        if (abstractC0852Nh != null) {
            abstractC0852Nh.h();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0038 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:13:0x003d, B:15:0x0041, B:12:0x0038), top: B:22:0x0001 }] */
    @Override // p090l3.J
    public final synchronized void y0() {
        try {
            if (((Boolean) AbstractC1812p8.f20425e.l()).booleanValue()) {
                J7 j8 = Q7.va;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    if (this.f18818M.f28198I < ((Integer) c3099q.f26627c.a(Q7.za)).intValue()) {
                        com.bumptech.glide.c.d("pause must be called on the main UI thread.");
                    }
                } else {
                    com.bumptech.glide.c.d("pause must be called on the main UI thread.");
                }
            } else {
                com.bumptech.glide.c.d("pause must be called on the main UI thread.");
            }
            AbstractC0852Nh abstractC0852Nh = this.f18820O;
            if (abstractC0852Nh != null) {
                C0689Cj c0689Cj = abstractC0852Nh.f21914c;
                c0689Cj.getClass();
                c0689Cj.Z0(new I7(null, 1));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void z3(p090l3.d1 d1Var) {
        Xv xv = this.f18817L;
        xv.f17531b = d1Var;
        xv.f17546q = this.f18816K.f26561T;
    }

    @Override // p090l3.J
    public final Bundle zzd() {
        com.bumptech.glide.c.d("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // p090l3.J
    public final synchronized p090l3.d1 zzg() {
        com.bumptech.glide.c.d("getAdSize must be called on the main UI thread.");
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        if (abstractC0852Nh != null) {
            return U4.a.l(this.f18812G, Collections.singletonList(abstractC0852Nh.f()));
        }
        return this.f18817L.f17531b;
    }

    @Override // p090l3.J
    public final InterfaceC3110w zzi() {
        return this.f18815J.c();
    }

    @Override // p090l3.J
    public final p090l3.U zzj() {
        p090l3.U u7;
        C1433hs c1433hs = this.f18815J;
        synchronized (c1433hs) {
            u7 = (p090l3.U) c1433hs.f19165H.get();
        }
        return u7;
    }

    @Override // p090l3.J
    public final synchronized InterfaceC3113x0 zzk() {
        AbstractC0852Nh abstractC0852Nh;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15873k6)).booleanValue() && (abstractC0852Nh = this.f18820O) != null) {
            return abstractC0852Nh.f21917f;
        }
        return null;
    }

    @Override // p090l3.J
    public final synchronized p090l3.B0 zzl() {
        com.bumptech.glide.c.d("getVideoController must be called from the main thread.");
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        if (abstractC0852Nh == null) {
            return null;
        }
        return abstractC0852Nh.e();
    }

    @Override // p090l3.J
    public final R3.a zzn() {
        if (B3()) {
            com.bumptech.glide.c.d("getAdFrame must be called on the main UI thread.");
        }
        return new R3.b(this.f18813H.f18838L);
    }

    @Override // p090l3.J
    public final synchronized String zzr() {
        return this.f18814I;
    }

    @Override // p090l3.J
    public final synchronized String zzs() {
        BinderC1630lj binderC1630lj;
        AbstractC0852Nh abstractC0852Nh = this.f18820O;
        if (abstractC0852Nh == null || (binderC1630lj = abstractC0852Nh.f21917f) == null) {
            return null;
        }
        return binderC1630lj.f19824G;
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
