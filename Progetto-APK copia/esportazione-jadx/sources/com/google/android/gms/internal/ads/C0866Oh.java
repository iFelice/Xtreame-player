package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Oh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0866Oh extends AbstractC0852Nh {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f15181j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f15182k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final InterfaceC0715Ef f15183l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Pv f15184m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final InterfaceC2148vi f15185n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0856Nl f15186o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final C0883Pk f15187p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final EJ f15188q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Executor f15189r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public p090l3.d1 f15190s;

    public C0866Oh(C2200wi c2200wi, Context context, Pv pv, View view, InterfaceC0715Ef interfaceC0715Ef, InterfaceC2148vi interfaceC2148vi, C0856Nl c0856Nl, C0883Pk c0883Pk, EJ ej, Executor executor) {
        super(c2200wi);
        this.f15181j = context;
        this.f15182k = view;
        this.f15183l = interfaceC0715Ef;
        this.f15184m = pv;
        this.f15185n = interfaceC2148vi;
        this.f15186o = c0856Nl;
        this.f15187p = c0883Pk;
        this.f15188q = ej;
        this.f15189r = executor;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2252xi
    public final void a() {
        this.f15189r.execute(new RunnableC0878Pf(this, 21));
        super.a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final int b() {
        return ((Qv) this.f21912a.f16755b.f21883I).f16152d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final int c() {
        J7 j8 = Q7.f15856i7;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && this.f21913b.f15259g0) {
            if (!((Boolean) c3099q.f26627c.a(Q7.f15865j7)).booleanValue()) {
                return 0;
            }
        }
        return ((Qv) this.f21912a.f16755b.f21883I).f16151c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final View d() {
        return this.f15182k;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final p090l3.B0 e() {
        try {
            return this.f15185n.mo9zza();
        } catch (C1075aw unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final Pv f() {
        p090l3.d1 d1Var = this.f15190s;
        if (d1Var != null) {
            return d1Var.f26556O ? new Pv(true, -3, 0) : new Pv(false, d1Var.f26552K, d1Var.f26549H);
        }
        Ov ov = this.f21913b;
        if (ov.f15251c0) {
            for (String str : ov.f15246a) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            View view = this.f15182k;
            return new Pv(false, view.getWidth(), view.getHeight());
        }
        return (Pv) ov.f15280r.get(0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final Pv g() {
        return this.f15184m;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final void h() {
        this.f15187p.zza();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0852Nh
    public final void i(FrameLayout frameLayout, p090l3.d1 d1Var) {
        InterfaceC0715Ef interfaceC0715Ef;
        if (frameLayout == null || (interfaceC0715Ef = this.f15183l) == null) {
            return;
        }
        interfaceC0715Ef.n0(A2.i.a(d1Var));
        frameLayout.setMinimumHeight(d1Var.f26550I);
        frameLayout.setMinimumWidth(d1Var.f26553L);
        this.f15190s = d1Var;
    }
}
