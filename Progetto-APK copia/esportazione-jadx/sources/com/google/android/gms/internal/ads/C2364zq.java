package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2364zq implements InterfaceC1374gl {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p120p3.a f22205G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final D4.b f22206H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Ov f22207I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final InterfaceC0715Ef f22208J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Yv f22209K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final P9 f22210L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f22211M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final BinderC1431hq f22212N;

    public C2364zq(p120p3.a aVar, C2040te c2040te, Ov ov, InterfaceC0715Ef interfaceC0715Ef, Yv yv, boolean z7, P9 p9, BinderC1431hq binderC1431hq) {
        this.f22205G = aVar;
        this.f22206H = c2040te;
        this.f22207I = ov;
        this.f22208J = interfaceC0715Ef;
        this.f22209K = yv;
        this.f22211M = z7;
        this.f22210L = p9;
        this.f22212N = binderC1431hq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
    public final void c(boolean z7, Context context, C2201wj c2201wj) {
        boolean z8;
        int i8;
        C0686Cg c0686Cg = (C0686Cg) Cw.g2(this.f22206H);
        this.f22208J.G0(true);
        P9 p9 = this.f22210L;
        boolean z9 = this.f22211M;
        boolean zC = z9 ? p9.c(true) : true;
        if (z9) {
            synchronized (p9) {
                z8 = p9.f15337b;
            }
        } else {
            z8 = false;
        }
        float fA = z9 ? p9.a() : 0.0f;
        Ov ov = this.f22207I;
        p083k3.g gVar = new p083k3.g(zC, true, z8, fA, z7, ov.f15234O, false);
        if (c2201wj != null) {
            c2201wj.a();
        }
        F2.G g8 = p083k3.l.f25980A.f25982b;
        C1219dl c1219dl = (C1219dl) c0686Cg.f12674v0.zzb();
        int i9 = ov.f15236Q;
        Yv yv = this.f22209K;
        if (i9 == -1) {
            p090l3.h1 h1Var = yv.f17683j;
            if (h1Var != null) {
                int i10 = h1Var.f26590G;
                if (i10 == 1) {
                    i8 = 7;
                } else if (i10 == 2) {
                    i8 = 6;
                }
            }
            p120p3.h.b("Error setting app open orientation; no targeting orientation available.");
            i9 = ov.f15236Q;
            i8 = i9;
        } else {
            i8 = i9;
        }
        String str = ov.f15221B;
        Rv rv = ov.f15282s;
        F2.G.M(context, new AdOverlayInfoParcel(c1219dl, this.f22208J, i8, this.f22205G, str, gVar, rv.f16373b, rv.f16372a, yv.f17679f, c2201wj, ov.f15263i0 ? this.f22212N : null), true);
    }
}
