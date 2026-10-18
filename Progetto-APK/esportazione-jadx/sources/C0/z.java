package C0;

import B0.O;
import O0.C0300y;
import java.util.Objects;
import p094m0.Y;
import p094m0.d0;
import p094m0.f0;
import p117p0.M;
import z4.J;
import z4.i0;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f1336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z4.H f1337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i0 f1338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0300y f1339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0300y f1340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0300y f1341f;

    public z(d0 d0Var) {
        this.f1336a = d0Var;
        z4.F f8 = z4.H.f31804H;
        this.f1337b = z4.d0.f31844K;
        this.f1338c = i0.f31862M;
    }

    public static C0300y b(Y y7, z4.H h8, C0300y c0300y, d0 d0Var) {
        O o4 = (O) y7;
        f0 f0VarX = o4.x();
        int iU = o4.u();
        Object objM = f0VarX.q() ? null : f0VarX.m(iU);
        int iB = (o4.F() || f0VarX.q()) ? -1 : f0VarX.f(iU, d0Var).b(M.R(o4.v()) - d0Var.g());
        for (int i8 = 0; i8 < h8.size(); i8++) {
            C0300y c0300y2 = (C0300y) h8.get(i8);
            if (c(c0300y2, objM, o4.F(), o4.r(), o4.s(), iB)) {
                return c0300y2;
            }
        }
        if (h8.isEmpty() && c0300y != null) {
            if (c(c0300y, objM, o4.F(), o4.r(), o4.s(), iB)) {
                return c0300y;
            }
        }
        return null;
    }

    public static boolean c(C0300y c0300y, Object obj, boolean z7, int i8, int i9, int i10) {
        if (!c0300y.f5257a.equals(obj)) {
            return false;
        }
        int i11 = c0300y.f5258b;
        return (z7 && i11 == i8 && c0300y.f5259c == i9) || (!z7 && i11 == -1 && c0300y.f5261e == i10);
    }

    public final void a(p117p0.C c8, C0300y c0300y, f0 f0Var) {
        if (c0300y == null) {
            return;
        }
        if (f0Var.b(c0300y.f5257a) != -1) {
            c8.d(c0300y, f0Var);
            return;
        }
        f0 f0Var2 = (f0) this.f1338c.get(c0300y);
        if (f0Var2 != null) {
            c8.d(c0300y, f0Var2);
        }
    }

    public final void d(f0 f0Var) {
        p117p0.C cA = J.a();
        if (this.f1337b.isEmpty()) {
            a(cA, this.f1340e, f0Var);
            if (!Objects.equals(this.f1341f, this.f1340e)) {
                a(cA, this.f1341f, f0Var);
            }
            if (!Objects.equals(this.f1339d, this.f1340e) && !Objects.equals(this.f1339d, this.f1341f)) {
                a(cA, this.f1339d, f0Var);
            }
        } else {
            for (int i8 = 0; i8 < this.f1337b.size(); i8++) {
                a(cA, (C0300y) this.f1337b.get(i8), f0Var);
            }
            if (!this.f1337b.contains(this.f1339d)) {
                a(cA, this.f1339d, f0Var);
            }
        }
        this.f1338c = cA.a();
    }
}
