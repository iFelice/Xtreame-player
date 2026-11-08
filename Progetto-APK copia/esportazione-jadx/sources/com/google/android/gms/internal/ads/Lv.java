package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import p090l3.C3099q;
import p090l3.InterfaceC3096o0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: loaded from: classes.dex */
public final class Lv extends AbstractBinderC1832pd {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Jv f14580H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Gv f14581I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f14582J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Uv f14583K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Context f14584L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p120p3.a f14585M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final H4 f14586N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final C0738Fn f14587O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public C1118bn f14588P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f14589Q = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15970x0)).booleanValue();

    public Lv(String str, Jv jv, Context context, Gv gv, Uv uv, p120p3.a aVar, H4 h8, C0738Fn c0738Fn) {
        this.f14582J = str;
        this.f14580H = jv;
        this.f14581I = gv;
        this.f14583K = uv;
        this.f14584L = context;
        this.f14585M = aVar;
        this.f14586N = h8;
        this.f14587O = c0738Fn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized void A1(p090l3.b1 b1Var, InterfaceC2247xd interfaceC2247xd) {
        z3(b1Var, interfaceC2247xd, 2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized void G1(R3.a aVar, boolean z7) {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        if (this.f14588P == null) {
            p120p3.h.g("Rewarded can not be shown before loaded");
            this.f14581I.d(p113o3.r.H(9, null, null));
            return;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15980y2)).booleanValue()) {
            this.f14586N.f13700b.b(new Throwable().getStackTrace());
        }
        this.f14588P.c((Activity) R3.b.v0(aVar), z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void J0(InterfaceC3096o0 interfaceC3096o0) {
        Gv gv = this.f14581I;
        if (interfaceC3096o0 == null) {
            gv.f13656H.set(null);
        } else {
            gv.f13656H.set(new Kv(this, interfaceC3096o0, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized void M1(C0668Bd c0668Bd) {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        Uv uv = this.f14583K;
        uv.f16904a = c0668Bd.f12382G;
        uv.f16905b = c0668Bd.f12383H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized void N1(boolean z7) {
        com.bumptech.glide.c.d("setImmersiveMode must be called on the main UI thread.");
        this.f14589Q = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized void T1(p090l3.b1 b1Var, InterfaceC2247xd interfaceC2247xd) {
        z3(b1Var, interfaceC2247xd, 3);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void f0(InterfaceC2039td interfaceC2039td) {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        this.f14581I.f13658J.set(interfaceC2039td);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void y2(InterfaceC3100q0 interfaceC3100q0) {
        com.bumptech.glide.c.d("setOnPaidEventListener must be called on the main UI thread.");
        try {
            if (!interfaceC3100q0.zzf()) {
                this.f14587O.b();
            }
        } catch (RemoteException e8) {
            p120p3.h.c("Error in making CSI ping for reporting paid event callback", e8);
        }
        this.f14581I.f13662N.set(interfaceC3100q0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void z2(C2299yd c2299yd) {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        this.f14581I.f13660L.set(c2299yd);
    }

    public final synchronized void z3(p090l3.b1 b1Var, InterfaceC2247xd interfaceC2247xd, int i8) {
        try {
            boolean z7 = false;
            if (!b1Var.f26519I.getBoolean("is_sdk_preload", false)) {
                if (((Boolean) AbstractC1812p8.f20429i.l()).booleanValue()) {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                        z7 = true;
                    }
                }
                if (this.f14585M.f28198I < ((Integer) C3099q.f26624d.f26627c.a(Q7.ya)).intValue() || !z7) {
                    com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                }
            }
            this.f14581I.f13657I.set(interfaceC2247xd);
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            if (p113o3.O.f(this.f14584L) && b1Var.f26535Y == null) {
                p120p3.h.d("Failed to load the ad because app ID is missing.");
                this.f14581I.y(p113o3.r.H(4, null, null));
                return;
            }
            if (this.f14588P != null) {
                return;
            }
            Hv hv = new Hv();
            Jv jv = this.f14580H;
            jv.f14246N.f17544o.f9298H = i8;
            jv.b(b1Var, this.f14582J, hv, new Xu(this, 5));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final Bundle zzb() {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        C1118bn c1118bn = this.f14588P;
        return c1118bn != null ? c1118bn.b() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final InterfaceC3113x0 zzc() {
        C1118bn c1118bn;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15873k6)).booleanValue() && (c1118bn = this.f14588P) != null) {
            return c1118bn.f21917f;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final InterfaceC1728nd zzd() {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        C1118bn c1118bn = this.f14588P;
        if (c1118bn != null) {
            return c1118bn.f18092q;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized String zze() {
        BinderC1630lj binderC1630lj;
        C1118bn c1118bn = this.f14588P;
        if (c1118bn == null || (binderC1630lj = c1118bn.f21917f) == null) {
            return null;
        }
        return binderC1630lj.f19824G;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final synchronized void zzm(R3.a aVar) {
        G1(aVar, this.f14589Q);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final boolean zzo() {
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        C1118bn c1118bn = this.f14588P;
        return (c1118bn == null || c1118bn.f18095t) ? false : true;
    }
}
