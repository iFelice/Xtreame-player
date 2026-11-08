package B0;

import C0.InterfaceC0076a;
import O0.C0300y;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.List;
import p094m0.C3119b;
import p094m0.C3120c;

/* JADX INFO: renamed from: B0.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0054i0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC0076a f978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p117p0.q f979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0073x f980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C0048f0 f984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C0048f0 f985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C0048f0 f986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C0048f0 f987l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0048f0 f988m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f989n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Object f990o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f991p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p094m0.d0 f976a = new p094m0.d0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p094m0.e0 f977b = new p094m0.e0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public List f992q = new ArrayList();

    public C0054i0(InterfaceC0076a interfaceC0076a, p117p0.I i8, C0073x c0073x) {
        this.f978c = interfaceC0076a;
        this.f979d = i8;
        this.f980e = c0073x;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    /* JADX WARN: Code duplicated, block: B:28:0x0067 A[LOOP:0: B:3:0x0017->B:28:0x0067, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x0072 A[EDGE_INSN: B:40:0x0072->B:29:0x0072 BREAK  A[LOOP:0: B:3:0x0017->B:28:0x0067], SYNTHETIC] */
    public static C0300y o(p094m0.f0 f0Var, Object obj, long j8, long j9, p094m0.e0 e0Var, p094m0.d0 d0Var) {
        f0Var.h(obj, d0Var);
        f0Var.o(d0Var.f26827c, e0Var);
        int iB = f0Var.b(obj);
        Object obj2 = obj;
        while (true) {
            int i8 = d0Var.f26831g.f26821a;
            if (i8 == 0) {
                break;
            }
            if (i8 == 1 && d0Var.h(0)) {
                break;
            }
            d0Var.f26831g.getClass();
            if (!d0Var.i(0)) {
                break;
            }
            long j10 = 0;
            if (d0Var.c(0L) != -1) {
                break;
            }
            if (d0Var.f26828d == 0) {
                if (iB <= e0Var.f26848o) {
                    break;
                    break;
                }
                f0Var.g(iB, d0Var, true);
                obj2 = d0Var.f26826b;
                obj2.getClass();
                iB++;
            } else {
                int i9 = i8 - (d0Var.h(i8 + (-1)) ? 2 : 1);
                for (int i10 = 0; i10 <= i9; i10++) {
                    j10 += d0Var.f26831g.a(i10).f26813i;
                }
                if (d0Var.f26828d > j10) {
                    break;
                }
                if (iB <= e0Var.f26848o) {
                    break;
                }
                f0Var.g(iB, d0Var, true);
                obj2 = d0Var.f26826b;
                obj2.getClass();
                iB++;
            }
        }
        f0Var.h(obj2, d0Var);
        int iC = d0Var.c(j8);
        return iC == -1 ? new C0300y(obj2, d0Var.b(j8), j9) : new C0300y(obj2, iC, d0Var.f(iC), j9, -1);
    }

    public final C0048f0 a() {
        C0048f0 c0048f0 = this.f984i;
        if (c0048f0 == null) {
            return null;
        }
        if (c0048f0 == this.f985j) {
            this.f985j = c0048f0.f938m;
        }
        if (c0048f0 == this.f986k) {
            this.f986k = c0048f0.f938m;
        }
        c0048f0.i();
        int i8 = this.f989n - 1;
        this.f989n = i8;
        if (i8 == 0) {
            this.f987l = null;
            C0048f0 c0048f1 = this.f984i;
            this.f990o = c0048f1.f927b;
            this.f991p = c0048f1.f932g.f950a.f5260d;
        }
        this.f984i = this.f984i.f938m;
        l();
        return this.f984i;
    }

    public final void b() {
        if (this.f989n == 0) {
            return;
        }
        C0048f0 c0048f0 = this.f984i;
        H1.j(c0048f0);
        this.f990o = c0048f0.f927b;
        this.f991p = c0048f0.f932g.f950a.f5260d;
        while (c0048f0 != null) {
            c0048f0.i();
            c0048f0 = c0048f0.f938m;
        }
        this.f984i = null;
        this.f987l = null;
        this.f985j = null;
        this.f986k = null;
        this.f989n = 0;
        l();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00eb A[PHI: r18
      0x00eb: PHI (r18v2 long) = (r18v1 long), (r18v1 long), (r18v1 long), (r18v4 long) binds: [B:21:0x00af, B:23:0x00b5, B:37:0x00e7, B:38:0x00e9] A[DONT_GENERATE, DONT_INLINE]] */
    public final C0050g0 c(p094m0.f0 f0Var, C0048f0 c0048f0, long j8) {
        C0050g0 c0050g0;
        long j9;
        long j10;
        long j11;
        Object obj;
        long j12;
        long jQ;
        C0050g0 c0050g1 = c0048f0.f932g;
        int iD = f0Var.d(f0Var.b(c0050g1.f950a.f5257a), this.f976a, this.f977b, this.f982g, this.f983h);
        if (iD == -1) {
            return null;
        }
        p094m0.d0 d0Var = this.f976a;
        boolean z7 = true;
        int i8 = f0Var.g(iD, d0Var, true).f26827c;
        Object obj2 = d0Var.f26826b;
        obj2.getClass();
        C0300y c0300y = c0050g1.f950a;
        long j13 = c0300y.f5260d;
        if (f0Var.n(i8, this.f977b, 0L).f26847n == iD) {
            Pair pairK = f0Var.k(this.f977b, this.f976a, i8, -9223372036854775807L, Math.max(0L, j8));
            if (pairK == null) {
                return null;
            }
            Object obj3 = pairK.first;
            long jLongValue = ((Long) pairK.second).longValue();
            C0048f0 c0048f1 = c0048f0.f938m;
            if (c0048f1 == null || !c0048f1.f927b.equals(obj3)) {
                jQ = q(obj3);
                if (jQ == -1) {
                    jQ = this.f981f;
                    this.f981f = 1 + jQ;
                }
            } else {
                jQ = c0048f1.f932g.f950a.f5260d;
            }
            c0050g0 = c0050g1;
            j9 = jLongValue;
            j10 = -9223372036854775807L;
            j11 = jQ;
            obj = obj3;
        } else {
            c0050g0 = c0050g1;
            j9 = 0;
            j10 = 0;
            j11 = j13;
            obj = obj2;
        }
        C0300y c0300yO = o(f0Var, obj, j9, j11, this.f977b, this.f976a);
        if (j10 != -9223372036854775807L) {
            long j14 = c0050g0.f952c;
            if (j14 != -9223372036854775807L) {
                int i9 = f0Var.h(c0300y.f5257a, d0Var).f26831g.f26821a;
                d0Var.f26831g.getClass();
                if (i9 <= 0 || !d0Var.i(0) || (i9 <= 1 && d0Var.d(0) == Long.MIN_VALUE)) {
                    z7 = false;
                }
                if (c0300yO.b() && z7) {
                    j12 = j14;
                } else {
                    if (z7) {
                        j9 = j14;
                    }
                    j12 = j10;
                }
            } else {
                j12 = j10;
            }
        } else {
            j12 = j10;
        }
        return e(f0Var, c0300yO, j12, j9);
    }

    public final C0050g0 d(p094m0.f0 f0Var, C0048f0 c0048f0, long j8) {
        C0050g0 c0050g0 = c0048f0.f932g;
        long j9 = (c0048f0.f941p + c0050g0.f954e) - j8;
        if (c0050g0.f957h) {
            return c(f0Var, c0048f0, j9);
        }
        C0300y c0300y = c0050g0.f950a;
        Object obj = c0300y.f5257a;
        p094m0.d0 d0Var = this.f976a;
        f0Var.h(obj, d0Var);
        boolean zB = c0300y.b();
        Object obj2 = c0300y.f5257a;
        boolean z7 = c0050g0.f956g;
        if (!zB) {
            int i8 = c0300y.f5261e;
            if (i8 != -1 && d0Var.h(i8)) {
                return c(f0Var, c0048f0, j9);
            }
            int iF = d0Var.f(i8);
            boolean z8 = d0Var.i(i8) && d0Var.e(i8, iF) == 3;
            if (iF != d0Var.f26831g.a(i8).f26806b && !z8) {
                return f(f0Var, c0300y.f5257a, c0300y.f5261e, iF, c0050g0.f954e, c0300y.f5260d, z7);
            }
            f0Var.h(obj2, d0Var);
            long jD = d0Var.d(i8);
            return g(f0Var, c0300y.f5257a, jD == Long.MIN_VALUE ? d0Var.f26828d : d0Var.f26831g.a(i8).f26813i + jD, c0050g0.f954e, c0300y.f5260d, false);
        }
        C3120c c3120c = d0Var.f26831g;
        int i9 = c0300y.f5258b;
        int i10 = c3120c.a(i9).f26806b;
        if (i10 != -1) {
            int iA = d0Var.f26831g.a(i9).a(c0300y.f5259c);
            if (iA < i10) {
                return f(f0Var, c0300y.f5257a, i9, iA, c0050g0.f952c, c0300y.f5260d, z7);
            }
            long jLongValue = c0050g0.f952c;
            if (jLongValue == -9223372036854775807L) {
                Pair pairK = f0Var.k(this.f977b, d0Var, d0Var.f26827c, -9223372036854775807L, Math.max(0L, j9));
                if (pairK != null) {
                    jLongValue = ((Long) pairK.second).longValue();
                }
            }
            f0Var.h(obj2, d0Var);
            int i11 = c0300y.f5258b;
            long jD2 = d0Var.d(i11);
            return g(f0Var, c0300y.f5257a, Math.max(jD2 == Long.MIN_VALUE ? d0Var.f26828d : d0Var.f26831g.a(i11).f26813i + jD2, jLongValue), c0050g0.f952c, c0300y.f5260d, z7);
        }
        return null;
    }

    public final C0050g0 e(p094m0.f0 f0Var, C0300y c0300y, long j8, long j9) {
        f0Var.h(c0300y.f5257a, this.f976a);
        if (c0300y.b()) {
            return f(f0Var, c0300y.f5257a, c0300y.f5258b, c0300y.f5259c, j8, c0300y.f5260d, false);
        }
        return g(f0Var, c0300y.f5257a, j9, j8, c0300y.f5260d, false);
    }

    public final C0050g0 f(p094m0.f0 f0Var, Object obj, int i8, int i9, long j8, long j9, boolean z7) {
        C0300y c0300y = new C0300y(obj, i8, i9, j9, -1);
        p094m0.d0 d0Var = this.f976a;
        long jA = f0Var.h(obj, d0Var).a(i8, i9);
        if (i9 == d0Var.f(i8)) {
            d0Var.f26831g.getClass();
        }
        boolean zI = d0Var.i(i8);
        long jMax = 0;
        if (jA != -9223372036854775807L && 0 >= jA) {
            jMax = Math.max(0L, jA - 1);
        }
        return new C0050g0(c0300y, jMax, j8, -9223372036854775807L, jA, z7, zI, false, false, false);
    }

    public final C0050g0 g(p094m0.f0 f0Var, Object obj, long j8, long j9, long j10, boolean z7) {
        boolean z8;
        boolean z9;
        long jD;
        long jMax = j8;
        p094m0.d0 d0Var = this.f976a;
        f0Var.h(obj, d0Var);
        int iB = d0Var.b(jMax);
        if (iB == -1) {
            z9 = d0Var.f26831g.f26821a > 0 && d0Var.i(0);
        } else {
            if (d0Var.i(iB) && d0Var.d(iB) == d0Var.f26828d) {
                C3119b c3119bA = d0Var.f26831g.a(iB);
                int i8 = c3119bA.f26806b;
                if (i8 == -1) {
                    z8 = true;
                    break;
                }
                int i9 = 0;
                while (true) {
                    if (i9 >= i8) {
                        z8 = false;
                        break;
                    }
                    int i10 = c3119bA.f26810f[i9];
                    if (i10 == 0 || i10 == 1) {
                        z8 = true;
                        break;
                    }
                    i9++;
                }
                if (!z8) {
                    iB = -1;
                }
            }
        }
        C0300y c0300y = new C0300y(obj, iB, j10);
        boolean z10 = !c0300y.b() && iB == -1;
        boolean zJ = j(f0Var, c0300y);
        boolean zI = i(f0Var, c0300y, z10);
        boolean z11 = (iB == -1 || !d0Var.i(iB) || d0Var.h(iB)) ? false : true;
        boolean z12 = iB != -1 && d0Var.h(iB) && d0Var.i(iB);
        if (iB == -1 || z12) {
            jD = z9 ? d0Var.f26828d : -9223372036854775807L;
        } else {
            jD = d0Var.d(iB);
        }
        long j11 = (jD == -9223372036854775807L || jD == Long.MIN_VALUE) ? d0Var.f26828d : jD;
        if (j11 != -9223372036854775807L && jMax >= j11) {
            jMax = Math.max(0L, j11 - ((long) ((zI || !z9) ? 1 : 0)));
        }
        return new C0050g0(c0300y, jMax, j9, jD, j11, z7, z11, z10, zJ, zI);
    }

    public final C0050g0 h(p094m0.f0 f0Var, C0050g0 c0050g0) {
        long jA;
        boolean zI;
        C0300y c0300y = c0050g0.f950a;
        boolean zB = c0300y.b();
        int i8 = c0300y.f5261e;
        boolean z7 = !zB && i8 == -1;
        boolean zJ = j(f0Var, c0300y);
        boolean zI2 = i(f0Var, c0300y, z7);
        Object obj = c0050g0.f950a.f5257a;
        p094m0.d0 d0Var = this.f976a;
        f0Var.h(obj, d0Var);
        long jD = (c0300y.b() || i8 == -1) ? -9223372036854775807L : d0Var.d(i8);
        boolean zB2 = c0300y.b();
        int i9 = c0300y.f5258b;
        if (zB2) {
            jA = d0Var.a(i9, c0300y.f5259c);
        } else {
            jA = (jD == -9223372036854775807L || jD == Long.MIN_VALUE) ? d0Var.f26828d : jD;
        }
        if (c0300y.b()) {
            zI = d0Var.i(i9);
        } else {
            zI = i8 != -1 && d0Var.i(i8);
        }
        return new C0050g0(c0300y, c0050g0.f951b, c0050g0.f952c, jD, jA, c0050g0.f955f, zI, z7, zJ, zI2);
    }

    public final boolean i(p094m0.f0 f0Var, C0300y c0300y, boolean z7) {
        int iB = f0Var.b(c0300y.f5257a);
        if (f0Var.n(f0Var.g(iB, this.f976a, false).f26827c, this.f977b, 0L).f26842i) {
            return false;
        }
        return f0Var.d(iB, this.f976a, this.f977b, this.f982g, this.f983h) == -1 && z7;
    }

    public final boolean j(p094m0.f0 f0Var, C0300y c0300y) {
        if (!(!c0300y.b() && c0300y.f5261e == -1)) {
            return false;
        }
        Object obj = c0300y.f5257a;
        return f0Var.n(f0Var.h(obj, this.f976a).f26827c, this.f977b, 0L).f26848o == f0Var.b(obj);
    }

    public final void k() {
        C0048f0 c0048f0 = this.f988m;
        if (c0048f0 == null || c0048f0.h()) {
            this.f988m = null;
            for (int i8 = 0; i8 < this.f992q.size(); i8++) {
                C0048f0 c0048f1 = (C0048f0) this.f992q.get(i8);
                if (!c0048f1.h()) {
                    this.f988m = c0048f1;
                    return;
                }
            }
        }
    }

    public final void l() {
        z4.E eQ = z4.H.q();
        for (C0048f0 c0048f0 = this.f984i; c0048f0 != null; c0048f0 = c0048f0.f938m) {
            eQ.g0(c0048f0.f932g.f950a);
        }
        C0048f0 c0048f1 = this.f985j;
        ((p117p0.I) this.f979d).c(new RunnableC0052h0(this, eQ, c0048f1 == null ? null : c0048f1.f932g.f950a, 0));
    }

    public final void m(long j8) {
        C0048f0 c0048f0 = this.f987l;
        if (c0048f0 != null) {
            H1.i(c0048f0.f938m == null);
            if (c0048f0.f930e) {
                c0048f0.f926a.w(j8 - c0048f0.f941p);
            }
        }
    }

    public final int n(C0048f0 c0048f0) {
        H1.j(c0048f0);
        int i8 = 0;
        if (c0048f0.equals(this.f987l)) {
            return 0;
        }
        this.f987l = c0048f0;
        while (true) {
            c0048f0 = c0048f0.f938m;
            if (c0048f0 == null) {
                break;
            }
            if (c0048f0 == this.f985j) {
                C0048f0 c0048f1 = this.f984i;
                this.f985j = c0048f1;
                this.f986k = c0048f1;
                i8 = 3;
            }
            if (c0048f0 == this.f986k) {
                this.f986k = this.f985j;
                i8 |= 2;
            }
            c0048f0.i();
            this.f989n--;
        }
        C0048f0 c0048f2 = this.f987l;
        c0048f2.getClass();
        if (c0048f2.f938m != null) {
            c0048f2.b();
            c0048f2.f938m = null;
            c0048f2.c();
        }
        l();
        return i8;
    }

    public final C0300y p(p094m0.f0 f0Var, Object obj, long j8) {
        long jQ;
        int iB;
        Object obj2 = obj;
        p094m0.d0 d0Var = this.f976a;
        int i8 = f0Var.h(obj2, d0Var).f26827c;
        Object obj3 = this.f990o;
        if (obj3 == null || (iB = f0Var.b(obj3)) == -1 || f0Var.g(iB, d0Var, false).f26827c != i8) {
            C0048f0 c0048f0 = this.f984i;
            while (true) {
                if (c0048f0 == null) {
                    C0048f0 c0048f1 = this.f984i;
                    while (true) {
                        if (c0048f1 == null) {
                            jQ = q(obj2);
                            if (jQ != -1) {
                                break;
                            }
                            jQ = this.f981f;
                            this.f981f = 1 + jQ;
                            if (this.f984i != null) {
                                break;
                            }
                            this.f990o = obj2;
                            this.f991p = jQ;
                            break;
                        }
                        int iB2 = f0Var.b(c0048f1.f927b);
                        if (iB2 != -1 && f0Var.g(iB2, d0Var, false).f26827c == i8) {
                            jQ = c0048f1.f932g.f950a.f5260d;
                            break;
                        }
                        c0048f1 = c0048f1.f938m;
                    }
                } else {
                    if (c0048f0.f927b.equals(obj2)) {
                        jQ = c0048f0.f932g.f950a.f5260d;
                        break;
                    }
                    c0048f0 = c0048f0.f938m;
                }
            }
        } else {
            jQ = this.f991p;
        }
        long j9 = jQ;
        f0Var.h(obj2, d0Var);
        int i9 = d0Var.f26827c;
        p094m0.e0 e0Var = this.f977b;
        f0Var.o(i9, e0Var);
        boolean z7 = false;
        for (int iB3 = f0Var.b(obj); iB3 >= e0Var.f26847n; iB3--) {
            f0Var.g(iB3, d0Var, true);
            boolean z8 = d0Var.f26831g.f26821a > 0;
            z7 |= z8;
            if (d0Var.c(d0Var.f26828d) != -1) {
                obj2 = d0Var.f26826b;
                obj2.getClass();
            }
            if (z7 && (!z8 || d0Var.f26828d != 0)) {
                break;
            }
        }
        return o(f0Var, obj2, j8, j9, this.f977b, this.f976a);
    }

    public final long q(Object obj) {
        for (int i8 = 0; i8 < this.f992q.size(); i8++) {
            C0048f0 c0048f0 = (C0048f0) this.f992q.get(i8);
            if (c0048f0.f927b.equals(obj)) {
                return c0048f0.f932g.f950a.f5260d;
            }
        }
        return -1L;
    }

    public final int r(p094m0.f0 f0Var) {
        C0048f0 c0048f0;
        C0048f0 c0048f1 = this.f984i;
        if (c0048f1 == null) {
            return 0;
        }
        int iB = f0Var.b(c0048f1.f927b);
        while (true) {
            iB = f0Var.d(iB, this.f976a, this.f977b, this.f982g, this.f983h);
            while (true) {
                c0048f1.getClass();
                c0048f0 = c0048f1.f938m;
                if (c0048f0 == null || c0048f1.f932g.f957h) {
                    break;
                }
                c0048f1 = c0048f0;
            }
            if (iB == -1 || c0048f0 == null || f0Var.b(c0048f0.f927b) != iB) {
                break;
            }
            c0048f1 = c0048f0;
        }
        int iN = n(c0048f1);
        c0048f1.f932g = h(f0Var, c0048f1.f932g);
        return iN;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0099  */
    public final int s(p094m0.f0 f0Var, long j8, long j9, long j10) {
        C0050g0 c0050g0H;
        boolean z7;
        C0048f0 c0048f0 = this.f984i;
        C0048f0 c0048f1 = null;
        while (true) {
            int i8 = 0;
            if (c0048f0 == null) {
                return 0;
            }
            C0050g0 c0050g0 = c0048f0.f932g;
            if (c0048f1 == null) {
                c0050g0H = h(f0Var, c0050g0);
            } else {
                C0050g0 c0050g0D = d(f0Var, c0048f1, j8);
                if (c0050g0D == null || c0050g0.f951b != c0050g0D.f951b || !c0050g0.f950a.equals(c0050g0D.f950a)) {
                    return n(c0048f1);
                }
                c0050g0H = c0050g0D;
            }
            c0048f0.f932g = c0050g0H.a(c0050g0.f952c);
            long j11 = c0050g0H.f954e;
            long j12 = c0050g0.f954e;
            if (j12 != j11) {
                c0048f0.k();
                long j13 = j11 == -9223372036854775807L ? Long.MAX_VALUE : j11 + c0048f0.f941p;
                boolean z8 = c0048f0 == this.f985j && !c0048f0.f932g.f956g && (j9 == Long.MIN_VALUE || j9 >= j13);
                boolean z9 = c0048f0 == this.f986k && (j10 == Long.MIN_VALUE || j10 >= j13);
                int iN = n(c0048f0);
                if (iN != 0) {
                    return iN;
                }
                if (j12 == -9223372036854775807L && c0050g0.f953d == Long.MIN_VALUE) {
                    long j14 = c0050g0H.f953d;
                    if (j14 == -9223372036854775807L || j14 == Long.MIN_VALUE) {
                        z7 = false;
                    } else {
                        z7 = true;
                    }
                } else {
                    z7 = false;
                }
                if (z8 && (j12 != -9223372036854775807L || z7)) {
                    i8 = 1;
                }
                return z9 ? i8 | 2 : i8;
            }
            c0048f1 = c0048f0;
            c0048f0 = c0048f0.f938m;
        }
    }
}
