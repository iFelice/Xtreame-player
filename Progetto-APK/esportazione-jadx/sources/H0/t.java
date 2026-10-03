package H0;

import B0.C0042c0;
import B0.C0044d0;
import B0.w0;
import D0.U;
import O0.C0278b;
import O0.C0292p;
import O0.C0296u;
import O0.D;
import O0.S;
import O0.W;
import O0.Z;
import W0.F;
import W0.L;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.g0;
import p117p0.E;
import p117p0.J;
import p117p0.M;
import p117p0.x;
import p141s0.A;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class t implements S0.h, S0.k, W, W0.u, S {

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static final Set f3558E0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public boolean f3559A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public long f3560B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public C3131n f3561C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public l f3562D0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f3563G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f3564H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final U f3565I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final j f3566J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final S0.d f3567K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C3136t f3568L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final G0.r f3569M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final G0.o f3570N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final U4.b f3571O;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final D f3573Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f3574R;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final ArrayList f3576T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final List f3577U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final q f3578V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final q f3579W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final Handler f3580X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final ArrayList f3581Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final Map f3582Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public P0.f f3583a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public s[] f3584b0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final HashSet f3586d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final SparseIntArray f3587e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public r f3588f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f3589g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f3590h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f3591i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f3592j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f3593k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public C3136t f3594l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public C3136t f3595m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f3596n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Z f3597o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public Set f3598p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int[] f3599q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f3600r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f3601s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean[] f3602t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean[] f3603u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public long f3604v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public long f3605w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f3606x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f3607y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f3608z0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final S0.m f3572P = new S0.m("Loader:HlsSampleStreamWrapper");

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final J2.t f3575S = new J2.t(1);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int[] f3585c0 = new int[0];

    public t(String str, int i8, U u7, j jVar, Map map, S0.d dVar, long j8, C3136t c3136t, G0.r rVar, G0.o oVar, U4.b bVar, D d6, int i9) {
        this.f3563G = str;
        this.f3564H = i8;
        this.f3565I = u7;
        this.f3566J = jVar;
        this.f3582Z = map;
        this.f3567K = dVar;
        this.f3568L = c3136t;
        this.f3569M = rVar;
        this.f3570N = oVar;
        this.f3571O = bVar;
        this.f3573Q = d6;
        this.f3574R = i9;
        Set set = f3558E0;
        this.f3586d0 = new HashSet(set.size());
        this.f3587e0 = new SparseIntArray(set.size());
        this.f3584b0 = new s[0];
        this.f3603u0 = new boolean[0];
        this.f3602t0 = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f3576T = arrayList;
        this.f3577U = Collections.unmodifiableList(arrayList);
        this.f3581Y = new ArrayList();
        this.f3578V = new q(this, 0);
        this.f3579W = new q(this, 1);
        this.f3580X = M.n(null);
        this.f3604v0 = j8;
        this.f3605w0 = j8;
    }

    public static C3136t A(C3136t c3136t, C3136t c3136t2, boolean z7) {
        String strE;
        String strU;
        if (c3136t == null) {
            return c3136t2;
        }
        String str = c3136t2.f27041o;
        int i8 = O.i(str);
        String str2 = c3136t.f27037k;
        if (M.t(i8, str2) == 1) {
            strU = M.u(i8, str2);
            strE = O.e(strU);
        } else {
            String strC = O.c(str2, str);
            strE = str;
            strU = strC;
        }
        C3135s c3135sA = c3136t2.a();
        c3135sA.f26983a = c3136t.f27027a;
        c3135sA.f26984b = c3136t.f27028b;
        c3135sA.f26985c = H.s(c3136t.f27029c);
        c3135sA.f26986d = c3136t.f27030d;
        c3135sA.f26987e = c3136t.f27031e;
        c3135sA.f26988f = c3136t.f27032f;
        c3135sA.f26990h = z7 ? c3136t.f27034h : -1;
        c3135sA.f26991i = z7 ? c3136t.f27035i : -1;
        c3135sA.f26992j = strU;
        if (i8 == 2) {
            c3135sA.f27003u = c3136t.f27048v;
            c3135sA.f27004v = c3136t.f27049w;
            c3135sA.f27007y = c3136t.f27052z;
        }
        if (strE != null) {
            c3135sA.f26996n = O.p(strE);
        }
        int i9 = c3136t.f27016G;
        if (i9 != -1 && i8 == 1) {
            c3135sA.f26973F = i9;
        }
        N nB = c3136t.f27038l;
        if (nB != null) {
            N n7 = c3136t2.f27038l;
            if (n7 != null) {
                nB = n7.b(nB);
            }
            c3135sA.f26993k = nB;
        }
        return new C3136t(c3135sA);
    }

    public static int D(int i8) {
        if (i8 == 1) {
            return 2;
        }
        if (i8 != 2) {
            return i8 != 3 ? 0 : 1;
        }
        return 3;
    }

    public static W0.q y(int i8, int i9) {
        x.f("HlsSampleStreamWrapper", "Unmapped track with id " + i8 + " of type " + i9);
        return new W0.q();
    }

    public final void B(int i8) {
        ArrayList arrayList;
        H1.i(!this.f3572P.e());
        while (true) {
            arrayList = this.f3576T;
            if (i8 >= arrayList.size()) {
                i8 = -1;
                break;
            } else if (x(i8)) {
                break;
            } else {
                i8++;
            }
        }
        if (i8 == -1) {
            return;
        }
        long j8 = C().f5727N;
        l lVar = (l) arrayList.get(i8);
        M.W(i8, arrayList.size(), arrayList);
        for (int i9 = 0; i9 < this.f3584b0.length; i9++) {
            this.f3584b0[i9].n(lVar.e(i9));
        }
        if (arrayList.isEmpty()) {
            this.f3605w0 = this.f3604v0;
        } else {
            ((l) p190y4.k.G(arrayList)).f3501q0 = true;
        }
        this.f3608z0 = false;
        this.f3573Q.h(this.f3589g0, lVar.f5726M, j8);
    }

    public final l C() {
        return (l) U2.g(this.f3576T, 1);
    }

    public final boolean E() {
        return this.f3605w0 != -9223372036854775807L;
    }

    public final void F() {
        if (!this.f3596n0 && this.f3599q0 == null && this.f3591i0) {
            for (s sVar : this.f3584b0) {
                if (sVar.w() == null) {
                    return;
                }
            }
            Z z7 = this.f3597o0;
            if (z7 != null) {
                int i8 = z7.f5182a;
                int[] iArr = new int[i8];
                this.f3599q0 = iArr;
                Arrays.fill(iArr, -1);
                for (int i9 = 0; i9 < i8; i9++) {
                    int i10 = 0;
                    while (true) {
                        s[] sVarArr = this.f3584b0;
                        if (i10 >= sVarArr.length) {
                            break;
                        }
                        C3136t c3136tW = sVarArr[i10].w();
                        H1.j(c3136tW);
                        C3136t c3136t = this.f3597o0.a(i9).f26860d[0];
                        String str = c3136t.f27041o;
                        String str2 = c3136tW.f27041o;
                        int i11 = O.i(str2);
                        if (i11 != 3) {
                            if (i11 == O.i(str)) {
                                this.f3599q0[i9] = i10;
                                break;
                            }
                            i10++;
                        } else {
                            if (Objects.equals(str2, str) && (!("application/cea-608".equals(str2) || "application/cea-708".equals(str2)) || c3136tW.f27021L == c3136t.f27021L)) {
                                this.f3599q0[i9] = i10;
                                break;
                                break;
                            }
                            i10++;
                        }
                    }
                }
                Iterator it = this.f3581Y.iterator();
                while (it.hasNext()) {
                    ((p) it.next()).a();
                }
                return;
            }
            int length = this.f3584b0.length;
            int i12 = 0;
            int i13 = -2;
            int i14 = -1;
            while (true) {
                int i15 = 2;
                if (i12 >= length) {
                    break;
                }
                C3136t c3136tW2 = this.f3584b0[i12].w();
                H1.j(c3136tW2);
                String str3 = c3136tW2.f27041o;
                if (!O.o(str3)) {
                    i15 = O.k(str3) ? 1 : O.n(str3) ? 3 : -2;
                }
                if (D(i15) > D(i13)) {
                    i14 = i12;
                    i13 = i15;
                } else if (i15 == i13 && i14 != -1) {
                    i14 = -1;
                }
                i12++;
            }
            g0 g0Var = this.f3566J.f3461h;
            int i16 = g0Var.f26857a;
            this.f3600r0 = -1;
            this.f3599q0 = new int[length];
            for (int i17 = 0; i17 < length; i17++) {
                this.f3599q0[i17] = i17;
            }
            g0[] g0VarArr = new g0[length];
            int i18 = 0;
            while (i18 < length) {
                C3136t c3136tW3 = this.f3584b0[i18].w();
                H1.j(c3136tW3);
                String str4 = this.f3563G;
                C3136t c3136t2 = this.f3568L;
                if (i18 == i14) {
                    C3136t[] c3136tArr = new C3136t[i16];
                    for (int i19 = 0; i19 < i16; i19++) {
                        C3136t c3136tE = g0Var.f26860d[i19];
                        if (i13 == 1 && c3136t2 != null) {
                            c3136tE = c3136tE.e(c3136t2);
                        }
                        c3136tArr[i19] = i16 == 1 ? c3136tW3.e(c3136tE) : A(c3136tE, c3136tW3, true);
                    }
                    g0VarArr[i18] = new g0(str4, c3136tArr);
                    this.f3600r0 = i18;
                } else {
                    if (i13 != 2 || !O.k(c3136tW3.f27041o)) {
                        c3136t2 = null;
                    }
                    StringBuilder sbL = p000a.r.l(str4, ":muxed:");
                    sbL.append(i18 < i14 ? i18 : i18 - 1);
                    g0VarArr[i18] = new g0(sbL.toString(), A(c3136t2, c3136tW3, false));
                }
                i18++;
            }
            this.f3597o0 = z(g0VarArr);
            H1.i(this.f3598p0 == null);
            this.f3598p0 = Collections.emptySet();
            this.f3592j0 = true;
            this.f3565I.I();
        }
    }

    public final void G() throws IOException {
        this.f3572P.b();
        j jVar = this.f3566J;
        C0278b c0278b = jVar.f3468o;
        if (c0278b != null) {
            throw c0278b;
        }
        Uri uri = jVar.f3469p;
        if (uri == null || !uri.equals(jVar.f3470q)) {
            return;
        }
        I0.b bVar = (I0.b) ((I0.c) jVar.f3460g).f3806J.get(jVar.f3469p);
        bVar.f3791H.b();
        IOException iOException = bVar.f3799P;
        if (iOException != null) {
            throw iOException;
        }
    }

    public final void H(g0[] g0VarArr, int... iArr) {
        this.f3597o0 = z(g0VarArr);
        this.f3598p0 = new HashSet();
        for (int i8 : iArr) {
            this.f3598p0.add(this.f3597o0.a(i8));
        }
        this.f3600r0 = 0;
        Handler handler = this.f3580X;
        U u7 = this.f3565I;
        Objects.requireNonNull(u7);
        handler.post(new q(u7, 2));
        this.f3592j0 = true;
    }

    public final void I() {
        for (s sVar : this.f3584b0) {
            sVar.E(this.f3606x0);
        }
        this.f3606x0 = false;
    }

    public final boolean J(long j8, boolean z7) {
        l lVar;
        boolean zH;
        this.f3604v0 = j8;
        if (E()) {
            this.f3605w0 = j8;
            return true;
        }
        boolean z8 = this.f3566J.f3471r;
        ArrayList arrayList = this.f3576T;
        if (!z8) {
            lVar = null;
            break;
        }
        int i8 = 0;
        while (true) {
            if (i8 >= arrayList.size()) {
                lVar = null;
                break;
            }
            lVar = (l) arrayList.get(i8);
            if (lVar.f5726M == j8) {
                break;
            }
            i8++;
        }
        if (this.f3591i0 && !z7 && !arrayList.isEmpty()) {
            int length = this.f3584b0.length;
            for (int i9 = 0; i9 < length; i9++) {
                s sVar = this.f3584b0[i9];
                if (lVar != null) {
                    zH = sVar.G(lVar.e(i9));
                } else {
                    long jE = e();
                    zH = sVar.H(j8, jE == Long.MIN_VALUE || j8 < jE);
                }
                if (zH || (!this.f3603u0[i9] && this.f3601s0)) {
                }
            }
            return false;
        }
        this.f3605w0 = j8;
        this.f3608z0 = false;
        arrayList.clear();
        S0.m mVar = this.f3572P;
        if (mVar.e()) {
            if (this.f3591i0) {
                for (s sVar2 : this.f3584b0) {
                    sVar2.k();
                }
            }
            mVar.a();
        } else {
            mVar.f6368I = null;
            I();
        }
        return true;
    }

    @Override // O0.S
    public final void b() {
        this.f3580X.post(this.f3578V);
    }

    @Override // S0.h
    public final void c(S0.j jVar, long j8, long j9, boolean z7) {
        P0.f fVar = (P0.f) jVar;
        this.f3583a0 = null;
        long j10 = fVar.f5720G;
        p141s0.M m7 = fVar.f5728O;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f3571O.getClass();
        this.f3573Q.c(c0292p, fVar.f5722I, this.f3564H, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N);
        if (z7) {
            return;
        }
        if (E() || this.f3593k0 == 0) {
            I();
        }
        if (this.f3593k0 > 0) {
            this.f3565I.r(this);
        }
    }

    @Override // S0.k
    public final void d() {
        for (s sVar : this.f3584b0) {
            sVar.E(true);
            G0.l lVar = sVar.f5146h;
            if (lVar != null) {
                lVar.c(sVar.f5143e);
                sVar.f5146h = null;
                sVar.f5145g = null;
            }
        }
    }

    @Override // O0.W
    public final long e() {
        if (E()) {
            return this.f3605w0;
        }
        if (this.f3608z0) {
            return Long.MIN_VALUE;
        }
        return C().f5727N;
    }

    public final void f() {
        H1.i(this.f3592j0);
        this.f3597o0.getClass();
        this.f3598p0.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:163:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:164:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:166:0x0306  */
    /* JADX WARN: Code duplicated, block: B:167:0x0308  */
    /* JADX WARN: Code duplicated, block: B:170:0x0322  */
    /* JADX WARN: Code duplicated, block: B:171:0x0327  */
    /* JADX WARN: Code duplicated, block: B:174:0x0353  */
    /* JADX WARN: Code duplicated, block: B:175:0x0356  */
    /* JADX WARN: Code duplicated, block: B:177:0x035a  */
    /* JADX WARN: Code duplicated, block: B:178:0x0364  */
    /* JADX WARN: Code duplicated, block: B:181:0x0369  */
    /* JADX WARN: Code duplicated, block: B:182:0x0374  */
    /* JADX WARN: Code duplicated, block: B:185:0x037a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:186:0x037c  */
    /* JADX WARN: Code duplicated, block: B:187:0x037e  */
    /* JADX WARN: Code duplicated, block: B:189:0x0381  */
    /* JADX WARN: Code duplicated, block: B:190:0x038b  */
    /* JADX WARN: Code duplicated, block: B:193:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:194:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:196:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:199:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:209:0x0404  */
    /* JADX WARN: Code duplicated, block: B:215:0x0413  */
    /* JADX WARN: Code duplicated, block: B:223:0x0423  */
    /* JADX WARN: Code duplicated, block: B:225:0x042f  */
    /* JADX WARN: Code duplicated, block: B:228:0x045b  */
    /* JADX WARN: Code duplicated, block: B:232:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:234:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:236:0x04b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:237:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:240:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:242:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:245:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:247:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:248:0x04f6  */
    /* JADX WARN: Code duplicated, block: B:255:0x0506  */
    /* JADX WARN: Code duplicated, block: B:258:0x0515  */
    /* JADX WARN: Code duplicated, block: B:265:0x0541 A[LOOP:2: B:264:0x053f->B:265:0x0541, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:268:0x0560  */
    /* JADX WARN: Code duplicated, block: B:270:0x056e  */
    /* JADX WARN: Code duplicated, block: B:275:0x0527 A[EDGE_INSN: B:275:0x0527->B:263:0x0527 BREAK  A[LOOP:1: B:254:0x0504->B:262:0x0524], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:0x0571 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:? A[RETURN, SYNTHETIC] */
    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        long jMax;
        long j8;
        List list;
        long j9;
        long jMax2;
        l lVar;
        long j10;
        long j11;
        S0.m mVar;
        int i8;
        Uri uri;
        J2.t tVar;
        boolean z7;
        boolean z8;
        p140s.b bVar;
        byte[] bArr;
        byte[] bArr2;
        I0.j jVar;
        int i9;
        boolean z9;
        byte[] bArrD;
        InterfaceC3184i interfaceC3184i;
        InterfaceC3184i aVar;
        I0.i iVar;
        C3188m c3188m;
        InterfaceC3184i interfaceC3184i2;
        boolean z10;
        int i10;
        p065i1.i iVar2;
        m mVar2;
        E e8;
        U u7;
        J j12;
        J2.t tVar2;
        C3188m c3188m2;
        boolean z11;
        boolean z12;
        m mVar3;
        boolean z13;
        byte[] bArrD2;
        InterfaceC3184i aVar2;
        String str;
        String str2;
        i iVarD;
        boolean z14;
        P0.f fVar;
        Uri uri2;
        l lVar2;
        ArrayList arrayList;
        z4.E eQ;
        int i11;
        int i12;
        int i13;
        int size;
        long j13;
        long j14;
        if (!this.f3608z0) {
            S0.m mVar4 = this.f3572P;
            if (!mVar4.e() && !mVar4.d()) {
                if (E()) {
                    List listEmptyList = Collections.emptyList();
                    long j15 = this.f3605w0;
                    for (s sVar : this.f3584b0) {
                        sVar.f5158t = this.f3605w0;
                    }
                    list = listEmptyList;
                    j9 = j15;
                    j8 = j9;
                } else {
                    l lVarC = C();
                    boolean z15 = lVarC.f3499o0;
                    long j16 = lVarC.f5726M;
                    if (z15 && lVarC.f()) {
                        long j17 = lVarC.f3502r0;
                        jMax = j17 != -9223372036854775807L ? j16 + j17 : -9223372036854775807L;
                    } else {
                        jMax = Math.max(this.f3604v0, j16);
                    }
                    long jMax3 = this.f3604v0;
                    boolean z16 = this.f3591i0;
                    List list2 = this.f3577U;
                    if (z16) {
                        for (s sVar2 : this.f3584b0) {
                            jMax3 = Math.max(jMax3, sVar2.r());
                        }
                    }
                    j8 = jMax3;
                    list = list2;
                    j9 = jMax;
                }
                J2.t tVar3 = this.f3575S;
                tVar3.f4126I = null;
                tVar3.f4125H = false;
                tVar3.f4127J = null;
                boolean z17 = this.f3592j0 || !list.isEmpty();
                j jVar2 = this.f3566J;
                jVar2.getClass();
                l lVar3 = list.isEmpty() ? null : (l) p190y4.k.G(list);
                int iB = lVar3 == null ? -1 : jVar2.f3461h.b(lVar3.f5723J);
                long j18 = c0044d0.f921a;
                long j19 = j9 - j18;
                long j20 = jVar2.f3473t;
                long jMax4 = j20 != -9223372036854775807L ? j20 - j18 : -9223372036854775807L;
                if (lVar3 == null || jVar2.f3471r) {
                    jMax2 = j19;
                    lVar = lVar3;
                    j10 = jMax4;
                    j11 = j9;
                } else {
                    long j21 = j9;
                    long j22 = lVar3.f5727N - lVar3.f5726M;
                    l lVar4 = lVar3;
                    jMax2 = Math.max(0L, j19 - j22);
                    if (jMax4 != -9223372036854775807L) {
                        jMax4 = Math.max(0L, jMax4 - j22);
                    }
                    j10 = jMax4;
                    j11 = j21;
                    lVar = lVar4;
                }
                int i14 = iB;
                jVar2.f3472s.a(jMax2, j10, list, jVar2.a(j11, lVar));
                R0.c cVar = (R0.c) jVar2.f3472s;
                int i15 = cVar.f6127c[cVar.b()];
                boolean z18 = i14 != i15;
                Uri[] uriArr = jVar2.f3458e;
                Uri uri3 = uriArr[i15];
                I0.c cVar2 = (I0.c) jVar2.f3460g;
                if (cVar2.d(uri3)) {
                    I0.l lVarA = cVar2.a(uri3, true);
                    lVarA.getClass();
                    jVar2.f3471r = lVarA.f3920c;
                    boolean z19 = lVarA.f3889o;
                    l lVar5 = lVar;
                    long j23 = lVarA.f3882h;
                    jVar2.f3473t = z19 ? -9223372036854775807L : (lVarA.f3895u + j23) - cVar2.f3816T;
                    long j24 = j23 - cVar2.f3816T;
                    mVar = mVar4;
                    Pair pairC = jVar2.c(lVar5, z18, lVarA, j24, j11);
                    long jLongValue = ((Long) pairC.first).longValue();
                    int iIntValue = ((Integer) pairC.second).intValue();
                    if (z18 && lVar5 != null && (jLongValue < lVarA.f3885k || ((iVarD = j.d(lVarA, jLongValue, iIntValue)) != null && ((I0.j) iVarD.f3453d).f3866K + j24 < j8))) {
                        Uri uri4 = uriArr[i14];
                        lVarA = cVar2.a(uri4, true);
                        lVarA.getClass();
                        long j25 = lVarA.f3882h - cVar2.f3816T;
                        Pair pairC2 = jVar2.c(lVar5, false, lVarA, j25, j11);
                        jLongValue = ((Long) pairC2.first).longValue();
                        iIntValue = ((Integer) pairC2.second).intValue();
                        uri = uri4;
                        i8 = i14;
                        j24 = j25;
                    } else {
                        i8 = i15;
                        uri = uri3;
                    }
                    if (i8 != i14 && i14 != -1) {
                        I0.b bVar2 = (I0.b) cVar2.f3806J.get(uriArr[i14]);
                        if (bVar2 != null) {
                            bVar2.f3800Q = false;
                        }
                    }
                    long j26 = lVarA.f3885k;
                    if (jLongValue < j26) {
                        jVar2.f3468o = new C0278b();
                        tVar2 = tVar3;
                    } else {
                        i iVarD2 = j.d(lVarA, jLongValue, iIntValue);
                        if (iVarD2 != null) {
                            tVar = tVar3;
                        } else if (lVarA.f3889o) {
                            tVar = tVar3;
                            if (!z17) {
                                H h8 = lVarA.f3892r;
                                if (!h8.isEmpty()) {
                                    iVarD2 = new i((I0.j) p190y4.k.G(h8), (j26 + ((long) h8.size())) - 1, -1);
                                }
                            }
                            tVar.f4125H = true;
                        } else {
                            tVar = tVar3;
                            tVar.f4127J = uri;
                            jVar2.f3470q = uri;
                        }
                        jVar2.f3470q = null;
                        SystemClock.elapsedRealtime();
                        I0.i iVar3 = ((I0.j) iVarD2.f3453d).f3863H;
                        String str3 = lVarA.f3918a;
                        Uri uriW = (iVar3 == null || (str2 = iVar3.f3868M) == null) ? null : Q3.b.w(str3, str2);
                        f fVarE = jVar2.e(uriW, i8, true);
                        tVar.f4126I = fVarE;
                        if (fVarE == null) {
                            I0.j jVar3 = (I0.j) iVarD2.f3453d;
                            Uri uriW2 = (jVar3 == null || (str = jVar3.f3868M) == null) ? null : Q3.b.w(str3, str);
                            f fVarE2 = jVar2.e(uriW2, i8, false);
                            tVar.f4126I = fVarE2;
                            if (fVarE2 == null) {
                                I0.j jVar4 = (I0.j) iVarD2.f3453d;
                                boolean z20 = jVar4 instanceof I0.g;
                                boolean z21 = lVarA.f3920c;
                                boolean z22 = z20 ? ((I0.g) jVar4).f3855R || (iVarD2.f3451b == 0 && z21) : z21;
                                if (lVar5 == null) {
                                    AtomicInteger atomicInteger = l.f3474t0;
                                } else {
                                    z7 = (uri.equals(lVar5.f3477S) && lVar5.f3499o0) ? false : !z22 || ((I0.j) iVarD2.f3453d).f3866K + j24 < j11;
                                    z8 = iVarD2.f3452c;
                                    if (z7 || !z8) {
                                        C3136t c3136t = jVar2.f3459f[i8];
                                        int iF = jVar2.f3472s.f();
                                        Object objH = jVar2.f3472s.h();
                                        boolean z23 = jVar2.f3466m;
                                        bVar = jVar2.f3463j;
                                        if (uriW2 == null) {
                                            bVar.getClass();
                                            bArr = null;
                                        } else {
                                            bArr = (byte[]) bVar.f29861a.get(uriW2);
                                        }
                                        if (uriW == null) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = (byte[]) bVar.f29861a.get(uriW);
                                        }
                                        AtomicInteger atomicInteger2 = l.f3474t0;
                                        jVar = (I0.j) iVarD2.f3453d;
                                        Map mapEmptyMap = Collections.emptyMap();
                                        Uri uriW3 = Q3.b.w(str3, jVar.f3862G);
                                        if (z8) {
                                            i9 = 8;
                                        } else {
                                            i9 = 0;
                                        }
                                        H1.k(uriW3, "The uri must be set.");
                                        i iVar4 = iVarD2;
                                        C3188m c3188m3 = new C3188m(uriW3, 0L, 1, null, mapEmptyMap, jVar.f3870O, jVar.f3871P, null, i9, null);
                                        if (bArr != null) {
                                            z9 = true;
                                        } else {
                                            z9 = false;
                                        }
                                        if (z9) {
                                            String str4 = jVar.f3869N;
                                            str4.getClass();
                                            bArrD = l.d(str4);
                                        } else {
                                            bArrD = null;
                                        }
                                        interfaceC3184i = jVar2.f3455b;
                                        if (bArr != null) {
                                            bArrD.getClass();
                                            aVar = new a(interfaceC3184i, bArr, bArrD);
                                        } else {
                                            aVar = interfaceC3184i;
                                        }
                                        iVar = jVar.f3863H;
                                        if (iVar != null) {
                                            if (bArr2 != null) {
                                                z13 = true;
                                            } else {
                                                z13 = false;
                                            }
                                            if (z13) {
                                                String str5 = iVar.f3869N;
                                                str5.getClass();
                                                bArrD2 = l.d(str5);
                                            } else {
                                                bArrD2 = null;
                                            }
                                            Uri uriW4 = Q3.b.w(str3, iVar.f3862G);
                                            Map mapEmptyMap2 = Collections.emptyMap();
                                            H1.k(uriW4, "The uri must be set.");
                                            boolean z24 = z13;
                                            c3188m = new C3188m(uriW4, 0L, 1, null, mapEmptyMap2, iVar.f3870O, iVar.f3871P, null, 0, null);
                                            if (bArr2 != null) {
                                                bArrD2.getClass();
                                                aVar2 = new a(interfaceC3184i, bArr2, bArrD2);
                                            } else {
                                                aVar2 = interfaceC3184i;
                                            }
                                            z10 = z24;
                                            interfaceC3184i2 = aVar2;
                                        } else {
                                            c3188m = null;
                                            interfaceC3184i2 = null;
                                            z10 = false;
                                        }
                                        long j27 = j24 + jVar.f3866K;
                                        long j28 = j27 + jVar.f3864I;
                                        i10 = lVarA.f3884j + jVar.f3865J;
                                        if (lVar5 != null) {
                                            c3188m2 = lVar5.f3481W;
                                            if (c3188m != c3188m2 || (c3188m != null && c3188m2 != null && c3188m.f29963a.equals(c3188m2.f29963a) && c3188m.f29968f == c3188m2.f29968f)) {
                                                z11 = true;
                                            } else {
                                                z11 = false;
                                            }
                                            if (uri.equals(lVar5.f3477S) || !lVar5.f3499o0) {
                                                z12 = false;
                                            } else {
                                                z12 = true;
                                            }
                                            if (z11 || !z12 || lVar5.f3501q0 || lVar5.f3476R != i10) {
                                                mVar3 = null;
                                            } else {
                                                mVar3 = lVar5.f3494j0;
                                            }
                                            iVar2 = lVar5.f3489e0;
                                            e8 = lVar5.f3490f0;
                                            mVar2 = mVar3;
                                        } else {
                                            iVar2 = new p065i1.i(null);
                                            mVar2 = null;
                                            e8 = new E(10);
                                        }
                                        long j29 = iVar4.f3450a;
                                        int i16 = iVar4.f3451b;
                                        boolean z25 = !z8;
                                        u7 = jVar2.f3457d;
                                        j12 = (J) ((SparseArray) u7.f1868H).get(i10);
                                        if (j12 == null) {
                                            j12 = new J(9223372036854775806L);
                                            ((SparseArray) u7.f1868H).put(i10, j12);
                                        }
                                        l lVar6 = new l(jVar2.f3454a, aVar, c3188m3, c3136t, z9, interfaceC3184i2, c3188m, z10, uri, jVar2.f3462i, iF, objH, j27, j28, j29, i16, z25, i10, jVar.f3872Q, z23, j12, jVar2.f3465l, jVar.f3867L, mVar2, iVar2, e8, z7, z22, jVar2.f3464k);
                                        tVar2 = tVar;
                                        tVar2.f4126I = lVar6;
                                    }
                                }
                                z8 = iVarD2.f3452c;
                                if (z7) {
                                }
                                C3136t c3136t2 = jVar2.f3459f[i8];
                                int iF2 = jVar2.f3472s.f();
                                Object objH2 = jVar2.f3472s.h();
                                boolean z26 = jVar2.f3466m;
                                bVar = jVar2.f3463j;
                                if (uriW2 == null) {
                                    bVar.getClass();
                                    bArr = null;
                                } else {
                                    bArr = (byte[]) bVar.f29861a.get(uriW2);
                                }
                                if (uriW == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) bVar.f29861a.get(uriW);
                                }
                                AtomicInteger atomicInteger3 = l.f3474t0;
                                jVar = (I0.j) iVarD2.f3453d;
                                Map mapEmptyMap3 = Collections.emptyMap();
                                Uri uriW5 = Q3.b.w(str3, jVar.f3862G);
                                if (z8) {
                                    i9 = 8;
                                } else {
                                    i9 = 0;
                                }
                                H1.k(uriW5, "The uri must be set.");
                                i iVar5 = iVarD2;
                                C3188m c3188m4 = new C3188m(uriW5, 0L, 1, null, mapEmptyMap3, jVar.f3870O, jVar.f3871P, null, i9, null);
                                if (bArr != null) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if (z9) {
                                    String str6 = jVar.f3869N;
                                    str6.getClass();
                                    bArrD = l.d(str6);
                                } else {
                                    bArrD = null;
                                }
                                interfaceC3184i = jVar2.f3455b;
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aVar = new a(interfaceC3184i, bArr, bArrD);
                                } else {
                                    aVar = interfaceC3184i;
                                }
                                iVar = jVar.f3863H;
                                if (iVar != null) {
                                    if (bArr2 != null) {
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    if (z13) {
                                        String str7 = iVar.f3869N;
                                        str7.getClass();
                                        bArrD2 = l.d(str7);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriW6 = Q3.b.w(str3, iVar.f3862G);
                                    Map mapEmptyMap4 = Collections.emptyMap();
                                    H1.k(uriW6, "The uri must be set.");
                                    boolean z27 = z13;
                                    c3188m = new C3188m(uriW6, 0L, 1, null, mapEmptyMap4, iVar.f3870O, iVar.f3871P, null, 0, null);
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aVar2 = new a(interfaceC3184i, bArr2, bArrD2);
                                    } else {
                                        aVar2 = interfaceC3184i;
                                    }
                                    z10 = z27;
                                    interfaceC3184i2 = aVar2;
                                } else {
                                    c3188m = null;
                                    interfaceC3184i2 = null;
                                    z10 = false;
                                }
                                long j210 = j24 + jVar.f3866K;
                                long j211 = j210 + jVar.f3864I;
                                i10 = lVarA.f3884j + jVar.f3865J;
                                if (lVar5 != null) {
                                    c3188m2 = lVar5.f3481W;
                                    if (c3188m != c3188m2) {
                                        z11 = true;
                                    } else {
                                        z11 = true;
                                    }
                                    if (uri.equals(lVar5.f3477S)) {
                                        z12 = false;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z11) {
                                        mVar3 = null;
                                    } else {
                                        mVar3 = null;
                                    }
                                    iVar2 = lVar5.f3489e0;
                                    e8 = lVar5.f3490f0;
                                    mVar2 = mVar3;
                                } else {
                                    iVar2 = new p065i1.i(null);
                                    mVar2 = null;
                                    e8 = new E(10);
                                }
                                long j212 = iVar5.f3450a;
                                int i17 = iVar5.f3451b;
                                boolean z28 = !z8;
                                u7 = jVar2.f3457d;
                                j12 = (J) ((SparseArray) u7.f1868H).get(i10);
                                if (j12 == null) {
                                    j12 = new J(9223372036854775806L);
                                    ((SparseArray) u7.f1868H).put(i10, j12);
                                }
                                l lVar7 = new l(jVar2.f3454a, aVar, c3188m4, c3136t2, z9, interfaceC3184i2, c3188m, z10, uri, jVar2.f3462i, iF2, objH2, j210, j211, j212, i17, z28, i10, jVar.f3872Q, z26, j12, jVar2.f3465l, jVar.f3867L, mVar2, iVar2, e8, z7, z22, jVar2.f3464k);
                                tVar2 = tVar;
                                tVar2.f4126I = lVar7;
                            }
                        }
                    }
                    z14 = tVar2.f4125H;
                    fVar = (P0.f) tVar2.f4126I;
                    uri2 = (Uri) tVar2.f4127J;
                    if (z14) {
                        this.f3605w0 = -9223372036854775807L;
                        this.f3608z0 = true;
                        return true;
                    }
                    if (fVar == null) {
                        if (uri2 != null) {
                            return false;
                        }
                        ((I0.b) ((I0.c) ((n) this.f3565I.f1868H).f3505H).f3806J.get(uri2)).d(true);
                        return false;
                    }
                    if (fVar instanceof l) {
                        lVar2 = (l) fVar;
                        arrayList = this.f3576T;
                        if (!arrayList.isEmpty()) {
                            if (C().f()) {
                                i13 = 1;
                            } else {
                                i13 = 1;
                                B(arrayList.size() - 1);
                            }
                            if (lVar2.f3478T && lVar2.f3503s0) {
                                for (size = arrayList.size() - i13; size >= 0; size--) {
                                    j13 = ((l) arrayList.get(size)).f5726M;
                                    j14 = lVar2.f5726M;
                                    if (j13 >= j14) {
                                        break;
                                    }
                                    if (j13 != j14 && x(size)) {
                                        B(size);
                                        lVar2.f3503s0 = false;
                                        break;
                                    }
                                }
                            }
                        }
                        this.f3562D0 = lVar2;
                        this.f3594l0 = lVar2.f5723J;
                        this.f3605w0 = -9223372036854775807L;
                        arrayList.add(lVar2);
                        eQ = H.q();
                        for (s sVar3 : this.f3584b0) {
                            eQ.g0(Integer.valueOf(sVar3.f5155q + sVar3.f5154p));
                        }
                        d0 d0VarM0 = eQ.m0();
                        lVar2.f3495k0 = this;
                        lVar2.f3500p0 = d0VarM0;
                        for (s sVar4 : this.f3584b0) {
                            sVar4.getClass();
                            sVar4.f5134C = lVar2.f3475Q;
                            if (lVar2.f3503s0) {
                                sVar4.f5138G = true;
                            }
                        }
                    }
                    this.f3583a0 = fVar;
                    mVar.g(fVar, this, this.f3571O.Y(fVar.f5722I));
                    return true;
                }
                tVar = tVar3;
                tVar.f4127J = uri3;
                jVar2.f3470q = uri3;
                mVar = mVar4;
                tVar2 = tVar;
                z14 = tVar2.f4125H;
                fVar = (P0.f) tVar2.f4126I;
                uri2 = (Uri) tVar2.f4127J;
                if (z14) {
                    this.f3605w0 = -9223372036854775807L;
                    this.f3608z0 = true;
                    return true;
                }
                if (fVar == null) {
                    if (uri2 != null) {
                        return false;
                    }
                    ((I0.b) ((I0.c) ((n) this.f3565I.f1868H).f3505H).f3806J.get(uri2)).d(true);
                    return false;
                }
                if (fVar instanceof l) {
                    lVar2 = (l) fVar;
                    arrayList = this.f3576T;
                    if (!arrayList.isEmpty()) {
                        if (C().f()) {
                            i13 = 1;
                            B(arrayList.size() - 1);
                        } else {
                            i13 = 1;
                        }
                        if (lVar2.f3478T) {
                            while (size >= 0) {
                                j13 = ((l) arrayList.get(size)).f5726M;
                                j14 = lVar2.f5726M;
                                if (j13 >= j14) {
                                    break;
                                    break;
                                }
                                if (j13 != j14) {
                                }
                            }
                        }
                    }
                    this.f3562D0 = lVar2;
                    this.f3594l0 = lVar2.f5723J;
                    this.f3605w0 = -9223372036854775807L;
                    arrayList.add(lVar2);
                    eQ = H.q();
                    while (i11 < r5) {
                        eQ.g0(Integer.valueOf(sVar3.f5155q + sVar3.f5154p));
                    }
                    d0 d0VarM1 = eQ.m0();
                    lVar2.f3495k0 = this;
                    lVar2.f3500p0 = d0VarM1;
                    while (i12 < r4) {
                        sVar4.getClass();
                        sVar4.f5134C = lVar2.f3475Q;
                        if (lVar2.f3503s0) {
                            sVar4.f5138G = true;
                        }
                    }
                }
                this.f3583a0 = fVar;
                mVar.g(fVar, this, this.f3571O.Y(fVar.f5722I));
                return true;
            }
        }
        return false;
    }

    @Override // W0.u
    public final void j() {
        this.f3559A0 = true;
        this.f3580X.post(this.f3579W);
    }

    @Override // O0.W
    public final boolean k() {
        return this.f3572P.e();
    }

    @Override // S0.h
    public final S0.g n(S0.j jVar, long j8, long j9, IOException iOException, int i8) {
        boolean zI;
        S0.g gVarC;
        int i9;
        P0.f fVar = (P0.f) jVar;
        boolean z7 = fVar instanceof l;
        if (z7 && !((l) fVar).f() && (iOException instanceof A) && ((i9 = ((A) iOException).f29862J) == 410 || i9 == 404)) {
            return S0.m.f6363J;
        }
        long j10 = fVar.f5728O.f29909b;
        p141s0.M m7 = fVar.f5728O;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        w0 w0Var = new w0(c0292p, new C0296u(fVar.f5722I, this.f3564H, fVar.f5723J, fVar.f5724K, fVar.f5725L, M.e0(fVar.f5726M), M.e0(fVar.f5727N)), iOException, i8, 1);
        j jVar2 = this.f3566J;
        p072j0.c cVarE = J6.r.e(jVar2.f3472s);
        this.f3571O.getClass();
        S0.g gVarV = U4.b.V(cVarE, w0Var);
        if (gVarV == null || gVarV.f6351a != 2) {
            zI = false;
        } else {
            R0.c cVar = (R0.c) jVar2.f3472s;
            zI = cVar.i(cVar.n(jVar2.f3461h.b(fVar.f5723J)), gVarV.f6352b);
        }
        if (zI) {
            if (z7 && j10 == 0) {
                ArrayList arrayList = this.f3576T;
                H1.i(((l) arrayList.remove(arrayList.size() - 1)) == fVar);
                if (arrayList.isEmpty()) {
                    this.f3605w0 = this.f3604v0;
                } else {
                    ((l) p190y4.k.G(arrayList)).f3501q0 = true;
                }
            }
            gVarC = S0.m.f6364K;
        } else {
            long jZ = U4.b.Z(w0Var);
            gVarC = jZ != -9223372036854775807L ? S0.m.c(jZ, false) : S0.m.f6365L;
        }
        S0.g gVar = gVarC;
        boolean z8 = !gVar.a();
        this.f3573Q.e(c0292p, fVar.f5722I, this.f3564H, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N, iOException, z8);
        if (z8) {
            this.f3583a0 = null;
        }
        if (zI) {
            if (this.f3592j0) {
                this.f3565I.r(this);
            } else {
                C0042c0 c0042c0 = new C0042c0();
                c0042c0.f917a = this.f3604v0;
                g(new C0044d0(c0042c0));
            }
        }
        return gVar;
    }

    @Override // S0.h
    public final void o(S0.j jVar, long j8, long j9) {
        P0.f fVar = (P0.f) jVar;
        this.f3583a0 = null;
        j jVar2 = this.f3566J;
        jVar2.getClass();
        if (fVar instanceof f) {
            f fVar2 = (f) fVar;
            jVar2.f3467n = fVar2.f3444P;
            Uri uri = fVar2.f5721H.f29963a;
            byte[] bArr = fVar2.f3446R;
            bArr.getClass();
            p140s.b bVar = jVar2.f3463j;
            bVar.getClass();
            uri.getClass();
        }
        long j10 = fVar.f5720G;
        p141s0.M m7 = fVar.f5728O;
        Uri uri2 = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f3571O.getClass();
        this.f3573Q.d(c0292p, fVar.f5722I, this.f3564H, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N);
        if (this.f3592j0) {
            this.f3565I.r(this);
            return;
        }
        C0042c0 c0042c0 = new C0042c0();
        c0042c0.f917a = this.f3604v0;
        g(new C0044d0(c0042c0));
    }

    @Override // S0.h
    public final void p(S0.j jVar, long j8, long j9, int i8) {
        C0292p c0292p;
        P0.f fVar = (P0.f) jVar;
        if (i8 == 0) {
            c0292p = new C0292p(fVar.f5720G, fVar.f5721H, j8);
        } else {
            long j10 = fVar.f5720G;
            p141s0.M m7 = fVar.f5728O;
            Uri uri = m7.f29910c;
            c0292p = new C0292p(m7.f29911d, j9);
        }
        this.f3573Q.g(c0292p, fVar.f5722I, this.f3564H, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N, i8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [H0.s[]] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [W0.L] */
    /* JADX WARN: Type inference failed for: r5v4, types: [H0.s, O0.T] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // W0.u
    public final L t(int i8, int i9) {
        Integer numValueOf = Integer.valueOf(i9);
        Set set = f3558E0;
        boolean zContains = set.contains(numValueOf);
        HashSet hashSet = this.f3586d0;
        SparseIntArray sparseIntArray = this.f3587e0;
        ?? sVar = 0;
        sVar = 0;
        if (zContains) {
            H1.d(set.contains(Integer.valueOf(i9)));
            int i10 = sparseIntArray.get(i9, -1);
            if (i10 != -1) {
                if (hashSet.add(Integer.valueOf(i9))) {
                    this.f3585c0[i10] = i8;
                }
                sVar = this.f3585c0[i10] == i8 ? this.f3584b0[i10] : y(i8, i9);
            }
        } else {
            int i11 = 0;
            while (true) {
                ?? r7 = this.f3584b0;
                if (i11 >= r7.length) {
                    break;
                }
                if (this.f3585c0[i11] == i8) {
                    sVar = r7[i11];
                    break;
                }
                i11++;
            }
        }
        if (sVar == 0) {
            if (this.f3559A0) {
                return y(i8, i9);
            }
            int length = this.f3584b0.length;
            boolean z7 = i9 == 1 || i9 == 2;
            sVar = new s(this.f3567K, this.f3569M, this.f3570N, this.f3582Z);
            sVar.f5158t = this.f3604v0;
            if (z7) {
                sVar.f3557I = this.f3561C0;
                sVar.f5164z = true;
            }
            long j8 = this.f3560B0;
            if (sVar.f5137F != j8) {
                sVar.f5137F = j8;
                sVar.f5164z = true;
            }
            l lVar = this.f3562D0;
            if (lVar != null) {
                sVar.f5134C = lVar.f3475Q;
            }
            sVar.f5144f = this;
            int i12 = length + 1;
            int[] iArrCopyOf = Arrays.copyOf(this.f3585c0, i12);
            this.f3585c0 = iArrCopyOf;
            iArrCopyOf[length] = i8;
            s[] sVarArr = this.f3584b0;
            String str = M.f28050a;
            ?? CopyOf = Arrays.copyOf(sVarArr, sVarArr.length + 1);
            CopyOf[sVarArr.length] = sVar;
            this.f3584b0 = (s[]) CopyOf;
            boolean[] zArrCopyOf = Arrays.copyOf(this.f3603u0, i12);
            this.f3603u0 = zArrCopyOf;
            zArrCopyOf[length] = z7;
            this.f3601s0 |= z7;
            hashSet.add(Integer.valueOf(i9));
            sparseIntArray.append(i9, length);
            if (D(i9) > D(this.f3589g0)) {
                this.f3590h0 = length;
                this.f3589g0 = i9;
            }
            this.f3602t0 = Arrays.copyOf(this.f3602t0, i12);
        }
        if (i9 != 5) {
            return sVar;
        }
        if (this.f3588f0 == null) {
            this.f3588f0 = new r(sVar, this.f3574R);
        }
        return this.f3588f0;
    }

    @Override // O0.W
    public final long u() {
        if (this.f3608z0) {
            return Long.MIN_VALUE;
        }
        if (E()) {
            return this.f3605w0;
        }
        long jMax = this.f3604v0;
        l lVarC = C();
        if (!lVarC.f3499o0) {
            ArrayList arrayList = this.f3576T;
            lVarC = arrayList.size() > 1 ? (l) U2.g(arrayList, 2) : null;
        }
        if (lVarC != null) {
            jMax = Math.max(jMax, lVarC.f5727N);
        }
        if (this.f3591i0) {
            for (s sVar : this.f3584b0) {
                jMax = Math.max(jMax, sVar.q());
            }
        }
        return jMax;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005e  */
    @Override // O0.W
    public final void w(long j8) {
        int size;
        S0.m mVar = this.f3572P;
        if (mVar.d() || E()) {
            return;
        }
        boolean zE = mVar.e();
        j jVar = this.f3566J;
        if (zE) {
            this.f3583a0.getClass();
            if (jVar.f3468o != null) {
                return;
            }
            jVar.f3472s.getClass();
            return;
        }
        List list = this.f3577U;
        int size2 = list.size();
        while (size2 > 0 && jVar.b((l) list.get(size2 - 1)) == 2) {
            size2--;
        }
        if (size2 < list.size()) {
            B(size2);
        }
        if (jVar.f3468o == null) {
            R0.t tVar = jVar.f3472s;
            if (((R0.c) tVar).f6127c.length < 2) {
                size = list.size();
            } else {
                size = tVar.d(j8, list);
            }
        } else {
            size = list.size();
        }
        if (size < this.f3576T.size()) {
            B(size);
        }
    }

    public final boolean x(int i8) {
        int i9 = i8;
        while (true) {
            ArrayList arrayList = this.f3576T;
            if (i9 >= arrayList.size()) {
                l lVar = (l) arrayList.get(i8);
                for (int i10 = 0; i10 < this.f3584b0.length; i10++) {
                    if (this.f3584b0[i10].t() > lVar.e(i10)) {
                        return false;
                    }
                }
                return true;
            }
            if (((l) arrayList.get(i9)).f3503s0) {
                return false;
            }
            i9++;
        }
    }

    public final Z z(g0[] g0VarArr) {
        for (int i8 = 0; i8 < g0VarArr.length; i8++) {
            g0 g0Var = g0VarArr[i8];
            C3136t[] c3136tArr = new C3136t[g0Var.f26857a];
            for (int i9 = 0; i9 < g0Var.f26857a; i9++) {
                C3136t c3136t = g0Var.f26860d[i9];
                int iM = this.f3569M.m(c3136t);
                C3135s c3135sA = c3136t.a();
                c3135sA.f26982O = iM;
                c3136tArr[i9] = c3135sA.a();
            }
            g0VarArr[i8] = new g0(g0Var.f26858b, c3136tArr);
        }
        return new Z(g0VarArr);
    }

    @Override // W0.u
    public final void r(F f8) {
    }
}
