package B0;

import C0.InterfaceC0076a;
import O0.C0292p;
import O0.C0296u;
import O0.C0300y;
import android.util.Pair;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class q0 implements O0.E, G0.p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final s0 f1062G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ u0 f1063H;

    public q0(u0 u0Var, s0 s0Var) {
        this.f1063H = u0Var;
        this.f1062G = s0Var;
    }

    @Override // G0.p
    public final void C(int i8, C0300y c0300y) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0062m0(this, pairA, 0));
        }
    }

    @Override // G0.p
    public final void E(int i8, C0300y c0300y, int i9) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new p117p0.t(this, pairA, i9, 1));
        }
    }

    @Override // O0.E
    public final void F(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0064n0(this, pairA, c0292p, c0296u, 0));
        }
    }

    @Override // G0.p
    public final void H(int i8, C0300y c0300y) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0062m0(this, pairA, 1));
        }
    }

    @Override // O0.E
    public final void I(int i8, C0300y c0300y, final C0292p c0292p, final C0296u c0296u, final int i9) {
        final Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new Runnable() { // from class: B0.o0
                @Override // java.lang.Runnable
                public final void run() {
                    InterfaceC0076a interfaceC0076a = this.f1045G.f1063H.f1085h;
                    Pair pair = pairA;
                    ((C0.A) interfaceC0076a).I(((Integer) pair.first).intValue(), (C0300y) pair.second, c0292p, c0296u, i9);
                }
            });
        }
    }

    @Override // O0.E
    public final void M(int i8, C0300y c0300y, C0296u c0296u) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0060l0(this, pairA, c0296u, 1));
        }
    }

    @Override // G0.p
    public final void N(int i8, C0300y c0300y, Exception exc) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0052h0(this, pairA, exc, 1));
        }
    }

    public final Pair a(int i8, C0300y c0300y) {
        C0300y c0300yA;
        s0 s0Var = this.f1062G;
        C0300y c0300y2 = null;
        if (c0300y != null) {
            int i9 = 0;
            while (true) {
                if (i9 >= s0Var.f1071c.size()) {
                    c0300yA = null;
                    break;
                }
                if (((C0300y) s0Var.f1071c.get(i9)).f5260d == c0300y.f5260d) {
                    Object obj = s0Var.f1070b;
                    int i10 = B0.f684k;
                    c0300yA = c0300y.a(Pair.create(obj, c0300y.f5257a));
                    break;
                }
                i9++;
            }
            if (c0300yA == null) {
                return null;
            }
            c0300y2 = c0300yA;
        }
        return Pair.create(Integer.valueOf(i8 + s0Var.f1072d), c0300y2);
    }

    @Override // G0.p
    public final void h(int i8, C0300y c0300y) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0062m0(this, pairA, 2));
        }
    }

    @Override // O0.E
    public final void l(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0064n0(this, pairA, c0292p, c0296u, 1));
        }
    }

    @Override // O0.E
    public final void r(int i8, C0300y c0300y, C0296u c0296u) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0060l0(this, pairA, c0296u, 0));
        }
    }

    @Override // O0.E
    public final void s(int i8, C0300y c0300y, final C0292p c0292p, final C0296u c0296u, final IOException iOException, final boolean z7) {
        final Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new Runnable() { // from class: B0.p0
                @Override // java.lang.Runnable
                public final void run() {
                    InterfaceC0076a interfaceC0076a = this.f1056G.f1063H.f1085h;
                    Pair pair = pairA;
                    ((C0.A) interfaceC0076a).s(((Integer) pair.first).intValue(), (C0300y) pair.second, c0292p, c0296u, iOException, z7);
                }
            });
        }
    }

    @Override // G0.p
    public final void w(int i8, C0300y c0300y) {
        Pair pairA = a(i8, c0300y);
        if (pairA != null) {
            ((p117p0.I) this.f1063H.f1086i).c(new RunnableC0062m0(this, pairA, 3));
        }
    }
}
