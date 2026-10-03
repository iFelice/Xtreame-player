package A1;

import W0.C0373f;
import W0.C0374g;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p094m0.P;
import p117p0.AbstractC3164b;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class F implements W0.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p117p0.E f282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseIntArray f283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0032g f284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p126q1.k f285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SparseArray f286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SparseBooleanArray f287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SparseBooleanArray f288j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final D f289k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public p010b1.a f290l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public W0.u f291m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f292n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f293o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f294p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f295q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public J f296r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f297s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f298t;

    public F(int i8, int i9, p126q1.k kVar, p117p0.J j8, C0032g c0032g) {
        this.f284f = c0032g;
        this.f279a = i8;
        this.f280b = i9;
        this.f285g = kVar;
        if (i8 == 1 || i8 == 2) {
            this.f281c = Collections.singletonList(j8);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f281c = arrayList;
            arrayList.add(j8);
        }
        this.f282d = new p117p0.E(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f287i = sparseBooleanArray;
        this.f288j = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f286h = sparseArray;
        this.f283e = new SparseIntArray();
        this.f289k = new D();
        this.f291m = W0.u.f7457l;
        this.f298t = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i10 = 0; i10 < size; i10++) {
            sparseArray.put(sparseArray2.keyAt(i10), (J) sparseArray2.valueAt(i10));
        }
        sparseArray.put(0, new C(new x0(this)));
        this.f296r = null;
    }

    @Override // W0.s
    public final void d(W0.u uVar) {
        if ((this.f280b & 1) == 0) {
            uVar = new p126q1.n(uVar, this.f285g);
        }
        this.f291m = uVar;
    }

    @Override // W0.s
    public final boolean g(W0.t tVar) {
        byte[] bArr = this.f282d.f28035a;
        tVar.c(0, bArr, 940);
        for (int i8 = 0; i8 < 188; i8++) {
            int i9 = 0;
            while (true) {
                if (i9 >= 5) {
                    tVar.n(i8);
                    return true;
                }
                if (bArr[(i9 * 188) + i8] != 71) {
                    break;
                }
                i9++;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    @Override // W0.s
    public final int h(W0.t tVar, W0.w wVar) throws P {
        ?? r7;
        ?? r8;
        int i8;
        int i9;
        boolean z7;
        long jD;
        int i10;
        long j8;
        long j9 = tVar.j();
        int i11 = this.f279a;
        boolean z8 = i11 == 2;
        if (this.f293o) {
            D d6 = this.f289k;
            if (j9 != -1 && !z8 && !d6.f268d) {
                int i12 = this.f298t;
                if (i12 > 0) {
                    boolean z9 = d6.f270f;
                    p117p0.E e8 = d6.f267c;
                    int i13 = d6.f265a;
                    if (!z9) {
                        long j10 = tVar.j();
                        int iMin = (int) Math.min(i13, j10);
                        long j11 = j10 - ((long) iMin);
                        if (tVar.r() != j11) {
                            wVar.f7458a = j11;
                            i10 = 1;
                        } else {
                            e8.I(iMin);
                            tVar.m();
                            tVar.c(0, e8.f28035a, iMin);
                            int i14 = e8.f28036b;
                            int i15 = e8.f28037c;
                            int i16 = i15 - 188;
                            while (true) {
                                if (i16 < i14) {
                                    j8 = -9223372036854775807L;
                                    break;
                                }
                                byte[] bArr = e8.f28035a;
                                int i17 = 0;
                                for (int i18 = -4; i18 <= 4; i18++) {
                                    int i19 = (i18 * 188) + i16;
                                    if (i19 >= i14 && i19 < i15 && bArr[i19] == 71) {
                                        i17++;
                                        if (i17 == 5) {
                                            long jD2 = AbstractC3164b.D(i16, i12, e8);
                                            if (jD2 == -9223372036854775807L) {
                                                break;
                                            }
                                            j8 = jD2;
                                            break;
                                        }
                                    } else {
                                        i17 = 0;
                                    }
                                }
                                i16--;
                            }
                            d6.f272h = j8;
                            d6.f270f = true;
                            i10 = 0;
                        }
                    } else if (d6.f272h == -9223372036854775807L) {
                        d6.a(tVar);
                    } else if (d6.f269e) {
                        long j12 = d6.f271g;
                        if (j12 == -9223372036854775807L) {
                            d6.a(tVar);
                        } else {
                            p117p0.J j13 = d6.f266b;
                            d6.f273i = j13.c(d6.f272h) - j13.b(j12);
                            d6.a(tVar);
                        }
                    } else {
                        int iMin2 = (int) Math.min(i13, tVar.j());
                        long j14 = 0;
                        if (tVar.r() != j14) {
                            wVar.f7458a = j14;
                            i10 = 1;
                        } else {
                            e8.I(iMin2);
                            tVar.m();
                            tVar.c(0, e8.f28035a, iMin2);
                            int i20 = e8.f28036b;
                            int i21 = e8.f28037c;
                            while (true) {
                                if (i20 >= i21) {
                                    jD = -9223372036854775807L;
                                    break;
                                }
                                if (e8.f28035a[i20] == 71) {
                                    jD = AbstractC3164b.D(i20, i12, e8);
                                    if (jD != -9223372036854775807L) {
                                        break;
                                    }
                                }
                                i20++;
                            }
                            d6.f271g = jD;
                            d6.f269e = true;
                            i10 = 0;
                        }
                    }
                    return i10;
                }
                d6.a(tVar);
                return 0;
            }
            if (!this.f294p) {
                this.f294p = true;
                long j15 = d6.f273i;
                if (j15 != -9223372036854775807L) {
                    p010b1.a aVar = new p010b1.a(new F2.G(0), new p016c.g(this.f298t, d6.f266b, 112800), j15, j15 + 1, 0L, j9, 188L, 940);
                    this.f290l = aVar;
                    this.f291m.r((C0373f) aVar.f7425b);
                } else {
                    this.f291m.r(new W0.x(j15));
                }
            }
            if (this.f295q) {
                z7 = false;
                this.f295q = false;
                i(0L, 0L);
                if (tVar.r() != 0) {
                    wVar.f7458a = 0L;
                    return 1;
                }
            } else {
                z7 = false;
            }
            r8 = 1;
            r8 = 1;
            p010b1.a aVar2 = this.f290l;
            r7 = z7;
            if (aVar2 != null && ((C0374g) aVar2.f7427d) != null) {
                r7 = z7;
                return aVar2.a(tVar, wVar);
            }
        } else {
            i11 = i11;
            r7 = 0;
            r8 = 1;
        }
        r7 = z7;
        p117p0.E e9 = this.f282d;
        byte[] bArr2 = e9.f28035a;
        if (9400 - e9.f28036b < 188) {
            int iA = e9.a();
            if (iA > 0) {
                System.arraycopy(bArr2, e9.f28036b, bArr2, r7, iA);
            }
            e9.J(iA, bArr2);
        }
        while (true) {
            int iA2 = e9.a();
            SparseArray sparseArray = this.f286h;
            if (iA2 >= 188) {
                int i22 = e9.f28036b;
                int i23 = e9.f28037c;
                byte[] bArr3 = e9.f28035a;
                int i24 = i22;
                while (i24 < i23 && bArr3[i24] != 71) {
                    i24++;
                }
                e9.L(i24);
                int i25 = i24 + 188;
                if (i25 > i23) {
                    int i26 = (i24 - i22) + this.f297s;
                    this.f297s = i26;
                    i8 = i11;
                    i9 = 2;
                    if (i8 == 2 && i26 > 376) {
                        throw P.a("Cannot find sync byte. Most likely not a Transport Stream.", null);
                    }
                } else {
                    i8 = i11;
                    i9 = 2;
                    this.f297s = r7;
                }
                int i27 = e9.f28037c;
                if (i25 > i27) {
                    return r7;
                }
                int iL = e9.l();
                if ((8388608 & iL) != 0) {
                    e9.L(i25);
                    return r7;
                }
                int i28 = (4194304 & iL) != 0 ? 1 : 0;
                int i29 = (2096896 & iL) >> 8;
                boolean z10 = (iL & 32) != 0;
                J j16 = (iL & 16) != 0 ? (J) sparseArray.get(i29) : null;
                if (j16 == null) {
                    e9.L(i25);
                    return r7;
                }
                if (i8 != i9) {
                    int i30 = iL & 15;
                    SparseIntArray sparseIntArray = this.f283e;
                    int i31 = sparseIntArray.get(i29, i30 - 1);
                    sparseIntArray.put(i29, i30);
                    if (i31 == i30) {
                        e9.L(i25);
                        return r7;
                    }
                    if (i30 != ((i31 + r8) & 15)) {
                        j16.a();
                    }
                }
                if (z10) {
                    int iZ = e9.z();
                    i28 |= (e9.z() & 64) != 0 ? 2 : 0;
                    e9.M(iZ - r8);
                }
                boolean z11 = this.f293o;
                if (i8 == i9 || z11 || !this.f288j.get(i29, r7)) {
                    e9.K(i25);
                    j16.b(i28, e9);
                    e9.K(i27);
                }
                if (i8 != i9 && !z11 && this.f293o && j9 != -1) {
                    this.f295q = r8;
                }
                e9.L(i25);
                return r7;
            }
            int i32 = e9.f28037c;
            int iQ = tVar.q(bArr2, i32, 9400 - i32);
            if (iQ == -1) {
                for (int i33 = 0; i33 < sparseArray.size(); i33++) {
                    J j17 = (J) sparseArray.valueAt(i33);
                    if (j17 instanceof y) {
                        y yVar = (y) j17;
                        boolean z12 = !z8 || yVar.e();
                        if (yVar.f601c == 3 && yVar.f608j == -1 && ((!z8 || !(yVar.f599a instanceof l)) && z12)) {
                            yVar.b(r8, new p117p0.E());
                        }
                    }
                }
                return -1;
            }
            e9.K(i32 + iQ);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    @Override // W0.s
    public final void i(long j8, long j9) {
        p010b1.a aVar;
        H1.i(this.f279a != 2);
        List list = this.f281c;
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            p117p0.J j10 = (p117p0.J) list.get(i8);
            boolean z7 = j10.e() == -9223372036854775807L;
            if (!z7) {
                long jD = j10.d();
                if (jD != -9223372036854775807L && jD != 0 && jD != j9) {
                    j10.g(j9);
                }
            } else if (z7) {
                j10.g(j9);
            }
        }
        if (j9 != 0 && (aVar = this.f290l) != null) {
            aVar.d(j9);
        }
        this.f282d.I(0);
        this.f283e.clear();
        int i9 = 0;
        while (true) {
            SparseArray sparseArray = this.f286h;
            if (i9 >= sparseArray.size()) {
                this.f297s = 0;
                return;
            } else {
                ((J) sparseArray.valueAt(i9)).a();
                i9++;
            }
        }
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = z4.H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final W0.s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
