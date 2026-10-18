package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3093n;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0791Jg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0671Bg f14178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f14179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f14180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p090l3.d1 f14181d;

    public /* synthetic */ C0791Jg(C0671Bg c0671Bg) {
        this.f14178a = c0671Bg;
    }

    public final C3093n a() {
        Cw.f1(Context.class, this.f14179b);
        Cw.f1(String.class, this.f14180c);
        Cw.f1(p090l3.d1.class, this.f14181d);
        Context context = this.f14179b;
        String str = this.f14180c;
        p090l3.d1 d1Var = this.f14181d;
        C3093n c3093n = new C3093n();
        c3093n.f26609a = this.f14178a;
        c3093n.f26610b = JJ.a(context);
        c3093n.f26611c = JJ.a(d1Var);
        c3093n.f26612d = JJ.a(str);
        C0671Bg c0671Bg = (C0671Bg) c3093n.f26609a;
        c3093n.f26613e = HJ.b(new C0843Mn(c0671Bg.f12469y, 20, (Object) null));
        MJ mjB = HJ.b(new Ou(c0671Bg.f12453m0, 3));
        c3093n.f26614f = mjB;
        MJ mj = (MJ) c3093n.f26610b;
        MJ mj2 = (MJ) c3093n.f26613e;
        MJ mjB2 = HJ.b(new C0687Ch(mj, c0671Bg.f12434d, c0671Bg.f12404B, mj2, mjB, AbstractC1270el.f18580y, 15));
        c3093n.f26615g = mjB2;
        c3093n.f26616h = HJ.b(new C1530jn(mj, (MJ) c3093n.f26611c, (MJ) c3093n.f26612d, mjB2, mj2, mjB, c0671Bg.f12448k, c0671Bg.f12406D, c0671Bg.f12469y, 2));
        return c3093n;
    }
}
