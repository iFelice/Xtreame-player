package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ni, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1733ni implements InterfaceC0779Ij, InterfaceC0659Aj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f20187G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC0715Ef f20188H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Ov f20189I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p120p3.a f20190J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C1689mq f20191K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f20192L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C1637lq f20193M;

    public C1733ni(Context context, InterfaceC0715Ef interfaceC0715Ef, Ov ov, p120p3.a aVar, C1637lq c1637lq) {
        this.f20187G = context;
        this.f20188H = interfaceC0715Ef;
        this.f20189I = ov;
        this.f20190J = aVar;
        this.f20193M = c1637lq;
    }

    public final synchronized void a() {
        int i8;
        int i9;
        try {
            if (this.f20189I.f15239T && this.f20188H != null) {
                Context context = this.f20187G;
                p083k3.l lVar = p083k3.l.f25980A;
                lVar.f26002v.getClass();
                if (C0621y.g(context)) {
                    p120p3.a aVar = this.f20190J;
                    String str = aVar.f28197H + "." + aVar.f28198I;
                    Xu xu = this.f20189I.f15241V;
                    String str2 = xu.p() + (-1) != 1 ? "javascript" : null;
                    if (xu.p() == 1) {
                        i8 = 2;
                        i9 = 3;
                    } else {
                        i8 = this.f20189I.f15254e == 1 ? 3 : 1;
                        i9 = 1;
                    }
                    InterfaceC0715Ef interfaceC0715Ef = this.f20188H;
                    Ov ov = this.f20189I;
                    C0621y c0621y = lVar.f26002v;
                    WebView webViewH0 = interfaceC0715Ef.h0();
                    String str3 = ov.f15269l0;
                    c0621y.getClass();
                    this.f20191K = C0621y.a(str, webViewH0, str2, i8, i9, str3);
                    View viewJ = this.f20188H.j();
                    C1689mq c1689mq = this.f20191K;
                    if (c1689mq != null) {
                        C2267xx c2267xx = c1689mq.f20002a;
                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15642I4)).booleanValue()) {
                            InterfaceC0715Ef interfaceC0715Ef2 = this.f20188H;
                            C0621y c0621y2 = lVar.f26002v;
                            WebView webViewH1 = interfaceC0715Ef2.h0();
                            c0621y2.getClass();
                            C0621y.e(c2267xx, webViewH1);
                            for (View view : this.f20188H.t0()) {
                                p083k3.l.f25980A.f26002v.getClass();
                                C0621y.k(new RunnableC1482iq(c2267xx, view, 0));
                            }
                        } else {
                            lVar.f26002v.getClass();
                            C0621y.e(c2267xx, viewJ);
                        }
                        this.f20188H.e0(this.f20191K);
                        p083k3.l.f25980A.f26002v.getClass();
                        C0621y.f(c2267xx);
                        this.f20192L = true;
                        this.f20188H.w("onSdkLoaded", new p132r.f(0));
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean b() {
        Bx bx;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15650J4)).booleanValue()) {
            return false;
        }
        C1637lq c1637lq = this.f20193M;
        synchronized (c1637lq) {
            bx = c1637lq.f19858f;
        }
        return bx != null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final synchronized void n() {
        if (b()) {
            this.f20193M.b();
        } else {
            if (this.f20192L) {
                return;
            }
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final synchronized void zzr() {
        InterfaceC0715Ef interfaceC0715Ef;
        if (b()) {
            this.f20193M.a();
            return;
        }
        if (!this.f20192L) {
            a();
        }
        if (!this.f20189I.f15239T || this.f20191K == null || (interfaceC0715Ef = this.f20188H) == null) {
            return;
        }
        interfaceC0715Ef.w("onSdkImpression", new p132r.f(0));
    }
}
