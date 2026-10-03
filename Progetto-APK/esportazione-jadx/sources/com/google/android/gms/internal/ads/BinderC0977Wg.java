package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import okhttp3.HttpUrl;
import p090l3.AbstractBinderC3076e0;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Wg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0977Wg extends AbstractBinderC3076e0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f17280G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p120p3.a f17281H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1894qn f17282I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final InterfaceC1948rq f17283J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Yr f17284K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1273eo f17285L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C0890Qd f17286M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C1997sn f17287N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final C1895qo f17288O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Mx f17289P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Uw f17290Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final C1281ew f17291R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final C0923Si f17292S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final C0738Fn f17293T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f17294U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final Long f17295V;

    public BinderC0977Wg(Context context, p120p3.a aVar, C1894qn c1894qn, InterfaceC1948rq interfaceC1948rq, Yr yr, C1273eo c1273eo, C0890Qd c0890Qd, C1997sn c1997sn, C1895qo c1895qo, Mx mx, Uw uw, C1281ew c1281ew, C0923Si c0923Si, C0738Fn c0738Fn) {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
        this.f17280G = context;
        this.f17281H = aVar;
        this.f17282I = c1894qn;
        this.f17283J = interfaceC1948rq;
        this.f17284K = yr;
        this.f17285L = c1273eo;
        this.f17286M = c0890Qd;
        this.f17287N = c1997sn;
        this.f17288O = c1895qo;
        this.f17289P = mx;
        this.f17290Q = uw;
        this.f17291R = c1281ew;
        this.f17292S = c0923Si;
        this.f17293T = c0738Fn;
        this.f17294U = false;
        p083k3.l.f25980A.f25990j.getClass();
        this.f17295V = Long.valueOf(SystemClock.elapsedRealtime());
    }

    public final synchronized void A3(float f8) {
        p083k3.l.f25980A.f25988h.c(f8);
    }

    public final synchronized void B3(String str) {
        Q7.a(this.f17280G);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15641I3)).booleanValue()) {
                p083k3.l.f25980A.f25991k.k(this.f17280G, this.f17281H, true, null, str, null, null, this.f17290Q, null, null);
            }
        }
    }

    public final synchronized boolean C3() {
        return p083k3.l.f25980A.f25988h.d();
    }

    public final synchronized void z3(boolean z7) {
        p083k3.l.f25980A.f25988h.b(z7);
    }

    public final synchronized float zze() {
        return p083k3.l.f25980A.f25988h.a();
    }

    public final synchronized void zzk() {
        if (this.f17294U) {
            p120p3.h.g("Mobile ads is initialized already.");
            return;
        }
        Q7.a(this.f17280G);
        Context context = this.f17280G;
        p120p3.a aVar = this.f17281H;
        p083k3.l lVar = p083k3.l.f25980A;
        lVar.f25987g.g(context, aVar);
        this.f17292S.a();
        lVar.f25989i.r(this.f17280G);
        final int i8 = 1;
        this.f17294U = true;
        this.f17285L.b();
        Yr yr = this.f17284K;
        yr.getClass();
        p113o3.L lD = lVar.f25987g.d();
        lD.f27896c.add(new Xr(yr, 1));
        final int i9 = 0;
        yr.f17660f.execute(new Xr(yr, 0));
        J7 j8 = Q7.f15657K3;
        C3099q c3099q = C3099q.f26624d;
        final int i10 = 2;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            C1997sn c1997sn = this.f17287N;
            if (!c1997sn.f20974f.getAndSet(true)) {
                p113o3.L lD2 = lVar.f25987g.d();
                lD2.f27896c.add(new RunnableC1945rn(c1997sn, 2));
            }
            c1997sn.f20971c.execute(new RunnableC1945rn(c1997sn, 0));
        }
        this.f17288O.c();
        if (((Boolean) c3099q.f26627c.a(Q7.w8)).booleanValue()) {
            AbstractC1988se.f20906a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Tg

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ BinderC0977Wg f16697H;

                {
                    this.f16697H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    switch (i9) {
                        case 0:
                            BinderC0977Wg binderC0977Wg = this.f16697H;
                            binderC0977Wg.getClass();
                            p083k3.l lVar2 = p083k3.l.f25980A;
                            if (lVar2.f25987g.d().q()) {
                                p113o3.L lD3 = lVar2.f25987g.d();
                                lD3.s();
                                synchronized (lD3.f27894a) {
                                    str = lD3.f27919z;
                                    break;
                                }
                                if (lVar2.f25993m.g(binderC0977Wg.f17280G, str, binderC0977Wg.f17281H.f28196G)) {
                                    return;
                                }
                                lVar2.f25987g.d().b(false);
                                lVar2.f25987g.d().a(HttpUrl.FRAGMENT_ENCODE_SET);
                                return;
                            }
                            return;
                        case 1:
                            AbstractC1487iw.a(this.f16697H.f17280G, true);
                            return;
                        default:
                            BinderC0977Wg binderC0977Wg2 = this.f16697H;
                            binderC0977Wg2.getClass();
                            BinderC0697Dc binderC0697Dc = new BinderC0697Dc("com.google.android.gms.ads.internal.report.IDynamiteErrorEventListener");
                            Mx mx = binderC0977Wg2.f17289P;
                            mx.getClass();
                            try {
                                G8 g8 = (G8) com.google.android.gms.internal.measurement.H1.G(mx.f14833G, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new C1561kH(29));
                                Parcel parcelJ0 = g8.j0();
                                A5.e(parcelJ0, binderC0697Dc);
                                g8.O2(1, parcelJ0);
                                return;
                            } catch (RemoteException e8) {
                                p120p3.h.g("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e8.getMessage())));
                                return;
                            } catch (p120p3.j e9) {
                                p120p3.h.g("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e9.getMessage())));
                                return;
                            }
                    }
                }
            });
        }
        if (((Boolean) c3099q.f26627c.a(Q7.ka)).booleanValue()) {
            AbstractC1988se.f20906a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Tg

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ BinderC0977Wg f16697H;

                {
                    this.f16697H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    switch (i10) {
                        case 0:
                            BinderC0977Wg binderC0977Wg = this.f16697H;
                            binderC0977Wg.getClass();
                            p083k3.l lVar2 = p083k3.l.f25980A;
                            if (lVar2.f25987g.d().q()) {
                                p113o3.L lD3 = lVar2.f25987g.d();
                                lD3.s();
                                synchronized (lD3.f27894a) {
                                    str = lD3.f27919z;
                                    break;
                                }
                                if (lVar2.f25993m.g(binderC0977Wg.f17280G, str, binderC0977Wg.f17281H.f28196G)) {
                                    return;
                                }
                                lVar2.f25987g.d().b(false);
                                lVar2.f25987g.d().a(HttpUrl.FRAGMENT_ENCODE_SET);
                                return;
                            }
                            return;
                        case 1:
                            AbstractC1487iw.a(this.f16697H.f17280G, true);
                            return;
                        default:
                            BinderC0977Wg binderC0977Wg2 = this.f16697H;
                            binderC0977Wg2.getClass();
                            BinderC0697Dc binderC0697Dc = new BinderC0697Dc("com.google.android.gms.ads.internal.report.IDynamiteErrorEventListener");
                            Mx mx = binderC0977Wg2.f17289P;
                            mx.getClass();
                            try {
                                G8 g8 = (G8) com.google.android.gms.internal.measurement.H1.G(mx.f14833G, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new C1561kH(29));
                                Parcel parcelJ0 = g8.j0();
                                A5.e(parcelJ0, binderC0697Dc);
                                g8.O2(1, parcelJ0);
                                return;
                            } catch (RemoteException e8) {
                                p120p3.h.g("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e8.getMessage())));
                                return;
                            } catch (p120p3.j e9) {
                                p120p3.h.g("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e9.getMessage())));
                                return;
                            }
                    }
                }
            });
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15624G2)).booleanValue()) {
            AbstractC1988se.f20906a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Tg

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ BinderC0977Wg f16697H;

                {
                    this.f16697H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    switch (i8) {
                        case 0:
                            BinderC0977Wg binderC0977Wg = this.f16697H;
                            binderC0977Wg.getClass();
                            p083k3.l lVar2 = p083k3.l.f25980A;
                            if (lVar2.f25987g.d().q()) {
                                p113o3.L lD3 = lVar2.f25987g.d();
                                lD3.s();
                                synchronized (lD3.f27894a) {
                                    str = lD3.f27919z;
                                    break;
                                }
                                if (lVar2.f25993m.g(binderC0977Wg.f17280G, str, binderC0977Wg.f17281H.f28196G)) {
                                    return;
                                }
                                lVar2.f25987g.d().b(false);
                                lVar2.f25987g.d().a(HttpUrl.FRAGMENT_ENCODE_SET);
                                return;
                            }
                            return;
                        case 1:
                            AbstractC1487iw.a(this.f16697H.f17280G, true);
                            return;
                        default:
                            BinderC0977Wg binderC0977Wg2 = this.f16697H;
                            binderC0977Wg2.getClass();
                            BinderC0697Dc binderC0697Dc = new BinderC0697Dc("com.google.android.gms.ads.internal.report.IDynamiteErrorEventListener");
                            Mx mx = binderC0977Wg2.f17289P;
                            mx.getClass();
                            try {
                                G8 g8 = (G8) com.google.android.gms.internal.measurement.H1.G(mx.f14833G, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new C1561kH(29));
                                Parcel parcelJ0 = g8.j0();
                                A5.e(parcelJ0, binderC0697Dc);
                                g8.O2(1, parcelJ0);
                                return;
                            } catch (RemoteException e8) {
                                p120p3.h.g("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e8.getMessage())));
                                return;
                            } catch (p120p3.j e9) {
                                p120p3.h.g("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e9.getMessage())));
                                return;
                            }
                    }
                }
            });
        }
    }
}
