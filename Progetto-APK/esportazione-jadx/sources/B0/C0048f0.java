package B0;

import O0.C0280d;
import O0.C0289m;
import O0.C0293q;
import O0.C0300y;
import O0.InterfaceC0298w;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: renamed from: B0.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0048f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0298w f926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final O0.U[] f928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f931f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0050g0 f932g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f933h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean[] f934i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final D0[] f935j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final R0.w f936k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final u0 f937l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0048f0 f938m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public O0.Z f939n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public R0.y f940o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f941p;

    public C0048f0(D0[] d0Arr, long j8, R0.w wVar, S0.d dVar, u0 u0Var, C0050g0 c0050g0, R0.y yVar) {
        this.f935j = d0Arr;
        this.f941p = j8;
        this.f936k = wVar;
        this.f937l = u0Var;
        C0300y c0300y = c0050g0.f950a;
        this.f927b = c0300y.f5257a;
        this.f932g = c0050g0;
        this.f939n = O0.Z.f5181d;
        this.f940o = yVar;
        this.f928c = new O0.U[d0Arr.length];
        this.f934i = new boolean[d0Arr.length];
        u0Var.getClass();
        int i8 = B0.f684k;
        Pair pair = (Pair) c0300y.f5257a;
        Object obj = pair.first;
        C0300y c0300yA = c0300y.a(pair.second);
        s0 s0Var = (s0) u0Var.f1081d.get(obj);
        s0Var.getClass();
        u0Var.f1084g.add(s0Var);
        r0 r0Var = (r0) u0Var.f1083f.get(s0Var);
        if (r0Var != null) {
            r0Var.f1066a.e(r0Var.f1067b);
        }
        s0Var.f1071c.add(c0300yA);
        C0293q c0293qB = s0Var.f1069a.b(c0300yA, dVar, c0050g0.f951b);
        u0Var.f1080c.put(c0293qB, s0Var);
        u0Var.c();
        long j9 = c0050g0.f953d;
        this.f926a = j9 != -9223372036854775807L ? new C0280d(c0293qB, !c0050g0.f955f, j9) : c0293qB;
    }

    public final long a(R0.y yVar, long j8, boolean z7, boolean[] zArr) {
        D0[] d0Arr;
        O0.U[] uArr;
        int i8 = 0;
        while (true) {
            boolean z8 = true;
            if (i8 >= yVar.f6252a) {
                break;
            }
            if (z7 || !yVar.a(this.f940o, i8)) {
                z8 = false;
            }
            this.f934i[i8] = z8;
            i8++;
        }
        int i9 = 0;
        while (true) {
            d0Arr = this.f935j;
            int length = d0Arr.length;
            uArr = this.f928c;
            if (i9 >= length) {
                break;
            }
            if (d0Arr[i9].getTrackType() == -2) {
                uArr[i9] = null;
            }
            i9++;
        }
        b();
        this.f940o = yVar;
        c();
        long jL = this.f926a.l(yVar.f6254c, this.f934i, this.f928c, zArr, j8);
        for (int i10 = 0; i10 < d0Arr.length; i10++) {
            if (d0Arr[i10].getTrackType() == -2 && this.f940o.b(i10)) {
                uArr[i10] = new C0289m();
            }
        }
        this.f931f = false;
        for (int i11 = 0; i11 < uArr.length; i11++) {
            if (uArr[i11] != null) {
                H1.i(yVar.b(i11));
                if (d0Arr[i11].getTrackType() != -2) {
                    this.f931f = true;
                }
            } else {
                H1.i(yVar.f6254c[i11] == null);
            }
        }
        return jL;
    }

    public final void b() {
        if (this.f938m != null) {
            return;
        }
        int i8 = 0;
        while (true) {
            R0.y yVar = this.f940o;
            if (i8 >= yVar.f6252a) {
                return;
            }
            boolean zB = yVar.b(i8);
            R0.t tVar = this.f940o.f6254c[i8];
            if (zB && tVar != null) {
                tVar.e();
            }
            i8++;
        }
    }

    public final void c() {
        if (this.f938m != null) {
            return;
        }
        int i8 = 0;
        while (true) {
            R0.y yVar = this.f940o;
            if (i8 >= yVar.f6252a) {
                return;
            }
            boolean zB = yVar.b(i8);
            R0.t tVar = this.f940o.f6254c[i8];
            if (zB && tVar != null) {
                tVar.c();
            }
            i8++;
        }
    }

    public final long d() {
        if (!this.f930e) {
            return this.f932g.f951b;
        }
        long jU = this.f931f ? this.f926a.u() : Long.MIN_VALUE;
        return jU == Long.MIN_VALUE ? this.f932g.f954e : jU;
    }

    public final long e() {
        return this.f932g.f951b + this.f941p;
    }

    public final void f(float f8, p094m0.f0 f0Var, boolean z7) {
        this.f930e = true;
        this.f939n = this.f926a.s();
        R0.y yVarJ = j(f8, f0Var);
        C0050g0 c0050g0 = this.f932g;
        long j8 = c0050g0.f951b;
        long j9 = c0050g0.f954e;
        long jA = a(yVarJ, (j9 == -9223372036854775807L || j8 < j9) ? j8 : Math.max(0L, j9 - 1), false, new boolean[this.f935j.length]);
        long j10 = this.f941p;
        C0050g0 c0050g1 = this.f932g;
        this.f941p = (c0050g1.f951b - jA) + j10;
        this.f932g = c0050g1.b(jA);
    }

    public final boolean g() {
        return this.f930e && (!this.f931f || this.f926a.u() == Long.MIN_VALUE);
    }

    public final boolean h() {
        return this.f930e && (g() || d() - this.f932g.f951b >= -9223372036854775807L);
    }

    public final void i() {
        b();
        InterfaceC0298w interfaceC0298w = this.f926a;
        try {
            boolean z7 = interfaceC0298w instanceof C0280d;
            u0 u0Var = this.f937l;
            if (z7) {
                u0Var.f(((C0280d) interfaceC0298w).f5195G);
            } else {
                u0Var.f(interfaceC0298w);
            }
        } catch (RuntimeException e8) {
            p117p0.x.d("MediaPeriodHolder", "Period release failed.", e8);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0601 */
    /* JADX WARN: Code duplicated, block: B:158:0x034c  */
    /* JADX WARN: Code duplicated, block: B:207:0x03fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final R0.y j(float r29, p094m0.f0 r30) {
        /*
            Method dump skipped, instruction units count: 1539
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: B0.C0048f0.j(float, m0.f0):R0.y");
    }

    public final void k() {
        InterfaceC0298w interfaceC0298w = this.f926a;
        if (interfaceC0298w instanceof C0280d) {
            long j8 = this.f932g.f953d;
            if (j8 == -9223372036854775807L) {
                j8 = Long.MIN_VALUE;
            }
            C0280d c0280d = (C0280d) interfaceC0298w;
            c0280d.f5199K = 0L;
            c0280d.f5200L = j8;
        }
    }
}
