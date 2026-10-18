package com.google.android.gms.internal.ads;

import androidx.leanback.widget.C0484j;
import java.util.concurrent.atomic.AtomicReference;
import p021c4.C0621y;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.av, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1074av implements InterfaceC1993sj, InterfaceC0868Oj, InterfaceC2005sv, p105n3.m, InterfaceC0924Sj, InterfaceC2305yj, InterfaceC0869Ok {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1591kw f17997G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicReference f17998H = new AtomicReference();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicReference f17999I = new AtomicReference();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicReference f18000J = new AtomicReference();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AtomicReference f18001K = new AtomicReference();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final AtomicReference f18002L = new AtomicReference();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AtomicReference f18003M = new AtomicReference();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C1074av f18004N = null;

    public C1074av(C1591kw c1591kw) {
        this.f17997G = c1591kw;
    }

    @Override // p105n3.m
    public final void O2() {
    }

    @Override // p105n3.m
    public final void Y() {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.Y();
        } else {
            U2.m.f(this.f18002L, new C0621y(29));
        }
    }

    public final void a() {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.a();
            return;
        }
        Xu xu = this.f17997G.f19672a;
        int i8 = 1;
        if (xu != null) {
            C2266xw c2266xw = (C2266xw) xu.f17529H;
            synchronized (c2266xw) {
                c2266xw.f21955e = 1;
                c2266xw.b();
            }
        }
        U2.m.f(this.f17999I, new p021c4.A(i8));
        U2.m.f(this.f18000J, new p021c4.A(2));
    }

    public final void b(BinderC0792Jh binderC0792Jh) {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.b(binderC0792Jh);
        } else {
            U2.m.f(this.f17998H, new Xu(binderC0792Jh, 1));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2005sv
    public final void c(InterfaceC2005sv interfaceC2005sv) {
        this.f18004N = (C1074av) interfaceC2005sv;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2305yj
    public final void d(C3117z0 c3117z0) {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.d(c3117z0);
        } else {
            U2.m.f(this.f18000J, new C1890qj(9, c3117z0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0924Sj
    public final void e(p090l3.e1 e1Var) {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.e(e1Var);
        } else {
            U2.m.f(this.f18003M, new C1115bk(e1Var, 5));
        }
    }

    @Override // p105n3.m
    public final void k3() {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.k3();
        } else {
            U2.m.f(this.f18002L, new p021c4.A(4));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void q() {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.q();
        } else {
            U2.m.f(this.f18000J, new p021c4.A(0));
        }
    }

    @Override // p105n3.m
    public final void r1(int i8) {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.r1(i8);
        } else {
            U2.m.f(this.f18002L, new C0484j(i8, 6));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void u() {
    }

    @Override // p105n3.m
    public final void u3() {
    }

    @Override // p105n3.m
    public final void v0() {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.v0();
            return;
        }
        U2.m.f(this.f18002L, new p021c4.A(5));
        AtomicReference atomicReference = this.f18000J;
        U2.m.f(atomicReference, new C0621y(27));
        U2.m.f(atomicReference, new C0621y(28));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.y(c3117z0);
            return;
        }
        AtomicReference atomicReference = this.f17998H;
        U2.m.f(atomicReference, new C1890qj(10, c3117z0));
        U2.m.f(atomicReference, new C1890qj(11, c3117z0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0868Oj
    public final void zzg() {
        C1074av c1074av = this.f18004N;
        if (c1074av != null) {
            c1074av.zzg();
        } else {
            U2.m.f(this.f18001K, new p021c4.A(3));
        }
    }
}
