package H0;

import B0.C0042c0;
import B0.C0044d0;
import B0.I0;
import B0.w0;
import C0.C0083h;
import C0.I;
import D0.U;
import O0.C0286j;
import O0.D;
import O0.InterfaceC0297v;
import O0.InterfaceC0298w;
import O0.Z;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p039f.RunnableC3004t;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.P;
import p094m0.g0;
import p117p0.M;
import p141s0.O;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class n implements InterfaceC0298w, I0.t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final k f3504G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final I0.w f3505H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final c f3506I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final O f3507J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final G0.r f3508K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final G0.o f3509L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final U4.b f3510M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final D f3511N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final S0.d f3512O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final IdentityHashMap f3513P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final U f3514Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final U4.b f3515R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f3516S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f3517T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final boolean f3518U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final I f3519V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final U f3520W = new U(this);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final long f3521X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public InterfaceC0297v f3522Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f3523Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Z f3524a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public t[] f3525b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public t[] f3526c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f3527d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public C0286j f3528e0;

    public n(k kVar, I0.w wVar, c cVar, O o4, G0.r rVar, G0.o oVar, U4.b bVar, D d6, S0.d dVar, U4.b bVar2, boolean z7, int i8, boolean z8, I i9, long j8) {
        this.f3504G = kVar;
        this.f3505H = wVar;
        this.f3506I = cVar;
        this.f3507J = o4;
        this.f3508K = rVar;
        this.f3509L = oVar;
        this.f3510M = bVar;
        this.f3511N = d6;
        this.f3512O = dVar;
        this.f3515R = bVar2;
        this.f3516S = z7;
        this.f3517T = i8;
        this.f3518U = z8;
        this.f3519V = i9;
        this.f3521X = j8;
        bVar2.getClass();
        F f8 = H.f31804H;
        d0 d0Var = d0.f31844K;
        this.f3528e0 = new C0286j(d0Var, d0Var);
        this.f3513P = new IdentityHashMap();
        this.f3514Q = new U(2);
        this.f3525b0 = new t[0];
        this.f3526c0 = new t[0];
    }

    public static C3136t f(C3136t c3136t, C3136t c3136t2, boolean z7) {
        N n7;
        int i8;
        String str;
        String str2;
        int i9;
        int i10;
        String str3;
        List list;
        F f8 = H.f31804H;
        List list2 = d0.f31844K;
        if (c3136t2 != null) {
            str3 = c3136t2.f27037k;
            n7 = c3136t2.f27038l;
            i9 = c3136t2.f27016G;
            i8 = c3136t2.f27031e;
            i10 = c3136t2.f27032f;
            str = c3136t2.f27030d;
            str2 = c3136t2.f27028b;
            list = c3136t2.f27029c;
        } else {
            String strU = M.u(1, c3136t.f27037k);
            n7 = c3136t.f27038l;
            if (z7) {
                i9 = c3136t.f27016G;
                i8 = c3136t.f27031e;
                i10 = c3136t.f27032f;
                str = c3136t.f27030d;
                str2 = c3136t.f27028b;
                list2 = c3136t.f27029c;
            } else {
                i8 = 0;
                str = null;
                str2 = null;
                i9 = -1;
                i10 = 0;
            }
            List list3 = list2;
            str3 = strU;
            list = list3;
        }
        String strE = p094m0.O.e(str3);
        int i11 = z7 ? c3136t.f27034h : -1;
        int i12 = z7 ? c3136t.f27035i : -1;
        C3135s c3135s = new C3135s();
        c3135s.f26983a = c3136t.f27027a;
        c3135s.f26984b = str2;
        c3135s.f26985c = H.s(list);
        c3135s.f26995m = p094m0.O.p(c3136t.f27040n);
        c3135s.f26996n = p094m0.O.p(strE);
        c3135s.f26992j = str3;
        c3135s.f26993k = n7;
        c3135s.f26990h = i11;
        c3135s.f26991i = i12;
        c3135s.f26973F = i9;
        c3135s.f26987e = i8;
        c3135s.f26988f = i10;
        c3135s.f26986d = str;
        return new C3136t(c3135s);
    }

    @Override // O0.InterfaceC0298w
    public final long a(long j8, I0 i8) {
        I0.l lVarA;
        for (t tVar : this.f3526c0) {
            if (tVar.f3589g0 == 2) {
                j jVar = tVar.f3566J;
                int iB = jVar.f3472s.b();
                Uri[] uriArr = jVar.f3458e;
                int length = uriArr.length;
                I0.w wVar = jVar.f3460g;
                if (iB >= length || iB == -1) {
                    lVarA = null;
                } else {
                    R0.c cVar = (R0.c) jVar.f3472s;
                    lVarA = ((I0.c) wVar).a(uriArr[cVar.f6127c[cVar.b()]], true);
                }
                if (lVarA == null) {
                    break;
                }
                H h8 = lVarA.f3892r;
                if (h8.isEmpty()) {
                    break;
                }
                long j9 = lVarA.f3882h - ((I0.c) wVar).f3816T;
                long j10 = j8 - j9;
                int iC = M.c(h8, Long.valueOf(j10), true);
                long j11 = ((I0.i) h8.get(iC)).f3866K;
                return i8.a(j10, j11, (!lVarA.f3920c || iC == h8.size() - 1) ? j11 : ((I0.i) h8.get(iC + 1)).f3866K) + j9;
            }
        }
        return j8;
    }

    @Override // I0.t
    public final void b() {
        long j8;
        for (t tVar : this.f3525b0) {
            ArrayList arrayList = tVar.f3576T;
            if (!arrayList.isEmpty()) {
                l lVar = (l) p190y4.k.G(arrayList);
                j jVar = tVar.f3566J;
                int iB = jVar.b(lVar);
                if (iB == 1) {
                    if (!lVar.f()) {
                        int i8 = lVar.f3479U;
                        H1.i(i8 != -1);
                        I0.l lVarA = ((I0.c) jVar.f3460g).a(jVar.f3458e[jVar.f3461h.b(lVar.f5723J)], false);
                        lVarA.getClass();
                        int i9 = (int) (lVar.f5770P - lVarA.f3885k);
                        if (i9 < 0) {
                            j8 = 0;
                        } else {
                            H h8 = lVarA.f3892r;
                            j8 = ((I0.g) (i9 < h8.size() ? ((I0.i) h8.get(i9)).f3861S : lVarA.f3893s).get(i8)).f3864I;
                        }
                        lVar.f3502r0 = j8;
                    }
                } else if (iB == 0) {
                    tVar.f3580X.post(new RunnableC3004t(25, tVar, lVar));
                } else if (iB == 2 && !tVar.f3608z0) {
                    S0.m mVar = tVar.f3572P;
                    if (mVar.e()) {
                        mVar.a();
                    }
                }
            }
        }
        this.f3522Y.r(this);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    /* JADX WARN: Code duplicated, block: B:23:0x0052 A[LOOP:1: B:18:0x0043->B:23:0x0052, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x008c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0056 A[EDGE_INSN: B:49:0x0056->B:25:0x0056 BREAK  A[LOOP:1: B:18:0x0043->B:23:0x0052], SYNTHETIC] */
    @Override // I0.t
    public final boolean c(Uri uri, w0 w0Var, boolean z7) {
        long j8;
        int i8;
        Uri[] uriArr;
        int iN;
        boolean z8;
        I0.b bVar;
        boolean z9 = true;
        for (t tVar : this.f3525b0) {
            j jVar = tVar.f3566J;
            if (M.l(jVar.f3458e, uri)) {
                if (!z7) {
                    p072j0.c cVarE = J6.r.e(jVar.f3472s);
                    tVar.f3571O.getClass();
                    S0.g gVarV = U4.b.V(cVarE, w0Var);
                    if (gVarV != null && gVarV.f6351a == 2) {
                        j8 = gVarV.f6352b;
                    }
                    i8 = 0;
                    while (true) {
                        uriArr = jVar.f3458e;
                        if (i8 < uriArr.length) {
                            i8 = -1;
                            break;
                        }
                        if (uriArr[i8].equals(uri)) {
                            break;
                        }
                        i8++;
                    }
                    if (i8 != -1 && (iN = ((R0.c) jVar.f3472s).n(i8)) != -1) {
                        jVar.f3469p = uri;
                        if (j8 == -9223372036854775807L && ((R0.c) jVar.f3472s).i(iN, j8) && (bVar = (I0.b) ((I0.c) jVar.f3460g).f3806J.get(uri)) != null) {
                            if (!I0.b.a(bVar, j8)) {
                                z8 = true;
                            }
                        }
                    }
                    z9 &= z8;
                }
                j8 = -9223372036854775807L;
                i8 = 0;
                while (true) {
                    uriArr = jVar.f3458e;
                    if (i8 < uriArr.length) {
                        i8 = -1;
                        break;
                    }
                    if (uriArr[i8].equals(uri)) {
                        break;
                        break;
                    }
                    i8++;
                }
                if (i8 != -1) {
                    jVar.f3469p = uri;
                    z8 = j8 == -9223372036854775807L ? false : false;
                }
                z9 &= z8;
            }
            z8 = true;
            z9 &= z8;
        }
        this.f3522Y.r(this);
        return z9;
    }

    public final t d(String str, int i8, Uri[] uriArr, C3136t[] c3136tArr, C3136t c3136t, List list, Map map, long j8) {
        return new t(str, i8, this.f3520W, new j(this.f3504G, this.f3505H, uriArr, c3136tArr, this.f3506I, this.f3507J, this.f3514Q, this.f3521X, list, this.f3519V), map, this.f3512O, j8, c3136t, this.f3508K, this.f3509L, this.f3510M, this.f3511N, this.f3517T);
    }

    @Override // O0.W
    public final long e() {
        return this.f3528e0.e();
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        if (this.f3524a0 != null) {
            return this.f3528e0.g(c0044d0);
        }
        for (t tVar : this.f3525b0) {
            if (!tVar.f3592j0) {
                C0042c0 c0042c0 = new C0042c0();
                c0042c0.f917a = tVar.f3604v0;
                tVar.g(new C0044d0(c0042c0));
            }
        }
        return false;
    }

    @Override // O0.InterfaceC0298w
    public final void h() throws IOException {
        for (t tVar : this.f3525b0) {
            tVar.G();
            if (tVar.f3608z0 && !tVar.f3592j0) {
                throw P.a("Loading finished before preparation is complete.", null);
            }
        }
    }

    @Override // O0.InterfaceC0298w
    public final long i(long j8) {
        t[] tVarArr = this.f3526c0;
        if (tVarArr.length > 0) {
            boolean zJ = tVarArr[0].J(j8, false);
            int i8 = 1;
            while (true) {
                t[] tVarArr2 = this.f3526c0;
                if (i8 >= tVarArr2.length) {
                    break;
                }
                tVarArr2[i8].J(j8, zJ);
                i8++;
            }
            if (zJ) {
                U u7 = this.f3514Q;
                switch (u7.f1867G) {
                    case 2:
                        ((SparseArray) u7.f1868H).clear();
                        break;
                    default:
                        u7.f1868H = null;
                        break;
                }
            }
        }
        return j8;
    }

    @Override // O0.W
    public final boolean k() {
        return this.f3528e0.k();
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0230  */
    /* JADX WARN: Code duplicated, block: B:153:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:155:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:156:0x02bc  */
    @Override // O0.InterfaceC0298w
    public final long l(R0.t[] tVarArr, boolean[] zArr, O0.U[] uArr, boolean[] zArr2, long j8) {
        IdentityHashMap identityHashMap;
        boolean z7;
        boolean z8;
        n nVar;
        int i8;
        U u7;
        IdentityHashMap identityHashMap2;
        R0.t[] tVarArr2;
        int[] iArr;
        n nVar2 = this;
        O0.U[] uArr2 = uArr;
        int[] iArr2 = new int[tVarArr.length];
        int[] iArr3 = new int[tVarArr.length];
        int i9 = 0;
        while (true) {
            int length = tVarArr.length;
            identityHashMap = nVar2.f3513P;
            if (i9 >= length) {
                break;
            }
            O0.U u8 = uArr2[i9];
            iArr2[i9] = u8 == null ? -1 : ((Integer) identityHashMap.get(u8)).intValue();
            iArr3[i9] = -1;
            R0.t tVar = tVarArr[i9];
            if (tVar != null) {
                R0.c cVar = (R0.c) tVar;
                int i10 = 0;
                while (true) {
                    t[] tVarArr3 = nVar2.f3525b0;
                    if (i10 >= tVarArr3.length) {
                        break;
                    }
                    t tVar2 = tVarArr3[i10];
                    tVar2.f();
                    if (tVar2.f3597o0.b(cVar.f6125a) != -1) {
                        iArr3[i9] = i10;
                        break;
                    }
                    i10++;
                }
            }
            i9++;
        }
        identityHashMap.clear();
        int length2 = tVarArr.length;
        O0.U[] uArr3 = new O0.U[length2];
        int length3 = tVarArr.length;
        O0.U[] uArr4 = new O0.U[length3];
        int length4 = tVarArr.length;
        R0.t[] tVarArr4 = new R0.t[length4];
        t[] tVarArr5 = new t[nVar2.f3525b0.length];
        int i11 = 0;
        int i12 = 0;
        boolean z9 = false;
        while (i12 < nVar2.f3525b0.length) {
            int i13 = i11;
            int i14 = 0;
            while (true) {
                IdentityHashMap identityHashMap3 = identityHashMap;
                if (i14 < tVarArr.length) {
                    uArr4[i14] = iArr2[i14] == i12 ? uArr2[i14] : null;
                    tVarArr4[i14] = iArr3[i14] == i12 ? tVarArr[i14] : null;
                    i14++;
                    identityHashMap = identityHashMap3;
                } else {
                    t tVar3 = nVar2.f3525b0[i12];
                    tVar3.f();
                    int i15 = tVar3.f3593k0;
                    int i16 = 0;
                    while (i16 < length4) {
                        p pVar = (p) uArr4[i16];
                        if (pVar == null || (tVarArr4[i16] != null && zArr[i16])) {
                            uArr3 = uArr3;
                        } else {
                            tVar3.f3593k0--;
                            if (pVar.f3545I != -1) {
                                t tVar4 = pVar.f3544H;
                                tVar4.f();
                                tVar4.f3599q0.getClass();
                                int i17 = tVar4.f3599q0[pVar.f3543G];
                                H1.i(tVar4.f3602t0[i17]);
                                tVar4.f3602t0[i17] = false;
                                pVar.f3545I = -1;
                            }
                            uArr4[i16] = null;
                        }
                        i16++;
                        iArr2 = iArr2;
                        uArr3 = uArr3;
                    }
                    int[] iArr4 = iArr2;
                    O0.U[] uArr5 = uArr3;
                    boolean z10 = z9 || (!tVar3.f3607y0 ? j8 == tVar3.f3604v0 : i15 != 0);
                    j jVar = tVar3.f3566J;
                    R0.t tVar5 = jVar.f3472s;
                    boolean z11 = z10;
                    R0.t tVar6 = tVar5;
                    int i18 = 0;
                    while (true) {
                        I0.w wVar = jVar.f3460g;
                        int i19 = i12;
                        Uri[] uriArr = jVar.f3458e;
                        if (i18 < length4) {
                            int i20 = length4;
                            R0.t tVar7 = tVarArr4[i18];
                            if (tVar7 == null) {
                                iArr = iArr3;
                                tVarArr2 = tVarArr4;
                            } else {
                                tVarArr2 = tVarArr4;
                                iArr = iArr3;
                                int iB = tVar3.f3597o0.b(((R0.c) tVar7).f6125a);
                                if (iB == tVar3.f3600r0) {
                                    R0.c cVar2 = (R0.c) jVar.f3472s;
                                    I0.b bVar = (I0.b) ((I0.c) wVar).f3806J.get(uriArr[cVar2.f6127c[cVar2.b()]]);
                                    if (bVar != null) {
                                        bVar.f3800Q = false;
                                    }
                                    jVar.f3472s = tVar7;
                                    tVar6 = tVar7;
                                }
                                if (uArr4[i18] == null) {
                                    tVar3.f3593k0++;
                                    p pVar2 = new p(tVar3, iB);
                                    uArr4[i18] = pVar2;
                                    zArr2[i18] = true;
                                    if (tVar3.f3599q0 != null) {
                                        pVar2.a();
                                        if (!z11) {
                                            s sVar = tVar3.f3584b0[tVar3.f3599q0[iB]];
                                            z11 = (sVar.t() == 0 || sVar.H(j8, true)) ? false : true;
                                        }
                                    }
                                }
                            }
                            i18++;
                            i12 = i19;
                            length4 = i20;
                            tVarArr4 = tVarArr2;
                            iArr3 = iArr;
                        } else {
                            int[] iArr5 = iArr3;
                            int i21 = length4;
                            R0.t[] tVarArr6 = tVarArr4;
                            int i22 = tVar3.f3593k0;
                            ArrayList arrayList = tVar3.f3576T;
                            if (i22 == 0) {
                                R0.c cVar3 = (R0.c) jVar.f3472s;
                                I0.b bVar2 = (I0.b) ((I0.c) wVar).f3806J.get(uriArr[cVar3.f6127c[cVar3.b()]]);
                                if (bVar2 != null) {
                                    bVar2.f3800Q = false;
                                }
                                jVar.f3468o = null;
                                tVar3.f3595m0 = null;
                                tVar3.f3606x0 = true;
                                arrayList.clear();
                                S0.m mVar = tVar3.f3572P;
                                if (mVar.e()) {
                                    if (tVar3.f3591i0) {
                                        for (s sVar2 : tVar3.f3584b0) {
                                            sVar2.k();
                                        }
                                    }
                                    mVar.a();
                                } else {
                                    tVar3.I();
                                }
                            } else {
                                if (arrayList.isEmpty() || Objects.equals(tVar6, tVar5)) {
                                    z7 = true;
                                    z8 = z9;
                                } else {
                                    if (!tVar3.f3607y0) {
                                        long j9 = j8 < 0 ? -j8 : 0L;
                                        l lVarC = tVar3.C();
                                        tVar6.a(j9, -9223372036854775807L, tVar3.f3577U, jVar.a(j8, lVarC));
                                        R0.c cVar4 = (R0.c) tVar6;
                                        if (cVar4.f6127c[cVar4.b()] == jVar.f3461h.b(lVarC.f5723J)) {
                                            z7 = true;
                                            z8 = z9;
                                        }
                                    }
                                    z7 = true;
                                    tVar3.f3606x0 = true;
                                    z8 = true;
                                    z11 = true;
                                }
                                if (z11) {
                                    tVar3.J(j8, z8);
                                    int i23 = 0;
                                    while (i23 < length3) {
                                        if (uArr4[i23] != null) {
                                            zArr2[i23] = z7;
                                        }
                                        i23++;
                                        z7 = true;
                                    }
                                }
                            }
                            ArrayList arrayList2 = tVar3.f3581Y;
                            arrayList2.clear();
                            for (int i24 = 0; i24 < length3; i24++) {
                                O0.U u9 = uArr4[i24];
                                if (u9 != null) {
                                    arrayList2.add((p) u9);
                                }
                            }
                            tVar3.f3607y0 = true;
                            int i25 = 0;
                            boolean z12 = false;
                            while (i25 < tVarArr.length) {
                                O0.U u10 = uArr4[i25];
                                int i26 = i19;
                                if (iArr5[i25] == i26) {
                                    u10.getClass();
                                    uArr5[i25] = u10;
                                    identityHashMap2 = identityHashMap3;
                                    identityHashMap2.put(u10, Integer.valueOf(i26));
                                    z12 = true;
                                } else {
                                    identityHashMap2 = identityHashMap3;
                                    if (iArr4[i25] == i26) {
                                        H1.i(u10 == null);
                                    }
                                }
                                i25++;
                                identityHashMap3 = identityHashMap2;
                                i19 = i26;
                            }
                            IdentityHashMap identityHashMap4 = identityHashMap3;
                            int i27 = i19;
                            if (z12) {
                                tVarArr5[i13] = tVar3;
                                i8 = i13 + 1;
                                if (i13 == 0) {
                                    jVar.f3466m = true;
                                    nVar = this;
                                    if (z11) {
                                        u7 = nVar.f3514Q;
                                        switch (u7.f1867G) {
                                            case 2:
                                                ((SparseArray) u7.f1868H).clear();
                                                break;
                                            default:
                                                u7.f1868H = null;
                                                break;
                                        }
                                        z9 = true;
                                    } else {
                                        t[] tVarArr7 = nVar.f3526c0;
                                        if (tVarArr7.length == 0 || tVar3 != tVarArr7[0]) {
                                            u7 = nVar.f3514Q;
                                            switch (u7.f1867G) {
                                                case 2:
                                                    ((SparseArray) u7.f1868H).clear();
                                                    break;
                                                default:
                                                    u7.f1868H = null;
                                                    break;
                                            }
                                            z9 = true;
                                        }
                                    }
                                } else {
                                    nVar = this;
                                    jVar.f3466m = i27 < nVar.f3527d0;
                                }
                            } else {
                                nVar = this;
                                i8 = i13;
                            }
                            i12 = i27 + 1;
                            uArr2 = uArr;
                            identityHashMap = identityHashMap4;
                            iArr2 = iArr4;
                            uArr3 = uArr5;
                            length4 = i21;
                            tVarArr4 = tVarArr6;
                            i11 = i8;
                            nVar2 = nVar;
                            iArr3 = iArr5;
                        }
                    }
                }
            }
        }
        n nVar3 = nVar2;
        System.arraycopy(uArr3, 0, uArr2, 0, length2);
        t[] tVarArr8 = (t[]) M.T(i11, tVarArr5);
        nVar3.f3526c0 = tVarArr8;
        d0 d0VarT = H.t(tVarArr8);
        AbstractList abstractListI = p113o3.r.i(new C0083h(5), d0VarT);
        nVar3.f3515R.getClass();
        nVar3.f3528e0 = new C0286j(d0VarT, abstractListI);
        return j8;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x023d A[LOOP:5: B:100:0x0237->B:102:0x023d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:104:0x0263  */
    /* JADX WARN: Code duplicated, block: B:106:0x026b A[LOOP:6: B:105:0x0269->B:106:0x026b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x010c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x010e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0116  */
    /* JADX WARN: Code duplicated, block: B:60:0x0118  */
    /* JADX WARN: Code duplicated, block: B:82:0x016a  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ac A[LOOP:4: B:89:0x01aa->B:90:0x01ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x0236  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r27v0, types: [H0.n, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v50, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.Map] */
    @Override // O0.InterfaceC0298w
    public final void m(InterfaceC0297v interfaceC0297v, long j8) {
        ?? EmptyMap;
        List list;
        boolean z7;
        k kVar;
        ?? r22;
        ArrayList arrayList;
        ArrayList arrayList2;
        List list2;
        HashSet hashSet;
        int i8;
        int i9;
        int i10;
        boolean z8;
        boolean z9;
        Uri[] uriArr;
        C3136t[] c3136tArr;
        int[] iArr;
        int i11;
        int i12;
        int iT;
        int iT2;
        int i13;
        ?? r23;
        t tVarD;
        ArrayList arrayList3;
        C3136t c3136t;
        C3136t[] c3136tArr2;
        int i14;
        C3136t[] c3136tArr3;
        int i15;
        List list3;
        int i16;
        k kVar2;
        int i17;
        int i18;
        int i19;
        this.f3522Y = interfaceC0297v;
        I0.c cVar = (I0.c) this.f3505H;
        cVar.getClass();
        cVar.f3807K.add(this);
        I0.o oVar = cVar.f3812P;
        oVar.getClass();
        if (this.f3518U) {
            List list4 = oVar.f3917m;
            ArrayList arrayList4 = new ArrayList(list4);
            EmptyMap = new HashMap();
            int i20 = 0;
            while (i20 < arrayList4.size()) {
                C3131n c3131n = (C3131n) list4.get(i20);
                String str = c3131n.f26962I;
                i20++;
                int i21 = i20;
                while (i21 < arrayList4.size()) {
                    C3131n c3131n2 = (C3131n) arrayList4.get(i21);
                    if (TextUtils.equals(c3131n2.f26962I, str)) {
                        String str2 = c3131n.f26962I;
                        String str3 = c3131n2.f26962I;
                        H1.i(str2 == null || str3 == null || TextUtils.equals(str2, str3));
                        if (str2 == null) {
                            str2 = str3;
                        }
                        String str4 = M.f28050a;
                        C3130m[] c3130mArr = c3131n.f26960G;
                        int length = c3130mArr.length;
                        C3130m[] c3130mArr2 = c3131n2.f26960G;
                        Object[] objArrCopyOf = Arrays.copyOf(c3130mArr, length + c3130mArr2.length);
                        System.arraycopy(c3130mArr2, 0, objArrCopyOf, c3130mArr.length, c3130mArr2.length);
                        c3131n = new C3131n(str2, true, (C3130m[]) objArrCopyOf);
                        arrayList4.remove(i21);
                    } else {
                        i21++;
                    }
                }
                EmptyMap.put(str, c3131n);
            }
        } else {
            EmptyMap = Collections.emptyMap();
        }
        ?? r14 = EmptyMap;
        List list5 = oVar.f3909e;
        boolean z10 = !list5.isEmpty();
        this.f3523Z = 0;
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        k kVar3 = this.f3504G;
        boolean z11 = this.f3516S;
        List list6 = oVar.f3911g;
        if (z10) {
            int size = list5.size();
            int[] iArr2 = new int[size];
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i22 < list5.size()) {
                C3136t c3136t2 = ((I0.n) list5.get(i22)).f3902b;
                if (c3136t2.f27049w <= 0) {
                    String str5 = c3136t2.f27037k;
                    if (M.u(2, str5) != null) {
                        i19 = 2;
                        i18 = 1;
                    } else {
                        i18 = 1;
                        if (M.u(1, str5) != null) {
                            iArr2[i22] = 1;
                            i24++;
                        } else {
                            iArr2[i22] = -1;
                        }
                    }
                    i22 += i18;
                } else {
                    i18 = 1;
                    i19 = 2;
                }
                iArr2[i22] = i19;
                i23 += i18;
                i22 += i18;
            }
            if (i23 > 0) {
                i10 = i23;
                z8 = true;
            } else {
                if (i24 < size) {
                    i10 = size - i24;
                    z8 = false;
                    z9 = true;
                } else {
                    i10 = size;
                    z8 = false;
                }
                uriArr = new Uri[i10];
                c3136tArr = new C3136t[i10];
                iArr = new int[i10];
                z7 = z11;
                i11 = 0;
                i12 = 0;
                while (i11 < list5.size()) {
                    if (z8) {
                        kVar2 = kVar3;
                        if (iArr2[i11] == 2) {
                        }
                        i17 = 1;
                        i11 += i17;
                        kVar3 = kVar2;
                    } else {
                        kVar2 = kVar3;
                    }
                    if (z9 || iArr2[i11] != 1) {
                        I0.n nVar = (I0.n) list5.get(i11);
                        uriArr[i12] = nVar.f3901a;
                        c3136tArr[i12] = nVar.f3902b;
                        i17 = 1;
                        iArr[i12] = i11;
                        i12++;
                    } else {
                        i17 = 1;
                    }
                    i11 += i17;
                    kVar3 = kVar2;
                }
                k kVar4 = kVar3;
                String str6 = c3136tArr[0].f27037k;
                iT = M.t(2, str6);
                iT2 = M.t(1, str6);
                boolean z12 = (iT2 != 1 || (iT2 == 0 && list6.isEmpty())) && iT <= 1 && iT2 + iT > 0;
                if (!z8 || iT2 <= 0) {
                    i13 = 0;
                } else {
                    i13 = 1;
                }
                list = list6;
                r23 = r14;
                arrayList = arrayList6;
                kVar = kVar4;
                tVarD = d("main", i13, uriArr, c3136tArr, oVar.f3914j, oVar.f3915k, r14, j8);
                arrayList5.add(tVarD);
                arrayList.add(iArr);
                r22 = r23;
                r22 = r23;
                if (z7 && z12) {
                    arrayList3 = new ArrayList();
                    c3136t = oVar.f3914j;
                    if (iT > 0) {
                        c3136tArr3 = new C3136t[i10];
                        for (i15 = 0; i15 < i10; i15++) {
                            C3136t c3136t3 = c3136tArr[i15];
                            String strU = M.u(2, c3136t3.f27037k);
                            String strE = p094m0.O.e(strU);
                            C3135s c3135s = new C3135s();
                            c3135s.f26983a = c3136t3.f27027a;
                            c3135s.f26984b = c3136t3.f27028b;
                            c3135s.f26985c = H.s(c3136t3.f27029c);
                            c3135s.f26995m = p094m0.O.p(c3136t3.f27040n);
                            c3135s.f26996n = p094m0.O.p(strE);
                            c3135s.f26992j = strU;
                            c3135s.f26993k = c3136t3.f27038l;
                            c3135s.f26990h = c3136t3.f27034h;
                            c3135s.f26991i = c3136t3.f27035i;
                            c3135s.f27003u = c3136t3.f27048v;
                            c3135s.f27004v = c3136t3.f27049w;
                            c3135s.f27007y = c3136t3.f27052z;
                            c3135s.f26987e = c3136t3.f27031e;
                            c3135s.f26988f = c3136t3.f27032f;
                            c3136tArr3[i15] = new C3136t(c3135s);
                        }
                        arrayList3.add(new g0("main", c3136tArr3));
                        if (iT2 > 0 && (c3136t != null || list.isEmpty())) {
                            arrayList3.add(new g0("main:audio", f(c3136tArr[0], c3136t, false)));
                        }
                        list3 = oVar.f3915k;
                        if (list3 != null) {
                            for (i16 = 0; i16 < list3.size(); i16++) {
                                arrayList3.add(new g0(p000a.r.f("main:cc:", i16), ((d) kVar).b((C3136t) list3.get(i16))));
                            }
                        }
                    } else {
                        c3136tArr2 = new C3136t[i10];
                        for (i14 = 0; i14 < i10; i14++) {
                            c3136tArr2[i14] = f(c3136tArr[i14], c3136t, true);
                        }
                        arrayList3.add(new g0("main", c3136tArr2));
                    }
                    C3135s c3135s2 = new C3135s();
                    c3135s2.f26983a = "ID3";
                    c3135s2.f26996n = p094m0.O.p("application/id3");
                    g0 g0Var = new g0("main:id3", new C3136t(c3135s2));
                    arrayList3.add(g0Var);
                    tVarD.H((g0[]) arrayList3.toArray(new g0[0]), arrayList3.indexOf(g0Var));
                    r22 = r23;
                }
            }
            z9 = false;
            uriArr = new Uri[i10];
            c3136tArr = new C3136t[i10];
            iArr = new int[i10];
            z7 = z11;
            i11 = 0;
            i12 = 0;
            while (i11 < list5.size()) {
                if (z8) {
                    kVar2 = kVar3;
                    if (iArr2[i11] == 2) {
                    }
                    i17 = 1;
                    i11 += i17;
                    kVar3 = kVar2;
                } else {
                    kVar2 = kVar3;
                }
                if (z9) {
                }
                I0.n nVar2 = (I0.n) list5.get(i11);
                uriArr[i12] = nVar2.f3901a;
                c3136tArr[i12] = nVar2.f3902b;
                i17 = 1;
                iArr[i12] = i11;
                i12++;
                i11 += i17;
                kVar3 = kVar2;
            }
            k kVar5 = kVar3;
            String str7 = c3136tArr[0].f27037k;
            iT = M.t(2, str7);
            iT2 = M.t(1, str7);
            if (iT2 != 1) {
            }
            if (z8) {
                i13 = 0;
            } else {
                i13 = 0;
            }
            list = list6;
            r23 = r14;
            arrayList = arrayList6;
            kVar = kVar5;
            tVarD = d("main", i13, uriArr, c3136tArr, oVar.f3914j, oVar.f3915k, r14, j8);
            arrayList5.add(tVarD);
            arrayList.add(iArr);
            r22 = r23;
            r22 = r23;
            if (z7) {
                arrayList3 = new ArrayList();
                c3136t = oVar.f3914j;
                if (iT > 0) {
                    c3136tArr3 = new C3136t[i10];
                    while (i15 < i10) {
                        C3136t c3136t4 = c3136tArr[i15];
                        String strU2 = M.u(2, c3136t4.f27037k);
                        String strE2 = p094m0.O.e(strU2);
                        C3135s c3135s3 = new C3135s();
                        c3135s3.f26983a = c3136t4.f27027a;
                        c3135s3.f26984b = c3136t4.f27028b;
                        c3135s3.f26985c = H.s(c3136t4.f27029c);
                        c3135s3.f26995m = p094m0.O.p(c3136t4.f27040n);
                        c3135s3.f26996n = p094m0.O.p(strE2);
                        c3135s3.f26992j = strU2;
                        c3135s3.f26993k = c3136t4.f27038l;
                        c3135s3.f26990h = c3136t4.f27034h;
                        c3135s3.f26991i = c3136t4.f27035i;
                        c3135s3.f27003u = c3136t4.f27048v;
                        c3135s3.f27004v = c3136t4.f27049w;
                        c3135s3.f27007y = c3136t4.f27052z;
                        c3135s3.f26987e = c3136t4.f27031e;
                        c3135s3.f26988f = c3136t4.f27032f;
                        c3136tArr3[i15] = new C3136t(c3135s3);
                    }
                    arrayList3.add(new g0("main", c3136tArr3));
                    if (iT2 > 0) {
                        arrayList3.add(new g0("main:audio", f(c3136tArr[0], c3136t, false)));
                    }
                    list3 = oVar.f3915k;
                    if (list3 != null) {
                        while (i16 < list3.size()) {
                            arrayList3.add(new g0(p000a.r.f("main:cc:", i16), ((d) kVar).b((C3136t) list3.get(i16))));
                        }
                    }
                } else {
                    c3136tArr2 = new C3136t[i10];
                    while (i14 < i10) {
                        c3136tArr2[i14] = f(c3136tArr[i14], c3136t, true);
                    }
                    arrayList3.add(new g0("main", c3136tArr2));
                }
                C3135s c3135s4 = new C3135s();
                c3135s4.f26983a = "ID3";
                c3135s4.f26996n = p094m0.O.p("application/id3");
                g0 g0Var2 = new g0("main:id3", new C3136t(c3135s4));
                arrayList3.add(g0Var2);
                tVarD.H((g0[]) arrayList3.toArray(new g0[0]), arrayList3.indexOf(g0Var2));
                r22 = r23;
            }
        } else {
            list = list6;
            z7 = z11;
            kVar = kVar3;
            r22 = r14;
            arrayList = arrayList6;
        }
        ArrayList arrayList7 = new ArrayList(list.size());
        ArrayList arrayList8 = new ArrayList(list.size());
        ArrayList arrayList9 = new ArrayList(list.size());
        HashSet hashSet2 = new HashSet();
        int i25 = 0;
        while (i25 < list.size()) {
            List list7 = list;
            String str8 = ((I0.m) list7.get(i25)).f3900c;
            if (hashSet2.add(str8)) {
                arrayList7.clear();
                arrayList8.clear();
                arrayList9.clear();
                int i26 = 0;
                boolean z13 = true;
                while (i26 < list7.size()) {
                    if (Objects.equals(str8, ((I0.m) list7.get(i26)).f3900c)) {
                        I0.m mVar = (I0.m) list7.get(i26);
                        arrayList9.add(Integer.valueOf(i26));
                        arrayList7.add(mVar.f3898a);
                        C3136t c3136t5 = mVar.f3899b;
                        arrayList8.add(c3136t5);
                        i9 = 1;
                        z13 &= M.t(1, c3136t5.f27037k) == 1;
                    } else {
                        i9 = 1;
                    }
                    i26 += i9;
                }
                String strC = p148t.a.c("audio:", str8);
                String str9 = M.f28050a;
                list2 = list7;
                hashSet = hashSet2;
                i8 = i25;
                t tVarD2 = d(strC, 1, (Uri[]) arrayList7.toArray(new Uri[0]), (C3136t[]) arrayList8.toArray(new C3136t[0]), null, Collections.emptyList(), r22, j8);
                arrayList.add(p190y4.k.g0(arrayList9));
                arrayList5.add(tVarD2);
                if (z7 && z13) {
                    tVarD2.H(new g0[]{new g0(strC, (C3136t[]) arrayList8.toArray(new C3136t[0]))}, new int[0]);
                }
                i25 = i8 + 1;
                list = list2;
                hashSet2 = hashSet;
            } else {
                list2 = list7;
                hashSet = hashSet2;
                i8 = i25;
            }
            i25 = i8 + 1;
            list = list2;
            hashSet2 = hashSet;
        }
        this.f3527d0 = arrayList5.size();
        List list8 = oVar.f3912h;
        ArrayList arrayList10 = new ArrayList(list8.size());
        ArrayList arrayList11 = new ArrayList(list8.size());
        ArrayList arrayList12 = new ArrayList(list8.size());
        HashSet hashSet3 = new HashSet();
        int i27 = 0;
        while (i27 < list8.size()) {
            String str10 = ((I0.m) list8.get(i27)).f3900c;
            if (hashSet3.add(str10)) {
                arrayList10.clear();
                arrayList11.clear();
                arrayList12.clear();
                for (int i28 = 0; i28 < list8.size(); i28++) {
                    if (Objects.equals(str10, ((I0.m) list8.get(i28)).f3900c)) {
                        I0.m mVar2 = (I0.m) list8.get(i28);
                        arrayList12.add(Integer.valueOf(i28));
                        arrayList10.add(mVar2.f3898a);
                        arrayList11.add(mVar2.f3899b);
                    }
                }
                String strC2 = p148t.a.c("subtitle:", str10);
                C3136t[] c3136tArr4 = (C3136t[]) arrayList11.toArray(new C3136t[0]);
                String str11 = M.f28050a;
                Uri[] uriArr2 = (Uri[]) arrayList10.toArray(new Uri[0]);
                F f8 = H.f31804H;
                arrayList2 = arrayList12;
                t tVarD3 = d(strC2, 3, uriArr2, c3136tArr4, null, d0.f31844K, r22, j8);
                arrayList.add(p190y4.k.g0(arrayList2));
                arrayList5.add(tVarD3);
                int length2 = c3136tArr4.length;
                C3136t[] c3136tArr5 = new C3136t[length2];
                for (int i29 = 0; i29 < length2; i29++) {
                    c3136tArr5[i29] = ((d) kVar).b(c3136tArr4[i29]);
                }
                tVarD3.H(new g0[]{new g0(strC2, c3136tArr5)}, new int[0]);
            } else {
                arrayList2 = arrayList12;
            }
            i27++;
            arrayList12 = arrayList2;
            hashSet3 = hashSet3;
        }
        this.f3525b0 = (t[]) arrayList5.toArray(new t[0]);
        this.f3523Z = this.f3525b0.length;
        for (int i30 = 0; i30 < this.f3527d0; i30++) {
            this.f3525b0[i30].f3566J.f3466m = true;
        }
        for (t tVar : this.f3525b0) {
            if (!tVar.f3592j0) {
                C0042c0 c0042c0 = new C0042c0();
                c0042c0.f917a = tVar.f3604v0;
                tVar.g(new C0044d0(c0042c0));
            }
        }
        this.f3526c0 = this.f3525b0;
    }

    @Override // O0.InterfaceC0298w
    public final long q() {
        return -9223372036854775807L;
    }

    @Override // O0.InterfaceC0298w
    public final Z s() {
        Z z7 = this.f3524a0;
        z7.getClass();
        return z7;
    }

    @Override // O0.W
    public final long u() {
        return this.f3528e0.u();
    }

    @Override // O0.InterfaceC0298w
    public final void v(long j8, boolean z7) {
        for (t tVar : this.f3526c0) {
            if (tVar.f3591i0 && !tVar.E()) {
                int length = tVar.f3584b0.length;
                for (int i8 = 0; i8 < length; i8++) {
                    tVar.f3584b0[i8].j(j8, z7, tVar.f3602t0[i8]);
                }
            }
        }
    }

    @Override // O0.W
    public final void w(long j8) {
        this.f3528e0.w(j8);
    }
}
