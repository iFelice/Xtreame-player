package p094m0;

import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f26851a = new c0();

    static {
        M.L(0);
        M.L(1);
        M.L(2);
    }

    public int a(boolean z7) {
        return q() ? -1 : 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z7) {
        if (q()) {
            return -1;
        }
        return p() - 1;
    }

    public final int d(int i8, d0 d0Var, e0 e0Var, int i9, boolean z7) {
        int i10 = g(i8, d0Var, false).f26827c;
        if (n(i10, e0Var, 0L).f26848o != i8) {
            return i8 + 1;
        }
        int iE = e(z7, i10, i9);
        if (iE == -1) {
            return -1;
        }
        return n(iE, e0Var, 0L).f26847n;
    }

    public int e(boolean z7, int i8, int i9) {
        if (i9 == 0) {
            if (i8 == c(z7)) {
                return -1;
            }
            return i8 + 1;
        }
        if (i9 == 1) {
            return i8;
        }
        if (i9 == 2) {
            return i8 == c(z7) ? a(z7) : i8 + 1;
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        int iC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (f0Var.p() != p() || f0Var.i() != i()) {
            return false;
        }
        e0 e0Var = new e0();
        d0 d0Var = new d0();
        e0 e0Var2 = new e0();
        d0 d0Var2 = new d0();
        for (int i8 = 0; i8 < p(); i8++) {
            if (!n(i8, e0Var, 0L).equals(f0Var.n(i8, e0Var2, 0L))) {
                return false;
            }
        }
        for (int i9 = 0; i9 < i(); i9++) {
            if (!g(i9, d0Var, true).equals(f0Var.g(i9, d0Var2, true))) {
                return false;
            }
        }
        int iA = a(true);
        if (iA != f0Var.a(true) || (iC = c(true)) != f0Var.c(true)) {
            return false;
        }
        while (iA != iC) {
            int iE = e(true, iA, 0);
            if (iE != f0Var.e(true, iA, 0)) {
                return false;
            }
            iA = iE;
        }
        return true;
    }

    public final d0 f(int i8, d0 d0Var) {
        return g(i8, d0Var, false);
    }

    public abstract d0 g(int i8, d0 d0Var, boolean z7);

    public d0 h(Object obj, d0 d0Var) {
        return g(b(obj), d0Var, true);
    }

    public int hashCode() {
        e0 e0Var = new e0();
        d0 d0Var = new d0();
        int iP = p() + 217;
        for (int i8 = 0; i8 < p(); i8++) {
            iP = (iP * 31) + n(i8, e0Var, 0L).hashCode();
        }
        int i9 = i() + (iP * 31);
        for (int i10 = 0; i10 < i(); i10++) {
            i9 = (i9 * 31) + g(i10, d0Var, true).hashCode();
        }
        int iA = a(true);
        while (iA != -1) {
            i9 = (i9 * 31) + iA;
            iA = e(true, iA, 0);
        }
        return i9;
    }

    public abstract int i();

    public final Pair j(e0 e0Var, d0 d0Var, int i8, long j8) {
        Pair pairK = k(e0Var, d0Var, i8, j8, 0L);
        pairK.getClass();
        return pairK;
    }

    public final Pair k(e0 e0Var, d0 d0Var, int i8, long j8, long j9) {
        H1.e(i8, p());
        n(i8, e0Var, j9);
        if (j8 == -9223372036854775807L) {
            j8 = e0Var.f26845l;
            if (j8 == -9223372036854775807L) {
                return null;
            }
        }
        int i9 = e0Var.f26847n;
        g(i9, d0Var, false);
        while (i9 < e0Var.f26848o && d0Var.f26829e != j8) {
            int i10 = i9 + 1;
            if (g(i10, d0Var, false).f26829e > j8) {
                break;
            }
            i9 = i10;
        }
        g(i9, d0Var, true);
        long jMin = j8 - d0Var.f26829e;
        long j10 = d0Var.f26828d;
        if (j10 != -9223372036854775807L) {
            jMin = Math.min(jMin, j10 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = d0Var.f26826b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public int l(boolean z7, int i8, int i9) {
        if (i9 == 0) {
            if (i8 == a(z7)) {
                return -1;
            }
            return i8 - 1;
        }
        if (i9 == 1) {
            return i8;
        }
        if (i9 == 2) {
            return i8 == a(z7) ? c(z7) : i8 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object m(int i8);

    public abstract e0 n(int i8, e0 e0Var, long j8);

    public final void o(int i8, e0 e0Var) {
        n(i8, e0Var, 0L);
    }

    public abstract int p();

    public final boolean q() {
        return p() == 0;
    }
}
