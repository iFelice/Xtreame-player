package U0;

import A0.AbstractC0007g;
import A0.C0004d;
import A0.C0016p;
import A0.C0017q;
import A0.C0022w;
import A0.C0023x;
import A0.RunnableC0015o;
import A0.Y;
import A0.a0;
import A0.h0;
import D0.U;
import android.content.Context;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import p094m0.C3126i;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.C3137u;
import p094m0.s0;
import p094m0.v0;
import p117p0.C3171i;
import z4.d0;

/* JADX INFO: renamed from: U0.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0352s implements S, t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f6838G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f6839H = 0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public z4.H f6840I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C3136t f6841J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f6842K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f6843L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f6844M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public O f6845N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Executor f6846O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f6847P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ x f6848Q;

    public C0352s(x xVar, Context context) {
        this.f6848Q = xVar;
        this.f6838G = p117p0.M.N(context) ? 1 : 5;
        z4.F f8 = z4.H.f31804H;
        this.f6840I = d0.f31844K;
        this.f6844M = -9223372036854775807L;
        this.f6845N = O.f6689k;
        this.f6846O = x.f6855z;
    }

    @Override // U0.S
    public final void a() {
        long j8 = this.f6844M;
        x xVar = this.f6848Q;
        xVar.f6877v = j8;
        if (xVar.f6876u >= j8) {
            xVar.f6860e.a();
            xVar.f6878w = true;
        }
    }

    @Override // U0.S
    public final boolean b() {
        if (this.f6847P) {
            x xVar = this.f6848Q;
            if (xVar.f6874s == 0 && xVar.f6878w && xVar.f6860e.b()) {
                return true;
            }
        }
        return false;
    }

    @Override // U0.S
    public final Surface c() {
        H1.i(this.f6847P);
        v0 v0Var = this.f6848Q.f6869n;
        v0Var.getClass();
        Y y7 = (Y) v0Var;
        H1.j(y7.f105h);
        SparseArray sparseArray = ((C0023x) y7.f105h).f228f.f72g;
        H1.i(p117p0.M.k(sparseArray, 1));
        return ((A0.M) sparseArray.get(1)).f62a.c();
    }

    @Override // U0.S
    public final void d() {
        x xVar = this.f6848Q;
        if (xVar.f6859d) {
            xVar.f6860e.d();
        }
    }

    @Override // U0.S
    public final void e(int i8, long j8, C3136t c3136t, List list) {
        H1.i(this.f6847P);
        this.f6840I = z4.H.s(list);
        this.f6842K = 1;
        this.f6841J = c3136t;
        x xVar = this.f6848Q;
        xVar.f6877v = -9223372036854775807L;
        xVar.f6878w = false;
        v(c3136t);
        long j9 = this.f6844M;
        boolean z7 = j9 == -9223372036854775807L;
        if (xVar.f6859d || (this.f6839H == 0 && z7)) {
            long j10 = z7 ? -4611686018427387904L : 1 + j9;
            xVar.f6864i.b(new w(i8, j8 + this.f6843L, j10), j10);
        }
    }

    @Override // U0.S
    public final void f() {
        x xVar = this.f6848Q;
        if (xVar.f6859d) {
            xVar.f6860e.f();
        }
    }

    @Override // U0.S
    public final void g(long j8) {
        this.f6843L = j8;
    }

    @Override // U0.S
    public final void h(int i8) {
        if (this.f6839H == 0) {
            this.f6848Q.f6860e.h(i8);
        }
    }

    @Override // U0.S
    public final void i() {
        x xVar = this.f6848Q;
        xVar.getClass();
        p117p0.F f8 = p117p0.F.f28038c;
        xVar.b(null, f8.f28039a, f8.f28040b);
        xVar.f6873r = null;
    }

    @Override // U0.S
    public final boolean isInitialized() {
        return this.f6847P;
    }

    @Override // U0.S
    public final void j(U u7) {
        D4.a aVar = D4.a.f2392G;
        this.f6845N = u7;
        this.f6846O = aVar;
    }

    @Override // U0.S
    public final void k(boolean z7) {
        if (this.f6847P) {
            v0 v0Var = this.f6848Q.f6869n;
            v0Var.getClass();
            Y y7 = (Y) v0Var;
            H1.j(y7.f105h);
            C0023x c0023x = (C0023x) y7.f105h;
            a0 a0Var = c0023x.f228f.f76k;
            if (a0Var != null) {
                int i8 = 1;
                try {
                    H1.j(a0Var);
                    a0Var.a();
                    c0023x.f229g.a();
                    a0Var.g();
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    int i9 = 0;
                    C0016p c0016p = new C0016p(countDownLatch, 0);
                    synchronized (a0Var.f120H) {
                        a0Var.f121I = c0016p;
                    }
                    h0 h0Var = c0023x.f229g;
                    A0.D d6 = c0023x.f233k;
                    Objects.requireNonNull(d6);
                    h0Var.f(new C0016p(d6, 1), true);
                    countDownLatch.await();
                    a0Var.i(null);
                    c0023x.f229g.c(new C0017q(c0023x, i9));
                } catch (InterruptedException e8) {
                    Thread.currentThread().interrupt();
                    c0023x.f231i.execute(new RunnableC0015o(c0023x, e8, i8));
                }
            }
        }
        this.f6844M = -9223372036854775807L;
        x.a(this.f6848Q, z7);
    }

    @Override // U0.S
    public final boolean l(C3136t c3136t) throws Q {
        H1.i(!this.f6847P);
        boolean zD = this.f6848Q.d(c3136t, this.f6839H);
        this.f6847P = zD;
        return zD;
    }

    @Override // U0.S
    public final void m(List list) {
        if (this.f6840I.equals(list)) {
            return;
        }
        this.f6840I = z4.H.s(list);
        C3136t c3136t = this.f6841J;
        if (c3136t != null) {
            v(c3136t);
        }
    }

    @Override // U0.S
    public final void n(Surface surface, p117p0.F f8) {
        x xVar = this.f6848Q;
        Pair pair = xVar.f6873r;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((p117p0.F) xVar.f6873r.second).equals(f8)) {
            return;
        }
        xVar.f6873r = Pair.create(surface, f8);
        xVar.b(surface, f8.f28039a, f8.f28040b);
    }

    @Override // U0.S
    public final void o(long j8, long j9) throws Q {
        this.f6848Q.f6860e.o(j8 + this.f6843L, j9);
    }

    @Override // U0.S
    public final void p(boolean z7) {
        x xVar = this.f6848Q;
        if (xVar.f6859d) {
            xVar.f6860e.p(z7);
        }
    }

    @Override // U0.S
    public final boolean q(boolean z7) {
        boolean z8 = false;
        boolean z9 = z7 && this.f6847P;
        x xVar = this.f6848Q;
        C0338d c0338d = xVar.f6860e;
        if (z9 && xVar.f6874s == 0) {
            z8 = true;
        }
        return c0338d.f6725G.b(z8);
    }

    @Override // U0.S
    public final boolean r(long j8, P p7) {
        int iD;
        boolean z7;
        H1.i(this.f6847P);
        x xVar = this.f6848Q;
        int i8 = xVar.f6879x;
        if (i8 == -1 || i8 != xVar.f6880y) {
            return false;
        }
        v0 v0Var = xVar.f6869n;
        v0Var.getClass();
        Y y7 = (Y) v0Var;
        H1.j(y7.f105h);
        a0 a0Var = ((C0023x) y7.f105h).f228f.f76k;
        if (a0Var != null) {
            H1.j(a0Var);
            iD = a0Var.d();
        } else {
            iD = 0;
        }
        if (iD >= this.f6838G) {
            return false;
        }
        v0 v0Var2 = this.f6848Q.f6869n;
        v0Var2.getClass();
        Y y8 = (Y) v0Var2;
        H1.j(y8.f105h);
        C0023x c0023x = (C0023x) y8.f105h;
        H1.k(c0023x.f244v, "registerInputStream must be called before registering input frames");
        C3171i c3171i = c0023x.f235m;
        synchronized (c3171i) {
            z7 = c3171i.f28089b;
        }
        if (!z7 || c0023x.f245w) {
            return false;
        }
        a0 a0Var2 = c0023x.f228f.f76k;
        H1.j(a0Var2);
        a0Var2.e(c0023x.f244v);
        long j9 = j8 + this.f6843L;
        this.f6844M = j9;
        ((C0342h) p7).a(j9 * 1000);
        return true;
    }

    @Override // U0.S
    public final void release() {
        x xVar = this.f6848Q;
        if (xVar.f6875t == 2) {
            return;
        }
        p117p0.I i8 = xVar.f6868m;
        if (i8 != null) {
            i8.f28043a.removeCallbacksAndMessages(null);
        }
        v0 v0Var = xVar.f6869n;
        if (v0Var != null) {
            Y y7 = (Y) v0Var;
            if (!y7.f108k) {
                s0 s0Var = y7.f105h;
                int i9 = 1;
                if (s0Var != null) {
                    C0023x c0023x = (C0023x) s0Var;
                    c0023x.f245w = true;
                    try {
                        c0023x.f229g.e(new C0017q(c0023x, i9));
                    } catch (InterruptedException e8) {
                        Thread.currentThread().interrupt();
                        throw new IllegalStateException(e8);
                    }
                }
                y7.f108k = true;
            }
        }
        xVar.f6873r = null;
        xVar.f6875t = 2;
    }

    @Override // U0.S
    public final void s() {
        if (this.f6847P) {
            x xVar = this.f6848Q;
            long j8 = xVar.f6876u;
            x.a(xVar, false);
            v0 v0Var = xVar.f6869n;
            v0Var.getClass();
            s0 s0Var = ((Y) v0Var).f105h;
            H1.j(s0Var);
            C0023x c0023x = (C0023x) s0Var;
            A0.U u7 = c0023x.f243u;
            if (u7 == null) {
                throw new UnsupportedOperationException("Replaying when enableReplayableCache is set to false");
            }
            if (u7.f89j != 0) {
                c0023x.f229g.f(new C0017q(c0023x, 2), true);
            }
            xVar.f6876u = j8;
        }
    }

    @Override // U0.S
    public final void setPlaybackSpeed(float f8) {
        if (this.f6839H == 0) {
            this.f6848Q.f6860e.setPlaybackSpeed(f8);
        }
    }

    @Override // U0.S
    public final void t(B b8) {
        if (this.f6839H == 0) {
            x xVar = this.f6848Q;
            xVar.f6870o = b8;
            xVar.f6860e.f6733O = b8;
        }
    }

    @Override // U0.S
    public final void u() {
        x xVar = this.f6848Q;
        int iM = xVar.f6864i.m();
        C0338d c0338d = xVar.f6860e;
        if (iM == 0) {
            c0338d.u();
            return;
        }
        p016c.g gVar = new p016c.g();
        boolean z7 = true;
        while (xVar.f6864i.m() > 0) {
            w wVar = (w) xVar.f6864i.j();
            wVar.getClass();
            if (z7) {
                int i8 = wVar.f6853b;
                if (i8 == 0 || i8 == 1) {
                    wVar = new w(0, wVar.f6852a, wVar.f6854c);
                } else {
                    c0338d.u();
                }
                z7 = false;
            }
            gVar.b(wVar, wVar.f6854c);
        }
        xVar.f6864i = gVar;
    }

    public final void v(C3136t c3136t) {
        C3136t c3136t2;
        C3135s c3135sA = c3136t.a();
        x xVar = this.f6848Q;
        C3126i c3126i = c3136t.f27014E;
        xVar.getClass();
        if (c3126i == null || !c3126i.e()) {
            c3126i = C3126i.f26870h;
        }
        c3135sA.f26971D = c3126i;
        C3136t c3136t3 = new C3136t(c3135sA);
        int i8 = 1;
        int i9 = this.f6842K == 1 ? 1 : 2;
        v0 v0Var = this.f6848Q.f6869n;
        v0Var.getClass();
        z4.H h8 = this.f6840I;
        Y y7 = (Y) v0Var;
        H1.j(y7.f105h);
        s0 s0Var = y7.f105h;
        z4.E e8 = new z4.E(4);
        e8.j0(h8);
        e8.j0(y7.f107j);
        d0 d0VarM0 = e8.m0();
        C0023x c0023x = (C0023x) s0Var;
        if (c0023x.f245w) {
            return;
        }
        if (i9 != 1 && i9 != 2 && i9 != 3 && i9 != 4) {
            throw new IllegalArgumentException(String.valueOf(i9));
        }
        AbstractC0007g.a();
        float f8 = c3136t3.f27011B;
        if (f8 > 1.0f) {
            C3135s c3135sA2 = c3136t3.a();
            c3135sA2.f27003u = (int) (c3136t3.f27048v * f8);
            c3135sA2.f26968A = 1.0f;
            c3136t2 = new C3136t(c3135sA2);
        } else if (f8 < 1.0f) {
            C3135s c3135sA3 = c3136t3.a();
            c3135sA3.f27004v = (int) (c3136t3.f27049w / f8);
            c3135sA3.f26968A = 1.0f;
            c3136t2 = new C3136t(c3135sA3);
        } else {
            c3136t2 = c3136t3;
        }
        c0023x.f244v = new C3137u(c3136t2, 0L);
        try {
            c0023x.f235m.a();
        } catch (InterruptedException e9) {
            Thread.currentThread().interrupt();
            c0023x.f231i.execute(new RunnableC0015o(c0023x, e9, 0));
        }
        synchronized (c0023x.f240r) {
            try {
                C0022w c0022w = new C0022w(i9, c3136t3, d0VarM0);
                if (c0023x.f238p) {
                    c0023x.f237o = c0022w;
                    c0023x.f235m.e();
                    a0 a0Var = c0023x.f228f.f76k;
                    a0Var.getClass();
                    a0Var.k();
                } else {
                    c0023x.f238p = true;
                    c0023x.f235m.e();
                    c0023x.f229g.f(new C0004d(i8, c0023x, c0022w), true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
