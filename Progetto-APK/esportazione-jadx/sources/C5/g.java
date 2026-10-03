package C5;

import java.util.Map;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f1654b = {6, 8, 10, 12, 14};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1655c = {1, 1, 1, 1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f1656d = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[][] f1657e = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1658a = -1;

    public static int i(int[] iArr) throws p130q5.i {
        float f8 = 0.38f;
        int i8 = -1;
        for (int i9 = 0; i9 < 20; i9++) {
            float f9 = j.f(iArr, f1657e[i9], 0.5f);
            if (f9 < f8) {
                i8 = i9;
                f8 = f9;
            } else if (f9 == f8) {
                i8 = -1;
            }
        }
        if (i8 >= 0) {
            return i8 % 10;
        }
        throw p130q5.i.f29623I;
    }

    public static int[] j(int i8, p176w5.a aVar, int[] iArr) throws p130q5.i {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i9 = aVar.f31090H;
        int i10 = i8;
        boolean z7 = false;
        int i11 = 0;
        while (i8 < i9) {
            if (aVar.d(i8) != z7) {
                iArr2[i11] = iArr2[i11] + 1;
            } else {
                if (i11 != length - 1) {
                    i11++;
                } else {
                    if (j.f(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i10, i8};
                    }
                    i10 += iArr2[0] + iArr2[1];
                    int i12 = i11 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i12);
                    iArr2[i12] = 0;
                    iArr2[i11] = 0;
                    i11--;
                }
                iArr2[i11] = 1;
                z7 = !z7;
            }
            i8++;
        }
        throw p130q5.i.f29623I;
    }

    @Override // C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) throws p130q5.i, p130q5.e {
        int[] iArrJ;
        int[] iArr;
        int length;
        int length2;
        int i9;
        int i10;
        boolean z7;
        int i11 = 0;
        int i12 = aVar.f31090H;
        int iE = aVar.e(0);
        if (iE == i12) {
            throw p130q5.i.f29623I;
        }
        int[] iArrJ2 = j(iE, aVar, f1655c);
        int i13 = iArrJ2[1];
        int i14 = iArrJ2[0];
        this.f1658a = (i13 - i14) / 4;
        k(i14, aVar);
        int[][] iArr2 = f1656d;
        aVar.i();
        try {
            int i15 = aVar.f31090H;
            int iE2 = aVar.e(0);
            if (iE2 == i15) {
                throw p130q5.i.f29623I;
            }
            try {
                iArrJ = j(iE2, aVar, iArr2[0]);
                while (true) {
                    if (i9 >= length2) {
                        z7 = false;
                        break;
                    }
                    int i16 = iArr[i9];
                    if (length == i16) {
                        z7 = true;
                        break;
                    }
                    if (i16 > i10) {
                        i10 = i16;
                    }
                    i9++;
                }
            } catch (p130q5.i unused) {
                iArrJ = j(iE2, aVar, iArr2[1]);
            }
            k(iArrJ[0], aVar);
            int i17 = iArrJ[0];
            int i18 = aVar.f31090H;
            iArrJ[0] = i18 - iArrJ[1];
            iArrJ[1] = i18 - i17;
            aVar.i();
            StringBuilder sb = new StringBuilder(20);
            int i19 = iArrJ2[1];
            int i20 = iArrJ[0];
            int[] iArr3 = new int[10];
            int[] iArr4 = new int[5];
            int[] iArr5 = new int[5];
            while (i19 < i20) {
                j.g(i19, aVar, iArr3);
                while (i11 < 5) {
                    int i21 = i11 * 2;
                    iArr4[i11] = iArr3[i21];
                    iArr5[i11] = iArr3[i21 + 1];
                    i11++;
                }
                sb.append((char) (i(iArr4) + 48));
                sb.append((char) (i(iArr5) + 48));
                for (int i22 = 0; i22 < 10; i22++) {
                    i19 += iArr3[i22];
                }
                i11 = 0;
            }
            String string = sb.toString();
            iArr = map != null ? (int[]) map.get(p130q5.c.f29601L) : null;
            if (iArr == null) {
                iArr = f1654b;
            }
            length = string.length();
            length2 = iArr.length;
            i9 = 0;
            i10 = 0;
            if ((z7 || length <= i10) && !z7) {
                throw p130q5.e.a();
            }
            float f8 = i8;
            return new p130q5.m(string, null, new o[]{new o(iArrJ2[1], f8), new o(iArrJ[0], f8)}, p130q5.a.f29586O);
        } catch (Throwable th) {
            aVar.i();
            throw th;
        }
    }

    public final void k(int i8, p176w5.a aVar) throws p130q5.i {
        int iMin = Math.min(this.f1658a * 10, i8);
        for (int i9 = i8 - 1; iMin > 0 && i9 >= 0 && !aVar.d(i9); i9--) {
            iMin--;
        }
        if (iMin != 0) {
            throw p130q5.i.f29623I;
        }
    }
}
