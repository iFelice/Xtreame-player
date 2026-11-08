package A1;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class E implements B {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p117p0.D f274G = new p117p0.D(new byte[5], 0, (Object) null);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final SparseArray f275H = new SparseArray();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SparseIntArray f276I = new SparseIntArray();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f277J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ F f278K;

    public E(F f8, int i8) {
        this.f278K = f8;
        this.f277J = i8;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0130  */
    @Override // A1.B
    public final void b(p117p0.E e8) {
        p117p0.J j8;
        SparseBooleanArray sparseBooleanArray;
        SparseArray sparseArray;
        p117p0.J j9;
        int i8;
        int i9;
        if (e8.z() != 2) {
            return;
        }
        F f8 = this.f278K;
        int i10 = f8.f279a;
        int i11 = 0;
        List list = f8.f281c;
        if (i10 == 1 || i10 == 2 || f8.f292n == 1) {
            j8 = (p117p0.J) list.get(0);
        } else {
            j8 = new p117p0.J(((p117p0.J) list.get(0)).d());
            list.add(j8);
        }
        if ((e8.z() & 128) == 0) {
            return;
        }
        e8.M(1);
        int iF = e8.F();
        int i12 = 3;
        e8.M(3);
        p117p0.D d6 = this.f274G;
        e8.j(0, d6.f28028b, 2);
        d6.r(0);
        d6.u(3);
        f8.f298t = d6.i(13);
        e8.j(0, d6.f28028b, 2);
        d6.r(0);
        d6.u(4);
        e8.M(d6.i(12));
        C0032g c0032g = f8.f284f;
        int i13 = f8.f279a;
        if (i13 == 2 && f8.f296r == null) {
            J jB = c0032g.b(21, new H(21, null, 0, null, M.f28051b));
            f8.f296r = jB;
            if (jB != null) {
                jB.d(j8, f8.f291m, new I(iF, 21, 8192, 0));
            }
        }
        SparseArray sparseArray2 = this.f275H;
        sparseArray2.clear();
        SparseIntArray sparseIntArray = this.f276I;
        sparseIntArray.clear();
        int iA = e8.a();
        while (true) {
            sparseBooleanArray = f8.f287i;
            if (iA <= 0) {
                break;
            }
            e8.j(i11, d6.f28028b, 5);
            d6.r(i11);
            int i14 = d6.i(8);
            d6.u(i12);
            int i15 = d6.i(13);
            d6.u(4);
            int i16 = d6.i(12);
            int i17 = e8.f28036b;
            int i18 = i17 + i16;
            int i19 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            int iZ = 0;
            p117p0.D d8 = d6;
            while (e8.f28036b < i18) {
                int iZ2 = e8.z();
                int iZ3 = e8.f28036b + e8.z();
                if (iZ3 > i18) {
                    break;
                }
                p117p0.J j10 = j8;
                if (iZ2 == 5) {
                    long jB2 = e8.B();
                    if (jB2 == 1094921523) {
                        i19 = 129;
                    } else if (jB2 == 1161904947) {
                        i19 = 135;
                    } else if (jB2 == 1094921524) {
                        i19 = 172;
                    } else if (jB2 == 1212503619) {
                        i19 = 36;
                    }
                } else if (iZ2 == 106) {
                    sparseArray2 = sparseArray2;
                    iF = iF;
                    i15 = i15;
                    i19 = 129;
                } else if (iZ2 == 122) {
                    sparseArray2 = sparseArray2;
                    iF = iF;
                    i15 = i15;
                    i19 = 135;
                } else if (iZ2 == 127) {
                    int iZ4 = e8.z();
                    if (iZ4 == 21) {
                        i19 = 172;
                    } else if (iZ4 == 14) {
                        i19 = 136;
                    } else if (iZ4 == 33) {
                        i19 = 139;
                    }
                } else if (iZ2 == 123) {
                    sparseArray2 = sparseArray2;
                    iF = iF;
                    i15 = i15;
                    i19 = 138;
                } else if (iZ2 == 10) {
                    strTrim = e8.x(3, StandardCharsets.UTF_8).trim();
                    iZ = e8.z();
                } else if (iZ2 == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (e8.f28036b < iZ3) {
                        String strTrim2 = e8.x(3, StandardCharsets.UTF_8).trim();
                        e8.z();
                        SparseArray sparseArray3 = sparseArray2;
                        byte[] bArr = new byte[4];
                        e8.j(0, bArr, 4);
                        arrayList2.add(new G(strTrim2, bArr));
                        sparseArray2 = sparseArray3;
                        iF = iF;
                        i15 = i15;
                    }
                    sparseArray2 = sparseArray2;
                    iF = iF;
                    i15 = i15;
                    arrayList = arrayList2;
                    i19 = 89;
                } else {
                    sparseArray2 = sparseArray2;
                    iF = iF;
                    i15 = i15;
                    if (iZ2 == 111) {
                        i19 = 257;
                    }
                }
                e8.M(iZ3 - e8.f28036b);
                sparseArray2 = sparseArray2;
                j8 = j10;
                iF = iF;
                i15 = i15;
            }
            SparseArray sparseArray4 = sparseArray2;
            p117p0.J j11 = j8;
            int i20 = iF;
            int i21 = i15;
            e8.L(i18);
            H h8 = new H(i19, strTrim, iZ, arrayList, Arrays.copyOfRange(e8.f28035a, i17, i18));
            if (i14 == 6 || i14 == 5) {
                i14 = i19;
            }
            iA -= i16 + 5;
            int i22 = i13 == 2 ? i14 : i21;
            if (sparseBooleanArray.get(i22)) {
                sparseArray2 = sparseArray4;
            } else {
                J jB3 = (i13 == 2 && i14 == 21) ? f8.f296r : c0032g.b(i14, h8);
                if (i13 == 2) {
                    i9 = i21;
                    if (i9 >= sparseIntArray.get(i22, 8192)) {
                        sparseArray2 = sparseArray4;
                    }
                } else {
                    i9 = i21;
                }
                sparseIntArray.put(i22, i9);
                sparseArray2 = sparseArray4;
                sparseArray2.put(i22, jB3);
            }
            d6 = d8;
            j8 = j11;
            iF = i20;
            i11 = 0;
            i12 = 3;
        }
        p117p0.J j12 = j8;
        int i23 = iF;
        int size = sparseIntArray.size();
        int i24 = 0;
        while (true) {
            sparseArray = f8.f286h;
            if (i24 >= size) {
                break;
            }
            int iKeyAt = sparseIntArray.keyAt(i24);
            int iValueAt = sparseIntArray.valueAt(i24);
            sparseBooleanArray.put(iKeyAt, true);
            f8.f288j.put(iValueAt, true);
            J j13 = (J) sparseArray2.valueAt(i24);
            if (j13 != null) {
                if (j13 != f8.f296r) {
                    W0.u uVar = f8.f291m;
                    i8 = i23;
                    I i25 = new I(i8, iKeyAt, 8192, 0);
                    j9 = j12;
                    j13.d(j9, uVar, i25);
                } else {
                    j9 = j12;
                    i8 = i23;
                }
                sparseArray.put(iValueAt, j13);
            } else {
                j9 = j12;
                i8 = i23;
            }
            i24++;
            j12 = j9;
            i23 = i8;
        }
        if (i13 == 2) {
            if (!f8.f293o) {
                f8.f291m.j();
                f8.f292n = 0;
                f8.f293o = true;
            }
            return;
        }
        sparseArray.remove(this.f277J);
        int i26 = i13 == 1 ? 0 : f8.f292n - 1;
        f8.f292n = i26;
        if (i26 == 0) {
            f8.f291m.j();
            f8.f293o = true;
        }
    }

    @Override // A1.B
    public final void d(p117p0.J j8, W0.u uVar, I i8) {
    }
}
