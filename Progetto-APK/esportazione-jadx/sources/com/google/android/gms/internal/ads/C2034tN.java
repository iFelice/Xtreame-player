package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2034tN extends AbstractC1567kN {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AbstractC1257eN f21066k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f21067l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C2196we f21068m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C1521je f21069n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C1930rN f21070o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C1879qN f21071p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f21072q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f21073r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f21074s;

    public C2034tN(AbstractC1257eN abstractC1257eN, boolean z7) {
        boolean z8;
        this.f21066k = abstractC1257eN;
        if (z7) {
            abstractC1257eN.q();
            z8 = true;
        } else {
            z8 = false;
        }
        this.f21067l = z8;
        this.f21068m = new C2196we();
        this.f21069n = new C1521je();
        abstractC1257eN.d();
        this.f21070o = new C1930rN(new C1982sN(abstractC1257eN.c()), C2196we.f21706m, C1930rN.f20721e);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void a(InterfaceC2138vN interfaceC2138vN) {
        C1879qN c1879qN = (C1879qN) interfaceC2138vN;
        InterfaceC2138vN interfaceC2138vN2 = c1879qN.f20578J;
        if (interfaceC2138vN2 != null) {
            AbstractC1257eN abstractC1257eN = c1879qN.f20577I;
            abstractC1257eN.getClass();
            abstractC1257eN.a(interfaceC2138vN2);
        }
        if (interfaceC2138vN == this.f21071p) {
            this.f21071p = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final C2225x6 c() {
        return this.f21066k.c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void d() {
        this.f21066k.d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void j(InterfaceC1615lJ interfaceC1615lJ) {
        this.f19606j = interfaceC1615lJ;
        int i8 = Et.f13234a;
        Looper looperMyLooper = Looper.myLooper();
        p113o3.r.x(looperMyLooper);
        this.f19605i = new Handler(looperMyLooper, null);
        if (this.f21067l) {
            return;
        }
        this.f21072q = true;
        t(null, this.f21066k);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN, com.google.android.gms.internal.ads.AbstractC1257eN
    public final void m() {
        this.f21073r = false;
        this.f21072q = false;
        super.m();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void p(C2225x6 c2225x6) {
        if (this.f21074s) {
            C1930rN c1930rN = this.f21070o;
            this.f21070o = new C1930rN(new VK(this.f21070o.f20168b, c2225x6), c1930rN.f20722c, c1930rN.f20723d);
        } else {
            this.f21070o = new C1930rN(new C1982sN(c2225x6), C2196we.f21706m, C1930rN.f20721e);
        }
        this.f21066k.p(c2225x6);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void q() {
        this.f21066k.q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void r() {
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0069  */
    @Override // com.google.android.gms.internal.ads.AbstractC1567kN
    public final void s(Object obj, AbstractC1257eN abstractC1257eN, AbstractC0774Ie abstractC0774Ie) {
        long j8;
        C1930rN c1930rN;
        C1930rN c1930rN2;
        C2190wN c2190wNA = null;
        if (this.f21073r) {
            C1930rN c1930rN3 = this.f21070o;
            this.f21070o = new C1930rN(abstractC0774Ie, c1930rN3.f20722c, c1930rN3.f20723d);
            C1879qN c1879qN = this.f21071p;
            if (c1879qN != null) {
                y(c1879qN.f20580L);
            }
        } else if (abstractC0774Ie.o()) {
            if (this.f21074s) {
                C1930rN c1930rN4 = this.f21070o;
                c1930rN2 = new C1930rN(abstractC0774Ie, c1930rN4.f20722c, c1930rN4.f20723d);
            } else {
                c1930rN2 = new C1930rN(abstractC0774Ie, C2196we.f21706m, C1930rN.f20721e);
            }
            this.f21070o = c1930rN2;
        } else {
            C2196we c2196we = this.f21068m;
            abstractC0774Ie.e(0, c2196we, 0L);
            Object obj2 = c2196we.f21708a;
            C1879qN c1879qN2 = this.f21071p;
            if (c1879qN2 != null) {
                this.f21070o.n(c1879qN2.f20575G.f21690a, this.f21069n);
                this.f21070o.e(0, c2196we, 0L);
                long j9 = c1879qN2.f20576H;
                if (j9 != 0) {
                    j8 = j9;
                } else {
                    j8 = 0;
                }
            } else {
                j8 = 0;
            }
            Pair pairL = abstractC0774Ie.l(this.f21068m, this.f21069n, 0, j8);
            Object obj3 = pairL.first;
            long jLongValue = ((Long) pairL.second).longValue();
            if (this.f21074s) {
                C1930rN c1930rN5 = this.f21070o;
                c1930rN = new C1930rN(abstractC0774Ie, c1930rN5.f20722c, c1930rN5.f20723d);
            } else {
                c1930rN = new C1930rN(abstractC0774Ie, obj2, obj3);
            }
            this.f21070o = c1930rN;
            C1879qN c1879qN3 = this.f21071p;
            if (c1879qN3 != null && y(jLongValue)) {
                C2190wN c2190wN = c1879qN3.f20575G;
                Object obj4 = c2190wN.f21690a;
                if (this.f21070o.f20723d != null && obj4.equals(C1930rN.f20721e)) {
                    obj4 = this.f21070o.f20723d;
                }
                c2190wNA = c2190wN.a(obj4);
            }
        }
        this.f21074s = true;
        this.f21073r = true;
        k(this.f21070o);
        if (c2190wNA != null) {
            C1879qN c1879qN4 = this.f21071p;
            c1879qN4.getClass();
            c1879qN4.g(c2190wNA);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN
    public final /* bridge */ /* synthetic */ void u(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN
    public final /* synthetic */ void v(Object obj, long j8) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1567kN
    public final C2190wN w(Object obj, C2190wN c2190wN) {
        Object obj2 = this.f21070o.f20723d;
        Object obj3 = c2190wN.f21690a;
        if (obj2 != null && obj2.equals(obj3)) {
            obj3 = C1930rN.f20721e;
        }
        return c2190wN.a(obj3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public final C1879qN b(C2190wN c2190wN, CO co, long j8) {
        C1879qN c1879qN = new C1879qN(c2190wN, co, j8);
        p113o3.r.M(c1879qN.f20577I == null);
        AbstractC1257eN abstractC1257eN = this.f21066k;
        c1879qN.f20577I = abstractC1257eN;
        if (this.f21073r) {
            Object obj = this.f21070o.f20723d;
            Object obj2 = c2190wN.f21690a;
            if (obj != null && obj2.equals(C1930rN.f20721e)) {
                obj2 = this.f21070o.f20723d;
            }
            c1879qN.g(c2190wN.a(obj2));
        } else {
            this.f21071p = c1879qN;
            if (!this.f21072q) {
                this.f21072q = true;
                t(null, abstractC1257eN);
            }
        }
        return c1879qN;
    }

    public final boolean y(long j8) {
        C1879qN c1879qN = this.f21071p;
        int iA = this.f21070o.a(c1879qN.f20575G.f21690a);
        if (iA == -1) {
            return false;
        }
        C1930rN c1930rN = this.f21070o;
        C1521je c1521je = this.f21069n;
        c1930rN.d(iA, c1521je, false);
        long j9 = c1521je.f19468d;
        if (j9 != -9223372036854775807L && j8 >= j9) {
            j8 = Math.max(0L, j9 - 1);
        }
        c1879qN.f20580L = j8;
        return true;
    }
}
