package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Cr implements InterfaceC1374gl {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f12700G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1428hn f12701H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Yv f12702I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p120p3.a f12703J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Ov f12704K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final D4.b f12705L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final InterfaceC0715Ef f12706M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final P9 f12707N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f12708O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final BinderC1431hq f12709P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final C0693Cn f12710Q;

    public Cr(Context context, C1428hn c1428hn, Yv yv, p120p3.a aVar, Ov ov, C2040te c2040te, InterfaceC0715Ef interfaceC0715Ef, P9 p9, boolean z7, BinderC1431hq binderC1431hq, C0693Cn c0693Cn) {
        this.f12700G = context;
        this.f12701H = c1428hn;
        this.f12702I = yv;
        this.f12703J = aVar;
        this.f12704K = ov;
        this.f12705L = c2040te;
        this.f12706M = interfaceC0715Ef;
        this.f12707N = p9;
        this.f12708O = z7;
        this.f12709P = binderC1431hq;
        this.f12710Q = c0693Cn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
    public final void c(boolean z7, Context context, C2201wj c2201wj) {
        boolean z8;
        boolean z9;
        InterfaceC0715Ef interfaceC0715EfA = this.f12706M;
        C0879Pg c0879Pg = (C0879Pg) Cw.g2(this.f12705L);
        try {
            boolean zJ0 = interfaceC0715EfA.J0();
            Yv yv = this.f12702I;
            Ov ov = this.f12704K;
            P9 p9 = this.f12707N;
            boolean z10 = this.f12708O;
            if (zJ0) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15622G0)).booleanValue()) {
                    interfaceC0715EfA = this.f12701H.a(yv.f17678e, null, null);
                    interfaceC0715EfA.L0("/reward", new E9((C0911Rk) c0879Pg.f15449v0.zzb(), 4));
                    C0871Om c0871Om = new C0871Om(2, (Object) null);
                    ((C1376gn) c0879Pg.f15450w0.zzb()).a(interfaceC0715EfA, true, z10 ? p9 : null, this.f12710Q.f12693c);
                    interfaceC0715EfA.zzN().f17463M = new C0871Om(10, c0871Om, interfaceC0715EfA);
                    interfaceC0715EfA.zzN().f17464N = new L9(interfaceC0715EfA);
                    Rv rv = ov.f15282s;
                    interfaceC0715EfA.w0(rv.f16373b, rv.f16372a);
                }
            }
            InterfaceC0715Ef interfaceC0715Ef = interfaceC0715EfA;
            interfaceC0715Ef.G0(true);
            boolean zC = z10 ? p9.c(false) : false;
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            boolean zG = p113o3.O.g(this.f12700G);
            if (z10) {
                synchronized (p9) {
                    z9 = p9.f15337b;
                }
                z8 = z9;
            } else {
                z8 = false;
            }
            p083k3.g gVar = new p083k3.g(zC, zG, z8, z10 ? p9.a() : 0.0f, z7, ov.f15234O, ov.f15235P);
            if (c2201wj != null) {
                c2201wj.a();
            }
            C1219dl c1219dl = (C1219dl) c0879Pg.f15448u0.zzb();
            int i8 = ov.f15236Q;
            Rv rv2 = ov.f15282s;
            String str = rv2.f16373b;
            BinderC1431hq binderC1431hq = ov.f15263i0 ? this.f12709P : null;
            F2.G.M(context, new AdOverlayInfoParcel(c1219dl, interfaceC0715Ef, i8, this.f12703J, ov.f15221B, gVar, str, rv2.f16372a, yv.f17679f, c2201wj, binderC1431hq), true);
        } catch (C0835Mf e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
    }
}
