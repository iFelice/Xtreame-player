package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0731Fg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0671Bg f13385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f13386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13387c;

    public /* synthetic */ C0731Fg(C0671Bg c0671Bg) {
        this.f13385a = c0671Bg;
    }

    public final C0848Nd a() {
        Cw.f1(Context.class, this.f13386b);
        Context context = this.f13386b;
        String str = this.f13387c;
        C0848Nd c0848Nd = new C0848Nd();
        c0848Nd.f14911a = this.f13385a;
        JJ jjA = JJ.a(context);
        c0848Nd.f14912b = jjA;
        C0671Bg c0671Bg = (C0671Bg) c0848Nd.f14911a;
        MJ mj = c0671Bg.f12453m0;
        c0848Nd.f14913c = new C2317yv(jjA, mj, c0671Bg.f12455n0);
        c0848Nd.f14914d = HJ.b(new Ou(mj, 3));
        MJ mjB = HJ.b(AbstractC1270el.f18579x);
        c0848Nd.f14915e = mjB;
        MJ mj2 = (MJ) c0848Nd.f14913c;
        MJ mj3 = (MJ) c0848Nd.f14914d;
        MJ mjB2 = HJ.b(new C1892ql(jjA, c0671Bg.f12434d, c0671Bg.f12404B, mj2, mj3, mjB, 10));
        c0848Nd.f14916f = mjB2;
        c0848Nd.f14917g = HJ.b(new Lu(mjB2, mj3, mjB));
        JJ jjB = JJ.b(str);
        c0848Nd.f14918h = jjB;
        c0848Nd.f14919i = HJ.b(new C0722Em(jjB, mjB2, jjA, mj3, mjB, c0671Bg.f12448k, c0671Bg.f12406D, c0671Bg.f12469y, 7));
        return c0848Nd;
    }
}
