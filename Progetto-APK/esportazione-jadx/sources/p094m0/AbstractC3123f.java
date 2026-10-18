package p094m0;

import B0.O;
import p117p0.M;

/* JADX INFO: renamed from: m0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3123f implements Y {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final e0 f26850G = new e0();

    public final long a() {
        O o4 = (O) this;
        f0 f0VarX = o4.x();
        if (f0VarX.q()) {
            return -9223372036854775807L;
        }
        return M.e0(f0VarX.n(o4.t(), this.f26850G, 0L).f26846m);
    }

    public final void b(int i8) {
        i(-1, -9223372036854775807L, false);
    }

    public final boolean c(int i8) {
        O o4 = (O) this;
        o4.c0();
        return o4.f812t0.f26790a.f26967a.get(i8);
    }

    public final boolean d() {
        O o4 = (O) this;
        f0 f0VarX = o4.x();
        return !f0VarX.q() && f0VarX.n(o4.t(), this.f26850G, 0L).f26842i;
    }

    public final boolean e() {
        O o4 = (O) this;
        f0 f0VarX = o4.x();
        return !f0VarX.q() && f0VarX.n(o4.t(), this.f26850G, 0L).a();
    }

    public final boolean f() {
        O o4 = (O) this;
        f0 f0VarX = o4.x();
        return !f0VarX.q() && f0VarX.n(o4.t(), this.f26850G, 0L).f26841h;
    }

    public final boolean g() {
        O o4 = (O) this;
        if (o4.C() == 3 && o4.B()) {
            o4.c0();
            if (o4.f778N0.f1105n == 0) {
                return true;
            }
        }
        return false;
    }

    public final void h() {
        ((O) this).S(true);
    }

    public abstract void i(int i8, long j8, boolean z7);

    public final void j(int i8, long j8) {
        i(((O) this).t(), j8, false);
    }

    public final void k() {
        int iE;
        O o4 = (O) this;
        if (o4.x().q() || o4.F()) {
            b(9);
            return;
        }
        f0 f0VarX = o4.x();
        if (!f0VarX.q()) {
            int iT = o4.t();
            o4.c0();
            int i8 = o4.f803k0;
            if (i8 == 1) {
                i8 = 0;
            }
            o4.c0();
            if (f0VarX.e(o4.f804l0, iT, i8) != -1) {
                f0 f0VarX2 = o4.x();
                if (f0VarX2.q()) {
                    iE = -1;
                } else {
                    int iT2 = o4.t();
                    o4.c0();
                    int i9 = o4.f803k0;
                    if (i9 == 1) {
                        i9 = 0;
                    }
                    o4.c0();
                    iE = f0VarX2.e(o4.f804l0, iT2, i9);
                }
                if (iE == -1) {
                    b(9);
                    return;
                } else if (iE == o4.t()) {
                    i(o4.t(), -9223372036854775807L, true);
                    return;
                } else {
                    i(iE, -9223372036854775807L, false);
                    return;
                }
            }
        }
        if (e() && d()) {
            i(o4.t(), -9223372036854775807L, false);
        } else {
            b(9);
        }
    }

    public final void l(int i8, long j8) {
        O o4 = (O) this;
        long jV = o4.v() + j8;
        long jA = o4.A();
        if (jA != -9223372036854775807L) {
            jV = Math.min(jV, jA);
        }
        j(i8, Math.max(jV, 0L));
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    public final void m() {
        boolean z7;
        int iL;
        int iL2;
        O o4 = (O) this;
        if (o4.x().q() || o4.F()) {
            b(7);
            return;
        }
        f0 f0VarX = o4.x();
        if (f0VarX.q()) {
            z7 = false;
        } else {
            int iT = o4.t();
            o4.c0();
            int i8 = o4.f803k0;
            if (i8 == 1) {
                i8 = 0;
            }
            o4.c0();
            if (f0VarX.l(o4.f804l0, iT, i8) != -1) {
                z7 = true;
            } else {
                z7 = false;
            }
        }
        if (e() && !f()) {
            if (!z7) {
                b(7);
                return;
            }
            f0 f0VarX2 = o4.x();
            if (f0VarX2.q()) {
                iL2 = -1;
            } else {
                int iT2 = o4.t();
                o4.c0();
                int i9 = o4.f803k0;
                if (i9 == 1) {
                    i9 = 0;
                }
                o4.c0();
                iL2 = f0VarX2.l(o4.f804l0, iT2, i9);
            }
            if (iL2 == -1) {
                b(7);
                return;
            } else if (iL2 == o4.t()) {
                i(o4.t(), -9223372036854775807L, true);
                return;
            } else {
                i(iL2, -9223372036854775807L, false);
                return;
            }
        }
        if (z7) {
            long jV = o4.v();
            o4.c0();
            if (jV <= o4.f795c0) {
                f0 f0VarX3 = o4.x();
                if (f0VarX3.q()) {
                    iL = -1;
                } else {
                    int iT3 = o4.t();
                    o4.c0();
                    int i10 = o4.f803k0;
                    if (i10 == 1) {
                        i10 = 0;
                    }
                    o4.c0();
                    iL = f0VarX3.l(o4.f804l0, iT3, i10);
                }
                if (iL == -1) {
                    b(7);
                    return;
                } else if (iL == o4.t()) {
                    i(o4.t(), -9223372036854775807L, true);
                    return;
                } else {
                    i(iL, -9223372036854775807L, false);
                    return;
                }
            }
        }
        j(7, 0L);
    }
}
