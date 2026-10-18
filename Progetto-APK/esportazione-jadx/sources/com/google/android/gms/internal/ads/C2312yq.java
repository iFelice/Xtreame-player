package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.leanback.widget.C0484j;
import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2312yq implements InterfaceC1845pq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f22068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1428hn f22069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Yv f22070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f22071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p120p3.a f22072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final P9 f22073g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BinderC1431hq f22075i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0693Cn f22076j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f22077k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22067a = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f22074h = ((Boolean) C3099q.f26624d.f26627c.a(Q7.g8)).booleanValue();

    public C2312yq(Context context, p120p3.a aVar, Yv yv, Executor executor, C0851Ng c0851Ng, C1428hn c1428hn, P9 p9, BinderC1431hq binderC1431hq, C0693Cn c0693Cn) {
        this.f22068b = context;
        this.f22070d = yv;
        this.f22077k = c0851Ng;
        this.f22071e = executor;
        this.f22072f = aVar;
        this.f22069c = c1428hn;
        this.f22073g = p9;
        this.f22075i = binderC1431hq;
        this.f22076j = c0693Cn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        int i8 = this.f22067a;
        Executor executor = this.f22071e;
        final int i9 = 2;
        switch (i8) {
            case 0:
                final C0871Om c0871Om = new C0871Om(2, (Object) null);
                JB jbD2 = Cw.d2(Cw.N1(null), new C0915Sa(this, ov, tv, c0871Om, 3), executor);
                final int i10 = 0;
                jbD2.a(new Runnable() { // from class: com.google.android.gms.internal.ads.wq
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i11 = i10;
                        C0871Om c0871Om2 = c0871Om;
                        switch (i11) {
                            case 0:
                                c0871Om2.l();
                                break;
                            case 1:
                                c0871Om2.l();
                                break;
                            default:
                                c0871Om2.l();
                                break;
                        }
                    }
                }, executor);
                return jbD2;
            case 1:
                final C0871Om c0871Om2 = new C0871Om(2, (Object) null);
                JB jbD3 = Cw.d2(Cw.N1(null), new C0915Sa(this, ov, tv, c0871Om2, 5), executor);
                final int i11 = 1;
                jbD3.a(new Runnable() { // from class: com.google.android.gms.internal.ads.wq
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i12 = i11;
                        C0871Om c0871Om3 = c0871Om2;
                        switch (i12) {
                            case 0:
                                c0871Om3.l();
                                break;
                            case 1:
                                c0871Om3.l();
                                break;
                            default:
                                c0871Om3.l();
                                break;
                        }
                    }
                }, executor);
                return jbD3;
            default:
                final C0871Om c0871Om3 = new C0871Om(2, (Object) null);
                JB jbD4 = Cw.d2(Cw.N1(null), new C0915Sa(this, ov, tv, c0871Om3, 7), executor);
                jbD4.a(new Runnable() { // from class: com.google.android.gms.internal.ads.wq
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i12 = i9;
                        C0871Om c0871Om4 = c0871Om3;
                        switch (i12) {
                            case 0:
                                c0871Om4.l();
                                break;
                            case 1:
                                c0871Om4.l();
                                break;
                            default:
                                c0871Om4.l();
                                break;
                        }
                    }
                }, executor);
                return jbD4;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        Rv rv = ov.f15282s;
        switch (this.f22067a) {
            case 0:
                return (rv == null || rv.f16372a == null) ? false : true;
            case 1:
                return (rv == null || rv.f16372a == null) ? false : true;
            default:
                return (rv == null || rv.f16372a == null) ? false : true;
        }
    }

    public final KB c(Ov ov, Tv tv, C0871Om c0871Om) {
        C0693Cn c0693Cn;
        int i8 = this.f22067a;
        Executor executor = this.f22071e;
        P9 p9 = this.f22073g;
        boolean z7 = this.f22074h;
        Object obj = this.f22077k;
        C1428hn c1428hn = this.f22069c;
        Yv yv = this.f22070d;
        C0693Cn c0693Cn2 = this.f22076j;
        switch (i8) {
            case 0:
                J7 j8 = Q7.f15749W1;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-webview-creation-start");
                }
                InterfaceC0715Ef interfaceC0715EfA = c1428hn.a(yv.f17678e, ov, (Qv) tv.f16755b.f21883I);
                interfaceC0715EfA.d0(ov.f15242W);
                c0871Om.getClass();
                O7 o7 = c3099q.f26627c;
                if (((Boolean) o7.a(j8)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-webview-creation-end");
                }
                C2040te c2040te = new C2040te();
                C0716Eg c0716Eg = (C0716Eg) ((AbstractC0747Gh) obj);
                C0686Cg c0686Cg = new C0686Cg(c0716Eg.f13119c, c0716Eg.f13121d, new p004a3.b(tv, ov, (String) null), new C2218x(22, new C2364zq(this.f22072f, c2040te, ov, interfaceC0715EfA, this.f22070d, this.f22074h, this.f22073g, this.f22075i), interfaceC0715EfA), new C0484j(ov.f15247a0, 3));
                if (((Boolean) o7.a(j8)).booleanValue()) {
                    c0693Cn = c0693Cn2;
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn.f12693c, "rendering-ad-component-creation-end");
                } else {
                    c0693Cn = c0693Cn2;
                }
                MJ mj = c0686Cg.f12673u0;
                ((C1376gn) mj.zzb()).a(interfaceC0715EfA, false, z7 ? p9 : null, c0693Cn.f12693c);
                c2040te.b(c0686Cg);
                ((C2357zj) c0686Cg.f12660h0.zzb()).Y0(new C2260xq(interfaceC0715EfA, 0), AbstractC1988se.f20911f);
                Rv rv = ov.f15282s;
                String strB = rv.f16372a;
                if (((Boolean) o7.a(Q7.f15650J4)).booleanValue() && ((C1637lq) c0686Cg.f12658f0.zzb()).c()) {
                    strB = AbstractC1018Zf.b(strB, AbstractC1018Zf.a(ov));
                }
                return Cw.b2(C1376gn.b(interfaceC0715EfA, rv.f16373b, strB, c0693Cn.f12693c), new C0965Vi(interfaceC0715EfA, ov, c0686Cg, 1), executor);
            case 1:
                J7 j9 = Q7.f15749W1;
                C3099q c3099q2 = C3099q.f26624d;
                if (((Boolean) c3099q2.f26627c.a(j9)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-webview-creation-start");
                }
                InterfaceC0715Ef interfaceC0715EfA2 = c1428hn.a(yv.f17678e, ov, (Qv) tv.f16755b.f21883I);
                interfaceC0715EfA2.d0(ov.f15242W);
                c0871Om.getClass();
                O7 o8 = c3099q2.f26627c;
                if (((Boolean) o8.a(j9)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-webview-creation-end");
                }
                C2040te c2040te2 = new C2040te();
                C0836Mg c0836MgC = ((C0851Ng) obj).c(new p004a3.b(tv, ov, (String) null), new C2218x(22, new Pq(this.f22068b, this.f22072f, c2040te2, ov, interfaceC0715EfA2, this.f22070d, this.f22074h, this.f22073g, this.f22075i), interfaceC0715EfA2));
                c2040te2.b(c0836MgC);
                if (((Boolean) o8.a(j9)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-ad-component-creation-end");
                }
                ((C2357zj) c0836MgC.f14761g0.zzb()).Y0(new C2260xq(interfaceC0715EfA2, 2), AbstractC1988se.f20911f);
                Rv rv2 = ov.f15282s;
                String strB2 = rv2.f16372a;
                if (((Boolean) o8.a(Q7.f15650J4)).booleanValue() && ((C1637lq) c0836MgC.f14759e0.zzb()).c()) {
                    strB2 = AbstractC1018Zf.b(strB2, AbstractC1018Zf.a(ov));
                }
                MJ mj2 = c0836MgC.f14777w0;
                ((C1376gn) mj2.zzb()).a(interfaceC0715EfA2, true, z7 ? p9 : null, c0693Cn2.f12693c);
                return Cw.b2(C1376gn.b(interfaceC0715EfA2, rv2.f16373b, strB2, c0693Cn2.f12693c), new C0965Vi(interfaceC0715EfA2, ov, c0836MgC, 2), executor);
            default:
                J7 j10 = Q7.f15749W1;
                C3099q c3099q3 = C3099q.f26624d;
                if (((Boolean) c3099q3.f26627c.a(j10)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-webview-creation-start");
                }
                InterfaceC0715Ef interfaceC0715EfA3 = c1428hn.a(yv.f17678e, ov, (Qv) tv.f16755b.f21883I);
                interfaceC0715EfA3.d0(ov.f15242W);
                c0871Om.getClass();
                O7 o9 = c3099q3.f26627c;
                if (((Boolean) o9.a(j10)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-webview-creation-end");
                }
                C2040te c2040te3 = new C2040te();
                C0893Qg c0893Qg = (C0893Qg) obj;
                C0879Pg c0879Pg = new C0879Pg(c0893Qg.f16073c, c0893Qg.f16075d, new p004a3.b(tv, ov, (String) null), new C1169cn(new Cr(this.f22068b, this.f22069c, this.f22070d, this.f22072f, ov, c2040te3, interfaceC0715EfA3, this.f22073g, this.f22074h, this.f22075i, this.f22076j), interfaceC0715EfA3));
                c2040te3.b(c0879Pg);
                if (((Boolean) o9.a(j10)).booleanValue()) {
                    p148t.a.g(p083k3.l.f25980A.f25990j, c0693Cn2.f12693c, "rendering-ad-component-creation-end");
                }
                interfaceC0715EfA3.L0("/reward", new E9((C0911Rk) c0879Pg.f15449v0.zzb(), 4));
                ((C2357zj) c0879Pg.f15434g0.zzb()).Y0(new C2260xq(interfaceC0715EfA3, 3), AbstractC1988se.f20911f);
                MJ mj3 = c0879Pg.f15450w0;
                ((C1376gn) mj3.zzb()).a(interfaceC0715EfA3, true, z7 ? p9 : null, c0693Cn2.f12693c);
                Rv rv3 = ov.f15282s;
                String strB3 = rv3.f16372a;
                if (((Boolean) o9.a(Q7.f15650J4)).booleanValue() && ((C1637lq) c0879Pg.f15432e0.zzb()).c()) {
                    strB3 = AbstractC1018Zf.b(strB3, AbstractC1018Zf.a(ov));
                }
                return Cw.b2(C1376gn.b(interfaceC0715EfA3, rv3.f16373b, strB3, c0693Cn2.f12693c), new C0965Vi(interfaceC0715EfA3, ov, c0879Pg, 3), executor);
        }
    }

    public C2312yq(Context context, p120p3.a aVar, Yv yv, Executor executor, C0893Qg c0893Qg, C1428hn c1428hn, P9 p9, BinderC1431hq binderC1431hq, C0693Cn c0693Cn) {
        this.f22068b = context;
        this.f22070d = yv;
        this.f22077k = c0893Qg;
        this.f22071e = executor;
        this.f22072f = aVar;
        this.f22069c = c1428hn;
        this.f22073g = p9;
        this.f22075i = binderC1431hq;
        this.f22076j = c0693Cn;
    }

    public C2312yq(AbstractC0747Gh abstractC0747Gh, Context context, Executor executor, C1428hn c1428hn, Yv yv, p120p3.a aVar, P9 p9, BinderC1431hq binderC1431hq, C0693Cn c0693Cn) {
        this.f22068b = context;
        this.f22077k = abstractC0747Gh;
        this.f22071e = executor;
        this.f22069c = c1428hn;
        this.f22070d = yv;
        this.f22072f = aVar;
        this.f22073g = p9;
        this.f22075i = binderC1431hq;
        this.f22076j = c0693Cn;
    }
}
