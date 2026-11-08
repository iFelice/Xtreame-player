package J5;

import java.util.ArrayList;
import java.util.Arrays;
import p130q5.o;
import p176w5.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4193a = {0, 4, 1, 5};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f4194b = {6, 2, 7, 3};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f4195c = {8, 1, 1, 1, 1, 1, 1, 3};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4196d = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    public static ArrayList a(b bVar) {
        int i8;
        int i9;
        ArrayList arrayList = new ArrayList();
        int i10 = bVar.f31092H;
        if (i10 > 0) {
            o[] oVarArr = new o[8];
            int[] iArr = f4195c;
            int i11 = bVar.f31091G;
            o[] oVarArrC = c(bVar, i10, i11, 0, 0, iArr);
            int[] iArr2 = f4193a;
            for (int i12 = 0; i12 < 4; i12++) {
                oVarArr[iArr2[i12]] = oVarArrC[i12];
            }
            o oVar = oVarArr[4];
            if (oVar != null) {
                int i13 = (int) oVar.f29645a;
                i8 = (int) oVar.f29646b;
                i9 = i13;
            } else {
                i8 = 0;
                i9 = 0;
            }
            o[] oVarArrC2 = c(bVar, i10, i11, i8, i9, f4196d);
            int[] iArr3 = f4194b;
            for (int i14 = 0; i14 < 4; i14++) {
                oVarArr[iArr3[i14]] = oVarArrC2[i14];
            }
            if (oVarArr[0] != null || oVarArr[3] != null) {
                arrayList.add(oVarArr);
            }
        }
        return arrayList;
    }

    public static int[] b(b bVar, int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i11 = 0;
        while (bVar.b(i8, i9) && i8 > 0) {
            int i12 = i11 + 1;
            if (i11 >= 3) {
                break;
            }
            i8--;
            i11 = i12;
        }
        int length = iArr.length;
        int i13 = i8;
        int i14 = 0;
        boolean z7 = false;
        while (i8 < i10) {
            if (bVar.b(i8, i9) != z7) {
                iArr2[i14] = iArr2[i14] + 1;
            } else {
                if (i14 != length - 1) {
                    i14++;
                } else {
                    if (d(iArr2, iArr) < 0.42f) {
                        return new int[]{i13, i8};
                    }
                    i13 += iArr2[0] + iArr2[1];
                    int i15 = i14 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i15);
                    iArr2[i15] = 0;
                    iArr2[i14] = 0;
                    i14--;
                }
                iArr2[i14] = 1;
                z7 = !z7;
            }
            i8++;
        }
        if (i14 != length - 1 || d(iArr2, iArr) >= 0.42f) {
            return null;
        }
        return new int[]{i13, i8 - 1};
    }

    public static o[] c(b bVar, int i8, int i9, int i10, int i11, int[] iArr) {
        boolean z7;
        o[] oVarArr = new o[4];
        int[] iArr2 = new int[iArr.length];
        int i12 = i10;
        while (true) {
            if (i12 >= i8) {
                z7 = false;
                break;
            }
            int[] iArrB = b(bVar, i11, i12, i9, iArr, iArr2);
            if (iArrB != null) {
                int i13 = i12;
                int[] iArr3 = iArrB;
                while (i13 > 0) {
                    int i14 = i13 - 1;
                    int[] iArrB2 = b(bVar, i11, i14, i9, iArr, iArr2);
                    if (iArrB2 == null) {
                        break;
                    }
                    iArr3 = iArrB2;
                    i13 = i14;
                }
                float f8 = i13;
                oVarArr[0] = new o(iArr3[0], f8);
                oVarArr[1] = new o(iArr3[1], f8);
                i12 = i13;
                z7 = true;
                break;
            }
            i12 += 5;
        }
        int i15 = i12 + 1;
        if (z7) {
            int[] iArr4 = {(int) oVarArr[0].f29645a, (int) oVarArr[1].f29645a};
            int i16 = i15;
            int i17 = 0;
            while (i16 < i8) {
                int[] iArrB3 = b(bVar, iArr4[0], i16, i9, iArr, iArr2);
                if (iArrB3 != null && Math.abs(iArr4[0] - iArrB3[0]) < 5 && Math.abs(iArr4[1] - iArrB3[1]) < 5) {
                    iArr4 = iArrB3;
                    i17 = 0;
                } else {
                    if (i17 > 25) {
                        break;
                    }
                    i17++;
                }
                i16++;
            }
            i15 = i16 - (i17 + 1);
            float f9 = i15;
            oVarArr[2] = new o(iArr4[0], f9);
            oVarArr[3] = new o(iArr4[1], f9);
        }
        if (i15 - i12 < 10) {
            Arrays.fill(oVarArr, (Object) null);
        }
        return oVarArr;
    }

    public static float d(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            i8 += iArr[i10];
            i9 += iArr2[i10];
        }
        if (i8 < i9) {
            return Float.POSITIVE_INFINITY;
        }
        float f8 = i8;
        float f9 = f8 / i9;
        float f10 = 0.8f * f9;
        float f11 = 0.0f;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            float f12 = iArr2[i11] * f9;
            float f13 = i12;
            float f14 = f13 > f12 ? f13 - f12 : f12 - f13;
            if (f14 > f10) {
                return Float.POSITIVE_INFINITY;
            }
            f11 += f14;
        }
        return f11 / f8;
    }
}
