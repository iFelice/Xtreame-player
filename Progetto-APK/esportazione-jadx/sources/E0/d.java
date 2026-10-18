package E0;

import B0.C0044d0;
import B0.I0;
import C0.C0083h;
import C0.I;
import F2.G;
import O0.C0286j;
import O0.C0289m;
import O0.D;
import O0.InterfaceC0297v;
import O0.InterfaceC0298w;
import O0.T;
import O0.U;
import O0.V;
import O0.W;
import O0.Z;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p027d2.v;
import p086l.C3016a;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.M;
import p141s0.O;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class d implements InterfaceC0298w, V, P0.l {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final Pattern f2449g0 = Pattern.compile("CC([1-4])=(.+)");

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Pattern f2450h0 = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f2451G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f2452H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final O f2453I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final G0.r f2454J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final U4.b f2455K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p096m2.i f2456L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final long f2457M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final S0.n f2458N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final S0.d f2459O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Z f2460P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final c[] f2461Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final U4.b f2462R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final t f2463S;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final D f2465U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final G0.o f2466V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final I f2467W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public InterfaceC0297v f2468X;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public C0286j f2471a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public F0.c f2472b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2473c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public List f2474d0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public long f2476f0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f2475e0 = true;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public P0.m[] f2469Y = new P0.m[0];

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public q[] f2470Z = new q[0];

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final IdentityHashMap f2464T = new IdentityHashMap();

    public d(int i8, F0.c cVar, p096m2.i iVar, int i9, a aVar, O o4, G0.r rVar, G0.o oVar, U4.b bVar, D d6, long j8, S0.n nVar, S0.d dVar, U4.b bVar2, f fVar, I i10) {
        int i11;
        int i12;
        int i13;
        C3136t[] c3136tArr;
        C3136t[] c3136tArrJ;
        F0.f fVarC;
        Integer num;
        G0.r rVar2 = rVar;
        this.f2451G = i8;
        this.f2472b0 = cVar;
        this.f2456L = iVar;
        this.f2473c0 = i9;
        this.f2452H = aVar;
        this.f2453I = o4;
        this.f2454J = rVar2;
        this.f2466V = oVar;
        this.f2455K = bVar;
        this.f2465U = d6;
        this.f2457M = j8;
        this.f2458N = nVar;
        this.f2459O = dVar;
        this.f2462R = bVar2;
        this.f2467W = i10;
        this.f2463S = new t(cVar, fVar, dVar);
        bVar2.getClass();
        F f8 = H.f31804H;
        d0 d0Var = d0.f31844K;
        this.f2471a0 = new C0286j(d0Var, d0Var);
        F0.h hVarB = cVar.b(i9);
        List list = hVarB.f3052d;
        this.f2474d0 = list;
        List list2 = hVarB.f3051c;
        int size = list2.size();
        HashMap map = new HashMap(v.e(size));
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i14 = 0; i14 < size; i14++) {
            map.put(Long.valueOf(((F0.a) list2.get(i14)).f3004a), Integer.valueOf(i14));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i14));
            arrayList.add(arrayList2);
            sparseArray.put(i14, arrayList2);
        }
        int i15 = 0;
        while (i15 < size) {
            F0.a aVar2 = (F0.a) list2.get(i15);
            F0.f fVarC2 = c("http://dashif.org/guidelines/trickmode", aVar2.f3008e);
            List list3 = aVar2.f3009f;
            fVarC2 = fVarC2 == null ? c("http://dashif.org/guidelines/trickmode", list3) : fVarC2;
            int iIntValue = (fVarC2 == null || (num = (Integer) map.get(Long.valueOf(Long.parseLong(fVarC2.f3043b)))) == null || !b(aVar2, (F0.a) list2.get(num.intValue()))) ? i15 : num.intValue();
            if (iIntValue == i15 && (fVarC = c("urn:mpeg:dash:adaptation-set-switching:2016", list3)) != null) {
                String str = M.f28050a;
                String[] strArrSplit = fVarC.f3043b.split(",", -1);
                int length = strArrSplit.length;
                int i16 = 0;
                while (i16 < length) {
                    Integer num2 = (Integer) map.get(Long.valueOf(Long.parseLong(strArrSplit[i16])));
                    int i17 = size;
                    if (num2 != null && b(aVar2, (F0.a) list2.get(num2.intValue()))) {
                        iIntValue = Math.min(iIntValue, num2.intValue());
                    }
                    i16++;
                    size = i17;
                }
            }
            int i18 = size;
            if (iIntValue != i15) {
                List list4 = (List) sparseArray.get(i15);
                List list5 = (List) sparseArray.get(iIntValue);
                list5.addAll(list4);
                sparseArray.put(i15, list5);
                arrayList.remove(list4);
            }
            i15++;
            size = i18;
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i19 = 0; i19 < size2; i19++) {
            int[] iArrG0 = p190y4.k.g0((Collection) arrayList.get(i19));
            iArr[i19] = iArrG0;
            Arrays.sort(iArrG0);
        }
        boolean[] zArr = new boolean[size2];
        C3136t[][] c3136tArr2 = new C3136t[size2][];
        int i20 = 0;
        int i21 = 0;
        while (i20 < size2) {
            int[] iArr2 = iArr[i20];
            int length2 = iArr2.length;
            int i22 = 0;
            while (i22 < length2) {
                List list6 = ((F0.a) list2.get(iArr2[i22])).f3006c;
                int[] iArr3 = iArr2;
                for (int i23 = 0; i23 < list6.size(); i23++) {
                    if (!((F0.m) list6.get(i23)).f3069d.isEmpty()) {
                        zArr[i20] = true;
                        i21++;
                        break;
                    }
                }
                i22++;
                iArr2 = iArr3;
            }
            int[] iArr4 = iArr[i20];
            int length3 = iArr4.length;
            int i24 = 0;
            while (true) {
                if (i24 >= length3) {
                    i13 = 1;
                    c3136tArr = new C3136t[0];
                    break;
                }
                int i25 = iArr4[i24];
                F0.a aVar3 = (F0.a) list2.get(i25);
                List list7 = ((F0.a) list2.get(i25)).f3007d;
                int[] iArr5 = iArr4;
                int i26 = length3;
                int i27 = 0;
                while (true) {
                    if (i27 < list7.size()) {
                        F0.f fVar2 = (F0.f) list7.get(i27);
                        List list8 = list7;
                        if ("urn:scte:dash:cc:cea-608:2015".equals(fVar2.f3042a)) {
                            C3135s c3135s = new C3135s();
                            c3135s.f26996n = p094m0.O.p("application/cea-608");
                            c3135s.f26983a = p000a.r.i(new StringBuilder(), aVar3.f3004a, ":cea608");
                            c3136tArrJ = j(fVar2, f2449g0, new C3136t(c3135s));
                        } else if ("urn:scte:dash:cc:cea-708:2015".equals(fVar2.f3042a)) {
                            C3135s c3135s2 = new C3135s();
                            c3135s2.f26996n = p094m0.O.p("application/cea-708");
                            c3135s2.f26983a = p000a.r.i(new StringBuilder(), aVar3.f3004a, ":cea708");
                            c3136tArrJ = j(fVar2, f2450h0, new C3136t(c3135s2));
                        } else {
                            i27++;
                            list7 = list8;
                        }
                        c3136tArr = c3136tArrJ;
                        i13 = 1;
                        break;
                    }
                    i24++;
                    iArr4 = iArr5;
                    length3 = i26;
                }
            }
            c3136tArr2[i20] = c3136tArr;
            if (c3136tArr.length != 0) {
                i21 += i13;
            }
            i20 += i13;
        }
        int size3 = list.size() + i21 + size2;
        g0[] g0VarArr = new g0[size3];
        c[] cVarArr = new c[size3];
        int i28 = 0;
        int i29 = 0;
        while (i29 < size2) {
            int[] iArr6 = iArr[i29];
            ArrayList arrayList3 = new ArrayList();
            int length4 = iArr6.length;
            int i30 = size2;
            int i31 = 0;
            while (i31 < length4) {
                arrayList3.addAll(((F0.a) list2.get(iArr6[i31])).f3006c);
                i31++;
                iArr = iArr;
            }
            int[][] iArr7 = iArr;
            int size4 = arrayList3.size();
            C3136t[] c3136tArr3 = new C3136t[size4];
            int i32 = 0;
            while (i32 < size4) {
                int i33 = size4;
                C3136t c3136t = ((F0.m) arrayList3.get(i32)).f3066a;
                ArrayList arrayList4 = arrayList3;
                C3135s c3135sA = c3136t.a();
                c3135sA.f26982O = rVar2.m(c3136t);
                c3136tArr3[i32] = new C3136t(c3135sA);
                i32++;
                size4 = i33;
                arrayList3 = arrayList4;
            }
            F0.a aVar4 = (F0.a) list2.get(iArr6[0]);
            long j9 = aVar4.f3004a;
            String string = j9 != -1 ? Long.toString(j9) : p000a.r.f("unset:", i29);
            int i34 = i28 + 1;
            if (zArr[i29]) {
                i11 = i34;
                i34 = i28 + 2;
            } else {
                i11 = -1;
            }
            if (c3136tArr2[i29].length != 0) {
                i12 = i34;
                i34++;
            } else {
                i12 = -1;
            }
            f(aVar, c3136tArr3);
            List list9 = list2;
            g0VarArr[i28] = new g0(string, c3136tArr3);
            F f9 = H.f31804H;
            d0 d0Var2 = d0.f31844K;
            cVarArr[i28] = new c(aVar4.f3005b, 0, iArr6, i28, i11, i12, -1, d0Var2);
            int i35 = i11;
            int i36 = -1;
            if (i35 != -1) {
                String strA = U2.A(string, ":emsg");
                C3135s c3135s3 = new C3135s();
                c3135s3.f26983a = strA;
                c3135s3.f26996n = p094m0.O.p("application/x-emsg");
                g0VarArr[i35] = new g0(strA, new C3136t(c3135s3));
                cVarArr[i35] = new c(5, 1, iArr6, i28, -1, -1, -1, d0Var2);
                i36 = -1;
            }
            if (i12 != i36) {
                String strA2 = U2.A(string, ":cc");
                cVarArr[i12] = new c(3, 1, iArr6, i28, -1, -1, -1, H.t(c3136tArr2[i29]));
                f(aVar, c3136tArr2[i29]);
                g0VarArr[i12] = new g0(strA2, c3136tArr2[i29]);
            }
            i29++;
            size2 = i30;
            rVar2 = rVar;
            iArr = iArr7;
            i28 = i34;
            list2 = list9;
            zArr = zArr;
            list = list;
        }
        List list10 = list;
        int i37 = 0;
        while (i37 < list10.size()) {
            List list11 = list10;
            F0.g gVar = (F0.g) list11.get(i37);
            C3135s c3135s4 = new C3135s();
            c3135s4.f26983a = gVar.a();
            c3135s4.f26996n = p094m0.O.p("application/x-emsg");
            g0VarArr[i28] = new g0(gVar.a() + ":" + i37, new C3136t(c3135s4));
            F f10 = H.f31804H;
            cVarArr[i28] = new c(5, 2, new int[0], -1, -1, -1, i37, d0.f31844K);
            i37++;
            list10 = list11;
            i28++;
        }
        Pair pairCreate = Pair.create(new Z(g0VarArr), cVarArr);
        this.f2460P = (Z) pairCreate.first;
        this.f2461Q = (c[]) pairCreate.second;
    }

    public static boolean b(F0.a aVar, F0.a aVar2) {
        if (aVar.f3005b != aVar2.f3005b) {
            return false;
        }
        List list = aVar.f3006c;
        if (!list.isEmpty()) {
            List list2 = aVar2.f3006c;
            if (!list2.isEmpty()) {
                C3136t c3136t = ((F0.m) list.get(0)).f3066a;
                C3136t c3136t2 = ((F0.m) list2.get(0)).f3066a;
                return Objects.equals(c3136t.f27030d, c3136t2.f27030d) && (c3136t.f27032f & (-16385)) == (c3136t2.f27032f & (-16385));
            }
        }
        return true;
    }

    public static F0.f c(String str, List list) {
        for (int i8 = 0; i8 < list.size(); i8++) {
            F0.f fVar = (F0.f) list.get(i8);
            if (str.equals(fVar.f3042a)) {
                return fVar;
            }
        }
        return null;
    }

    public static void f(a aVar, C3136t[] c3136tArr) {
        for (int i8 = 0; i8 < c3136tArr.length; i8++) {
            C3136t c3136tA = c3136tArr[i8];
            C3016a c3016a = (C3016a) ((m) aVar).f2532c;
            if (c3016a.f26217a) {
                G g8 = (G) ((p126q1.k) c3016a.f26219c);
                if (g8.K(c3136tA)) {
                    C3135s c3135sA = c3136tA.a();
                    c3135sA.f26996n = p094m0.O.p("application/x-media3-cues");
                    c3135sA.f26979L = g8.D(c3136tA);
                    StringBuilder sb = new StringBuilder();
                    sb.append(c3136tA.f27041o);
                    String str = c3136tA.f27037k;
                    sb.append(str != null ? " ".concat(str) : HttpUrl.FRAGMENT_ENCODE_SET);
                    c3135sA.f26992j = sb.toString();
                    c3135sA.f27001s = Long.MAX_VALUE;
                    c3136tA = c3135sA.a();
                }
            }
            c3136tArr[i8] = c3136tA;
        }
    }

    public static C3136t[] j(F0.f fVar, Pattern pattern, C3136t c3136t) {
        String str = fVar.f3043b;
        if (str == null) {
            return new C3136t[]{c3136t};
        }
        String str2 = M.f28050a;
        String[] strArrSplit = str.split(";", -1);
        C3136t[] c3136tArr = new C3136t[strArrSplit.length];
        for (int i8 = 0; i8 < strArrSplit.length; i8++) {
            Matcher matcher = pattern.matcher(strArrSplit[i8]);
            if (!matcher.matches()) {
                return new C3136t[]{c3136t};
            }
            int i9 = Integer.parseInt(matcher.group(1));
            C3135s c3135sA = c3136t.a();
            c3135sA.f26983a = c3136t.f27027a + ":" + i9;
            c3135sA.f26978K = i9;
            c3135sA.f26986d = matcher.group(2);
            c3136tArr[i8] = new C3136t(c3135sA);
        }
        return c3136tArr;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0068  */
    @Override // O0.InterfaceC0298w
    public final long a(long j8, I0 i8) {
        long jF;
        for (P0.m mVar : this.f2469Y) {
            if (mVar.f5736G == 2) {
                for (n nVar : ((p) mVar.f5740K).f2549i) {
                    if (((k) nVar.f2539g) != null) {
                        long jD = nVar.d();
                        if (jD != 0) {
                            Object obj = nVar.f2539g;
                            k kVar = (k) obj;
                            H1.j(kVar);
                            long jF2 = kVar.f(j8, nVar.f2534b);
                            long j9 = nVar.f2535c;
                            long j10 = jF2 + j9;
                            long jF3 = nVar.f(j10);
                            if (jF3 >= j8) {
                                jF = jF3;
                            } else {
                                if (jD != -1) {
                                    k kVar2 = (k) obj;
                                    H1.j(kVar2);
                                    if (j10 >= ((kVar2.h() + j9) + jD) - 1) {
                                        jF = jF3;
                                    }
                                }
                                jF = nVar.f(j10 + 1);
                            }
                            return i8.a(j8, jF3, jF);
                        }
                    }
                }
                return j8;
            }
        }
        return j8;
    }

    public final int d(int[] iArr, int i8) {
        int i9 = iArr[i8];
        if (i9 == -1) {
            return -1;
        }
        c[] cVarArr = this.f2461Q;
        int i10 = cVarArr[i9].f2445e;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 == i10 && cVarArr[i12].f2443c == 0) {
                return i11;
            }
        }
        return -1;
    }

    @Override // O0.W
    public final long e() {
        return this.f2471a0.e();
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        return this.f2471a0.g(c0044d0);
    }

    @Override // O0.InterfaceC0298w
    public final void h() {
        this.f2458N.b();
    }

    @Override // O0.InterfaceC0298w
    public final long i(long j8) {
        ArrayList arrayList;
        P0.a aVar;
        boolean zH;
        for (P0.m mVar : this.f2469Y) {
            mVar.f5755Z = j8;
            mVar.f5757b0 = false;
            if (mVar.A()) {
                mVar.f5754Y = j8;
            } else {
                int i8 = 0;
                while (true) {
                    arrayList = mVar.f5746Q;
                    if (i8 < arrayList.size()) {
                        aVar = (P0.a) arrayList.get(i8);
                        long j9 = aVar.f5726M;
                        if (j9 == j8 && aVar.f5695Q == -9223372036854775807L) {
                            break;
                        }
                        if (j9 <= j8) {
                            i8++;
                        }
                    }
                    aVar = null;
                    break;
                }
                T t7 = mVar.f5748S;
                if (aVar != null) {
                    zH = t7.G(aVar.c(0));
                } else {
                    long jE = mVar.e();
                    zH = t7.H(j8, jE == Long.MIN_VALUE || j8 < jE);
                }
                T[] tArr = mVar.f5749T;
                if (zH) {
                    mVar.f5756a0 = mVar.C(t7.t(), 0);
                    for (T t8 : tArr) {
                        t8.H(j8, true);
                    }
                } else {
                    mVar.f5754Y = j8;
                    mVar.f5759d0 = false;
                    arrayList.clear();
                    mVar.f5756a0 = 0;
                    S0.m mVar2 = mVar.f5744O;
                    if (mVar2.e()) {
                        t7.k();
                        for (T t9 : tArr) {
                            t9.k();
                        }
                        mVar2.a();
                    } else {
                        mVar2.f6368I = null;
                        t7.E(false);
                        for (T t10 : tArr) {
                            t10.E(false);
                        }
                    }
                }
            }
        }
        for (q qVar : this.f2470Z) {
            int iA = M.a(qVar.f2557I, j8, true);
            qVar.f2561M = iA;
            qVar.f2562N = (qVar.f2558J && iA == qVar.f2557I.length) ? j8 : -9223372036854775807L;
        }
        return j8;
    }

    @Override // O0.W
    public final boolean k() {
        return this.f2471a0.k();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    @Override // O0.InterfaceC0298w
    public final long l(R0.t[] tVarArr, boolean[] zArr, U[] uArr, boolean[] zArr2, long j8) {
        int i8;
        int[] iArr;
        int i9;
        int[] iArr2;
        U[] uArr2;
        g0 g0VarA;
        int i10;
        int i11;
        U u7;
        R0.t[] tVarArr2 = tVarArr;
        U[] uArr3 = uArr;
        int[] iArr3 = new int[tVarArr2.length];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i8 = -1;
            if (i13 >= tVarArr2.length) {
                break;
            }
            R0.t tVar = tVarArr2[i13];
            if (tVar != null) {
                iArr3[i13] = this.f2460P.b(((R0.c) tVar).f6125a);
            } else {
                iArr3[i13] = -1;
            }
            i13++;
        }
        for (int i14 = 0; i14 < tVarArr2.length; i14++) {
            if (tVarArr2[i14] == null || !zArr[i14]) {
                U u8 = uArr3[i14];
                if (u8 instanceof P0.m) {
                    ((P0.m) u8).D(this);
                } else if (u8 instanceof P0.k) {
                    ((P0.k) u8).c();
                }
                uArr3[i14] = null;
            }
        }
        for (int i15 = 0; i15 < tVarArr2.length; i15++) {
            U u9 = uArr3[i15];
            if ((u9 instanceof C0289m) || (u9 instanceof P0.k)) {
                int iD = d(iArr3, i15);
                if (iD != -1) {
                    U u10 = uArr3[i15];
                    if (!(u10 instanceof P0.k) || ((P0.k) u10).f5731G != uArr3[iD]) {
                        u7 = uArr3[i15];
                        if (u7 instanceof P0.k) {
                            ((P0.k) u7).c();
                        }
                        uArr3[i15] = null;
                    }
                } else if (!(uArr3[i15] instanceof C0289m)) {
                    u7 = uArr3[i15];
                    if (u7 instanceof P0.k) {
                        ((P0.k) u7).c();
                    }
                    uArr3[i15] = null;
                }
            }
        }
        int i16 = 0;
        while (i16 < tVarArr2.length) {
            R0.t tVar2 = tVarArr2[i16];
            if (tVar2 == null) {
                i9 = i16;
                iArr2 = iArr3;
                uArr2 = uArr3;
            } else {
                U u11 = uArr3[i16];
                if (u11 == null) {
                    zArr2[i16] = true;
                    c cVar = this.f2461Q[iArr3[i16]];
                    int i17 = cVar.f2443c;
                    if (i17 == 0) {
                        int i18 = cVar.f2446f;
                        boolean z7 = i18 != i8;
                        if (z7) {
                            g0VarA = this.f2460P.a(i18);
                            i10 = 1;
                        } else {
                            g0VarA = null;
                            i10 = 0;
                        }
                        int i19 = cVar.f2447g;
                        H hW = i19 != i8 ? this.f2461Q[i19].f2448h : H.w();
                        int size = hW.size() + i10;
                        C3136t[] c3136tArr = new C3136t[size];
                        int[] iArr4 = new int[size];
                        if (z7) {
                            c3136tArr[i12] = g0VarA.a();
                            iArr4[i12] = 5;
                            i11 = 1;
                        } else {
                            i11 = 0;
                        }
                        ArrayList arrayList = new ArrayList();
                        while (i12 < hW.size()) {
                            C3136t c3136t = (C3136t) hW.get(i12);
                            c3136tArr[i11] = c3136t;
                            iArr4[i11] = 3;
                            arrayList.add(c3136t);
                            i11++;
                            i12++;
                        }
                        s sVarA = (this.f2472b0.f3017d && z7) ? this.f2463S.a() : null;
                        i9 = i16;
                        s sVar = sVarA;
                        iArr2 = iArr3;
                        P0.m mVar = new P0.m(cVar.f2442b, iArr4, c3136tArr, ((m) this.f2452H).a(this.f2458N, this.f2472b0, this.f2456L, this.f2473c0, cVar.f2441a, tVar2, cVar.f2442b, this.f2457M, z7, arrayList, sVarA, this.f2453I, this.f2467W), this, this.f2459O, j8, this.f2454J, this.f2466V, this.f2455K, this.f2465U, this.f2475e0);
                        synchronized (this) {
                            this.f2464T.put(mVar, sVar);
                        }
                        uArr2 = uArr;
                        uArr2[i9] = mVar;
                    } else {
                        i9 = i16;
                        iArr2 = iArr3;
                        uArr2 = uArr3;
                        if (i17 == 2) {
                            uArr2[i9] = new q((F0.g) this.f2474d0.get(cVar.f2444d), ((R0.c) tVar2).m().a(), this.f2472b0.f3017d);
                        }
                    }
                } else {
                    i9 = i16;
                    iArr2 = iArr3;
                    uArr2 = uArr3;
                    if (u11 instanceof P0.m) {
                        ((p) ((P0.m) u11).x()).c(tVar2);
                    }
                }
            }
            i16 = i9 + 1;
            uArr3 = uArr2;
            iArr3 = iArr2;
            i8 = -1;
            i12 = 0;
            tVarArr2 = tVarArr;
        }
        int[] iArr5 = iArr3;
        U[] uArr4 = uArr3;
        int i20 = 0;
        while (i20 < tVarArr.length) {
            if (uArr4[i20] != null || tVarArr[i20] == null) {
                iArr = iArr5;
            } else {
                iArr = iArr5;
                c cVar2 = this.f2461Q[iArr[i20]];
                if (cVar2.f2443c == 1) {
                    int iD2 = d(iArr, i20);
                    if (iD2 == -1) {
                        uArr4[i20] = new C0289m();
                    } else {
                        uArr4[i20] = ((P0.m) uArr4[iD2]).E(cVar2.f2442b, j8);
                    }
                }
                i20++;
                iArr5 = iArr;
            }
            i20++;
            iArr5 = iArr;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (U u12 : uArr4) {
            if (u12 instanceof P0.m) {
                arrayList2.add((P0.m) u12);
            } else if (u12 instanceof q) {
                arrayList3.add((q) u12);
            }
        }
        P0.m[] mVarArr = new P0.m[arrayList2.size()];
        this.f2469Y = mVarArr;
        arrayList2.toArray(mVarArr);
        q[] qVarArr = new q[arrayList3.size()];
        this.f2470Z = qVarArr;
        arrayList3.toArray(qVarArr);
        U4.b bVar = this.f2462R;
        AbstractList abstractListI = p113o3.r.i(new C0083h(4), arrayList2);
        bVar.getClass();
        this.f2471a0 = U4.b.N(arrayList2, abstractListI);
        if (this.f2475e0) {
            this.f2475e0 = false;
            this.f2476f0 = j8;
        }
        return j8;
    }

    @Override // O0.InterfaceC0298w
    public final void m(InterfaceC0297v interfaceC0297v, long j8) {
        this.f2468X = interfaceC0297v;
        interfaceC0297v.t(this);
    }

    @Override // O0.InterfaceC0298w
    public final long q() {
        for (P0.m mVar : this.f2469Y) {
            mVar.getClass();
            try {
                boolean z7 = mVar.f5758c0;
                mVar.f5758c0 = false;
                if (z7) {
                    return this.f2476f0;
                }
            } catch (Throwable th) {
                mVar.f5758c0 = false;
                throw th;
            }
        }
        return -9223372036854775807L;
    }

    @Override // O0.V
    public final void r(W w7) {
        this.f2468X.r(this);
    }

    @Override // O0.InterfaceC0298w
    public final Z s() {
        return this.f2460P;
    }

    @Override // O0.W
    public final long u() {
        return this.f2471a0.u();
    }

    @Override // O0.InterfaceC0298w
    public final void v(long j8, boolean z7) {
        long j9;
        for (P0.m mVar : this.f2469Y) {
            if (!mVar.A()) {
                T t7 = mVar.f5748S;
                int i8 = t7.f5155q;
                t7.j(j8, z7, true);
                T t8 = mVar.f5748S;
                int i9 = t8.f5155q;
                if (i9 > i8) {
                    synchronized (t8) {
                        j9 = t8.f5154p == 0 ? Long.MIN_VALUE : t8.f5152n[t8.f5156r];
                    }
                    int i10 = 0;
                    while (true) {
                        T[] tArr = mVar.f5749T;
                        if (i10 >= tArr.length) {
                            break;
                        }
                        tArr[i10].j(j9, z7, mVar.f5739J[i10]);
                        i10++;
                    }
                }
                int iMin = Math.min(mVar.C(i9, 0), mVar.f5756a0);
                if (iMin > 0) {
                    M.W(0, iMin, mVar.f5746Q);
                    mVar.f5756a0 -= iMin;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x008e  */
    @Override // O0.W
    public final void w(long j8) {
        int i8;
        P0.m[] mVarArr = this.f2469Y;
        int length = mVarArr.length;
        int i9 = 0;
        while (i9 < length) {
            P0.m mVar = mVarArr[i9];
            if (mVar.f5744O.e()) {
                i8 = i9;
            } else {
                long jD = this.f2472b0.d(this.f2473c0);
                H1.i(!mVar.f5744O.e());
                if (mVar.A() || jD == -9223372036854775807L || mVar.f5746Q.isEmpty()) {
                    i8 = i9;
                } else {
                    P0.a aVarY = mVar.y();
                    long j9 = aVarY.f5696R;
                    if (j9 == -9223372036854775807L) {
                        j9 = aVarY.f5727N;
                    }
                    if (j9 <= jD) {
                        i8 = i9;
                    } else {
                        T t7 = mVar.f5748S;
                        long jQ = t7.q();
                        if (jQ <= jD) {
                            i8 = i9;
                        } else {
                            t7.l(Math.max(jD, t7.r() + 1));
                            T[] tArr = mVar.f5749T;
                            int length2 = tArr.length;
                            int i10 = 0;
                            while (i10 < length2) {
                                T t8 = tArr[i10];
                                t8.l(Math.max(jD, t8.r() + 1));
                                i10++;
                                i9 = i9;
                            }
                            i8 = i9;
                            mVar.f5742M.h(mVar.f5736G, jD, jQ);
                        }
                    }
                }
            }
            i9 = i8 + 1;
        }
        this.f2471a0.w(j8);
    }
}
