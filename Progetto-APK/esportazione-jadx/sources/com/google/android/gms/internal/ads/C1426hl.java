package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1426hl implements InterfaceC0779Ij, p105n3.m, InterfaceC0659Aj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f19125G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC0715Ef f19126H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Ov f19127I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p120p3.a f19128J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final EnumC2329z6 f19129K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1637lq f19130L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C1689mq f19131M;

    public C1426hl(Context context, InterfaceC0715Ef interfaceC0715Ef, Ov ov, p120p3.a aVar, EnumC2329z6 enumC2329z6, C1637lq c1637lq) {
        this.f19125G = context;
        this.f19126H = interfaceC0715Ef;
        this.f19127I = ov;
        this.f19128J = aVar;
        this.f19129K = enumC2329z6;
        this.f19130L = c1637lq;
    }

    @Override // p105n3.m
    public final void O2() {
    }

    @Override // p105n3.m
    public final void Y() {
    }

    public final boolean a() {
        Bx bx;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15650J4)).booleanValue()) {
            return false;
        }
        C1637lq c1637lq = this.f19130L;
        synchronized (c1637lq) {
            bx = c1637lq.f19858f;
        }
        return bx != null;
    }

    @Override // p105n3.m
    public final void k3() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        InterfaceC0715Ef interfaceC0715Ef;
        int i8;
        int i9;
        J7 j8 = Q7.f15713R4;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            EnumC2329z6 enumC2329z6 = EnumC2329z6.REWARD_BASED_VIDEO_AD;
            EnumC2329z6 enumC2329z7 = this.f19129K;
            if (enumC2329z7 != enumC2329z6 && enumC2329z7 != EnumC2329z6.INTERSTITIAL && enumC2329z7 != EnumC2329z6.APP_OPEN) {
                return;
            }
        }
        Ov ov = this.f19127I;
        if (!ov.f15239T || (interfaceC0715Ef = this.f19126H) == null) {
            return;
        }
        p083k3.l lVar = p083k3.l.f25980A;
        lVar.f26002v.getClass();
        if (C0621y.g(this.f19125G)) {
            if (a()) {
                this.f19130L.b();
                return;
            }
            p120p3.a aVar = this.f19128J;
            String str = aVar.f28197H + "." + aVar.f28198I;
            Xu xu = ov.f15241V;
            String str2 = xu.p() + (-1) != 1 ? "javascript" : null;
            if (xu.p() == 1) {
                i8 = 2;
                i9 = 3;
            } else {
                i8 = ov.f15244Y == 2 ? 4 : 1;
                i9 = 1;
            }
            WebView webViewH0 = interfaceC0715Ef.h0();
            C0621y c0621y = lVar.f26002v;
            c0621y.getClass();
            this.f19131M = C0621y.a(str, webViewH0, str2, i8, i9, ov.f15269l0);
            View viewJ = interfaceC0715Ef.j();
            C1689mq c1689mq = this.f19131M;
            if (c1689mq != null) {
                boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(Q7.f15642I4)).booleanValue();
                C2267xx c2267xx = c1689mq.f20002a;
                if (zBooleanValue) {
                    WebView webViewH1 = interfaceC0715Ef.h0();
                    c0621y.getClass();
                    C0621y.e(c2267xx, webViewH1);
                    for (View view : interfaceC0715Ef.t0()) {
                        p083k3.l.f25980A.f26002v.getClass();
                        C0621y.k(new RunnableC1482iq(c2267xx, view, 0));
                    }
                } else {
                    c0621y.getClass();
                    C0621y.e(c2267xx, viewJ);
                }
                interfaceC0715Ef.e0(this.f19131M);
                p083k3.l.f25980A.f26002v.getClass();
                C0621y.f(c2267xx);
                interfaceC0715Ef.w("onSdkLoaded", new p132r.f(0));
            }
        }
    }

    @Override // p105n3.m
    public final void r1(int i8) {
        this.f19131M = null;
    }

    @Override // p105n3.m
    public final void u3() {
    }

    @Override // p105n3.m
    public final void v0() {
        InterfaceC0715Ef interfaceC0715Ef;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15689O4)).booleanValue() || (interfaceC0715Ef = this.f19126H) == null) {
            return;
        }
        if (this.f19131M != null || a()) {
            if (this.f19131M != null) {
                interfaceC0715Ef.w("onSdkImpression", new p132r.f(0));
            } else {
                this.f19130L.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        InterfaceC0715Ef interfaceC0715Ef;
        if (a()) {
            this.f19130L.a();
        } else {
            if (this.f19131M == null || (interfaceC0715Ef = this.f19126H) == null) {
                return;
            }
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15689O4)).booleanValue()) {
                interfaceC0715Ef.w("onSdkImpression", new p132r.f(0));
            }
        }
    }
}
