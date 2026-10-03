package com.google.android.gms.internal.ads;

import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2008sy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f21015a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f21016b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f21017c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int[] f21018d = new int[10];

    public static int a(byte[] bArr, int i8, int i9, boolean[] zArr) {
        int i10 = i9 - i8;
        p113o3.r.M(i10 >= 0);
        if (i10 == 0) {
            return i9;
        }
        if (zArr[0]) {
            g(zArr);
            return i8 - 3;
        }
        if (i10 > 1 && zArr[1] && bArr[i8] == 1) {
            g(zArr);
            return i8 - 2;
        }
        if (i10 > 2 && zArr[2] && bArr[i8] == 0 && bArr[i8 + 1] == 1) {
            g(zArr);
            return i8 - 1;
        }
        int i11 = i9 - 1;
        int i12 = i8 + 2;
        while (i12 < i11) {
            byte b8 = bArr[i12];
            if ((b8 & 254) == 0) {
                int i13 = i12 - 2;
                if (bArr[i13] == 0 && bArr[i12 - 1] == 0 && b8 == 1) {
                    g(zArr);
                    return i13;
                }
                i12 = i13;
            }
            i12 += 3;
        }
        zArr[0] = i10 <= 2 ? !(i10 != 2 ? !(zArr[1] && bArr[i11] == 1) : !(zArr[2] && bArr[i9 + (-2)] == 0 && bArr[i11] == 1)) : bArr[i9 + (-3)] == 0 && bArr[i9 + (-2)] == 0 && bArr[i11] == 1;
        zArr[1] = i10 <= 1 ? zArr[2] && bArr[i11] == 0 : bArr[i9 + (-2)] == 0 && bArr[i11] == 0;
        zArr[2] = bArr[i11] == 0;
        return i9;
    }

    public static int b(byte[] bArr, int i8) {
        int i9;
        synchronized (f21017c) {
            int i10 = 0;
            int i11 = 0;
            while (i10 < i8) {
                while (true) {
                    try {
                        if (i10 >= i8 - 2) {
                            i10 = i8;
                            break;
                        }
                        int i12 = i10 + 1;
                        if (bArr[i10] == 0 && bArr[i12] == 0 && bArr[i10 + 2] == 3) {
                            break;
                        }
                        i10 = i12;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i10 < i8) {
                    int[] iArr = f21018d;
                    int length = iArr.length;
                    if (length <= i11) {
                        f21018d = Arrays.copyOf(iArr, length + length);
                    }
                    f21018d[i11] = i10;
                    i10 += 3;
                    i11++;
                }
            }
            i9 = i8 - i11;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i11; i15++) {
                int i16 = f21018d[i15] - i13;
                System.arraycopy(bArr, i13, bArr, i14, i16);
                int i17 = i14 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i14 = i17 + 2;
                bArr[i18] = 0;
                i13 += i16 + 3;
            }
            System.arraycopy(bArr, i13, bArr, i14, i9 - i14);
        }
        return i9;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004c  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ae  */
    public static Sw c(byte[] bArr, int i8, int i9, Ex ex) {
        boolean z7;
        int i10;
        int i11;
        int i12;
        int iE;
        int iE2;
        int i13;
        int i14;
        int i15;
        int iA;
        float f8;
        int i16;
        int iB;
        C1333fw c1333fw;
        int i17;
        C1333fw c1333fw2;
        N.r rVarI = i(new C1286f0(bArr, i8, i9));
        C1286f0 c1286f0 = new C1286f0(bArr, i8 + 2, i9);
        c1286f0.m(4);
        int iB2 = c1286f0.b(3);
        if (rVarI.f4920I == 0 || iB2 != 7) {
            z7 = false;
        } else {
            iB2 = 7;
            z7 = true;
        }
        if (ex != null) {
            AbstractC2073uA abstractC2073uA = ex.f13251a;
            if (abstractC2073uA.isEmpty()) {
                i10 = 0;
            } else {
                i10 = ((Fv) abstractC2073uA.get(Math.min(rVarI.f4920I, abstractC2073uA.size() - 1))).f13437a;
            }
        } else {
            i10 = 0;
        }
        Wv wvJ = null;
        if (!z7) {
            c1286f0.k();
            wvJ = j(c1286f0, true, iB2, null);
        } else if (ex != null) {
            C1333fw c1333fw3 = ex.f13252b;
            int i18 = c1333fw3.f18849b[i10];
            AbstractC2073uA abstractC2073uA2 = c1333fw3.f18848a;
            if (abstractC2073uA2.size() > i18) {
                wvJ = (Wv) abstractC2073uA2.get(i18);
            }
        }
        Wv wv = wvJ;
        c1286f0.e();
        if (z7) {
            int iB3 = c1286f0.p() ? c1286f0.b(8) : -1;
            if (ex == null || (c1333fw2 = ex.f13253c) == null) {
                iE2 = 0;
                iE = 0;
                i11 = 0;
                i12 = 0;
            } else {
                if (iB3 == -1) {
                    iB3 = c1333fw2.f18849b[i10];
                }
                if (iB3 != -1) {
                    AbstractC2073uA abstractC2073uA3 = c1333fw2.f18848a;
                    if (abstractC2073uA3.size() > iB3) {
                        C1903qw c1903qw = (C1903qw) abstractC2073uA3.get(iB3);
                        int i19 = c1903qw.f20654a;
                        int i20 = c1903qw.f20657d;
                        i11 = c1903qw.f20658e;
                        i12 = i20;
                        iE = c1903qw.f20655b;
                        iE2 = c1903qw.f20656c;
                    } else {
                        iE2 = 0;
                        iE = 0;
                        i11 = 0;
                        i12 = 0;
                    }
                } else {
                    iE2 = 0;
                    iE = 0;
                    i11 = 0;
                    i12 = 0;
                }
            }
        } else {
            int iE3 = c1286f0.e();
            if (iE3 == 3) {
                c1286f0.k();
                iE3 = 3;
            }
            int iE4 = c1286f0.e();
            int iE5 = c1286f0.e();
            if (c1286f0.p()) {
                int iE6 = c1286f0.e();
                int iE7 = c1286f0.e();
                int iE8 = c1286f0.e();
                int iE9 = c1286f0.e();
                iE4 -= (iE6 + iE7) * ((iE3 == 1 || iE3 == 2) ? 2 : 1);
                iE5 -= (iE8 + iE9) * (iE3 == 1 ? 2 : 1);
            }
            i11 = iE5;
            i12 = iE4;
            iE = c1286f0.e();
            iE2 = c1286f0.e();
        }
        int iE10 = c1286f0.e();
        if (z7) {
            i13 = -1;
        } else {
            int iMax = -1;
            for (int i21 = true != c1286f0.p() ? iB2 : 0; i21 <= iB2; i21++) {
                c1286f0.e();
                iMax = Math.max(c1286f0.e(), iMax);
                c1286f0.e();
            }
            i13 = iMax;
        }
        c1286f0.e();
        c1286f0.e();
        c1286f0.e();
        c1286f0.e();
        c1286f0.e();
        c1286f0.e();
        if (c1286f0.p()) {
            if (z7 && c1286f0.p()) {
                c1286f0.m(6);
            } else if (c1286f0.p()) {
                int i22 = 0;
                while (i22 < 4) {
                    for (int i23 = 0; i23 < 6; i23 += i22 == 3 ? 3 : 1) {
                        if (c1286f0.p()) {
                            int iMin = Math.min(64, 1 << ((i22 + i22) + 4));
                            if (i22 > 1) {
                                c1286f0.c();
                            }
                            for (int i24 = 0; i24 < iMin; i24++) {
                                c1286f0.c();
                            }
                        } else {
                            c1286f0.e();
                        }
                    }
                    i22++;
                }
            }
        }
        c1286f0.m(2);
        if (c1286f0.p()) {
            c1286f0.m(8);
            c1286f0.e();
            c1286f0.e();
            c1286f0.k();
        }
        int iE11 = c1286f0.e();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i25 = -1;
        int i26 = 0;
        int i27 = -1;
        while (i26 < iE11) {
            if (i26 == 0 || !c1286f0.p()) {
                int iE12 = c1286f0.e();
                int iE13 = c1286f0.e();
                int[] iArr2 = new int[iE12];
                int i28 = 0;
                while (i28 < iE12) {
                    iArr2[i28] = (i28 > 0 ? iArr2[i28 - 1] : 0) - (c1286f0.e() + 1);
                    c1286f0.k();
                    i28++;
                }
                int[] iArr3 = new int[iE13];
                int i29 = 0;
                while (i29 < iE13) {
                    iArr3[i29] = c1286f0.e() + 1 + (i29 > 0 ? iArr3[i29 - 1] : 0);
                    c1286f0.k();
                    i29++;
                }
                i27 = iE12;
                iArrCopyOf = iArr3;
                iArr = iArr2;
                i25 = iE13;
            } else {
                int i30 = i27 + i25;
                boolean zP = c1286f0.p();
                int iE14 = c1286f0.e() + 1;
                int i31 = 1 - ((zP ? 1 : 0) + (zP ? 1 : 0));
                int i32 = i30 + 1;
                boolean[] zArr = new boolean[i32];
                for (int i33 = 0; i33 <= i30; i33++) {
                    if (c1286f0.p()) {
                        zArr[i33] = true;
                    } else {
                        zArr[i33] = c1286f0.p();
                    }
                }
                int i34 = i25 - 1;
                int[] iArr4 = new int[i32];
                int[] iArr5 = new int[i32];
                int i35 = 0;
                while (true) {
                    i17 = i31 * iE14;
                    if (i34 < 0) {
                        break;
                    }
                    int i36 = iArrCopyOf[i34] + i17;
                    if (i36 < 0 && zArr[i27 + i34]) {
                        iArr4[i35] = i36;
                        i35++;
                    }
                    i34--;
                }
                if (i17 < 0 && zArr[i30]) {
                    iArr4[i35] = i17;
                    i35++;
                }
                int i37 = i35;
                for (int i38 = 0; i38 < i27; i38++) {
                    int i39 = iArr[i38] + i17;
                    if (i39 < 0 && zArr[i38]) {
                        iArr4[i37] = i39;
                        i37++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i37);
                int i40 = 0;
                for (int i41 = i27 - 1; i41 >= 0; i41--) {
                    int i42 = iArr[i41] + i17;
                    if (i42 > 0 && zArr[i41]) {
                        iArr5[i40] = i42;
                        i40++;
                    }
                }
                if (i17 > 0 && zArr[i30]) {
                    iArr5[i40] = i17;
                    i40++;
                }
                int i43 = i40;
                for (int i44 = 0; i44 < i25; i44++) {
                    int i45 = iArrCopyOf[i44] + i17;
                    if (i45 > 0 && zArr[i27 + i44]) {
                        iArr5[i43] = i45;
                        i43++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i43);
                i25 = i43;
                iArr = iArrCopyOf2;
                i27 = i37;
            }
            i26++;
            iE = iE;
            wv = wv;
            iE11 = iE11;
            iE2 = iE2;
        }
        int i46 = iE2;
        Wv wv2 = wv;
        int i47 = iE;
        if (c1286f0.p()) {
            int iE15 = c1286f0.e();
            for (int i48 = 0; i48 < iE15; i48++) {
                c1286f0.m(iE10 + 5);
            }
        }
        c1286f0.m(2);
        float f9 = 1.0f;
        if (c1286f0.p()) {
            if (c1286f0.p()) {
                int iB4 = c1286f0.b(8);
                if (iB4 == 255) {
                    int iB5 = c1286f0.b(16);
                    int iB6 = c1286f0.b(16);
                    if (iB5 != 0 && iB6 != 0) {
                        f9 = iB5 / iB6;
                    }
                } else if (iB4 < 17) {
                    f9 = f21016b[iB4];
                } else {
                    p000a.r.p("Unexpected aspect_ratio_idc value: ", iB4, "NalUnitUtil");
                }
            }
            if (c1286f0.p()) {
                c1286f0.k();
            }
            if (c1286f0.p()) {
                c1286f0.m(3);
                i15 = true != c1286f0.p() ? 2 : 1;
                if (c1286f0.p()) {
                    int iB7 = c1286f0.b(8);
                    int iB8 = c1286f0.b(8);
                    c1286f0.m(8);
                    iA = C1928rL.a(iB7);
                    iB = C1928rL.b(iB8);
                } else {
                    iB = -1;
                    iA = -1;
                }
            } else {
                if (ex != null && (c1333fw = ex.f13254d) != null) {
                    int i49 = c1333fw.f18849b[i10];
                    AbstractC2073uA abstractC2073uA4 = c1333fw.f18848a;
                    if (abstractC2073uA4.size() > i49) {
                        C1386gx c1386gx = (C1386gx) abstractC2073uA4.get(i49);
                        iA = c1386gx.f19026a;
                        int i50 = c1386gx.f19027b;
                        iB = c1386gx.f19028c;
                        i15 = i50;
                    }
                }
                iB = -1;
                i15 = -1;
                iA = -1;
            }
            if (c1286f0.p()) {
                c1286f0.e();
                c1286f0.e();
            }
            c1286f0.k();
            if (c1286f0.p()) {
                i11 += i11;
            }
            i16 = iB;
            f8 = f9;
            i14 = i11;
        } else {
            i14 = i11;
            i15 = -1;
            iA = -1;
            f8 = 1.0f;
            i16 = -1;
        }
        return new Sw(wv2, i47, i46, i12, i14, f8, i13, iA, i15, i16);
    }

    /* JADX WARN: Code duplicated, block: B:363:0x06a7  */
    /* JADX WARN: Code duplicated, block: B:366:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:368:0x06b2  */
    /* JADX WARN: Code duplicated, block: B:450:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:537:0x06b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0106  */
    /* JADX WARN: Code duplicated, block: B:65:0x011d  */
    /* JADX WARN: Code duplicated, block: B:69:0x012f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0134  */
    /* JADX WARN: Code duplicated, block: B:73:0x013c  */
    /* JADX WARN: Multi-variable type inference failed */
    public static Ex d(int i8, byte[] bArr, int i9) {
        int i10;
        C1333fw c1333fw;
        boolean z7;
        int iB;
        int i11;
        int i12;
        int i13;
        int iB2;
        int iB3;
        int iB4;
        int i14;
        int i15;
        int i16;
        boolean[][] zArr;
        int i17;
        int i18;
        boolean[][] zArr2;
        int[] iArr;
        int i19;
        int i20;
        boolean z8;
        boolean zP;
        int i21;
        int i22;
        int i23;
        int iE;
        int i24;
        int i25;
        int i26;
        boolean z9;
        boolean z10;
        C1286f0 c1286f0 = new C1286f0(bArr, i8, i9);
        i(c1286f0);
        c1286f0.m(4);
        boolean zP2 = c1286f0.p();
        boolean zP3 = c1286f0.p();
        int iB5 = c1286f0.b(6);
        int i27 = iB5 + 1;
        int iB6 = c1286f0.b(3);
        c1286f0.m(17);
        int i28 = 1;
        Wv wvJ = j(c1286f0, true, iB6, null);
        int i29 = 0;
        for (int i30 = true != c1286f0.p() ? iB6 : 0; i30 <= iB6; i30++) {
            c1286f0.e();
            c1286f0.e();
            c1286f0.e();
        }
        int iB7 = c1286f0.b(6);
        int iE2 = c1286f0.e() + 1;
        C1333fw c1333fw2 = new C1333fw(AbstractC2073uA.w(wvJ), new int[1], 0);
        boolean z11 = i27 >= 2 && iE2 >= 2;
        boolean z12 = zP2 && zP3;
        int i31 = iB7 + 1;
        if (!z11 || !z12 || i31 < i27) {
            return new Ex(null, c1333fw2, null, null);
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iE2, i31);
        int[] iArr3 = new int[iE2];
        int[] iArr4 = new int[iE2];
        iArr2[0][0] = 0;
        iArr3[0] = 1;
        iArr4[0] = 0;
        while (i28 < iE2) {
            int i32 = 0;
            while (i29 <= iB7) {
                if (c1286f0.p()) {
                    iArr2[i28][i32] = i29;
                    iArr4[i28] = i29;
                    i32++;
                }
                iArr3[i28] = i32;
                i29++;
            }
            i28++;
            i29 = 0;
        }
        int i33 = 8;
        if (c1286f0.p()) {
            c1286f0.m(64);
            if (c1286f0.p()) {
                c1286f0.e();
            }
            int iE3 = c1286f0.e();
            int i34 = 0;
            while (i34 < iE3) {
                c1286f0.e();
                if (i34 == 0 || c1286f0.p()) {
                    boolean zP4 = c1286f0.p();
                    boolean zP5 = c1286f0.p();
                    z10 = zP4;
                    z9 = zP5;
                    if (zP4 || zP5) {
                        zP = c1286f0.p();
                        if (zP) {
                            c1286f0.m(19);
                        }
                        c1286f0.m(i33);
                        if (zP) {
                            c1286f0.m(4);
                        }
                        c1286f0.m(15);
                        i22 = zP4;
                        i21 = zP5;
                    }
                    i23 = 0;
                    while (i23 <= iB6) {
                        if (!c1286f0.p() || c1286f0.p()) {
                            c1286f0.e();
                        } else {
                            if (c1286f0.p()) {
                                iE = 0;
                            }
                            i24 = i22 + i21;
                            int[] iArr5 = iArr4;
                            i25 = 0;
                            while (i25 < i24) {
                                int i35 = i24;
                                for (i26 = 0; i26 <= iE; i26++) {
                                    c1286f0.e();
                                    c1286f0.e();
                                    if (zP) {
                                        c1286f0.e();
                                        c1286f0.e();
                                    }
                                    c1286f0.k();
                                }
                                i25++;
                                i24 = i35;
                            }
                            i23++;
                            iE3 = iE3;
                            iArr4 = iArr5;
                        }
                        iE = c1286f0.e();
                        i24 = i22 + i21;
                        int[] iArr6 = iArr4;
                        i25 = 0;
                        while (i25 < i24) {
                            int i36 = i24;
                            while (i26 <= iE) {
                                c1286f0.e();
                                c1286f0.e();
                                if (zP) {
                                    c1286f0.e();
                                    c1286f0.e();
                                }
                                c1286f0.k();
                            }
                            i25++;
                            i24 = i36;
                        }
                        i23++;
                        iE3 = iE3;
                        iArr4 = iArr6;
                    }
                    i34++;
                    i33 = 8;
                } else {
                    z10 = false;
                    z9 = false;
                }
                zP = false;
                i22 = z10;
                i21 = z9;
                i23 = 0;
                while (i23 <= iB6) {
                    if (c1286f0.p()) {
                        c1286f0.e();
                        iE = c1286f0.e();
                    } else {
                        c1286f0.e();
                        iE = c1286f0.e();
                    }
                    i24 = i22 + i21;
                    int[] iArr7 = iArr4;
                    i25 = 0;
                    while (i25 < i24) {
                        int i37 = i24;
                        while (i26 <= iE) {
                            c1286f0.e();
                            c1286f0.e();
                            if (zP) {
                                c1286f0.e();
                                c1286f0.e();
                            }
                            c1286f0.k();
                        }
                        i25++;
                        i24 = i37;
                    }
                    i23++;
                    iE3 = iE3;
                    iArr4 = iArr7;
                }
                i34++;
                i33 = 8;
            }
        }
        int[] iArr8 = iArr4;
        if (!c1286f0.p()) {
            return new Ex(null, c1333fw2, null, null);
        }
        c1286f0.h();
        Wv wvJ2 = j(c1286f0, false, iB6, wvJ);
        boolean zP6 = c1286f0.p();
        boolean[] zArr3 = new boolean[16];
        int i38 = 0;
        for (int i39 = 0; i39 < 16; i39++) {
            boolean zP7 = c1286f0.p();
            zArr3[i39] = zP7;
            if (zP7) {
                i38++;
            }
        }
        if (i38 == 0 || !zArr3[1]) {
            return new Ex(null, c1333fw2, null, null);
        }
        int i40 = i38 + 1;
        int[] iArr9 = new int[i38];
        for (int i41 = 0; i41 < i38 - (zP6 ? 1 : 0); i41++) {
            iArr9[i41] = c1286f0.b(3);
        }
        int[] iArr10 = new int[i40];
        if (zP6) {
            for (int i42 = 1; i42 < i38; i42++) {
                for (int i43 = 0; i43 < i42; i43++) {
                    iArr10[i42] = iArr9[i43] + 1 + iArr10[i42];
                }
            }
            iArr10[i38] = 6;
        }
        int[][] iArr11 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i27, i38);
        int[] iArr12 = new int[i27];
        iArr12[0] = 0;
        boolean zP8 = c1286f0.p();
        int i44 = 1;
        while (i44 < i27) {
            if (zP8) {
                iArr12[i44] = c1286f0.b(6);
            } else {
                iArr12[i44] = i44;
            }
            if (zP6) {
                z8 = zP6 ? 1 : 0;
                int i45 = 0;
                while (i45 < i38) {
                    int i46 = i45 + 1;
                    iArr11[i44][i45] = (iArr12[i44] & ((1 << iArr10[i46]) - 1)) >> iArr10[i45];
                    i45 = i46;
                }
            } else {
                int i47 = 0;
                while (i47 < i38) {
                    iArr11[i44][i47] = c1286f0.b(iArr9[i47] + 1);
                    i47++;
                    zP6 = zP6 ? 1 : 0;
                }
                z8 = zP6;
            }
            i44++;
            zP6 = z8;
        }
        int[] iArr13 = new int[i31];
        int i48 = 1;
        for (int i49 = 0; i49 < i27; i49++) {
            iArr13[iArr12[i49]] = -1;
            int i50 = 0;
            int i51 = 0;
            while (i50 < 16) {
                if (zArr3[i50]) {
                    i19 = 1;
                    if (i50 == 1) {
                        iArr13[iArr12[i49]] = iArr11[i49][i51];
                        i20 = 1;
                    } else {
                        i20 = i50;
                    }
                    i51++;
                    i50 = i20;
                } else {
                    i19 = 1;
                }
                i50 += i19;
            }
            if (i49 > 0) {
                int i52 = 0;
                while (true) {
                    if (i52 >= i49) {
                        i48++;
                        break;
                    }
                    if (iArr13[iArr12[i49]] == iArr13[iArr12[i52]]) {
                        break;
                    }
                    i52++;
                }
            }
        }
        int iB8 = c1286f0.b(4);
        if (i48 < 2 || iB8 == 0) {
            return new Ex(null, c1333fw2, null, null);
        }
        int[] iArr14 = new int[i48];
        for (int i53 = 0; i53 < i48; i53++) {
            iArr14[i53] = c1286f0.b(iB8);
        }
        int[] iArr15 = new int[i31];
        for (int i54 = 0; i54 < i27; i54++) {
            iArr15[Math.min(iArr12[i54], iB7)] = i54;
        }
        C1917rA c1917rA = new C1917rA();
        int i55 = 0;
        while (i55 <= iB7) {
            int[] iArr16 = iArr13;
            int iMin = Math.min(iArr13[i55], i48 - 1);
            c1917rA.g(new Fv(iArr15[i55], iMin >= 0 ? iArr14[iMin] : -1));
            i55++;
            iArr13 = iArr16;
        }
        PA paH = c1917rA.h();
        if (((Fv) paH.get(0)).f13438b == -1) {
            return new Ex(null, c1333fw2, null, null);
        }
        int i56 = 1;
        while (true) {
            if (i56 > iB7) {
                i56 = -1;
                break;
            }
            if (((Fv) paH.get(i56)).f13438b != -1) {
                break;
            }
            i56++;
        }
        if (i56 == -1) {
            return new Ex(null, c1333fw2, null, null);
        }
        Class cls = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls, i27, i27);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls, i27, i27);
        for (int i57 = 1; i57 < i27; i57++) {
            for (int i58 = 0; i58 < i57; i58++) {
                boolean[] zArr6 = zArr4[i57];
                boolean[] zArr7 = zArr5[i57];
                boolean zP9 = c1286f0.p();
                zArr7[i58] = zP9;
                zArr6[i58] = zP9;
            }
        }
        for (int i59 = 1; i59 < i27; i59++) {
            for (int i60 = 0; i60 < iB5; i60++) {
                for (int i61 = 0; i61 < i59; i61++) {
                    boolean[] zArr8 = zArr5[i59];
                    if (zArr8[i61] && zArr5[i61][i60]) {
                        zArr8[i60] = true;
                        break;
                    }
                }
            }
        }
        int[] iArr17 = new int[i31];
        for (int i62 = 0; i62 < i27; i62++) {
            int i63 = 0;
            for (int i64 = 0; i64 < i62; i64++) {
                i63 += zArr4[i62][i64] ? 1 : 0;
            }
            iArr17[iArr12[i62]] = i63;
        }
        int i65 = 0;
        for (int i66 = 0; i66 < i27; i66++) {
            if (iArr17[iArr12[i66]] == 0) {
                i65++;
            }
        }
        if (i65 > 1) {
            return new Ex(null, c1333fw2, null, null);
        }
        int[] iArr18 = new int[i27];
        int[] iArr19 = new int[iE2];
        if (c1286f0.p()) {
            for (int i67 = 0; i67 < i27; i67++) {
                iArr18[i67] = c1286f0.b(3);
            }
            i10 = iB6;
        } else {
            i10 = iB6;
            Arrays.fill(iArr18, 0, i27, i10);
        }
        int i68 = 0;
        while (i68 < iE2) {
            boolean[][] zArr9 = zArr5;
            int[] iArr20 = iArr17;
            int[] iArr21 = iArr12;
            int iMax = 0;
            for (int i69 = 0; i69 < iArr3[i68]; i69++) {
                iMax = Math.max(iMax, iArr18[((Fv) paH.get(iArr2[i68][i69])).f13437a]);
            }
            iArr19[i68] = iMax + 1;
            i68++;
            zArr5 = zArr9;
            iArr12 = iArr21;
            iArr17 = iArr20;
        }
        boolean[][] zArr10 = zArr5;
        int[] iArr22 = iArr17;
        int[] iArr23 = iArr12;
        if (c1286f0.p()) {
            int i70 = 0;
            while (i70 < iB5) {
                int i71 = i70 + 1;
                for (int i72 = i71; i72 < i27; i72++) {
                    if (zArr4[i72][i70]) {
                        c1286f0.m(3);
                    }
                }
                i70 = i71;
            }
        }
        c1286f0.k();
        int iE4 = c1286f0.e() + 1;
        C1917rA c1917rA2 = new C1917rA();
        c1917rA2.g(wvJ);
        if (iE4 > 1) {
            c1917rA2.g(wvJ2);
            Wv wvJ3 = wvJ2;
            for (int i73 = 2; i73 < iE4; i73++) {
                wvJ3 = j(c1286f0, c1286f0.p(), i10, wvJ3);
                c1917rA2.g(wvJ3);
            }
        }
        PA paH2 = c1917rA2.h();
        int iE5 = c1286f0.e() + iE2;
        if (iE5 > iE2) {
            return new Ex(null, c1333fw2, null, null);
        }
        int iB9 = c1286f0.b(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iE5, i31);
        int[] iArr24 = new int[iE5];
        int[] iArr25 = new int[iE5];
        int i74 = 0;
        while (i74 < iE2) {
            int i75 = iE2;
            iArr24[i74] = 0;
            int i76 = iArr8[i74];
            iArr25[i74] = i76;
            if (iB9 == 0) {
                zArr2 = zArr4;
                i18 = i27;
                iArr = iArr19;
                Arrays.fill(zArr11[i74], 0, iArr3[i74], true);
                iArr24[i74] = iArr3[i74];
            } else {
                i18 = i27;
                zArr2 = zArr4;
                iArr = iArr19;
                if (iB9 == 1) {
                    for (int i77 = 0; i77 < iArr3[i74]; i77++) {
                        zArr11[i74][i77] = iArr2[i74][i77] == i76;
                    }
                    iArr24[i74] = 1;
                } else {
                    zArr11[0][0] = true;
                    iArr24[0] = 1;
                }
            }
            i74++;
            iE2 = i75;
            zArr4 = zArr2;
            iArr19 = iArr;
            i27 = i18;
        }
        int i78 = i27;
        boolean[][] zArr12 = zArr4;
        int[] iArr26 = iArr19;
        int i79 = iE2;
        int[] iArr27 = new int[i31];
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iE5, i31);
        int i80 = 0;
        int i81 = 1;
        while (i81 < iE5) {
            if (iB9 == 2) {
                for (int i82 = 0; i82 < iArr3[i81]; i82++) {
                    zArr11[i81][i82] = c1286f0.p();
                    int i83 = iArr24[i81];
                    boolean z13 = zArr11[i81][i82];
                    iArr24[i81] = i83 + (z13 ? 1 : 0);
                    if (z13) {
                        iArr25[i81] = iArr2[i81][i82];
                    }
                }
            }
            if (i80 == 0) {
                if (iArr2[i81][0] == 0 && zArr11[i81][0]) {
                    i80 = 0;
                    for (int i84 = 1; i84 < iArr3[i81]; i84++) {
                        if (iArr2[i81][i84] == i56 && zArr11[i81][i56]) {
                            i80 = i81;
                        }
                    }
                } else {
                    i80 = 0;
                }
            }
            int i85 = 0;
            while (i85 < iArr3[i81]) {
                if (iE4 > 1) {
                    zArr13[i81][i85] = zArr11[i81][i85];
                    i16 = iE5;
                    zArr = zArr11;
                    i14 = i56;
                    int iA = AbstractC1659mB.a(iE4, RoundingMode.CEILING);
                    if (zArr13[i81][i85]) {
                        i15 = iE4;
                        i17 = iB9;
                        break;
                    }
                    Fv fv = (Fv) paH.get(iArr2[i81][i85]);
                    int i86 = 0;
                    while (true) {
                        if (i86 >= i85) {
                            i15 = iE4;
                            i17 = iB9;
                            break;
                        }
                        i15 = iE4;
                        i17 = iB9;
                        if (zArr10[fv.f13437a][((Fv) paH.get(iArr2[i81][i86])).f13437a]) {
                            zArr13[i81][i85] = true;
                            break;
                        }
                        i86++;
                        iB9 = i17;
                        iE4 = i15;
                    }
                    if (zArr13[i81][i85]) {
                        if (i80 <= 0 || i81 != i80) {
                            c1286f0.m(iA);
                        } else {
                            iArr27[i85] = c1286f0.b(iA);
                        }
                    }
                } else {
                    i14 = i56;
                    i15 = iE4;
                    i16 = iE5;
                    zArr = zArr11;
                    i17 = iB9;
                }
                i85++;
                iE5 = i16;
                zArr11 = zArr;
                i56 = i14;
                iB9 = i17;
                iE4 = i15;
            }
            int i87 = i56;
            int i88 = iE4;
            int i89 = iE5;
            boolean[][] zArr14 = zArr11;
            int i90 = iB9;
            if (iArr24[i81] == 1 && iArr22[iArr25[i81]] > 0) {
                c1286f0.k();
            }
            i81++;
            iE5 = i89;
            zArr11 = zArr14;
            i56 = i87;
            iB9 = i90;
            iE4 = i88;
        }
        int i91 = iE5;
        if (i80 == 0) {
            return new Ex(null, c1333fw2, null, null);
        }
        int iE6 = c1286f0.e();
        int i92 = iE6 + 1;
        C1917rA c1917rAR = AbstractC2073uA.r(i92);
        int[] iArr28 = new int[i78];
        for (int i93 = 0; i93 < i92; i93++) {
            int iB10 = c1286f0.b(16);
            int iB11 = c1286f0.b(16);
            if (c1286f0.p()) {
                iB2 = c1286f0.b(2);
                if (iB2 == 3) {
                    c1286f0.k();
                }
                iB3 = c1286f0.b(4);
                iB4 = c1286f0.b(4);
            } else {
                iB2 = 0;
                iB3 = 0;
                iB4 = 0;
            }
            if (c1286f0.p()) {
                int iE7 = c1286f0.e();
                int iE8 = c1286f0.e();
                int iE9 = c1286f0.e();
                int iE10 = c1286f0.e();
                iB10 -= (iE7 + iE8) * ((iB2 == 1 || iB2 == 2) ? 2 : 1);
                iB11 -= (iE9 + iE10) * (iB2 == 1 ? 2 : 1);
            }
            c1917rAR.g(new C1903qw(iB2, iB3, iB4, iB10, iB11));
        }
        if (i92 <= 1 || !c1286f0.p()) {
            for (int i94 = 1; i94 < i78; i94++) {
                iArr28[i94] = Math.min(i94, iE6);
            }
        } else {
            int iA2 = AbstractC1659mB.a(i92, RoundingMode.CEILING);
            for (int i95 = 1; i95 < i78; i95++) {
                iArr28[i95] = c1286f0.b(iA2);
            }
        }
        C1333fw c1333fw3 = new C1333fw(c1917rAR.h(), iArr28, 1);
        c1286f0.m(2);
        for (int i96 = 1; i96 < i78; i96++) {
            if (iArr22[iArr23[i96]] == 0) {
                c1286f0.k();
            }
        }
        for (int i97 = 1; i97 < i91; i97++) {
            boolean zP10 = c1286f0.p();
            for (int i98 = 0; i98 < iArr26[i97]; i98++) {
                if (i98 <= 0 || !zP10) {
                    if (i98 == 0) {
                        for (i13 = 0; i13 < iArr3[i97]; i13++) {
                            if (zArr13[i97][i13]) {
                                c1286f0.e();
                            }
                        }
                        c1286f0.e();
                        c1286f0.e();
                    }
                } else if (c1286f0.p()) {
                    while (i13 < iArr3[i97]) {
                        if (zArr13[i97][i13]) {
                            c1286f0.e();
                        }
                    }
                    c1286f0.e();
                    c1286f0.e();
                }
            }
        }
        int iE11 = c1286f0.e() + 2;
        if (c1286f0.p()) {
            c1286f0.m(iE11);
        } else {
            for (int i99 = 1; i99 < i78; i99++) {
                for (int i100 = 0; i100 < i99; i100++) {
                    if (zArr12[i99][i100]) {
                        c1286f0.m(iE11);
                    }
                }
            }
        }
        int iE12 = c1286f0.e();
        for (int i101 = 1; i101 <= iE12; i101++) {
            c1286f0.m(8);
        }
        if (c1286f0.p()) {
            c1286f0.h();
            if (c1286f0.p() || c1286f0.p()) {
                c1286f0.k();
            }
            boolean zP11 = c1286f0.p();
            boolean zP12 = c1286f0.p();
            if (zP11 || zP12) {
                for (int i102 = 0; i102 < i79; i102++) {
                    for (int i103 = 0; i103 < iArr26[i102]; i103++) {
                        boolean zP13 = zP11 ? c1286f0.p() : false;
                        boolean zP14 = zP12 ? c1286f0.p() : false;
                        if (zP13) {
                            c1286f0.m(32);
                        }
                        if (zP14) {
                            c1286f0.m(18);
                        }
                    }
                }
            }
            boolean zP15 = c1286f0.p();
            if (zP15) {
                z7 = true;
                iB = c1286f0.b(4) + 1;
            } else {
                z7 = true;
                iB = i78;
            }
            C1917rA c1917rAR2 = AbstractC2073uA.r(iB);
            int[] iArr29 = new int[i78];
            int i104 = 0;
            while (i104 < iB) {
                c1286f0.m(3);
                if (z7 != c1286f0.p()) {
                    i11 = 8;
                    i12 = 2;
                } else {
                    i11 = 8;
                    i12 = 1;
                }
                int iA3 = C1928rL.a(c1286f0.b(i11));
                int iB12 = C1928rL.b(c1286f0.b(i11));
                c1286f0.m(i11);
                c1917rAR2.g(new C1386gx(iA3, i12, iB12));
                i104++;
                z7 = true;
            }
            if (zP15 && iB > 1) {
                for (int i105 = 0; i105 < i78; i105++) {
                    iArr29[i105] = c1286f0.b(4);
                }
            }
            c1333fw = new C1333fw(c1917rAR2.h(), iArr29, 2);
        } else {
            c1333fw = null;
        }
        return new Ex(paH, new C1333fw(paH2, iArr27, 0), c1333fw3, c1333fw);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0189  */
    /* JADX WARN: Code duplicated, block: B:101:0x018e  */
    /* JADX WARN: Code duplicated, block: B:104:0x019b  */
    /* JADX WARN: Code duplicated, block: B:107:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:112:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:114:0x01cd A[PHI: r10
      0x01cd: PHI (r10v8 int) = (r10v5 int), (r10v11 int) binds: [B:106:0x01a2, B:113:0x01cc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:117:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:120:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:123:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:126:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:129:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:132:0x0208  */
    /* JADX WARN: Code duplicated, block: B:134:0x0224  */
    /* JADX WARN: Code duplicated, block: B:135:0x0229  */
    /* JADX WARN: Code duplicated, block: B:140:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:25:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0071  */
    /* JADX WARN: Code duplicated, block: B:27:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    /* JADX WARN: Code duplicated, block: B:32:0x007f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082  */
    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0090  */
    /* JADX WARN: Code duplicated, block: B:41:0x009e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0164  */
    /* JADX WARN: Code duplicated, block: B:92:0x016a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0174  */
    /* JADX WARN: Code duplicated, block: B:98:0x0185  */
    public static C1231dy e(int i8, byte[] bArr, int i9) {
        int iE;
        int i10;
        int iE2;
        int iE3;
        int i11;
        int i12;
        int i13;
        int i14;
        int iC;
        int i15;
        int i16;
        int i17;
        int i18;
        float f8;
        int i19;
        int i20;
        float f9;
        int iA;
        int iB;
        boolean zP;
        boolean zP2;
        int i21;
        int iB2;
        int iB3;
        int iB4;
        int i22;
        C1286f0 c1286f0 = new C1286f0(bArr, i8, i9);
        int iB5 = c1286f0.b(8);
        int iB6 = c1286f0.b(8);
        int iB7 = c1286f0.b(8);
        int iE4 = c1286f0.e();
        if (iB5 == 100 || iB5 == 110 || iB5 == 122 || iB5 == 244 || iB5 == 44 || iB5 == 83 || iB5 == 86 || iB5 == 118 || iB5 == 128) {
            iE = c1286f0.e();
            if (iE == 3) {
                c1286f0.p();
                i10 = 3;
            } else {
                i10 = iE;
            }
            iE2 = c1286f0.e();
            iE3 = c1286f0.e();
            c1286f0.k();
            if (c1286f0.p()) {
                if (i10 != 3) {
                    i11 = 8;
                } else {
                    i11 = 12;
                }
                for (i12 = 0; i12 < i11; i12++) {
                    if (!c1286f0.p()) {
                        if (i12 < 6) {
                            i13 = 16;
                        } else {
                            i13 = 64;
                        }
                        iC = 8;
                        i15 = 8;
                        for (i14 = 0; i14 < i13; i14++) {
                            if (iC != 0) {
                                iC = ((c1286f0.c() + i15) + 256) % 256;
                            }
                            if (iC != 0) {
                                i15 = iC;
                            }
                        }
                    }
                }
            }
        } else if (iB5 == 138) {
            iB5 = 138;
            iE = c1286f0.e();
            if (iE == 3) {
                c1286f0.p();
                i10 = 3;
            } else {
                i10 = iE;
            }
            iE2 = c1286f0.e();
            iE3 = c1286f0.e();
            c1286f0.k();
            if (c1286f0.p()) {
                if (i10 != 3) {
                    i11 = 8;
                } else {
                    i11 = 12;
                }
                while (i12 < i11) {
                    if (!c1286f0.p()) {
                        if (i12 < 6) {
                            i13 = 16;
                        } else {
                            i13 = 64;
                        }
                        iC = 8;
                        i15 = 8;
                        while (i14 < i13) {
                            if (iC != 0) {
                                iC = ((c1286f0.c() + i15) + 256) % 256;
                            }
                            if (iC != 0) {
                                i15 = iC;
                            }
                        }
                    }
                }
            }
        } else {
            iE = 1;
            iE2 = 0;
            iE3 = 0;
        }
        c1286f0.e();
        int iE5 = c1286f0.e();
        if (iE5 == 0) {
            c1286f0.e();
        } else if (iE5 == 1) {
            c1286f0.p();
            c1286f0.c();
            c1286f0.c();
            long jE = c1286f0.e();
            for (int i23 = 0; i23 < jE; i23++) {
                c1286f0.e();
            }
        }
        c1286f0.e();
        c1286f0.k();
        int iE6 = c1286f0.e() + 1;
        int iE7 = c1286f0.e() + 1;
        boolean zP3 = c1286f0.p();
        int i24 = 2 - (zP3 ? 1 : 0);
        if (!zP3) {
            c1286f0.k();
        }
        c1286f0.k();
        int i25 = iE6 * 16;
        int i26 = iE7 * i24 * 16;
        if (c1286f0.p()) {
            int iE8 = c1286f0.e();
            int iE9 = c1286f0.e();
            int iE10 = c1286f0.e();
            int iE11 = c1286f0.e();
            if (iE == 0) {
                i22 = 1;
            } else {
                i22 = iE == 3 ? 1 : 2;
                i24 *= iE == 1 ? 2 : 1;
            }
            i25 -= (iE8 + iE9) * i22;
            i26 -= (iE10 + iE11) * i24;
        }
        int i27 = i25;
        int i28 = i26;
        if (iB5 != 44 && iB5 != 86 && iB5 != 100 && iB5 != 110 && iB5 != 122) {
            if (iB5 == 244) {
                i16 = 244;
            } else {
                i17 = iB5;
            }
            i18 = 16;
            f8 = 1.0f;
            i19 = -1;
            if (c1286f0.p()) {
                if (c1286f0.p()) {
                    iB2 = c1286f0.b(8);
                    if (iB2 == 255) {
                        iB3 = c1286f0.b(16);
                        iB4 = c1286f0.b(16);
                        if (iB3 != 0 && iB4 != 0) {
                            f8 = iB3 / iB4;
                        }
                    } else if (iB2 < 17) {
                        f8 = f21016b[iB2];
                    } else {
                        p000a.r.p("Unexpected aspect_ratio_idc value: ", iB2, "NalUnitUtil");
                    }
                }
                if (c1286f0.p()) {
                    c1286f0.k();
                }
                if (c1286f0.p()) {
                    c1286f0.m(3);
                    i21 = true != c1286f0.p() ? 2 : 1;
                    if (c1286f0.p()) {
                        int iB8 = c1286f0.b(8);
                        int iB9 = c1286f0.b(8);
                        c1286f0.m(8);
                        iA = C1928rL.a(iB8);
                        iB = C1928rL.b(iB9);
                        i19 = i21;
                    } else {
                        i19 = i21;
                        iA = -1;
                        iB = -1;
                    }
                } else {
                    iA = -1;
                    iB = -1;
                }
                if (c1286f0.p()) {
                    c1286f0.e();
                    c1286f0.e();
                }
                if (c1286f0.p()) {
                    c1286f0.m(65);
                }
                zP = c1286f0.p();
                if (zP) {
                    k(c1286f0);
                }
                zP2 = c1286f0.p();
                if (zP2) {
                    k(c1286f0);
                }
                if (zP || zP2) {
                    c1286f0.k();
                }
                c1286f0.k();
                if (c1286f0.p()) {
                    c1286f0.k();
                    c1286f0.e();
                    c1286f0.e();
                    c1286f0.e();
                    c1286f0.e();
                    int iE12 = c1286f0.e();
                    c1286f0.e();
                    i20 = iE12;
                } else {
                    i20 = i18;
                }
                f9 = f8;
            } else {
                i20 = i18;
                f9 = 1.0f;
                iA = -1;
                i19 = -1;
                iB = -1;
            }
            return new C1231dy(i17, iB6, iB7, iE4, i27, i28, f9, iE2, iE3, iA, i19, iB, i20);
        }
        i16 = iB5;
        if ((iB6 & 16) != 0) {
            i17 = i16;
            i18 = 0;
        } else {
            i17 = i16;
            i18 = 16;
        }
        f8 = 1.0f;
        i19 = -1;
        if (c1286f0.p()) {
            if (c1286f0.p()) {
                iB2 = c1286f0.b(8);
                if (iB2 == 255) {
                    iB3 = c1286f0.b(16);
                    iB4 = c1286f0.b(16);
                    if (iB3 != 0) {
                        f8 = iB3 / iB4;
                    }
                } else if (iB2 < 17) {
                    f8 = f21016b[iB2];
                } else {
                    p000a.r.p("Unexpected aspect_ratio_idc value: ", iB2, "NalUnitUtil");
                }
            }
            if (c1286f0.p()) {
                c1286f0.k();
            }
            if (c1286f0.p()) {
                c1286f0.m(3);
                if (true != c1286f0.p()) {
                }
                if (c1286f0.p()) {
                    int iB10 = c1286f0.b(8);
                    int iB11 = c1286f0.b(8);
                    c1286f0.m(8);
                    iA = C1928rL.a(iB10);
                    iB = C1928rL.b(iB11);
                    i19 = i21;
                } else {
                    i19 = i21;
                    iA = -1;
                    iB = -1;
                }
            } else {
                iA = -1;
                iB = -1;
            }
            if (c1286f0.p()) {
                c1286f0.e();
                c1286f0.e();
            }
            if (c1286f0.p()) {
                c1286f0.m(65);
            }
            zP = c1286f0.p();
            if (zP) {
                k(c1286f0);
            }
            zP2 = c1286f0.p();
            if (zP2) {
                k(c1286f0);
            }
            if (zP) {
                c1286f0.k();
            } else {
                c1286f0.k();
            }
            c1286f0.k();
            if (c1286f0.p()) {
                c1286f0.k();
                c1286f0.e();
                c1286f0.e();
                c1286f0.e();
                c1286f0.e();
                int iE13 = c1286f0.e();
                c1286f0.e();
                i20 = iE13;
            } else {
                i20 = i18;
            }
            f9 = f8;
        } else {
            i20 = i18;
            f9 = 1.0f;
            iA = -1;
            i19 = -1;
            iB = -1;
        }
        return new C1231dy(i17, iB6, iB7, iE4, i27, i28, f9, iE2, iE3, iA, i19, iB, i20);
    }

    public static String f(List list) {
        for (int i8 = 0; i8 < list.size(); i8++) {
            byte[] bArr = (byte[]) list.get(i8);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                C1917rA c1917rA = new C1917rA();
                int i9 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i9 >= length2) {
                        break;
                    }
                    int iA = a(bArr, i9, length2, zArr);
                    if (iA != length2) {
                        c1917rA.g(Integer.valueOf(iA));
                    }
                    i9 = iA + 3;
                }
                PA paH = c1917rA.h();
                for (int i10 = 0; i10 < paH.size(); i10++) {
                    if (((Integer) paH.get(i10)).intValue() + 3 < length) {
                        C1286f0 c1286f0 = new C1286f0(bArr, ((Integer) paH.get(i10)).intValue() + 3, length);
                        N.r rVarI = i(c1286f0);
                        if (rVarI.f4919H == 33 && rVarI.f4920I == 0) {
                            c1286f0.m(4);
                            int iB = c1286f0.b(3);
                            c1286f0.k();
                            Wv wvJ = j(c1286f0, true, iB, null);
                            return AbstractC1270el.a(wvJ.f17343a, wvJ.f17344b, wvJ.f17345c, wvJ.f17346d, wvJ.f17347e, wvJ.f17348f);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static void g(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean h(byte b8) {
        if (((b8 & 96) >> 5) != 0) {
            return true;
        }
        int i8 = b8 & 31;
        return (i8 == 1 || i8 == 9 || i8 == 14) ? false : true;
    }

    public static N.r i(C1286f0 c1286f0) {
        c1286f0.k();
        int iB = c1286f0.b(6);
        int iB2 = c1286f0.b(6);
        c1286f0.b(3);
        return new N.r(iB, iB2, (A0.O) null);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c A[SYNTHETIC] */
    public static Wv j(C1286f0 c1286f0, boolean z7, int i8, Wv wv) {
        int[] iArr;
        int i9;
        boolean z8;
        int i10;
        int i11;
        boolean zP;
        int iB;
        int i12;
        int i13;
        int[] iArr2 = new int[6];
        if (!z7) {
            if (wv != null) {
                int i14 = wv.f17343a;
                zP = wv.f17344b;
                iB = wv.f17345c;
                i12 = wv.f17346d;
                iArr2 = wv.f17347e;
                i9 = i14;
            } else {
                iArr = iArr2;
                i9 = 0;
                z8 = false;
                i10 = 0;
                i11 = 0;
            }
            int iB2 = c1286f0.b(8);
            i13 = 0;
            for (int i15 = 0; i15 < i8; i15++) {
                if (c1286f0.p()) {
                    i13 += 88;
                }
                if (c1286f0.p()) {
                    i13 += 8;
                }
            }
            c1286f0.m(i13);
            if (i8 > 0) {
                int i16 = 8 - i8;
                c1286f0.m(i16 + i16);
            }
            return new Wv(i9, z8, i10, i11, iArr, iB2);
        }
        int iB3 = c1286f0.b(2);
        zP = c1286f0.p();
        iB = c1286f0.b(5);
        i12 = 0;
        for (int i17 = 0; i17 < 32; i17++) {
            if (c1286f0.p()) {
                i12 |= 1 << i17;
            }
        }
        for (int i18 = 0; i18 < 6; i18++) {
            iArr2[i18] = c1286f0.b(8);
        }
        i9 = iB3;
        iArr = iArr2;
        z8 = zP;
        i10 = iB;
        i11 = i12;
        int iB4 = c1286f0.b(8);
        i13 = 0;
        while (i15 < i8) {
            if (c1286f0.p()) {
                i13 += 88;
            }
            if (c1286f0.p()) {
                i13 += 8;
            }
        }
        c1286f0.m(i13);
        if (i8 > 0) {
            int i19 = 8 - i8;
            c1286f0.m(i19 + i19);
        }
        return new Wv(i9, z8, i10, i11, iArr, iB4);
    }

    public static void k(C1286f0 c1286f0) {
        int iE = c1286f0.e() + 1;
        c1286f0.m(8);
        for (int i8 = 0; i8 < iE; i8++) {
            c1286f0.e();
            c1286f0.e();
            c1286f0.k();
        }
        c1286f0.m(20);
    }
}
