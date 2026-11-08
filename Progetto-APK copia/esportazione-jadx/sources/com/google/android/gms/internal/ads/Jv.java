package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import java.util.concurrent.Executor;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Jv implements InterfaceC1795os {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f14239G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f14240H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC1317fg f14241I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Gv f14242J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final InterfaceC2161vv f14243K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Uv f14244L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Uw f14245M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Xv f14246N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public D4.b f14247O;

    public Jv(Context context, Executor executor, AbstractC1317fg abstractC1317fg, InterfaceC2161vv interfaceC2161vv, Gv gv, Xv xv, Uv uv) {
        this.f14239G = context;
        this.f14240H = executor;
        this.f14241I = abstractC1317fg;
        this.f14243K = interfaceC2161vv;
        this.f14242J = gv;
        this.f14246N = xv;
        this.f14244L = uv;
        this.f14245M = abstractC1317fg.d();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean a() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean b(p090l3.b1 b1Var, String str, Q3.b bVar, InterfaceC1743ns interfaceC1743ns) {
        Tw tw;
        Executor executor = this.f14240H;
        if (str == null) {
            p120p3.h.d("Ad unit ID should not be null for rewarded video ad.");
            executor.execute(new RunnableC1026Zn(this, 13));
        } else {
            D4.b bVar2 = this.f14247O;
            if (bVar2 == null || bVar2.isDone()) {
                boolean zBooleanValue = ((Boolean) AbstractC1656m8.f19913c.l()).booleanValue();
                InterfaceC2161vv interfaceC2161vv = this.f14243K;
                if (!zBooleanValue || interfaceC2161vv.zzd() == null) {
                    tw = null;
                } else {
                    tw = (Tw) ((C0893Qg) interfaceC2161vv.zzd()).f16081g.zzb();
                    tw.i(5);
                    tw.b(b1Var.f26532V);
                    tw.f(b1Var.f26529S);
                }
                boolean z7 = b1Var.f26522L;
                Context context = this.f14239G;
                AbstractC2987b.f0(context, z7);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.h8)).booleanValue() && b1Var.f26522L) {
                    ((C1895qo) ((C0671Bg) this.f14241I).f12467w.zzb()).e(true);
                }
                Pair pair = new Pair("api-call", Long.valueOf(b1Var.f26542f0));
                p083k3.l.f25980A.f25990j.getClass();
                Bundle bundleE = U2.m.e(pair, new Pair("dynamite-enter", Long.valueOf(System.currentTimeMillis())));
                Xv xv = this.f14246N;
                xv.f17532c = str;
                xv.f17531b = new p090l3.d1("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
                xv.f17530a = b1Var;
                xv.f17549t = bundleE;
                Yv yvA = xv.a();
                Ow owO = U4.a.o(context, com.google.android.gms.internal.measurement.H1.M(yvA), 5, b1Var);
                Iv iv = new Iv();
                iv.f14066a = yvA;
                D4.b bVarA = interfaceC2161vv.a(new C0871Om(iv, (Object) null, 13), new Xu(this, 4));
                this.f14247O = bVarA;
                Cw.h2(bVarA, new Yu(this, interfaceC1743ns, tw, owO, iv, 1), executor);
                return true;
            }
        }
        return false;
    }

    public final C0701Dg c(InterfaceC2057tv interfaceC2057tv) {
        C0701Dg c0701Dg = new C0701Dg(((C0671Bg) this.f14241I).f12432c, 1);
        C1217dj c1217dj = new C1217dj();
        c1217dj.f18346a = this.f14239G;
        c1217dj.f18347b = ((Iv) interfaceC2057tv).f14066a;
        c1217dj.f18349d = this.f14244L;
        c0701Dg.f12843f = new C1217dj(c1217dj);
        c0701Dg.f12842e = new C2046tk(new C1994sk());
        return c0701Dg;
    }
}
