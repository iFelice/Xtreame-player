package C0;

import B0.C0072w;
import B0.O;
import N.C0260i;
import O0.C0292p;
import O0.C0296u;
import O0.C0300y;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import okhttp3.internal.ws.WebSocketProtocol;
import p094m0.C3121d;
import p094m0.C3129l;
import p094m0.L;
import p094m0.N;
import p094m0.S;
import p094m0.U;
import p094m0.V;
import p094m0.X;
import p094m0.Y;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;
import p094m0.k0;
import p094m0.m0;
import p094m0.w0;
import p117p0.InterfaceC3168f;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class A implements InterfaceC0076a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC3168f f1226G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final d0 f1227H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final e0 f1228I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final z f1229J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final SparseArray f1230K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public p178x.e f1231L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Y f1232M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public p117p0.I f1233N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f1234O;

    public A(InterfaceC3168f interfaceC3168f) {
        interfaceC3168f.getClass();
        this.f1226G = interfaceC3168f;
        String str = M.f28050a;
        Looper looperMyLooper = Looper.myLooper();
        this.f1231L = new p178x.e(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, interfaceC3168f, new C0260i(9));
        d0 d0Var = new d0();
        this.f1227H = d0Var;
        this.f1228I = new e0();
        this.f1229J = new z(d0Var);
        this.f1230K = new SparseArray();
    }

    @Override // p094m0.W
    public final void A(m0 m0Var) {
        C0077b c0077bP = P();
        U(c0077bP, 2, new C0079d(1, c0077bP, m0Var));
    }

    @Override // p094m0.W
    public final void B(L l4) {
        C0077b c0077bP = P();
        U(c0077bP, 14, new C0079d(3, c0077bP, l4));
    }

    @Override // G0.p
    public final void C(int i8, C0300y c0300y) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1027, new C0084i(c0077bS, 2));
    }

    @Override // G0.p
    public final void E(int i8, C0300y c0300y, int i9) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1022, new t(c0077bS, i9, 4));
    }

    @Override // O0.E
    public final void F(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1002, new q(c0077bS, c0292p, c0296u, 0));
    }

    @Override // p094m0.W
    public final void G(int i8, int i9) {
        U(T(), 24, new l());
    }

    @Override // G0.p
    public final void H(int i8, C0300y c0300y) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1026, new C0084i(c0077bS, 3));
    }

    @Override // O0.E
    public final void I(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u, int i9) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1000, new k(c0077bS, c0292p, c0296u, i9, 1));
    }

    @Override // p094m0.W
    public final void J(C3129l c3129l) {
        C0077b c0077bP = P();
        U(c0077bP, 29, new C0079d(10, c0077bP, c3129l));
    }

    @Override // p094m0.W
    public final void K(C3121d c3121d) {
        C0077b c0077bT = T();
        U(c0077bT, 20, new C0079d(7, c0077bT, c3121d));
    }

    @Override // p094m0.W
    public final void L(k0 k0Var) {
        C0077b c0077bP = P();
        U(c0077bP, 19, new C0079d(4, c0077bP, k0Var));
    }

    @Override // O0.E
    public final void M(int i8, C0300y c0300y, C0296u c0296u) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1004, new m(c0077bS, c0296u, 0));
    }

    @Override // G0.p
    public final void N(int i8, C0300y c0300y, Exception exc) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1024, new v(c0077bS, exc, 3));
    }

    @Override // p094m0.W
    public final void O(boolean z7) {
        C0077b c0077bP = P();
        U(c0077bP, 7, new r(2, c0077bP, z7));
    }

    public final C0077b P() {
        return Q(this.f1229J.f1339d);
    }

    public final C0077b Q(C0300y c0300y) {
        this.f1232M.getClass();
        f0 f0Var = c0300y == null ? null : (f0) this.f1229J.f1338c.get(c0300y);
        if (c0300y != null && f0Var != null) {
            return R(f0Var, f0Var.h(c0300y.f5257a, this.f1227H).f26827c, c0300y);
        }
        int iT = ((O) this.f1232M).t();
        f0 f0VarX = ((O) this.f1232M).x();
        if (iT >= f0VarX.p()) {
            f0VarX = f0.f26851a;
        }
        return R(f0VarX, iT, null);
    }

    public final C0077b R(f0 f0Var, int i8, C0300y c0300y) {
        C0300y c0300y2 = f0Var.q() ? null : c0300y;
        ((p117p0.G) this.f1226G).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z7 = f0Var.equals(((O) this.f1232M).x()) && i8 == ((O) this.f1232M).t();
        long jE0 = 0;
        if (c0300y2 == null || !c0300y2.b()) {
            if (z7) {
                O o4 = (O) this.f1232M;
                o4.c0();
                jE0 = o4.q(o4.f778N0);
            } else if (!f0Var.q()) {
                jE0 = M.e0(f0Var.n(i8, this.f1228I, 0L).f26845l);
            }
        } else if (z7 && ((O) this.f1232M).r() == c0300y2.f5258b && ((O) this.f1232M).s() == c0300y2.f5259c) {
            jE0 = ((O) this.f1232M).v();
        }
        C0300y c0300y3 = this.f1229J.f1339d;
        f0 f0VarX = ((O) this.f1232M).x();
        int iT = ((O) this.f1232M).t();
        long jV = ((O) this.f1232M).v();
        O o7 = (O) this.f1232M;
        o7.c0();
        return new C0077b(jElapsedRealtime, f0Var, i8, c0300y2, jE0, f0VarX, iT, c0300y3, jV, M.e0(o7.f778N0.f1109r));
    }

    public final C0077b S(int i8, C0300y c0300y) {
        this.f1232M.getClass();
        if (c0300y != null) {
            return ((f0) this.f1229J.f1338c.get(c0300y)) != null ? Q(c0300y) : R(f0.f26851a, i8, c0300y);
        }
        f0 f0VarX = ((O) this.f1232M).x();
        if (i8 >= f0VarX.p()) {
            f0VarX = f0.f26851a;
        }
        return R(f0VarX, i8, null);
    }

    public final C0077b T() {
        return Q(this.f1229J.f1341f);
    }

    public final void U(C0077b c0077b, int i8, p117p0.u uVar) {
        this.f1230K.put(i8, c0077b);
        this.f1231L.l(i8, uVar);
    }

    public final void V(Y y7, Looper looper) {
        H1.i(this.f1232M == null || this.f1229J.f1337b.isEmpty());
        this.f1232M = y7;
        this.f1233N = ((p117p0.G) this.f1226G).a(looper, null);
        p178x.e eVar = this.f1231L;
        this.f1231L = new p178x.e((CopyOnWriteArraySet) eVar.f31132f, looper, (InterfaceC3168f) eVar.f31129c, new C0079d(6, this, y7), eVar.f31128b);
    }

    @Override // p094m0.W
    public final void a(int i8) {
        C0077b c0077bP = P();
        U(c0077bP, 6, new t(c0077bP, i8, 1));
    }

    @Override // p094m0.W
    public final void b(p110o0.c cVar) {
        C0077b c0077bP = P();
        U(c0077bP, 27, new C0079d(2, c0077bP, cVar));
    }

    @Override // p094m0.W
    public final void c(int i8) {
        C0077b c0077bT = T();
        U(c0077bT, 21, new t(c0077bT, i8, 5));
    }

    @Override // p094m0.W
    public final void d(U u7) {
        C0077b c0077bP = P();
        U(c0077bP, 13, new C0079d(5, c0077bP, u7));
    }

    @Override // p094m0.W
    public final void e(int i8, X x7, X x8) {
        if (i8 == 1) {
            this.f1234O = false;
        }
        Y y7 = this.f1232M;
        y7.getClass();
        z zVar = this.f1229J;
        zVar.f1339d = z.b(y7, zVar.f1337b, zVar.f1340e, zVar.f1336a);
        C0077b c0077bP = P();
        U(c0077bP, 11, new k(i8, x7, x8, c0077bP));
    }

    @Override // p094m0.W
    public final void f(boolean z7) {
        C0077b c0077bT = T();
        U(c0077bT, 23, new r(1, c0077bT, z7));
    }

    @Override // p094m0.W
    public final void g(w0 w0Var) {
        C0077b c0077bT = T();
        U(c0077bT, 25, new C0079d(11, c0077bT, w0Var));
    }

    @Override // G0.p
    public final void h(int i8, C0300y c0300y) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1025, new C0084i(c0077bS, 4));
    }

    @Override // p094m0.W
    public final void i(boolean z7) {
        C0077b c0077bP = P();
        U(c0077bP, 3, new r(0, c0077bP, z7));
    }

    @Override // p094m0.W
    public final void j(int i8, boolean z7) {
        C0077b c0077bP = P();
        U(c0077bP, 5, new x(i8, 1, c0077bP, z7));
    }

    @Override // p094m0.W
    public final void k(float f8) {
        U(T(), 22, new u());
    }

    @Override // O0.E
    public final void l(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, new q(c0077bS, c0292p, c0296u, 1));
    }

    @Override // p094m0.W
    public final void m(int i8) {
        C0077b c0077bP = P();
        U(c0077bP, 4, new t(c0077bP, i8, 2));
    }

    @Override // p094m0.W
    public final void n(S s7) {
        C0077b c0077bP = P();
        U(c0077bP, 12, new C0079d(0, c0077bP, s7));
    }

    @Override // p094m0.W
    public final void o(boolean z7) {
        C0077b c0077bP = P();
        U(c0077bP, 9, new r(3, c0077bP, z7));
    }

    @Override // p094m0.W
    public final void onRepeatModeChanged(int i8) {
        C0077b c0077bP = P();
        U(c0077bP, 8, new t(c0077bP, i8, 3));
    }

    @Override // p094m0.W
    public final void p(C0072w c0072w) {
        C0300y c0300y;
        C0077b c0077bP = (!(c0072w instanceof C0072w) || (c0300y = c0072w.f1117N) == null) ? P() : Q(c0300y);
        U(c0077bP, 10, new C0081f(c0077bP, c0072w, 1));
    }

    @Override // p094m0.W
    public final void q(N n7) {
        C0077b c0077bP = P();
        U(c0077bP, 28, new C0079d(8, c0077bP, n7));
    }

    @Override // O0.E
    public final void r(int i8, C0300y c0300y, C0296u c0296u) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, WebSocketProtocol.CLOSE_NO_STATUS_CODE, new m(c0077bS, c0296u, 1));
    }

    @Override // O0.E
    public final void s(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u, IOException iOException, boolean z7) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1003, new p(c0077bS, c0292p, c0296u, iOException, z7));
    }

    @Override // p094m0.W
    public final void t(p094m0.I i8, int i9) {
        C0077b c0077bP = P();
        U(c0077bP, 1, new B0.D(c0077bP, i8, i9));
    }

    @Override // p094m0.W
    public final void u(int i8) {
        Y y7 = this.f1232M;
        y7.getClass();
        z zVar = this.f1229J;
        zVar.f1339d = z.b(y7, zVar.f1337b, zVar.f1340e, zVar.f1336a);
        zVar.d(((O) y7).x());
        C0077b c0077bP = P();
        U(c0077bP, 0, new t(c0077bP, i8, 0));
    }

    @Override // p094m0.W
    public final void v(C0072w c0072w) {
        C0300y c0300y;
        C0077b c0077bP = (!(c0072w instanceof C0072w) || (c0300y = c0072w.f1117N) == null) ? P() : Q(c0300y);
        U(c0077bP, 10, new C0081f(c0077bP, c0072w, 0));
    }

    @Override // G0.p
    public final void w(int i8, C0300y c0300y) {
        C0077b c0077bS = S(i8, c0300y);
        U(c0077bS, 1023, new C0084i(c0077bS, 5));
    }

    @Override // p094m0.W
    public final void y(List list) {
        C0077b c0077bP = P();
        U(c0077bP, 27, new C0079d(9, c0077bP, list));
    }

    @Override // p094m0.W
    public final void z(int i8, boolean z7) {
        C0077b c0077bP = P();
        U(c0077bP, -1, new x(i8, 0, c0077bP, z7));
    }

    @Override // p094m0.W
    public final void x() {
    }

    @Override // p094m0.W
    public final void D(V v5) {
    }
}
