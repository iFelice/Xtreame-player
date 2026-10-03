package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: loaded from: classes.dex */
public final class Pq implements InterfaceC1374gl {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f15477G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p120p3.a f15478H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final D4.b f15479I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Ov f15480J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final InterfaceC0715Ef f15481K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Yv f15482L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final P9 f15483M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f15484N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final BinderC1431hq f15485O;

    public Pq(Context context, p120p3.a aVar, C2040te c2040te, Ov ov, InterfaceC0715Ef interfaceC0715Ef, Yv yv, boolean z7, P9 p9, BinderC1431hq binderC1431hq) {
        this.f15477G = context;
        this.f15478H = aVar;
        this.f15479I = c2040te;
        this.f15480J = ov;
        this.f15481K = interfaceC0715Ef;
        this.f15482L = yv;
        this.f15483M = p9;
        this.f15484N = z7;
        this.f15485O = binderC1431hq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
    public final void c(boolean z7, Context context, C2201wj c2201wj) {
        boolean z8;
        boolean z9;
        C0836Mg c0836Mg = (C0836Mg) Cw.g2(this.f15479I);
        this.f15481K.G0(true);
        P9 p9 = this.f15483M;
        boolean z10 = this.f15484N;
        boolean zC = z10 ? p9.c(false) : false;
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        boolean zG = p113o3.O.g(this.f15477G);
        if (z10) {
            synchronized (p9) {
                z9 = p9.f15337b;
            }
            z8 = z9;
        } else {
            z8 = false;
        }
        float fA = z10 ? p9.a() : 0.0f;
        Ov ov = this.f15480J;
        p083k3.g gVar = new p083k3.g(zC, zG, z8, fA, z7, ov.f15234O, false);
        if (c2201wj != null) {
            c2201wj.a();
        }
        C1219dl c1219dl = (C1219dl) c0836Mg.f14776v0.zzb();
        int i8 = ov.f15236Q;
        Rv rv = ov.f15282s;
        F2.G.M(context, new AdOverlayInfoParcel(c1219dl, this.f15481K, i8, this.f15478H, ov.f15221B, gVar, rv.f16373b, rv.f16372a, this.f15482L.f17679f, c2201wj, ov.f15263i0 ? this.f15485O : null), true);
    }
}
