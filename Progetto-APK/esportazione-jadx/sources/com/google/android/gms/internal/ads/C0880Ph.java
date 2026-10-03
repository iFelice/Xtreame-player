package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ph, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0880Ph implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f15452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f15453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f15454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f15455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f15456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f15457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f15458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f15459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f15460i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f15461j;

    public C0880Ph(C0909Ri c0909Ri, MJ mj, C0964Vh c0964Vh, MJ mj2, MJ mj3, C0978Wh c0978Wh, C1788ol c1788ol, MJ mj4, GJ gj, MJ mj5) {
        this.f15452a = c0909Ri;
        this.f15453b = mj;
        this.f15454c = c0964Vh;
        this.f15455d = mj2;
        this.f15456e = mj3;
        this.f15457f = c0978Wh;
        this.f15458g = c1788ol;
        this.f15459h = mj4;
        this.f15460i = gj;
        this.f15461j = mj5;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0866Oh zzb() {
        C2200wi c2200wiZzb = ((C0909Ri) this.f15452a).zzb();
        Context context = (Context) this.f15453b.zzb();
        Pv pv = (Pv) ((C0964Vh) this.f15454c).f17079a.f21884J;
        Cw.N0(pv);
        View view = (View) ((C0950Uh) this.f15455d).f16871a.f21883I;
        Cw.N0(view);
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) ((C1061ai) this.f15456e).f17908a.f21885K;
        InterfaceC2148vi interfaceC2148vi = (InterfaceC2148vi) ((C0978Wh) this.f15457f).f17296a.f21882H;
        C0856Nl c0856Nl = ((C1788ol) this.f15458g).f20319a.f19838a;
        Cw.N0(c0856Nl);
        return new C0866Oh(c2200wiZzb, context, pv, view, interfaceC0715Ef, interfaceC2148vi, c0856Nl, (C0883Pk) this.f15459h.zzb(), HJ.a(Cw.B(this.f15460i)), (Executor) this.f15461j.zzb());
    }
}
