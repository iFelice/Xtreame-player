package com.google.android.gms.internal.ads;

import W0.C0374g;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class X2 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f17365b = new C1534jr(new byte[9400], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseIntArray f17366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final I2.c f17367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final V1 f17368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseArray f17369f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SparseBooleanArray f17370g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SparseBooleanArray f17371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final R2 f17372i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p010b1.a f17373j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public N f17374k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17375l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17376m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17377n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f17378o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f17379p;

    public X2(C1561kH c1561kH, Ys ys, I2.c cVar) {
        this.f17367d = cVar;
        this.f17368e = c1561kH;
        this.f17364a = Collections.singletonList(ys);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f17370g = sparseBooleanArray;
        this.f17371h = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f17369f = sparseArray;
        this.f17366c = new SparseIntArray();
        this.f17372i = new R2();
        this.f17374k = N.f14836n;
        this.f17379p = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i8 = 0; i8 < size; i8++) {
            this.f17369f.put(sparseArray2.keyAt(i8), (InterfaceC1031a3) sparseArray2.valueAt(i8));
        }
        this.f17369f.put(0, new V2(new C2218x(this)));
    }

    /* JADX WARN: Code duplicated, block: B:151:0x029e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v2 */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) {
        ?? r7;
        ?? r8;
        long j8;
        boolean z7;
        long jX;
        long j9;
        long jZzd = m7.zzd();
        int i8 = 1;
        if (this.f17376m) {
            R2 r9 = this.f17372i;
            if (jZzd != -1 && !r9.f16199d) {
                int i9 = this.f17379p;
                if (i9 <= 0) {
                    r9.f(m7);
                    return 0;
                }
                boolean z8 = r9.f16201f;
                Object obj = r9.f16198c;
                if (!z8) {
                    long jZzd2 = m7.zzd();
                    int iMin = (int) Math.min(112800L, jZzd2);
                    long j10 = jZzd2 - ((long) iMin);
                    if (m7.zzf() != j10) {
                        wVar.f7458a = j10;
                    } else {
                        C1534jr c1534jr = (C1534jr) obj;
                        c1534jr.g(iMin);
                        m7.zzj();
                        m7.g(0, c1534jr.f19515a, iMin);
                        int i10 = c1534jr.f19516b;
                        int i11 = c1534jr.f19517c;
                        int i12 = i11 - 188;
                        while (true) {
                            if (i12 < i10) {
                                j9 = -9223372036854775807L;
                                break;
                            }
                            byte[] bArr = c1534jr.f19515a;
                            int i13 = 0;
                            for (int i14 = -4; i14 <= 4; i14++) {
                                int i15 = (i14 * 188) + i12;
                                if (i15 >= i10 && i15 < i11 && bArr[i15] == 71) {
                                    i13++;
                                    if (i13 == 5) {
                                        long jX2 = S3.e.x(c1534jr, i12, i9);
                                        if (jX2 == -9223372036854775807L) {
                                            break;
                                        }
                                        j9 = jX2;
                                        break;
                                    }
                                } else {
                                    i13 = 0;
                                }
                            }
                            i12--;
                        }
                        r9.f16203h = j9;
                        r9.f16201f = true;
                        i8 = 0;
                    }
                } else {
                    if (r9.f16203h == -9223372036854775807L) {
                        r9.f(m7);
                        return 0;
                    }
                    if (r9.f16200e) {
                        long j11 = r9.f16202g;
                        if (j11 == -9223372036854775807L) {
                            r9.f(m7);
                            return 0;
                        }
                        Ys ys = (Ys) r9.f16197b;
                        r9.f16204i = ys.c(r9.f16203h) - ys.b(j11);
                        r9.f(m7);
                        return 0;
                    }
                    int iMin2 = (int) Math.min(112800L, m7.zzd());
                    if (m7.zzf() != 0) {
                        wVar.f7458a = 0L;
                    } else {
                        C1534jr c1534jr2 = (C1534jr) obj;
                        c1534jr2.g(iMin2);
                        m7.zzj();
                        m7.g(0, c1534jr2.f19515a, iMin2);
                        int i16 = c1534jr2.f19516b;
                        int i17 = c1534jr2.f19517c;
                        while (true) {
                            if (i16 >= i17) {
                                jX = -9223372036854775807L;
                                break;
                            }
                            if (c1534jr2.f19515a[i16] == 71) {
                                jX = S3.e.x(c1534jr2, i16, i9);
                                if (jX != -9223372036854775807L) {
                                    break;
                                }
                            }
                            i16++;
                        }
                        r9.f16202g = jX;
                        r9.f16200e = true;
                        i8 = 0;
                    }
                }
                return i8;
            }
            if (this.f17377n) {
                j8 = 0;
            } else {
                this.f17377n = true;
                if (r9.d() != -9223372036854775807L) {
                    Ys ys2 = (Ys) r9.f16197b;
                    long jD = r9.d();
                    p010b1.a aVar = new p010b1.a(new C1561kH(2), new C1294f8(this.f17379p, ys2), jD, jD + 1, 0L, jZzd, 188L, 940);
                    this.f17373j = aVar;
                    this.f17374k.g((A) aVar.f7425b);
                    j8 = 0;
                } else {
                    j8 = 0;
                    this.f17374k.g(new P(r9.d(), 0L));
                }
            }
            if (this.f17378o) {
                z7 = false;
                this.f17378o = false;
                e(j8, j8);
                if (m7.zzf() != j8) {
                    wVar.f7458a = j8;
                    return 1;
                }
            } else {
                z7 = false;
            }
            r8 = 1;
            r8 = 1;
            p010b1.a aVar2 = this.f17373j;
            r7 = z7;
            if (aVar2 != null && ((C0374g) aVar2.f7427d) != null) {
                r7 = z7;
                return aVar2.e(m7, wVar);
            }
        } else {
            r7 = 0;
            r8 = 1;
        }
        r7 = z7;
        C1534jr c1534jr3 = this.f17365b;
        byte[] bArr2 = c1534jr3.f19515a;
        if (9400 - c1534jr3.f19516b < 188) {
            int iO = c1534jr3.o();
            if (iO > 0) {
                System.arraycopy(bArr2, c1534jr3.f19516b, bArr2, r7, iO);
            }
            c1534jr3.h(iO, bArr2);
        }
        while (true) {
            int iO2 = c1534jr3.o();
            SparseArray sparseArray = this.f17369f;
            if (iO2 >= 188) {
                int i18 = c1534jr3.f19516b;
                int i19 = c1534jr3.f19517c;
                byte[] bArr3 = c1534jr3.f19515a;
                while (i18 < i19 && bArr3[i18] != 71) {
                    i18++;
                }
                c1534jr3.j(i18);
                int i20 = i18 + 188;
                int i21 = c1534jr3.f19517c;
                if (i20 > i21) {
                    return r7;
                }
                int iR = c1534jr3.r();
                if ((8388608 & iR) != 0) {
                    c1534jr3.j(i20);
                    return r7;
                }
                int i22 = (4194304 & iR) != 0 ? 1 : 0;
                int i23 = iR & 32;
                int i24 = (iR >> 8) & 8191;
                InterfaceC1031a3 interfaceC1031a3 = (iR & 16) != 0 ? (InterfaceC1031a3) sparseArray.get(i24) : null;
                if (interfaceC1031a3 == null) {
                    c1534jr3.j(i20);
                    return r7;
                }
                int i25 = iR & 15;
                SparseIntArray sparseIntArray = this.f17366c;
                int i26 = sparseIntArray.get(i24, i25 - 1);
                sparseIntArray.put(i24, i25);
                if (i26 == i25) {
                    c1534jr3.j(i20);
                    return r7;
                }
                if (i25 != ((i26 + r8) & 15)) {
                    interfaceC1031a3.zzc();
                }
                if (i23 != 0) {
                    int iW = c1534jr3.w();
                    i22 |= (c1534jr3.w() & 64) != 0 ? 2 : 0;
                    c1534jr3.k(iW - 1);
                }
                boolean z9 = this.f17376m;
                if (z9 || !this.f17371h.get(i24, r7)) {
                    c1534jr3.i(i20);
                    interfaceC1031a3.b(i22, c1534jr3);
                    c1534jr3.i(i21);
                    if (!z9) {
                        if (this.f17376m && jZzd != -1) {
                            this.f17378o = r8;
                        }
                    }
                } else if (this.f17376m) {
                    this.f17378o = r8;
                }
                c1534jr3.j(i20);
                return r7;
            }
            int i27 = c1534jr3.f19517c;
            int iE = m7.e(bArr2, i27, 9400 - i27);
            if (iE == -1) {
                for (int i28 = 0; i28 < sparseArray.size(); i28++) {
                    InterfaceC1031a3 interfaceC1031a4 = (InterfaceC1031a3) sparseArray.valueAt(i28);
                    if (interfaceC1031a4 instanceof Q2) {
                        Q2 q7 = (Q2) interfaceC1031a4;
                        if (q7.f15548c == 3 && q7.f15555j == -1) {
                            q7.b(r8, new C1534jr());
                        }
                    }
                }
                return -1;
            }
            c1534jr3.i(i27 + iE);
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        byte[] bArr = this.f17365b.f19515a;
        F f8 = (F) m7;
        f8.d(bArr, 0, 940, false);
        for (int i8 = 0; i8 < 188; i8++) {
            int i9 = 0;
            while (true) {
                if (i9 >= 5) {
                    f8.j(i8);
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

    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        p010b1.a aVar;
        List list = this.f17364a;
        int size = list.size();
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            Ys ys = (Ys) list.get(i9);
            if (ys.e() != -9223372036854775807L) {
                long jD = ys.d();
                if (jD != -9223372036854775807L && jD != 0 && jD != j9) {
                    ys.f(j9);
                }
            } else {
                ys.f(j9);
            }
        }
        if (j9 != 0 && (aVar = this.f17373j) != null) {
            aVar.f(j9);
        }
        this.f17365b.g(0);
        this.f17366c.clear();
        while (true) {
            SparseArray sparseArray = this.f17369f;
            if (i8 >= sparseArray.size()) {
                return;
            }
            ((InterfaceC1031a3) sparseArray.valueAt(i8)).zzc();
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f17374k = new X1(n7, this.f17368e);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
