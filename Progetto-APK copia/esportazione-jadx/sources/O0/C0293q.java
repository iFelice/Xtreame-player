package O0;

import B0.C0044d0;
import B0.I0;

/* JADX INFO: renamed from: O0.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0293q implements InterfaceC0298w, InterfaceC0297v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0300y f5230G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f5231H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final S0.d f5232I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public AbstractC0277a f5233J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC0298w f5234K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public InterfaceC0297v f5235L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f5236M = -9223372036854775807L;

    public C0293q(C0300y c0300y, S0.d dVar, long j8) {
        this.f5230G = c0300y;
        this.f5232I = dVar;
        this.f5231H = j8;
    }

    @Override // O0.InterfaceC0298w
    public final long a(long j8, I0 i8) {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.a(j8, i8);
    }

    public final void b(C0300y c0300y) {
        long j8 = this.f5236M;
        if (j8 == -9223372036854775807L) {
            j8 = this.f5231H;
        }
        AbstractC0277a abstractC0277a = this.f5233J;
        abstractC0277a.getClass();
        InterfaceC0298w interfaceC0298wB = abstractC0277a.b(c0300y, this.f5232I, j8);
        this.f5234K = interfaceC0298wB;
        if (this.f5235L != null) {
            interfaceC0298wB.m(this, j8);
        }
    }

    @Override // O0.W
    public final long e() {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.e();
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        return interfaceC0298w != null && interfaceC0298w.g(c0044d0);
    }

    @Override // O0.InterfaceC0298w
    public final void h() {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        if (interfaceC0298w != null) {
            interfaceC0298w.h();
            return;
        }
        AbstractC0277a abstractC0277a = this.f5233J;
        if (abstractC0277a != null) {
            abstractC0277a.j();
        }
    }

    @Override // O0.InterfaceC0298w
    public final long i(long j8) {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.i(j8);
    }

    @Override // O0.W
    public final boolean k() {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        return interfaceC0298w != null && interfaceC0298w.k();
    }

    @Override // O0.InterfaceC0298w
    public final long l(R0.t[] tVarArr, boolean[] zArr, U[] uArr, boolean[] zArr2, long j8) {
        long j9 = this.f5236M;
        long j10 = (j9 == -9223372036854775807L || j8 != this.f5231H) ? j8 : j9;
        this.f5236M = -9223372036854775807L;
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.l(tVarArr, zArr, uArr, zArr2, j10);
    }

    @Override // O0.InterfaceC0298w
    public final void m(InterfaceC0297v interfaceC0297v, long j8) {
        this.f5235L = interfaceC0297v;
        InterfaceC0298w interfaceC0298w = this.f5234K;
        if (interfaceC0298w != null) {
            long j9 = this.f5236M;
            if (j9 == -9223372036854775807L) {
                j9 = this.f5231H;
            }
            interfaceC0298w.m(this, j9);
        }
    }

    @Override // O0.InterfaceC0298w
    public final long q() {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.q();
    }

    @Override // O0.V
    public final void r(W w7) {
        InterfaceC0297v interfaceC0297v = this.f5235L;
        String str = p117p0.M.f28050a;
        interfaceC0297v.r(this);
    }

    @Override // O0.InterfaceC0298w
    public final Z s() {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.s();
    }

    @Override // O0.InterfaceC0297v
    public final void t(InterfaceC0298w interfaceC0298w) {
        InterfaceC0297v interfaceC0297v = this.f5235L;
        String str = p117p0.M.f28050a;
        interfaceC0297v.t(this);
    }

    @Override // O0.W
    public final long u() {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        return interfaceC0298w.u();
    }

    @Override // O0.InterfaceC0298w
    public final void v(long j8, boolean z7) {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        interfaceC0298w.v(j8, z7);
    }

    @Override // O0.W
    public final void w(long j8) {
        InterfaceC0298w interfaceC0298w = this.f5234K;
        String str = p117p0.M.f28050a;
        interfaceC0298w.w(j8);
    }
}
