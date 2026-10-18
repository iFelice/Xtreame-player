package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1258eO extends AbstractC1310fO {
    public C1258eO(C0961Ve c0961Ve, int i8) {
        super(c0961Ve, new int[]{i8});
    }

    public static /* bridge */ /* synthetic */ PA a(C2035tO[] c2035tOArr) {
        int i8;
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        char c8 = 0;
        int i9 = 0;
        while (true) {
            if (i9 >= 2) {
                break;
            }
            C2035tO c2035tO = c2035tOArr[i9];
            if (c2035tO == null || c2035tO.f21076b.length <= 1) {
                arrayList.add(null);
            } else {
                C1917rA c1917rA = new C1917rA();
                c1917rA.g(new C1207dO(0L, 0L));
                arrayList.add(c1917rA);
            }
            i9++;
        }
        long[][] jArr = new long[2][];
        for (int i10 = 0; i10 < 2; i10++) {
            C2035tO c2035tO2 = c2035tOArr[i10];
            if (c2035tO2 == null) {
                jArr[i10] = new long[0];
            } else {
                int[] iArr2 = c2035tO2.f21076b;
                jArr[i10] = new long[iArr2.length];
                for (int i11 = 0; i11 < iArr2.length; i11++) {
                    long j8 = c2035tO2.f21075a.a(iArr2[i11]).f20379i;
                    long[] jArr2 = jArr[i10];
                    if (j8 == -1) {
                        j8 = 0;
                    }
                    jArr2[i11] = j8;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        int[] iArr3 = new int[2];
        long[] jArr3 = new long[2];
        for (int i12 = 0; i12 < 2; i12++) {
            long[] jArr4 = jArr[i12];
            jArr3[i12] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        b(arrayList, jArr3);
        LA laK = S3.e.A(OA.a()).l0().K();
        int i13 = 0;
        for (i8 = 2; i13 < i8; i8 = 2) {
            int length = jArr[i13].length;
            if (length <= 1) {
                iArr = iArr3;
            } else {
                double[] dArr = new double[length];
                int i14 = 0;
                while (true) {
                    long[] jArr5 = jArr[i13];
                    double dLog = 0.0d;
                    if (i14 >= jArr5.length) {
                        break;
                    }
                    int[] iArr4 = iArr3;
                    long j9 = jArr5[i14];
                    if (j9 != -1) {
                        dLog = Math.log(j9);
                    }
                    dArr[i14] = dLog;
                    i14++;
                    iArr3 = iArr4;
                }
                iArr = iArr3;
                int i15 = length - 1;
                double d6 = dArr[i15] - dArr[c8];
                int i16 = 0;
                while (i16 < i15) {
                    double d8 = dArr[i16];
                    i16++;
                    laK.d(Double.valueOf(d6 == 0.0d ? 1.0d : (((d8 + dArr[i16]) * 0.5d) - dArr[c8]) / d6), Integer.valueOf(i13));
                    c8 = 0;
                }
            }
            i13++;
            iArr3 = iArr;
            c8 = 0;
        }
        int[] iArr5 = iArr3;
        AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(laK.a());
        for (int i17 = 0; i17 < abstractC2073uAT.size(); i17++) {
            int iIntValue = ((Integer) abstractC2073uAT.get(i17)).intValue();
            int i18 = iArr5[iIntValue] + 1;
            iArr5[iIntValue] = i18;
            jArr3[iIntValue] = jArr[iIntValue][i18];
            b(arrayList, jArr3);
        }
        for (int i19 = 0; i19 < 2; i19++) {
            if (arrayList.get(i19) != null) {
                long j10 = jArr3[i19];
                jArr3[i19] = j10 + j10;
            }
        }
        b(arrayList, jArr3);
        C1917rA c1917rA2 = new C1917rA();
        for (int i20 = 0; i20 < arrayList.size(); i20++) {
            C1917rA c1917rA3 = (C1917rA) arrayList.get(i20);
            c1917rA2.g(c1917rA3 == null ? AbstractC2073uA.v() : c1917rA3.h());
        }
        return c1917rA2.h();
    }

    public static void b(ArrayList arrayList, long[] jArr) {
        long j8 = 0;
        for (int i8 = 0; i8 < 2; i8++) {
            j8 += jArr[i8];
        }
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            C1917rA c1917rA = (C1917rA) arrayList.get(i9);
            if (c1917rA != null) {
                c1917rA.b(new C1207dO(j8, jArr[i9]));
            }
        }
    }
}
