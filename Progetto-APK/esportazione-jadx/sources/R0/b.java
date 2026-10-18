package R0;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.TreeMap;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.G;
import p117p0.InterfaceC3168f;
import p117p0.M;
import z4.C3251o;
import z4.E;
import z4.H;
import z4.Y;
import z4.Z;
import z4.b0;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class b extends c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final S0.c f6110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f6111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f6112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f6113j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6114k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f6115l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f6116m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f6117n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final H f6118o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final InterfaceC3168f f6119p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f6120q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6121r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6122s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f6123t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public P0.p f6124u;

    public b(g0 g0Var, int[] iArr, int i8, S0.c cVar, long j8, long j9, long j10, int i9, int i10, float f8, float f9, H h8, InterfaceC3168f interfaceC3168f) {
        long j11;
        super(g0Var, iArr);
        if (j10 < j8) {
            p117p0.x.f("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j11 = j8;
        } else {
            j11 = j10;
        }
        this.f6110g = cVar;
        this.f6111h = j8 * 1000;
        this.f6112i = j9 * 1000;
        this.f6113j = j11 * 1000;
        this.f6114k = i9;
        this.f6115l = i10;
        this.f6116m = f8;
        this.f6117n = f9;
        this.f6118o = H.s(h8);
        this.f6119p = interfaceC3168f;
        this.f6120q = 1.0f;
        this.f6122s = 0;
        this.f6123t = -9223372036854775807L;
    }

    public static d0 r(r[] rVarArr) {
        int i8;
        long j8;
        int i9;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            i8 = 1;
            if (i10 >= rVarArr.length) {
                break;
            }
            r rVar = rVarArr[i10];
            if (rVar == null || rVar.f6242b.length <= 1) {
                arrayList.add(null);
            } else {
                E eQ = H.q();
                eQ.i0(new a(0L, 0L));
                arrayList.add(eQ);
            }
            i10++;
        }
        int length = rVarArr.length;
        long[][] jArr = new long[length][];
        int i11 = 0;
        while (true) {
            j8 = -1;
            if (i11 >= rVarArr.length) {
                break;
            }
            r rVar2 = rVarArr[i11];
            if (rVar2 == null) {
                jArr[i11] = new long[0];
            } else {
                int[] iArr = rVar2.f6242b;
                jArr[i11] = new long[iArr.length];
                for (int i12 = 0; i12 < iArr.length; i12++) {
                    long j9 = rVar2.f6241a.f26860d[iArr[i12]].f27036j;
                    long[] jArr2 = jArr[i11];
                    if (j9 == -1) {
                        j9 = 0;
                    }
                    jArr2[i12] = j9;
                }
                Arrays.sort(jArr[i11]);
            }
            i11++;
        }
        int[] iArr2 = new int[length];
        long[] jArr3 = new long[length];
        for (int i13 = 0; i13 < length; i13++) {
            long[] jArr4 = jArr[i13];
            jArr3[i13] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        s(arrayList, jArr3);
        b0 b0Var = b0.f31836G;
        b0Var.getClass();
        Cw.g(2, "expectedValuesPerKey");
        TreeMap treeMap = new TreeMap(b0Var);
        Y y7 = new Y(2);
        Z z7 = new Z(treeMap);
        z7.f31831L = y7;
        int i14 = 0;
        while (i14 < length) {
            long[] jArr5 = jArr[i14];
            if (jArr5.length <= i8) {
                i9 = length;
            } else {
                int length2 = jArr5.length;
                double[] dArr = new double[length2];
                int i15 = 0;
                while (true) {
                    long[] jArr6 = jArr[i14];
                    double dLog = 0.0d;
                    if (i15 >= jArr6.length) {
                        break;
                    }
                    int i16 = length;
                    long j10 = jArr6[i15];
                    if (j10 != j8) {
                        dLog = Math.log(j10);
                    }
                    dArr[i15] = dLog;
                    i15++;
                    length = i16;
                }
                i9 = length;
                int i17 = length2 - 1;
                double d6 = dArr[i17] - dArr[0];
                int i18 = 0;
                while (i18 < i17) {
                    double d8 = dArr[i18];
                    i18++;
                    Double dValueOf = Double.valueOf(d6 == 0.0d ? 1.0d : (((d8 + dArr[i18]) * 0.5d) - dArr[0]) / d6);
                    Integer numValueOf = Integer.valueOf(i14);
                    Collection collection = (Collection) z7.f31837J.get(dValueOf);
                    if (collection == null) {
                        Collection collectionD = z7.d();
                        if (!collectionD.add(numValueOf)) {
                            throw new AssertionError("New Collection violated the Collection spec");
                        }
                        z7.f31838K++;
                        z7.f31837J.put(dValueOf, collectionD);
                    } else if (collection.add(numValueOf)) {
                        z7.f31838K++;
                    }
                }
            }
            i14++;
            length = i9;
            i8 = 1;
            j8 = -1;
        }
        C3251o c3251o = z7.f31891H;
        if (c3251o == null) {
            c3251o = new C3251o(z7, 0);
            z7.f31891H = c3251o;
        }
        H hS = H.s(c3251o);
        for (int i19 = 0; i19 < hS.size(); i19++) {
            int iIntValue = ((Integer) hS.get(i19)).intValue();
            int i20 = iArr2[iIntValue] + 1;
            iArr2[iIntValue] = i20;
            jArr3[iIntValue] = jArr[iIntValue][i20];
            s(arrayList, jArr3);
        }
        for (int i21 = 0; i21 < rVarArr.length; i21++) {
            if (arrayList.get(i21) != null) {
                jArr3[i21] = jArr3[i21] * 2;
            }
        }
        s(arrayList, jArr3);
        E eQ2 = H.q();
        for (int i22 = 0; i22 < arrayList.size(); i22++) {
            E e8 = (E) arrayList.get(i22);
            eQ2.i0(e8 == null ? H.w() : e8.m0());
        }
        return eQ2.m0();
    }

    public static void s(ArrayList arrayList, long[] jArr) {
        long j8 = 0;
        for (long j9 : jArr) {
            j8 += j9;
        }
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            E e8 = (E) arrayList.get(i8);
            if (e8 != null) {
                e8.g0(new a(j8, jArr[i8]));
            }
        }
    }

    public static long u(List list) {
        if (list.isEmpty()) {
            return -9223372036854775807L;
        }
        P0.p pVar = (P0.p) p190y4.k.G(list);
        long j8 = pVar.f5726M;
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j9 = pVar.f5727N;
        if (j9 != -9223372036854775807L) {
            return j9 - j8;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0049  */
    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0093  */
    /* JADX WARN: Code duplicated, block: B:34:0x0097  */
    /* JADX WARN: Code duplicated, block: B:35:0x009a  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bd  */
    @Override // R0.t
    public final void a(long j8, long j9, List list, P0.q[] qVarArr) {
        long jU;
        long jT;
        long jQ;
        int i8;
        int i9;
        int iO;
        int iT;
        long jMin;
        int i10;
        int i11;
        long j10;
        ((G) this.f6119p).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i12 = this.f6121r;
        if (i12 >= qVarArr.length || !qVarArr[i12].next()) {
            int length = qVarArr.length;
            int i13 = 0;
            while (true) {
                if (i13 >= length) {
                    jU = u(list);
                    break;
                }
                P0.q qVar = qVarArr[i13];
                if (qVar.next()) {
                    jT = qVar.t();
                    jQ = qVar.q();
                } else {
                    i13++;
                }
            }
            i8 = this.f6122s;
            if (i8 == 0) {
                this.f6122s = 1;
                this.f6121r = t(jElapsedRealtime);
                return;
            }
            i9 = this.f6121r;
            if (list.isEmpty()) {
                iO = -1;
            } else {
                iO = o(((P0.p) p190y4.k.G(list)).f5723J);
            }
            if (iO != -1) {
                i8 = ((P0.p) p190y4.k.G(list)).f5724K;
                i9 = iO;
            }
            iT = t(jElapsedRealtime);
            if (iT != i9 && !p(i9, jElapsedRealtime)) {
                C3136t[] c3136tArr = this.f6128d;
                C3136t c3136t = c3136tArr[i9];
                C3136t c3136t2 = c3136tArr[iT];
                jMin = this.f6111h;
                if (j9 != -9223372036854775807L) {
                    if (jU != -9223372036854775807L) {
                        j10 = j9 - jU;
                    } else {
                        j10 = j9;
                    }
                    jMin = Math.min((long) (j10 * this.f6117n), jMin);
                }
                i10 = c3136t2.f27036j;
                i11 = c3136t.f27036j;
                if ((i10 <= i11 && j8 < jMin) || (i10 < i11 && j8 >= this.f6112i)) {
                }
            }
            if (iT != i9) {
                i8 = 3;
            }
            this.f6122s = i8;
            this.f6121r = iT;
        }
        P0.q qVar2 = qVarArr[this.f6121r];
        jT = qVar2.t();
        jQ = qVar2.q();
        jU = jT - jQ;
        i8 = this.f6122s;
        if (i8 == 0) {
            this.f6122s = 1;
            this.f6121r = t(jElapsedRealtime);
            return;
        }
        i9 = this.f6121r;
        if (list.isEmpty()) {
            iO = -1;
        } else {
            iO = o(((P0.p) p190y4.k.G(list)).f5723J);
        }
        if (iO != -1) {
            i8 = ((P0.p) p190y4.k.G(list)).f5724K;
            i9 = iO;
        }
        iT = t(jElapsedRealtime);
        if (iT != i9) {
            C3136t[] c3136tArr2 = this.f6128d;
            C3136t c3136t3 = c3136tArr2[i9];
            C3136t c3136t4 = c3136tArr2[iT];
            jMin = this.f6111h;
            if (j9 != -9223372036854775807L) {
                if (jU != -9223372036854775807L) {
                    j10 = j9 - jU;
                } else {
                    j10 = j9;
                }
                jMin = Math.min((long) (j10 * this.f6117n), jMin);
            }
            i10 = c3136t4.f27036j;
            i11 = c3136t3.f27036j;
            iT = i10 <= i11 ? i9 : i9;
        }
        if (iT != i9) {
            i8 = 3;
        }
        this.f6122s = i8;
        this.f6121r = iT;
    }

    @Override // R0.t
    public final int b() {
        return this.f6121r;
    }

    @Override // R0.c, R0.t
    public final void c() {
        this.f6123t = -9223372036854775807L;
        this.f6124u = null;
    }

    @Override // R0.c, R0.t
    public final int d(long j8, List list) {
        int i8;
        int i9;
        ((G) this.f6119p).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j9 = this.f6123t;
        if (j9 != -9223372036854775807L && jElapsedRealtime - j9 < 1000 && (list.isEmpty() || ((P0.p) p190y4.k.G(list)).equals(this.f6124u))) {
            return list.size();
        }
        this.f6123t = jElapsedRealtime;
        this.f6124u = list.isEmpty() ? null : (P0.p) p190y4.k.G(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jC = M.C(((P0.p) list.get(size - 1)).f5726M - j8, this.f6120q);
        long j10 = this.f6113j;
        if (jC < j10) {
            return size;
        }
        u(list);
        C3136t c3136t = this.f6128d[t(jElapsedRealtime)];
        for (int i10 = 0; i10 < size; i10++) {
            P0.p pVar = (P0.p) list.get(i10);
            C3136t c3136t2 = pVar.f5723J;
            if (M.C(pVar.f5726M - j8, this.f6120q) >= j10 && c3136t2.f27036j < c3136t.f27036j && (i8 = c3136t2.f27049w) != -1 && i8 <= this.f6115l && (i9 = c3136t2.f27048v) != -1 && i9 <= this.f6114k && i8 < c3136t.f27049w) {
                return i10;
            }
        }
        return size;
    }

    @Override // R0.c, R0.t
    public final void e() {
        this.f6124u = null;
    }

    @Override // R0.t
    public final int f() {
        return this.f6122s;
    }

    @Override // R0.c, R0.t
    public final void g(float f8) {
        this.f6120q = f8;
    }

    @Override // R0.t
    public final Object h() {
        return null;
    }

    public final int t(long j8) {
        long j9;
        S0.f fVar = (S0.f) this.f6110g;
        synchronized (fVar) {
            j9 = fVar.f6347l;
        }
        long j10 = (long) (j9 * this.f6116m);
        this.f6110g.getClass();
        long j11 = (long) (j10 / this.f6120q);
        if (!this.f6118o.isEmpty()) {
            int i8 = 1;
            while (i8 < this.f6118o.size() - 1 && ((a) this.f6118o.get(i8)).f6108a < j11) {
                i8++;
            }
            a aVar = (a) this.f6118o.get(i8 - 1);
            a aVar2 = (a) this.f6118o.get(i8);
            long j12 = aVar.f6108a;
            float f8 = (j11 - j12) / (aVar2.f6108a - j12);
            long j13 = aVar.f6109b;
            j11 = j13 + ((long) (f8 * (aVar2.f6109b - j13)));
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.f6126b; i10++) {
            if (j8 == Long.MIN_VALUE || !p(i10, j8)) {
                if (j(i10).f27036j <= j11) {
                    return i10;
                }
                i9 = i10;
            }
        }
        return i9;
    }
}
