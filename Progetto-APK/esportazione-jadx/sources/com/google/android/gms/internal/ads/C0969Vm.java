package com.google.android.gms.internal.ads;

import java.util.Objects;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0969Vm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1734nj f17105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0734Fj f17106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0839Mj f17107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0896Qj f17108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1527jk f17109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0855Nk f17110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0738Fn f17111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1488ix f17112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1172cq f17113i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1784oh f17114j;

    public C0969Vm(C1734nj c1734nj, C0734Fj c0734Fj, C0839Mj c0839Mj, C0896Qj c0896Qj, C1527jk c1527jk, C0855Nk c0855Nk, C0738Fn c0738Fn, C1488ix c1488ix, C1172cq c1172cq, C1784oh c1784oh) {
        this.f17105a = c1734nj;
        this.f17106b = c0734Fj;
        this.f17107c = c0839Mj;
        this.f17108d = c0896Qj;
        this.f17109e = c1527jk;
        this.f17110f = c0855Nk;
        this.f17111g = c0738Fn;
        this.f17112h = c1488ix;
        this.f17113i = c1172cq;
        this.f17114j = c1784oh;
    }

    public final void a(C0983Wm c0983Wm, InterfaceC0715Ef interfaceC0715Ef) {
        C0955Um c0955Um = c0983Wm.f17319a;
        C0734Fj c0734Fj = this.f17106b;
        Objects.requireNonNull(c0734Fj);
        C0885Pm c0885Pm = new C0885Pm(c0734Fj, 1);
        C1734nj c1734nj = this.f17105a;
        C0839Mj c0839Mj = this.f17107c;
        C0896Qj c0896Qj = this.f17108d;
        C1527jk c1527jk = this.f17109e;
        C0855Nk c0855Nk = this.f17110f;
        synchronized (c0955Um) {
            c0955Um.a(c1734nj, c0839Mj, c0896Qj, c1527jk, c0885Pm);
            c0955Um.f16883L = c0855Nk;
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.v9)).booleanValue() || interfaceC0715Ef == null || interfaceC0715Ef.zzN() == null) {
            return;
        }
        AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef.zzN();
        abstractC0990XfZzN.o(this.f17114j, this.f17113i, this.f17112h);
        abstractC0990XfZzN.p(this.f17114j, this.f17113i, this.f17111g);
    }
}
