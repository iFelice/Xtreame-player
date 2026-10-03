package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.util.Pair;
import java.util.NoSuchElementException;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1337g {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final MO f18857m = new MO();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1285f f18858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1699n f18859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1958s f18860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1182d f18861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InterfaceC1840pl f18862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArraySet f18863f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C1804p0 f18864g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C2031tK f18865h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C2054ts f18866i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Pair f18867j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f18868k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f18869l;

    public C1337g(p000a.x xVar) {
        C1285f c1285f = new C1285f(this, (Context) xVar.f8620b);
        this.f18858a = c1285f;
        InterfaceC1840pl interfaceC1840pl = (InterfaceC1840pl) xVar.f8624f;
        this.f18862e = interfaceC1840pl;
        C1699n c1699n = (C1699n) xVar.f8621c;
        this.f18859b = c1699n;
        c1699n.f20041k = interfaceC1840pl;
        this.f18860c = new C1958s(new MN(this), c1699n);
        C1182d c1182d = (C1182d) xVar.f8623e;
        p113o3.r.x(c1182d);
        this.f18861d = c1182d;
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        this.f18863f = copyOnWriteArraySet;
        this.f18869l = 0;
        copyOnWriteArraySet.add(c1285f);
    }

    public static void a(C1337g c1337g, long j8, long j9) {
        C1958s c1958s;
        CO co;
        int i8;
        if (c1337g.f18868k != 0 || (i8 = (co = (c1958s = c1337g.f18860c).f20819e).f12629b) == 0) {
            return;
        }
        if (i8 == 0) {
            throw new NoSuchElementException();
        }
        long j10 = ((long[]) co.f12631d)[co.f12628a];
        Long l4 = (Long) c1958s.f20818d.c(j10);
        C1699n c1699n = c1958s.f20815a;
        if (l4 != null && l4.longValue() != c1958s.f20822h) {
            c1958s.f20822h = l4.longValue();
            c1699n.f(2);
        }
        int iA = c1958s.f20815a.a(j10, j8, j9, c1958s.f20822h, false, c1958s.f20816b);
        final int i9 = 1;
        MN mn = c1958s.f20824j;
        if (iA != 0 && iA != 1) {
            if (iA == 2 || iA == 3 || iA == 4) {
                c1958s.f20823i = j10;
                co.L();
                for (final C1285f c1285f : ((C1337g) mn.f14706G).f18863f) {
                    final InterfaceC2270y interfaceC2270y = c1285f.f18641k;
                    final int i10 = 0;
                    c1285f.f18642l.execute(new Runnable(c1285f, interfaceC2270y, i10) { // from class: com.google.android.gms.internal.ads.e

                        /* JADX INFO: renamed from: G, reason: collision with root package name */
                        public final /* synthetic */ int f18409G;

                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                        public final /* synthetic */ InterfaceC2270y f18410H;

                        {
                            this.f18409G = i10;
                            this.f18410H = interfaceC2270y;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i11 = this.f18409G;
                            InterfaceC2270y interfaceC2270y2 = this.f18410H;
                            switch (i11) {
                                case 0:
                                    interfaceC2270y2.b();
                                    break;
                                default:
                                    interfaceC2270y2.a();
                                    break;
                            }
                        }
                    });
                }
                p113o3.r.x(null);
                throw null;
            }
            return;
        }
        c1958s.f20823i = j10;
        C2043th c2043th = (C2043th) c1958s.f20817c.c(co.L());
        if (c2043th != null && !c2043th.equals(C2043th.f21089d) && !c2043th.equals(c1958s.f20821g)) {
            c1958s.f20821g = c2043th;
            K k8 = new K();
            k8.f14277r = c2043th.f21090a;
            k8.f14278s = c2043th.f21091b;
            k8.f("video/raw");
            C1804p0 c1804p0 = new C1804p0(k8);
            C1337g c1337g2 = (C1337g) mn.f14706G;
            c1337g2.f18864g = c1804p0;
            for (C1285f c1285f2 : c1337g2.f18863f) {
                c1285f2.f18642l.execute(new K.a(c1285f2, c1285f2.f18641k, c2043th, 16, 0));
            }
        }
        int i11 = c1699n.f20034d;
        c1699n.f20034d = 3;
        ((Nr) c1699n.f20041k).getClass();
        c1699n.f20036f = Et.t(SystemClock.elapsedRealtime());
        if (i11 != 3) {
            C1337g c1337g3 = (C1337g) mn.f14706G;
            if (c1337g3.f18867j != null) {
                for (final C1285f c1285f3 : c1337g3.f18863f) {
                    final InterfaceC2270y interfaceC2270y2 = c1285f3.f18641k;
                    c1285f3.f18642l.execute(new Runnable(c1285f3, interfaceC2270y2, i9) { // from class: com.google.android.gms.internal.ads.e

                        /* JADX INFO: renamed from: G, reason: collision with root package name */
                        public final /* synthetic */ int f18409G;

                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                        public final /* synthetic */ InterfaceC2270y f18410H;

                        {
                            this.f18409G = i9;
                            this.f18410H = interfaceC2270y2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i12 = this.f18409G;
                            InterfaceC2270y interfaceC2270y3 = this.f18410H;
                            switch (i12) {
                                case 0:
                                    interfaceC2270y3.b();
                                    break;
                                default:
                                    interfaceC2270y3.a();
                                    break;
                            }
                        }
                    });
                }
            }
        }
        C1337g c1337g4 = (C1337g) mn.f14706G;
        if (c1337g4.f18865h != null) {
            if (c1337g4.f18864g == null) {
                new C1804p0(new K());
            }
            C1337g c1337g5 = (C1337g) mn.f14706G;
            C2031tK c2031tK = c1337g5.f18865h;
            ((Nr) c1337g5.f18862e).getClass();
            System.nanoTime();
            c2031tK.getClass();
        }
        p113o3.r.x(null);
        throw null;
    }
}
