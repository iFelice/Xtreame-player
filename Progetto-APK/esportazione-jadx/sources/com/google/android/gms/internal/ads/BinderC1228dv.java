package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import p090l3.C3099q;
import p090l3.InterfaceC3068a0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3104t;
import p090l3.InterfaceC3110w;
import p090l3.InterfaceC3113x0;
import p090l3.InterfaceC3116z;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1228dv extends p090l3.I implements p105n3.m, X5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC1317fg f18378G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f18379H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f18381J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C1126bv f18382K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1074av f18383L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p120p3.a f18384M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0738Fn f18385N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public C0717Eh f18387P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public C0777Ih f18388Q;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AtomicBoolean f18380I = new AtomicBoolean();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f18386O = -1;

    public BinderC1228dv(AbstractC1317fg abstractC1317fg, Context context, String str, C1126bv c1126bv, C1074av c1074av, p120p3.a aVar, C0738Fn c0738Fn) {
        this.f18378G = abstractC1317fg;
        this.f18379H = context;
        this.f18381J = str;
        this.f18382K = c1126bv;
        this.f18383L = c1074av;
        this.f18384M = aVar;
        this.f18385N = c0738Fn;
        c1074av.f18002L.set(this);
    }

    @Override // p090l3.J
    public final synchronized void A() {
    }

    @Override // p090l3.J
    public final void D() {
    }

    @Override // p090l3.J
    public final void E0(p090l3.h1 h1Var) {
        this.f18382K.f18131O.f17538i = h1Var;
    }

    @Override // p090l3.J
    public final synchronized void G0(p090l3.Y0 y7) {
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

    @Override // p105n3.m
    public final void O2() {
    }

    @Override // p090l3.J
    public final boolean P() {
        return false;
    }

    @Override // p090l3.J
    public final synchronized boolean R() {
        return false;
    }

    @Override // p090l3.J
    public final void S() {
    }

    @Override // p090l3.J
    public final void U() {
    }

    @Override // p105n3.m
    public final void Y() {
    }

    @Override // p090l3.J
    public final synchronized void a2(p090l3.Y y7) {
    }

    @Override // p090l3.J
    public final synchronized void c0(Z7 z7) {
    }

    @Override // p090l3.J
    public final synchronized String e() {
        return null;
    }

    @Override // p090l3.J
    public final synchronized void f() {
        com.bumptech.glide.c.d("destroy must be called on the main UI thread.");
        C0777Ih c0777Ih = this.f18388Q;
        if (c0777Ih != null) {
            c0777Ih.b();
        }
    }

    @Override // p090l3.J
    public final void g1(InterfaceC1366gd interfaceC1366gd) {
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002f  */
    @Override // p090l3.J
    public final synchronized boolean h3(p090l3.b1 b1Var) {
        boolean z7;
        try {
            if (!b1Var.f26519I.getBoolean("is_sdk_preload", false)) {
                if (((Boolean) AbstractC1812p8.f20422b.l()).booleanValue()) {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else {
                    z7 = false;
                }
                if (this.f18384M.f28198I < ((Integer) C3099q.f26624d.f26627c.a(Q7.ya)).intValue() || !z7) {
                    com.bumptech.glide.c.d("loadAd must be called on the main UI thread.");
                }
            }
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            if (p113o3.O.f(this.f18379H) && b1Var.f26535Y == null) {
                p120p3.h.d("Failed to load the ad because app ID is missing.");
                this.f18383L.y(p113o3.r.H(4, null, null));
                return false;
            }
            if (j3()) {
                return false;
            }
            this.f18380I = new AtomicBoolean();
            return this.f18382K.b(b1Var, this.f18381J, new X1.i(), new Xu(this, 2));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.J
    public final synchronized boolean j3() {
        return this.f18382K.a();
    }

    @Override // p090l3.J
    public final void k2(InterfaceC1292f6 interfaceC1292f6) {
        this.f18383L.f17998H.set(interfaceC1292f6);
    }

    @Override // p105n3.m
    public final synchronized void k3() {
        C0777Ih c0777Ih = this.f18388Q;
        if (c0777Ih != null) {
            p083k3.l.f25980A.f25990j.getClass();
            c0777Ih.d(1, SystemClock.elapsedRealtime() - this.f18386O);
        }
    }

    @Override // p090l3.J
    public final void r() {
    }

    @Override // p105n3.m
    public final void r1(int i8) {
        if (i8 == 0) {
            throw null;
        }
        int i9 = i8 - 1;
        if (i9 == 0) {
            z3(2);
            return;
        }
        if (i9 == 1) {
            z3(4);
        } else if (i9 != 2) {
            z3(6);
        } else {
            z3(3);
        }
    }

    @Override // p090l3.J
    public final synchronized void s3(boolean z7) {
    }

    @Override // p090l3.J
    public final synchronized void t() {
        com.bumptech.glide.c.d("resume must be called on the main UI thread.");
    }

    @Override // p090l3.J
    public final synchronized void u0(p090l3.d1 d1Var) {
        com.bumptech.glide.c.d("setAdSize must be called on the main UI thread.");
    }

    @Override // p105n3.m
    public final void u3() {
    }

    @Override // p090l3.J
    public final synchronized void v() {
    }

    @Override // p105n3.m
    public final synchronized void v0() {
        if (this.f18388Q != null) {
            p083k3.l lVar = p083k3.l.f25980A;
            lVar.f25990j.getClass();
            this.f18386O = SystemClock.elapsedRealtime();
            int i8 = this.f18388Q.f14010k;
            if (i8 > 0) {
                C0717Eh c0717Eh = new C0717Eh((ScheduledExecutorService) ((C0671Bg) this.f18378G).f12436e.zzb(), lVar.f25990j);
                this.f18387P = c0717Eh;
                c0717Eh.c(i8, new RunnableC1177cv(this, 1));
            }
        }
    }

    @Override // p090l3.J
    public final synchronized void y0() {
        com.bumptech.glide.c.d("pause must be called on the main UI thread.");
    }

    public final synchronized void z3(int i8) {
        try {
            if (this.f18380I.compareAndSet(false, true)) {
                this.f18383L.a();
                C0717Eh c0717Eh = this.f18387P;
                if (c0717Eh != null) {
                    p083k3.l.f25980A.f25986f.q(c0717Eh);
                }
                if (this.f18388Q != null) {
                    long jElapsedRealtime = -1;
                    if (this.f18386O != -1) {
                        p083k3.l.f25980A.f25990j.getClass();
                        jElapsedRealtime = SystemClock.elapsedRealtime() - this.f18386O;
                    }
                    this.f18388Q.d(i8, jElapsedRealtime);
                }
                f();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.J
    public final Bundle zzd() {
        return new Bundle();
    }

    @Override // p090l3.J
    public final synchronized p090l3.d1 zzg() {
        return null;
    }

    @Override // p090l3.J
    public final InterfaceC3110w zzi() {
        return null;
    }

    @Override // p090l3.J
    public final p090l3.U zzj() {
        return null;
    }

    @Override // p090l3.J
    public final synchronized InterfaceC3113x0 zzk() {
        return null;
    }

    @Override // p090l3.J
    public final synchronized p090l3.B0 zzl() {
        return null;
    }

    @Override // p090l3.J
    public final R3.a zzn() {
        return null;
    }

    @Override // p090l3.J
    public final synchronized String zzr() {
        return this.f18381J;
    }

    @Override // p090l3.J
    public final synchronized String zzs() {
        return null;
    }

    @Override // p090l3.J
    public final void C0(InterfaceC3110w interfaceC3110w) {
    }

    @Override // p090l3.J
    public final void D2(R3.a aVar) {
    }

    @Override // p090l3.J
    public final void N2(InterfaceC3100q0 interfaceC3100q0) {
    }

    @Override // p090l3.J
    public final void d3(InterfaceC3068a0 interfaceC3068a0) {
    }

    @Override // p090l3.J
    public final void h2(InterfaceC3104t interfaceC3104t) {
    }

    @Override // p090l3.J
    public final void p0(p090l3.U u7) {
    }

    @Override // p090l3.J
    public final void S2(p090l3.b1 b1Var, InterfaceC3116z interfaceC3116z) {
    }
}
