package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Po implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f15469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f15470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f15471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f15472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f15473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f15474f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f15475g;

    public Po(JJ jj, C1523jg c1523jg, C1938rg c1938rg, MJ mj, MJ mj2, MJ mj3, MJ mj4) {
        this.f15469a = jj;
        this.f15470b = c1523jg;
        this.f15471c = c1938rg;
        this.f15472d = mj;
        this.f15473e = mj2;
        this.f15474f = mj3;
        this.f15475g = mj4;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Oo zzb() {
        AbstractC1317fg abstractC1317fg = (AbstractC1317fg) this.f15469a.zzb();
        Context contextA = ((C1523jg) this.f15470b).a();
        p120p3.a aVarA = ((C1938rg) this.f15471c).a();
        Yv yvA = ((C1526jj) this.f15472d).a();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new Oo(abstractC1317fg, contextA, aVarA, yvA, c1936re, (String) this.f15473e.zzb(), (Tw) this.f15474f.zzb(), (C0693Cn) this.f15475g.zzb());
    }
}
