package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1126bv implements InterfaceC1795os {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f18123G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f18124H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC1317fg f18125I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1074av f18126J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final InterfaceC2161vv f18127K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p120p3.a f18128L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final FrameLayout f18129M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Uw f18130N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Xv f18131O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public D4.b f18132P;

    public C1126bv(Context context, Executor executor, AbstractC1317fg abstractC1317fg, InterfaceC2161vv interfaceC2161vv, C1074av c1074av, Xv xv, p120p3.a aVar) {
        this.f18123G = context;
        this.f18124H = executor;
        this.f18125I = abstractC1317fg;
        this.f18127K = interfaceC2161vv;
        this.f18126J = c1074av;
        this.f18131O = xv;
        this.f18128L = aVar;
        new FrameLayout(context);
        this.f18130N = abstractC1317fg.d();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean a() {
        D4.b bVar = this.f18132P;
        return (bVar == null || bVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final synchronized /* bridge */ /* synthetic */ boolean b(p090l3.b1 b1Var, String str, Q3.b bVar, InterfaceC1743ns interfaceC1743ns) {
        return c(b1Var, str, interfaceC1743ns);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    public final synchronized boolean c(p090l3.b1 b1Var, String str, InterfaceC1743ns interfaceC1743ns) {
        Tw tw;
        try {
            if (!b1Var.f26519I.getBoolean("is_sdk_preload", false)) {
                boolean z7 = ((Boolean) AbstractC1812p8.f20422b.l()).booleanValue() && ((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue();
                if (this.f18128L.f28198I < ((Integer) C3099q.f26624d.f26627c.a(Q7.ya)).intValue() || !z7) {
                    com.bumptech.glide.c.d("loadAd must be called on the main UI thread.");
                }
            }
            if (str == null) {
                p120p3.h.d("Ad unit ID should not be null for app open ad.");
                this.f18124H.execute(new RunnableC1026Zn(this, 10));
                return false;
            }
            if (this.f18132P != null) {
                return false;
            }
            if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
                InterfaceC2161vv interfaceC2161vv = this.f18127K;
                if (interfaceC2161vv.zzd() != null) {
                    Tw tw2 = (Tw) ((C0716Eg) ((AbstractC0747Gh) interfaceC2161vv.zzd())).f13125f.zzb();
                    tw2.i(7);
                    tw2.b(b1Var.f26532V);
                    tw2.f(b1Var.f26529S);
                    tw = tw2;
                } else {
                    tw = null;
                }
            } else {
                tw = null;
            }
            AbstractC2987b.f0(this.f18123G, b1Var.f26522L);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.h8)).booleanValue() && b1Var.f26522L) {
                ((C1895qo) ((C0671Bg) this.f18125I).f12467w.zzb()).e(true);
            }
            p083k3.l.f25980A.f25990j.getClass();
            Bundle bundleE = U2.m.e(new Pair("api-call", Long.valueOf(b1Var.f26542f0)), new Pair("dynamite-enter", Long.valueOf(System.currentTimeMillis())));
            Xv xv = this.f18131O;
            xv.f17532c = str;
            xv.f17531b = p090l3.d1.i();
            xv.f17530a = b1Var;
            xv.f17549t = bundleE;
            Context context = this.f18123G;
            Yv yvA = xv.a();
            Ow owO = U4.a.o(context, com.google.android.gms.internal.measurement.H1.M(yvA), 7, b1Var);
            Zu zu = new Zu();
            zu.f17814a = yvA;
            D4.b bVarA = this.f18127K.a(new C0871Om(zu, (Object) null, 13), new Xu(this, 0));
            this.f18132P = bVarA;
            Cw.h2(bVarA, new Yu(this, interfaceC1743ns, tw, owO, zu, 0), this.f18124H);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized C0701Dg d(InterfaceC2057tv interfaceC2057tv) {
        Zu zu = (Zu) interfaceC2057tv;
        int i8 = 0;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.x7)).booleanValue()) {
            C1217dj c1217dj = new C1217dj();
            c1217dj.f18346a = this.f18123G;
            c1217dj.f18347b = zu.f17814a;
            C1217dj c1217dj2 = new C1217dj(c1217dj);
            C1994sk c1994sk = new C1994sk();
            c1994sk.f20934l.add(new C0825Lk(this.f18126J, this.f18124H));
            c1994sk.d(this.f18126J, this.f18124H);
            C2046tk c2046tk = new C2046tk(c1994sk);
            C0701Dg c0701Dg = new C0701Dg(((C0671Bg) this.f18125I).f12432c, i8);
            c0701Dg.f12843f = c1217dj2;
            c0701Dg.f12842e = c2046tk;
            return c0701Dg;
        }
        C1074av c1074av = this.f18126J;
        C1074av c1074av2 = new C1074av(c1074av.f17997G);
        c1074av2.f18004N = c1074av;
        C1994sk c1994sk2 = new C1994sk();
        c1994sk2.a(c1074av2, this.f18124H);
        c1994sk2.f20929g.add(new C0825Lk(c1074av2, this.f18124H));
        c1994sk2.f20936n.add(new C0825Lk(c1074av2, this.f18124H));
        c1994sk2.f20935m.add(new C0825Lk(c1074av2, this.f18124H));
        c1994sk2.f20934l.add(new C0825Lk(c1074av2, this.f18124H));
        c1994sk2.d(c1074av2, this.f18124H);
        c1994sk2.f20937o = c1074av2;
        C1217dj c1217dj3 = new C1217dj();
        c1217dj3.f18346a = this.f18123G;
        c1217dj3.f18347b = zu.f17814a;
        C1217dj c1217dj4 = new C1217dj(c1217dj3);
        C2046tk c2046tk2 = new C2046tk(c1994sk2);
        C0701Dg c0701Dg2 = new C0701Dg(((C0671Bg) this.f18125I).f12432c, i8);
        c0701Dg2.f12843f = c1217dj4;
        c0701Dg2.f12842e = c2046tk2;
        return c0701Dg2;
    }
}
