package O0;

import B0.C0044d0;
import B0.I0;
import p094m0.C3136t;

/* JADX INFO: renamed from: O0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0280d implements InterfaceC0298w, InterfaceC0297v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0298w f5195G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public InterfaceC0297v f5196H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0279c[] f5197I = new C0279c[0];

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f5198J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f5199K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f5200L;

    public C0280d(C0293q c0293q, boolean z7, long j8) {
        this.f5195G = c0293q;
        this.f5198J = z7 ? 0L : -9223372036854775807L;
        this.f5199K = 0L;
        this.f5200L = j8;
    }

    @Override // O0.InterfaceC0298w
    public final long a(long j8, I0 i8) {
        long j9 = this.f5199K;
        if (j8 == j9) {
            return j9;
        }
        long j10 = p117p0.M.j(i8.f729a, 0L, j8 - j9);
        long j11 = this.f5200L;
        long j12 = p117p0.M.j(i8.f730b, 0L, j11 == Long.MIN_VALUE ? Long.MAX_VALUE : j11 - j8);
        if (j10 != i8.f729a || j12 != i8.f730b) {
            i8 = new I0(j10, j12);
        }
        return this.f5195G.a(j8, i8);
    }

    public final boolean b() {
        return this.f5198J != -9223372036854775807L;
    }

    @Override // O0.W
    public final long e() {
        long jE = this.f5195G.e();
        if (jE != Long.MIN_VALUE) {
            long j8 = this.f5200L;
            if (j8 == Long.MIN_VALUE || jE < j8) {
                return jE;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        return this.f5195G.g(c0044d0);
    }

    @Override // O0.InterfaceC0298w
    public final void h() {
        this.f5195G.h();
    }

    @Override // O0.InterfaceC0298w
    public final long i(long j8) {
        this.f5198J = -9223372036854775807L;
        for (C0279c c0279c : this.f5197I) {
            if (c0279c != null) {
                c0279c.f5193H = false;
            }
        }
        long jI = this.f5195G.i(j8);
        long j9 = this.f5199K;
        long j10 = this.f5200L;
        long jMax = Math.max(jI, j9);
        return j10 != Long.MIN_VALUE ? Math.min(jMax, j10) : jMax;
    }

    @Override // O0.W
    public final boolean k() {
        return this.f5195G.k();
    }

    @Override // O0.InterfaceC0298w
    public final long l(R0.t[] tVarArr, boolean[] zArr, U[] uArr, boolean[] zArr2, long j8) {
        long j9;
        this.f5197I = new C0279c[uArr.length];
        U[] uArr2 = new U[uArr.length];
        int i8 = 0;
        while (true) {
            U u7 = null;
            if (i8 >= uArr.length) {
                break;
            }
            C0279c[] c0279cArr = this.f5197I;
            C0279c c0279c = (C0279c) uArr[i8];
            c0279cArr[i8] = c0279c;
            if (c0279c != null) {
                u7 = c0279c.f5192G;
            }
            uArr2[i8] = u7;
            i8++;
        }
        long jL = this.f5195G.l(tVarArr, zArr, uArr2, zArr2, j8);
        long j10 = this.f5200L;
        long jMax = Math.max(jL, j8);
        if (j10 != Long.MIN_VALUE) {
            jMax = Math.min(jMax, j10);
        }
        if (b()) {
            if (jL >= j8) {
                if (jL != 0) {
                    int length = tVarArr.length;
                    int i9 = 0;
                    while (true) {
                        if (i9 < length) {
                            R0.t tVar = tVarArr[i9];
                            if (tVar != null) {
                                C3136t c3136tL = ((R0.c) tVar).l();
                                if (!p094m0.O.a(c3136tL.f27041o, c3136tL.f27037k)) {
                                }
                            }
                            i9++;
                        }
                    }
                }
                j9 = -9223372036854775807L;
            }
            j9 = jMax;
        } else {
            j9 = -9223372036854775807L;
        }
        this.f5198J = j9;
        for (int i10 = 0; i10 < uArr.length; i10++) {
            U u8 = uArr2[i10];
            if (u8 == null) {
                this.f5197I[i10] = null;
            } else {
                C0279c[] c0279cArr2 = this.f5197I;
                C0279c c0279c2 = c0279cArr2[i10];
                if (c0279c2 == null || c0279c2.f5192G != u8) {
                    c0279cArr2[i10] = new C0279c(this, u8);
                }
            }
            uArr[i10] = this.f5197I[i10];
        }
        return jMax;
    }

    @Override // O0.InterfaceC0298w
    public final void m(InterfaceC0297v interfaceC0297v, long j8) {
        this.f5196H = interfaceC0297v;
        this.f5195G.m(this, j8);
    }

    @Override // O0.InterfaceC0298w
    public final long q() {
        if (b()) {
            long j8 = this.f5198J;
            this.f5198J = -9223372036854775807L;
            long jQ = q();
            return jQ != -9223372036854775807L ? jQ : j8;
        }
        long jQ2 = this.f5195G.q();
        if (jQ2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j9 = this.f5199K;
        long j10 = this.f5200L;
        long jMax = Math.max(jQ2, j9);
        return j10 != Long.MIN_VALUE ? Math.min(jMax, j10) : jMax;
    }

    @Override // O0.V
    public final void r(W w7) {
        InterfaceC0297v interfaceC0297v = this.f5196H;
        interfaceC0297v.getClass();
        interfaceC0297v.r(this);
    }

    @Override // O0.InterfaceC0298w
    public final Z s() {
        return this.f5195G.s();
    }

    @Override // O0.InterfaceC0297v
    public final void t(InterfaceC0298w interfaceC0298w) {
        InterfaceC0297v interfaceC0297v = this.f5196H;
        interfaceC0297v.getClass();
        interfaceC0297v.t(this);
    }

    @Override // O0.W
    public final long u() {
        long jU = this.f5195G.u();
        if (jU != Long.MIN_VALUE) {
            long j8 = this.f5200L;
            if (j8 == Long.MIN_VALUE || jU < j8) {
                return jU;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // O0.InterfaceC0298w
    public final void v(long j8, boolean z7) {
        this.f5195G.v(j8, z7);
    }

    @Override // O0.W
    public final void w(long j8) {
        this.f5195G.w(j8);
    }
}
