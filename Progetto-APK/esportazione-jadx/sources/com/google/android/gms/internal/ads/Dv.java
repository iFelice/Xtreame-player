package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import java.util.HashSet;
import java.util.concurrent.Executor;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Dv implements InterfaceC1795os {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f12897G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f12898H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC1317fg f12899I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1433hs f12900J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Gv f12901K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Z7 f12902L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Uw f12903M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Xv f12904N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Fw f12905O;

    public Dv(Context context, Executor executor, AbstractC1317fg abstractC1317fg, C1433hs c1433hs, Gv gv, Xv xv) {
        this.f12897G = context;
        this.f12898H = executor;
        this.f12899I = abstractC1317fg;
        this.f12900J = c1433hs;
        this.f12904N = xv;
        this.f12901K = gv;
        this.f12903M = abstractC1317fg.d();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean a() {
        Fw fw = this.f12905O;
        return (fw == null || fw.f13441I.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean b(p090l3.b1 b1Var, String str, Q3.b bVar, InterfaceC1743ns interfaceC1743ns) {
        C0851Ng c0851Ng;
        Tw tw;
        Executor executor = this.f12898H;
        if (str == null) {
            p120p3.h.d("Ad unit ID should not be null for interstitial ad.");
            executor.execute(new RunnableC1026Zn(this, 12));
            return false;
        }
        if (a()) {
            return false;
        }
        J7 j8 = Q7.h8;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        AbstractC1317fg abstractC1317fg = this.f12899I;
        if (zBooleanValue && b1Var.f26522L) {
            ((C1895qo) ((C0671Bg) abstractC1317fg).f12467w.zzb()).e(true);
        }
        p090l3.d1 d1Var = ((Av) bVar).f12070c;
        Pair pair = new Pair("api-call", Long.valueOf(b1Var.f26542f0));
        p083k3.l.f25980A.f25990j.getClass();
        Bundle bundleE = U2.m.e(pair, new Pair("dynamite-enter", Long.valueOf(System.currentTimeMillis())));
        Xv xv = this.f12904N;
        xv.f17532c = str;
        xv.f17531b = d1Var;
        xv.f17530a = b1Var;
        xv.f17549t = bundleE;
        Yv yvA = xv.a();
        int iM = com.google.android.gms.internal.measurement.H1.M(yvA);
        Context context = this.f12897G;
        Ow owO = U4.a.o(context, iM, 4, b1Var);
        boolean zBooleanValue2 = ((Boolean) c3099q.f26627c.a(Q7.y7)).booleanValue();
        C1433hs c1433hs = this.f12900J;
        if (zBooleanValue2) {
            C0671Bg c0671Bg = ((C0671Bg) abstractC1317fg).f12432c;
            C1217dj c1217dj = new C1217dj();
            c1217dj.f18346a = context;
            c1217dj.f18347b = yvA;
            C1217dj c1217dj2 = new C1217dj(c1217dj);
            C1994sk c1994sk = new C1994sk();
            c1994sk.b(c1433hs, executor);
            c1994sk.c(c1433hs, executor);
            c0851Ng = new C0851Ng(c0671Bg, new C0621y(4), new C2046tk(c1994sk), c1217dj2, new C2053tr(), new Qr(this.f12902L), null, null);
        } else {
            C1994sk c1994sk2 = new C1994sk();
            HashSet hashSet = c1994sk2.f20930h;
            HashSet hashSet2 = c1994sk2.f20927e;
            Gv gv = this.f12901K;
            if (gv != null) {
                hashSet2.add(new C0825Lk(gv, executor));
                hashSet.add(new C0825Lk(gv, executor));
                c1994sk2.a(gv, executor);
            }
            C0671Bg c0671Bg2 = ((C0671Bg) abstractC1317fg).f12432c;
            C1217dj c1217dj3 = new C1217dj();
            c1217dj3.f18346a = context;
            c1217dj3.f18347b = yvA;
            C1217dj c1217dj4 = new C1217dj(c1217dj3);
            c1994sk2.b(c1433hs, executor);
            hashSet2.add(new C0825Lk(c1433hs, executor));
            hashSet.add(new C0825Lk(c1433hs, executor));
            c1994sk2.a(c1433hs, executor);
            c1994sk2.f20925c.add(new C0825Lk(c1433hs, executor));
            c1994sk2.d(c1433hs, executor);
            c1994sk2.c(c1433hs, executor);
            c1994sk2.f20935m.add(new C0825Lk(c1433hs, executor));
            c1994sk2.f20934l.add(new C0825Lk(c1433hs, executor));
            c0851Ng = new C0851Ng(c0671Bg2, new C0621y(4), new C2046tk(c1994sk2), c1217dj4, new C2053tr(), new Qr(this.f12902L), null, null);
        }
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            Tw tw2 = (Tw) c0851Ng.f15022l0.zzb();
            tw2.i(4);
            tw2.b(b1Var.f26532V);
            tw2.f(b1Var.f26529S);
            tw = tw2;
        } else {
            tw = null;
        }
        C0823Li c0823Li = (C0823Li) c0851Ng.f14937A0.zzb();
        Fw fwA = c0823Li.a(c0823Li.b());
        this.f12905O = fwA;
        Cw.h2(fwA, new Yu(this, interfaceC1743ns, tw, owO, c0851Ng, 6), executor);
        return true;
    }
}
