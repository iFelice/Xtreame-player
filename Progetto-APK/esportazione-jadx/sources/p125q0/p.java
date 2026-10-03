package p125q0;

import A2.i;
import F2.G;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p094m0.C3126i;
import p094m0.C3136t;
import p094m0.O;
import p096m2.c;
import p096m2.e;
import p117p0.AbstractC3169g;
import p117p0.D;
import z4.E;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f29508a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f29509b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f29510c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int[] f29511d = new int[10];

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int b(byte[] bArr, int i8, int i9, boolean[] zArr) {
        int i10 = i9 - i8;
        H1.i(i10 >= 0);
        if (i10 == 0) {
            return i9;
        }
        if (zArr[0]) {
            a(zArr);
            return i8 - 3;
        }
        if (i10 > 1 && zArr[1] && bArr[i8] == 1) {
            a(zArr);
            return i8 - 2;
        }
        if (i10 > 2 && zArr[2] && bArr[i8] == 0 && bArr[i8 + 1] == 1) {
            a(zArr);
            return i8 - 1;
        }
        int i11 = i9 - 1;
        int i12 = i8 + 2;
        while (i12 < i11) {
            byte b8 = bArr[i12];
            if ((b8 & 254) == 0) {
                int i13 = i12 - 2;
                if (bArr[i13] == 0 && bArr[i12 - 1] == 0 && b8 == 1) {
                    a(zArr);
                    return i13;
                }
                i12 -= 2;
            }
            i12 += 3;
        }
        zArr[0] = i10 <= 2 ? !(i10 != 2 ? !(zArr[1] && bArr[i11] == 1) : !(zArr[2] && bArr[i9 + (-2)] == 0 && bArr[i11] == 1)) : bArr[i9 + (-3)] == 0 && bArr[i9 + (-2)] == 0 && bArr[i11] == 1;
        zArr[1] = i10 <= 1 ? zArr[2] && bArr[i11] == 0 : bArr[i9 + (-2)] == 0 && bArr[i11] == 0;
        zArr[2] = bArr[i11] == 0;
        return i9;
    }

    public static String c(List list) {
        for (int i8 = 0; i8 < list.size(); i8++) {
            byte[] bArr = (byte[]) list.get(i8);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                E eQ = H.q();
                int i9 = 0;
                while (i9 < bArr.length) {
                    int iB = b(bArr, i9, bArr.length, zArr);
                    if (iB != bArr.length) {
                        eQ.g0(Integer.valueOf(iB));
                    }
                    i9 = iB + 3;
                }
                d0 d0VarM0 = eQ.m0();
                for (int i10 = 0; i10 < d0VarM0.size(); i10++) {
                    if (((Integer) d0VarM0.get(i10)).intValue() + 3 < length) {
                        D d6 = new D(bArr, ((Integer) d0VarM0.get(i10)).intValue() + 3, length);
                        i iVarF = f(d6);
                        if (iVarF.f630a == 33 && iVarF.f631b == 0) {
                            d6.u(4);
                            int i11 = d6.i(3);
                            d6.t();
                            i iVarG = g(d6, true, i11, null);
                            return AbstractC3169g.a(iVarG.f29456a, iVarG.f29457b, iVarG.f29458c, iVarG.f29459d, iVarG.f29460e, iVarG.f29461f);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static boolean d(byte[] bArr, int i8, C3136t c3136t) {
        int i9;
        if (Objects.equals(c3136t.f27041o, "video/avc")) {
            byte b8 = bArr[4];
            return (((b8 & 96) >> 5) == 0 && ((i9 = b8 & 31) == 1 || i9 == 9 || i9 == 14)) ? false : true;
        }
        if (!Objects.equals(c3136t.f27041o, "video/hevc")) {
            return true;
        }
        i iVarF = f(new D(bArr, 4, i8 + 4));
        int i10 = iVarF.f630a;
        if (i10 == 35) {
            return false;
        }
        return (i10 <= 14 && i10 % 2 == 0 && iVarF.f632c == c3136t.f27015F - 1) ? false : true;
    }

    public static int e(C3136t c3136t) {
        if (Objects.equals(c3136t.f27041o, "video/avc")) {
            return 1;
        }
        return (Objects.equals(c3136t.f27041o, "video/hevc") || O.c(c3136t.f27037k, "video/hevc") != null) ? 2 : 0;
    }

    public static i f(D d6) {
        d6.t();
        return new i(d6.i(6), d6.i(6), d6.i(3) - 1, 0);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x006e A[SYNTHETIC] */
    public static i g(D d6, boolean z7, int i8, i iVar) {
        int[] iArr;
        int i9;
        boolean z8;
        int i10;
        int i11;
        boolean zH;
        int i12;
        int i13;
        int i14;
        int[] iArr2 = new int[6];
        if (!z7) {
            if (iVar != null) {
                int i15 = iVar.f29456a;
                zH = iVar.f29457b;
                i12 = iVar.f29458c;
                i13 = iVar.f29459d;
                iArr2 = iVar.f29460e;
                i9 = i15;
            } else {
                iArr = iArr2;
                i9 = 0;
                z8 = false;
                i10 = 0;
                i11 = 0;
            }
            int i16 = d6.i(8);
            i14 = 0;
            for (int i17 = 0; i17 < i8; i17++) {
                if (d6.h()) {
                    i14 += 88;
                }
                if (d6.h()) {
                    i14 += 8;
                }
            }
            d6.u(i14);
            if (i8 > 0) {
                d6.u((8 - i8) * 2);
            }
            return new i(i9, z8, i10, i11, iArr, i16);
        }
        int i18 = d6.i(2);
        zH = d6.h();
        i12 = d6.i(5);
        i13 = 0;
        for (int i19 = 0; i19 < 32; i19++) {
            if (d6.h()) {
                i13 |= 1 << i19;
            }
        }
        for (int i20 = 0; i20 < 6; i20++) {
            iArr2[i20] = d6.i(8);
        }
        i9 = i18;
        iArr = iArr2;
        z8 = zH;
        i10 = i12;
        i11 = i13;
        int i110 = d6.i(8);
        i14 = 0;
        while (i17 < i8) {
            if (d6.h()) {
                i14 += 88;
            }
            if (d6.h()) {
                i14 += 8;
            }
        }
        d6.u(i14);
        if (i8 > 0) {
            d6.u((8 - i8) * 2);
        }
        return new i(i9, z8, i10, i11, iArr, i110);
    }

    public static G h(int i8, byte[] bArr, int i9) {
        byte b8;
        int i10 = i8 + 2;
        do {
            i9--;
            b8 = bArr[i9];
            if (b8 != 0) {
                break;
            }
        } while (i9 > i10);
        if (b8 != 0 && i9 > i10) {
            D d6 = new D(bArr, i10, i9 + 1);
            while (d6.d(16)) {
                int i11 = d6.i(8);
                int i12 = 0;
                while (i11 == 255) {
                    i12 += 255;
                    i11 = d6.i(8);
                }
                int i13 = i12 + i11;
                int i14 = d6.i(8);
                int i15 = 0;
                while (i14 == 255) {
                    i15 += 255;
                    i14 = d6.i(8);
                }
                int i16 = i15 + i14;
                if (i16 == 0 || !d6.d(i16)) {
                    break;
                }
                if (i13 == 176) {
                    int iM = d6.m();
                    boolean zH = d6.h();
                    int iM2 = zH ? d6.m() : 0;
                    int iM3 = d6.m();
                    int iM4 = -1;
                    for (int i17 = 0; i17 <= iM3; i17++) {
                        iM4 = d6.m();
                        d6.m();
                        int i18 = d6.i(6);
                        if (i18 == 63) {
                            return null;
                        }
                        d6.i(i18 == 0 ? Math.max(0, iM - 30) : Math.max(0, (i18 + iM) - 31));
                        if (zH) {
                            int i19 = d6.i(6);
                            if (i19 == 63) {
                                return null;
                            }
                            d6.i(i19 == 0 ? Math.max(0, iM2 - 30) : Math.max(0, (i19 + iM2) - 31));
                        }
                        if (d6.h()) {
                            d6.u(10);
                        }
                    }
                    return new G(iM4);
                }
                d6.u(i16 * 8);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004a  */
    /* JADX WARN: Code duplicated, block: B:35:0x00be  */
    public static k i(byte[] bArr, int i8, int i9, m mVar) {
        int i10;
        int i11;
        int i12;
        int iO;
        int i13;
        int iO2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        e eVar;
        int i23;
        int iH;
        int[] iArrCopyOf;
        c cVar;
        i iVarF = f(new D(bArr, i8, i9));
        D d6 = new D(bArr, i8 + 2, i9);
        int i24 = 4;
        d6.u(4);
        int i25 = d6.i(3);
        boolean z7 = iVarF.f631b != 0 && i25 == 7;
        if (mVar != null) {
            H h8 = mVar.f29483a;
            if (h8.isEmpty()) {
                i10 = 0;
            } else {
                i10 = ((h) h8.get(Math.min(iVarF.f631b, h8.size() - 1))).f29454a;
            }
        } else {
            i10 = 0;
        }
        i iVarG = null;
        if (!z7) {
            d6.t();
            iVarG = g(d6, true, i25, null);
        } else if (mVar != null) {
            F.i iVar = mVar.f29484b;
            int i26 = ((int[]) iVar.f2977H)[i10];
            if (((H) iVar.f2978I).size() > i26) {
                iVarG = (i) ((H) iVar.f2978I).get(i26);
            }
        }
        d6.o();
        if (z7) {
            int i27 = d6.h() ? d6.i(8) : -1;
            if (mVar == null || (cVar = mVar.f29485c) == null) {
                iO2 = 0;
                i13 = 0;
                i15 = 0;
                i16 = 0;
                iO = 0;
                i14 = 0;
            } else {
                if (i27 == -1) {
                    i27 = ((int[]) cVar.f27211I)[i10];
                }
                if (i27 == -1 || ((H) cVar.f27210H).size() <= i27) {
                    iO2 = 0;
                    i13 = 0;
                    i15 = 0;
                    i16 = 0;
                    iO = 0;
                    i14 = 0;
                } else {
                    j jVar = (j) ((H) cVar.f27210H).get(i27);
                    int i28 = jVar.f29462a;
                    i15 = jVar.f29465d;
                    int i29 = jVar.f29466e;
                    iO = jVar.f29463b;
                    iO2 = jVar.f29464c;
                    i13 = i29;
                    i14 = i13;
                    i16 = i15;
                }
            }
        } else {
            int iO3 = d6.o();
            if (iO3 == 3) {
                d6.t();
            }
            int iO4 = d6.o();
            int iO5 = d6.o();
            if (d6.h()) {
                int iO6 = d6.o();
                int iO7 = d6.o();
                int iO8 = d6.o();
                int iO9 = d6.o();
                i11 = iO4 - ((iO6 + iO7) * ((iO3 == 1 || iO3 == 2) ? 2 : 1));
                i12 = iO5 - ((iO8 + iO9) * (iO3 == 1 ? 2 : 1));
            } else {
                i11 = iO4;
                i12 = iO5;
            }
            iO = d6.o();
            i13 = i12;
            iO2 = d6.o();
            i14 = iO5;
            i15 = i11;
            i16 = iO4;
        }
        int iO10 = d6.o();
        if (z7) {
            i17 = -1;
        } else {
            int iMax = -1;
            for (int i30 = d6.h() ? 0 : i25; i30 <= i25; i30++) {
                d6.o();
                iMax = Math.max(d6.o(), iMax);
                d6.o();
            }
            i17 = iMax;
        }
        d6.o();
        d6.o();
        d6.o();
        d6.o();
        d6.o();
        d6.o();
        if (d6.h()) {
            int i31 = 6;
            if (z7 && d6.h()) {
                d6.u(6);
            } else if (d6.h()) {
                int i32 = 0;
                while (i32 < i24) {
                    int i33 = 0;
                    while (i33 < i31) {
                        if (d6.h()) {
                            int iMin = Math.min(64, 1 << ((i32 << 1) + 4));
                            if (i32 > 1) {
                                d6.n();
                            }
                            for (int i34 = 0; i34 < iMin; i34++) {
                                d6.n();
                            }
                        } else {
                            d6.m();
                        }
                        i33 += i32 == 3 ? 3 : 1;
                        i31 = 6;
                    }
                    i32++;
                    i24 = 4;
                    i31 = 6;
                }
            }
        }
        d6.u(2);
        if (d6.h()) {
            d6.u(8);
            d6.o();
            d6.o();
            d6.t();
        }
        int iM = d6.m();
        int i35 = 0;
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        int i36 = -1;
        int i37 = -1;
        while (i35 < iM) {
            if (i35 == 0 || !d6.h()) {
                int iM2 = d6.m();
                int iM3 = d6.m();
                int[] iArr3 = new int[iM2];
                int i38 = 0;
                while (i38 < iM2) {
                    iArr3[i38] = (i38 > 0 ? iArr3[i38 - 1] : 0) - (d6.m() + 1);
                    d6.t();
                    i38++;
                }
                int[] iArr4 = new int[iM3];
                int i39 = 0;
                while (i39 < iM3) {
                    iArr4[i39] = d6.m() + 1 + (i39 > 0 ? iArr4[i39 - 1] : 0);
                    d6.t();
                    i39++;
                }
                iArr = iArr3;
                i36 = iM2;
                iArrCopyOf = iArr4;
                i37 = iM3;
            } else {
                int i40 = i36 + i37;
                int iM4 = (1 - ((d6.h() ? 1 : 0) * 2)) * (d6.m() + 1);
                int i41 = i40 + 1;
                boolean[] zArr = new boolean[i41];
                for (int i42 = 0; i42 <= i40; i42++) {
                    if (d6.h()) {
                        zArr[i42] = true;
                    } else {
                        zArr[i42] = d6.h();
                    }
                }
                int[] iArr5 = new int[i41];
                int[] iArr6 = new int[i41];
                int i43 = 0;
                for (int i44 = i37 - 1; i44 >= 0; i44--) {
                    int i45 = iArr2[i44] + iM4;
                    if (i45 < 0 && zArr[i36 + i44]) {
                        iArr5[i43] = i45;
                        i43++;
                    }
                }
                if (iM4 < 0 && zArr[i40]) {
                    iArr5[i43] = iM4;
                    i43++;
                }
                int i46 = i43;
                for (int i47 = 0; i47 < i36; i47++) {
                    int i48 = iArr[i47] + iM4;
                    if (i48 < 0 && zArr[i47]) {
                        iArr5[i46] = i48;
                        i46++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr5, i46);
                int i49 = 0;
                for (int i50 = i36 - 1; i50 >= 0; i50--) {
                    int i51 = iArr[i50] + iM4;
                    if (i51 > 0 && zArr[i50]) {
                        iArr6[i49] = i51;
                        i49++;
                    }
                }
                if (iM4 > 0 && zArr[i40]) {
                    iArr6[i49] = iM4;
                    i49++;
                }
                int i52 = i49;
                for (int i53 = 0; i53 < i37; i53++) {
                    int i54 = iArr2[i53] + iM4;
                    if (i54 > 0 && zArr[i36 + i53]) {
                        iArr6[i52] = i54;
                        i52++;
                    }
                }
                i37 = i52;
                iArrCopyOf = Arrays.copyOf(iArr6, i52);
                iArr = iArrCopyOf2;
                i36 = i46;
            }
            i35++;
            iArr2 = iArrCopyOf;
            iM = iM;
            i17 = i17;
            i16 = i16;
            i15 = i15;
            iO2 = iO2;
            iVarG = iVarG;
        }
        int i55 = i17;
        i iVar2 = iVarG;
        int i56 = iO2;
        int i57 = i15;
        int i58 = i16;
        if (d6.h()) {
            int iO11 = d6.o();
            for (int i59 = 0; i59 < iO11; i59++) {
                d6.u(iO10 + 5);
            }
        }
        d6.u(2);
        float f8 = 1.0f;
        if (d6.h()) {
            if (d6.h()) {
                int i60 = d6.i(8);
                if (i60 == 255) {
                    int i61 = d6.i(16);
                    int i62 = d6.i(16);
                    if (i61 != 0 && i62 != 0) {
                        f8 = i61 / i62;
                    }
                } else if (i60 < 17) {
                    f8 = f29509b[i60];
                } else {
                    U2.v("Unexpected aspect_ratio_idc value: ", i60, "NalUnitUtil");
                }
            }
            if (d6.h()) {
                d6.t();
            }
            if (d6.h()) {
                d6.u(3);
                i22 = d6.h() ? 1 : 2;
                if (d6.h()) {
                    int i63 = d6.i(8);
                    int i64 = d6.i(8);
                    d6.u(8);
                    iH = C3126i.h(i63);
                    i21 = C3126i.i(i64);
                } else {
                    i21 = -1;
                    iH = -1;
                }
            } else if (mVar == null || (eVar = mVar.f29486d) == null || ((H) eVar.f27215H).size() <= (i23 = ((int[]) eVar.f27216I)[i10])) {
                i21 = -1;
                i22 = -1;
                iH = -1;
            } else {
                l lVar = (l) ((H) eVar.f27215H).get(i23);
                iH = lVar.f29480a;
                int i65 = lVar.f29481b;
                i21 = lVar.f29482c;
                i22 = i65;
            }
            if (d6.h()) {
                d6.o();
                d6.o();
            }
            d6.t();
            if (d6.h()) {
                i13 *= 2;
            }
            i20 = i21;
            i19 = i22;
            i18 = iH;
        } else {
            i18 = -1;
            i19 = -1;
            i20 = -1;
        }
        return new k(i25, iVar2, iO, i56, i57, i13, i58, i14, f8, i55, i18, i19, i20);
    }

    /* JADX WARN: Code duplicated, block: B:364:0x06a8  */
    /* JADX WARN: Code duplicated, block: B:367:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:369:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:452:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:539:0x06b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x010d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0113  */
    /* JADX WARN: Code duplicated, block: B:64:0x0119  */
    /* JADX WARN: Code duplicated, block: B:65:0x011d  */
    /* JADX WARN: Code duplicated, block: B:68:0x012c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0136  */
    /* JADX WARN: Code duplicated, block: B:73:0x013b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0143  */
    /* JADX WARN: Multi-variable type inference failed */
    public static m j(int i8, byte[] bArr, int i9) {
        int[][] iArr;
        int i10;
        e eVar;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean[][] zArr;
        int i17;
        int i18;
        boolean[][] zArr2;
        int[] iArr2;
        boolean z7;
        boolean zH;
        int i19;
        int i20;
        int i21;
        boolean zH2;
        int iM;
        int i22;
        int i23;
        int i24;
        boolean z8;
        boolean z9;
        D d6 = new D(bArr, i8, i9);
        f(d6);
        d6.u(4);
        boolean zH3 = d6.h();
        boolean zH4 = d6.h();
        int i25 = d6.i(6);
        int i26 = i25 + 1;
        int i27 = d6.i(3);
        d6.u(17);
        int i28 = 1;
        i iVarG = g(d6, true, i27, null);
        int i29 = 0;
        for (int i30 = d6.h() ? 0 : i27; i30 <= i27; i30++) {
            d6.o();
            d6.o();
            d6.o();
        }
        int i31 = d6.i(6);
        int iO = d6.o() + 1;
        F.i iVar = new F.i(H.x(iVarG), new int[1]);
        boolean z10 = i26 >= 2 && iO >= 2;
        boolean z11 = zH3 && zH4;
        int i32 = i31 + 1;
        boolean z12 = i32 >= i26;
        if (!z10 || !z11 || !z12) {
            return new m(null, iVar, null, null);
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iO, i32);
        int[] iArr4 = new int[iO];
        int[] iArr5 = new int[iO];
        iArr3[0][0] = 0;
        iArr4[0] = 1;
        iArr5[0] = 0;
        while (i28 < iO) {
            int i33 = 0;
            while (i29 <= i31) {
                if (d6.h()) {
                    iArr3[i28][i33] = i29;
                    iArr5[i28] = i29;
                    i33++;
                }
                iArr4[i28] = i33;
                i29++;
            }
            i28++;
            i29 = 0;
        }
        int i34 = 8;
        if (d6.h()) {
            d6.u(64);
            if (d6.h()) {
                d6.o();
            }
            int iO2 = d6.o();
            int i35 = 0;
            while (i35 < iO2) {
                d6.o();
                if (i35 == 0 || d6.h()) {
                    boolean zH5 = d6.h();
                    boolean zH6 = d6.h();
                    z9 = zH5;
                    z8 = zH6;
                    if (zH5 || zH6) {
                        zH = d6.h();
                        if (zH) {
                            d6.u(19);
                        }
                        d6.u(i34);
                        if (zH) {
                            d6.u(4);
                        }
                        d6.u(15);
                        i20 = zH5;
                        i19 = zH6;
                    }
                    i21 = 0;
                    while (i21 <= i27) {
                        zH2 = d6.h();
                        if (!zH2) {
                            zH2 = d6.h();
                        }
                        if (zH2) {
                            d6.m();
                        } else {
                            if (!d6.h()) {
                                iM = 0;
                            }
                            i22 = i20 + i19;
                            int[] iArr6 = iArr5;
                            i23 = 0;
                            while (i23 < i22) {
                                int i36 = i22;
                                for (i24 = 0; i24 <= iM; i24++) {
                                    d6.m();
                                    d6.m();
                                    if (zH) {
                                        d6.m();
                                        d6.m();
                                    }
                                    d6.t();
                                }
                                i23++;
                                i22 = i36;
                            }
                            i21++;
                            iO2 = iO2;
                            iArr5 = iArr6;
                        }
                        iM = d6.m();
                        i22 = i20 + i19;
                        int[] iArr7 = iArr5;
                        i23 = 0;
                        while (i23 < i22) {
                            int i37 = i22;
                            while (i24 <= iM) {
                                d6.m();
                                d6.m();
                                if (zH) {
                                    d6.m();
                                    d6.m();
                                }
                                d6.t();
                            }
                            i23++;
                            i22 = i37;
                        }
                        i21++;
                        iO2 = iO2;
                        iArr5 = iArr7;
                    }
                    i35++;
                    i34 = 8;
                } else {
                    z9 = false;
                    z8 = false;
                }
                zH = false;
                i20 = z9;
                i19 = z8;
                i21 = 0;
                while (i21 <= i27) {
                    zH2 = d6.h();
                    if (!zH2) {
                        zH2 = d6.h();
                    }
                    if (zH2) {
                        d6.m();
                    } else {
                        if (!d6.h()) {
                            iM = 0;
                        }
                        i22 = i20 + i19;
                        int[] iArr8 = iArr5;
                        i23 = 0;
                        while (i23 < i22) {
                            int i38 = i22;
                            while (i24 <= iM) {
                                d6.m();
                                d6.m();
                                if (zH) {
                                    d6.m();
                                    d6.m();
                                }
                                d6.t();
                            }
                            i23++;
                            i22 = i38;
                        }
                        i21++;
                        iO2 = iO2;
                        iArr5 = iArr8;
                    }
                    iM = d6.m();
                    i22 = i20 + i19;
                    int[] iArr9 = iArr5;
                    i23 = 0;
                    while (i23 < i22) {
                        int i39 = i22;
                        while (i24 <= iM) {
                            d6.m();
                            d6.m();
                            if (zH) {
                                d6.m();
                                d6.m();
                            }
                            d6.t();
                        }
                        i23++;
                        i22 = i39;
                    }
                    i21++;
                    iO2 = iO2;
                    iArr5 = iArr9;
                }
                i35++;
                i34 = 8;
            }
        }
        int[] iArr10 = iArr5;
        if (!d6.h()) {
            return new m(null, iVar, null, null);
        }
        d6.c();
        i iVarG2 = g(d6, false, i27, iVarG);
        boolean zH7 = d6.h();
        boolean[] zArr3 = new boolean[16];
        int i40 = 0;
        for (int i41 = 0; i41 < 16; i41++) {
            boolean zH8 = d6.h();
            zArr3[i41] = zH8;
            if (zH8) {
                i40++;
            }
        }
        if (i40 == 0 || !zArr3[1]) {
            return new m(null, iVar, null, null);
        }
        int[] iArr11 = new int[i40];
        for (int i42 = 0; i42 < i40 - (zH7 ? 1 : 0); i42++) {
            iArr11[i42] = d6.i(3);
        }
        int[] iArr12 = new int[i40 + 1];
        if (zH7) {
            int i43 = 1;
            while (i43 < i40) {
                int[][] iArr13 = iArr3;
                for (int i44 = 0; i44 < i43; i44++) {
                    iArr12[i43] = iArr11[i44] + 1 + iArr12[i43];
                }
                i43++;
                iArr3 = iArr13;
            }
            iArr = iArr3;
            iArr12[i40] = 6;
        } else {
            iArr = iArr3;
        }
        int[][] iArr14 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i26, i40);
        int[] iArr15 = new int[i26];
        iArr15[0] = 0;
        boolean zH9 = d6.h();
        int i45 = 1;
        while (i45 < i26) {
            if (zH9) {
                iArr15[i45] = d6.i(6);
            } else {
                iArr15[i45] = i45;
            }
            if (zH7) {
                z7 = zH7 ? 1 : 0;
                int i46 = 0;
                while (i46 < i40) {
                    int i47 = i46 + 1;
                    iArr14[i45][i46] = (iArr15[i45] & ((1 << iArr12[i47]) - 1)) >> iArr12[i46];
                    i46 = i47;
                }
            } else {
                int i48 = 0;
                while (i48 < i40) {
                    iArr14[i45][i48] = d6.i(iArr11[i48] + 1);
                    i48++;
                    zH7 = zH7 ? 1 : 0;
                }
                z7 = zH7;
            }
            i45++;
            i27 = i27;
            zH7 = z7;
        }
        int i49 = i27;
        int[] iArr16 = new int[i32];
        int i50 = 1;
        for (int i51 = 0; i51 < i26; i51++) {
            iArr16[iArr15[i51]] = -1;
            int i52 = 0;
            for (int i53 = 0; i53 < 16; i53++) {
                if (zArr3[i53]) {
                    if (i53 == 1) {
                        iArr16[iArr15[i51]] = iArr14[i51][i52];
                    }
                    i52++;
                }
            }
            if (i51 > 0) {
                int i54 = 0;
                while (true) {
                    if (i54 >= i51) {
                        i50++;
                        break;
                    }
                    if (iArr16[iArr15[i51]] == iArr16[iArr15[i54]]) {
                        break;
                    }
                    i54++;
                }
            }
        }
        int i55 = d6.i(4);
        if (i50 < 2 || i55 == 0) {
            return new m(null, iVar, null, null);
        }
        int[] iArr17 = new int[i50];
        for (int i56 = 0; i56 < i50; i56++) {
            iArr17[i56] = d6.i(i55);
        }
        int[] iArr18 = new int[i32];
        for (int i57 = 0; i57 < i26; i57++) {
            iArr18[Math.min(iArr15[i57], i31)] = i57;
        }
        E eQ = H.q();
        int i58 = 0;
        while (i58 <= i31) {
            int iMin = Math.min(iArr16[i58], i50 - 1);
            eQ.i0(new h(iArr18[i58], iMin >= 0 ? iArr17[iMin] : -1));
            i58++;
            iArr16 = iArr16;
        }
        d0 d0VarM0 = eQ.m0();
        if (((h) d0VarM0.get(0)).f29455b == -1) {
            return new m(null, iVar, null, null);
        }
        int i59 = 1;
        while (true) {
            if (i59 > i31) {
                i59 = -1;
                break;
            }
            if (((h) d0VarM0.get(i59)).f29455b != -1) {
                break;
            }
            i59++;
        }
        if (i59 == -1) {
            return new m(null, iVar, null, null);
        }
        Class cls = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls, i26, i26);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls, i26, i26);
        for (int i60 = 1; i60 < i26; i60++) {
            for (int i61 = 0; i61 < i60; i61++) {
                boolean[] zArr6 = zArr4[i60];
                boolean[] zArr7 = zArr5[i60];
                boolean zH10 = d6.h();
                zArr7[i61] = zH10;
                zArr6[i61] = zH10;
            }
        }
        for (int i62 = 1; i62 < i26; i62++) {
            for (int i63 = 0; i63 < i25; i63++) {
                for (int i64 = 0; i64 < i62; i64++) {
                    boolean[] zArr8 = zArr5[i62];
                    if (zArr8[i64] && zArr5[i64][i63]) {
                        zArr8[i63] = true;
                        break;
                    }
                }
            }
        }
        int[] iArr19 = new int[i32];
        for (int i65 = 0; i65 < i26; i65++) {
            int i66 = 0;
            for (int i67 = 0; i67 < i65; i67++) {
                i66 += zArr4[i65][i67] ? 1 : 0;
            }
            iArr19[iArr15[i65]] = i66;
        }
        int i68 = 0;
        for (int i69 = 0; i69 < i26; i69++) {
            if (iArr19[iArr15[i69]] == 0) {
                i68++;
            }
        }
        if (i68 > 1) {
            return new m(null, iVar, null, null);
        }
        int[] iArr20 = new int[i26];
        int[] iArr21 = new int[iO];
        if (d6.h()) {
            for (int i70 = 0; i70 < i26; i70++) {
                iArr20[i70] = d6.i(3);
            }
            i10 = i49;
        } else {
            i10 = i49;
            Arrays.fill(iArr20, 0, i26, i10);
        }
        int i71 = 0;
        while (i71 < iO) {
            boolean[][] zArr9 = zArr5;
            int[] iArr22 = iArr19;
            int[] iArr23 = iArr15;
            int iMax = 0;
            for (int i72 = 0; i72 < iArr4[i71]; i72++) {
                iMax = Math.max(iMax, iArr20[((h) d0VarM0.get(iArr[i71][i72])).f29454a]);
            }
            iArr21[i71] = iMax + 1;
            i71++;
            zArr5 = zArr9;
            iArr15 = iArr23;
            iArr19 = iArr22;
        }
        boolean[][] zArr10 = zArr5;
        int[] iArr24 = iArr19;
        int[] iArr25 = iArr15;
        if (d6.h()) {
            int i73 = 0;
            while (i73 < i25) {
                int i74 = i73 + 1;
                for (int i75 = i74; i75 < i26; i75++) {
                    if (zArr4[i75][i73]) {
                        d6.u(3);
                    }
                }
                i73 = i74;
            }
        }
        d6.t();
        int iO3 = d6.o() + 1;
        E eQ2 = H.q();
        eQ2.i0(iVarG);
        if (iO3 > 1) {
            eQ2.i0(iVarG2);
            i iVarG3 = iVarG2;
            for (int i76 = 2; i76 < iO3; i76++) {
                iVarG3 = g(d6, d6.h(), i10, iVarG3);
                eQ2.i0(iVarG3);
            }
        }
        d0 d0VarM1 = eQ2.m0();
        int iO4 = d6.o() + iO;
        if (iO4 > iO) {
            return new m(null, iVar, null, null);
        }
        int i77 = d6.i(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iO4, i32);
        int[] iArr26 = new int[iO4];
        int[] iArr27 = new int[iO4];
        int i78 = 0;
        while (i78 < iO) {
            int i79 = iO;
            iArr26[i78] = 0;
            iArr27[i78] = iArr10[i78];
            if (i77 == 0) {
                zArr2 = zArr4;
                iArr2 = iArr21;
                i18 = i26;
                Arrays.fill(zArr11[i78], 0, iArr4[i78], true);
                iArr26[i78] = iArr4[i78];
            } else {
                i18 = i26;
                zArr2 = zArr4;
                iArr2 = iArr21;
                if (i77 == 1) {
                    int i80 = iArr10[i78];
                    for (int i81 = 0; i81 < iArr4[i78]; i81++) {
                        zArr11[i78][i81] = iArr[i78][i81] == i80;
                    }
                    iArr26[i78] = 1;
                } else {
                    zArr11[0][0] = true;
                    iArr26[0] = 1;
                }
            }
            i78++;
            iO = i79;
            zArr4 = zArr2;
            iArr21 = iArr2;
            i26 = i18;
        }
        int i82 = i26;
        boolean[][] zArr12 = zArr4;
        int[] iArr28 = iArr21;
        int i83 = iO;
        int[] iArr29 = new int[i32];
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iO4, i32);
        int i84 = 0;
        int i85 = 1;
        while (i85 < iO4) {
            if (i77 == 2) {
                for (int i86 = 0; i86 < iArr4[i85]; i86++) {
                    zArr11[i85][i86] = d6.h();
                    int i87 = iArr26[i85];
                    boolean z13 = zArr11[i85][i86];
                    iArr26[i85] = i87 + (z13 ? 1 : 0);
                    if (z13) {
                        iArr27[i85] = iArr[i85][i86];
                    }
                }
            }
            if (i84 == 0 && iArr[i85][0] == 0 && zArr11[i85][0]) {
                for (int i88 = 1; i88 < iArr4[i85]; i88++) {
                    if (iArr[i85][i88] == i59 && zArr11[i85][i59]) {
                        i84 = i85;
                    }
                }
            }
            int i89 = 0;
            while (i89 < iArr4[i85]) {
                if (iO3 > 1) {
                    zArr13[i85][i89] = zArr11[i85][i89];
                    zArr = zArr11;
                    int i90 = i77;
                    i15 = i59;
                    int iC = B4.c.c(iO3, RoundingMode.CEILING);
                    if (zArr13[i85][i89]) {
                        i16 = iO3;
                        i17 = i90;
                        break;
                    }
                    h hVar = (h) d0VarM0.get(iArr[i85][i89]);
                    int i91 = 0;
                    while (true) {
                        if (i91 >= i89) {
                            i16 = iO3;
                            i17 = i90;
                            break;
                        }
                        i16 = iO3;
                        i17 = i90;
                        if (zArr10[hVar.f29454a][((h) d0VarM0.get(iArr[i85][i91])).f29454a]) {
                            zArr13[i85][i89] = true;
                            break;
                        }
                        i91++;
                        i90 = i17;
                        iO3 = i16;
                    }
                    if (zArr13[i85][i89]) {
                        if (i84 <= 0 || i85 != i84) {
                            d6.u(iC);
                        } else {
                            iArr29[i89] = d6.i(iC);
                        }
                    }
                } else {
                    i15 = i59;
                    i16 = iO3;
                    zArr = zArr11;
                    i17 = i77;
                }
                i89++;
                zArr11 = zArr;
                i59 = i15;
                i77 = i17;
                iO3 = i16;
            }
            int i92 = i59;
            int i93 = iO3;
            boolean[][] zArr14 = zArr11;
            int i94 = i77;
            if (iArr26[i85] == 1 && iArr24[iArr27[i85]] > 0) {
                d6.t();
            }
            i85++;
            zArr11 = zArr14;
            i59 = i92;
            i77 = i94;
            iO3 = i93;
        }
        if (i84 == 0) {
            return new m(null, iVar, null, null);
        }
        int iM2 = d6.m();
        int i95 = iM2 + 1;
        E eR = H.r(i95);
        int[] iArr30 = new int[i82];
        for (int i96 = 0; i96 < i95; i96++) {
            int i97 = d6.i(16);
            int i98 = d6.i(16);
            if (d6.h()) {
                i12 = d6.i(2);
                if (i12 == 3) {
                    d6.t();
                }
                i13 = d6.i(4);
                i14 = d6.i(4);
            } else {
                i12 = 0;
                i13 = 0;
                i14 = 0;
            }
            if (d6.h()) {
                int iM3 = d6.m();
                int iM4 = d6.m();
                int iM5 = d6.m();
                int iM6 = d6.m();
                i97 -= (iM3 + iM4) * ((i12 == 1 || i12 == 2) ? 2 : 1);
                i98 -= (iM5 + iM6) * (i12 == 1 ? 2 : 1);
            }
            eR.g0(new j(i12, i13, i14, i97, i98));
        }
        if (i95 <= 1 || !d6.h()) {
            for (int i99 = 1; i99 < i82; i99++) {
                iArr30[i99] = Math.min(i99, iM2);
            }
        } else {
            int iC2 = B4.c.c(i95, RoundingMode.CEILING);
            for (int i100 = 1; i100 < i82; i100++) {
                iArr30[i100] = d6.i(iC2);
            }
        }
        c cVar = new c(eR.m0(), iArr30);
        d6.u(2);
        for (int i101 = 1; i101 < i82; i101++) {
            if (iArr24[iArr25[i101]] == 0) {
                d6.t();
            }
        }
        for (int i102 = 1; i102 < iO4; i102++) {
            boolean zH11 = d6.h();
            for (int i103 = 0; i103 < iArr28[i102]; i103++) {
                if (i103 <= 0 || !zH11) {
                    if (i103 == 0) {
                        for (i11 = 0; i11 < iArr4[i102]; i11++) {
                            if (zArr13[i102][i11]) {
                                d6.m();
                            }
                        }
                        d6.m();
                        d6.m();
                    }
                } else if (d6.h()) {
                    while (i11 < iArr4[i102]) {
                        if (zArr13[i102][i11]) {
                            d6.m();
                        }
                    }
                    d6.m();
                    d6.m();
                }
            }
        }
        int iM7 = d6.m() + 2;
        if (d6.h()) {
            d6.u(iM7);
        } else {
            for (int i104 = 1; i104 < i82; i104++) {
                for (int i105 = 0; i105 < i104; i105++) {
                    if (zArr12[i104][i105]) {
                        d6.u(iM7);
                    }
                }
            }
        }
        int iM8 = d6.m();
        for (int i106 = 1; i106 <= iM8; i106++) {
            d6.u(8);
        }
        if (d6.h()) {
            d6.c();
            if (d6.h() || d6.h()) {
                d6.t();
            }
            boolean zH12 = d6.h();
            boolean zH13 = d6.h();
            if (zH12 || zH13) {
                for (int i107 = 0; i107 < i83; i107++) {
                    for (int i108 = 0; i108 < iArr28[i107]; i108++) {
                        boolean zH14 = zH12 ? d6.h() : false;
                        boolean zH15 = zH13 ? d6.h() : false;
                        if (zH14) {
                            d6.u(32);
                        }
                        if (zH15) {
                            d6.u(18);
                        }
                    }
                }
            }
            boolean zH16 = d6.h();
            int i109 = zH16 ? d6.i(4) + 1 : i82;
            E eR2 = H.r(i109);
            int[] iArr31 = new int[i82];
            for (int i110 = 0; i110 < i109; i110++) {
                d6.u(3);
                int i111 = d6.h() ? 1 : 2;
                int iH = C3126i.h(d6.i(8));
                int i112 = C3126i.i(d6.i(8));
                d6.u(8);
                eR2.g0(new l(iH, i111, i112));
            }
            if (zH16 && i109 > 1) {
                for (int i113 = 0; i113 < i82; i113++) {
                    iArr31[i113] = d6.i(4);
                }
            }
            eVar = new e(eR2.m0(), iArr31);
        } else {
            eVar = null;
        }
        return new m(d0VarM0, new F.i(d0VarM1, iArr29), cVar, eVar);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:103:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:104:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:107:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:110:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:112:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:113:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:116:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:118:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:121:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:124:0x020b  */
    /* JADX WARN: Code duplicated, block: B:127:0x0216  */
    /* JADX WARN: Code duplicated, block: B:130:0x021f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0224 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:133:0x0226  */
    /* JADX WARN: Code duplicated, block: B:136:0x0232  */
    /* JADX WARN: Code duplicated, block: B:137:0x0253  */
    /* JADX WARN: Code duplicated, block: B:138:0x025e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0116  */
    /* JADX WARN: Code duplicated, block: B:62:0x0128  */
    /* JADX WARN: Code duplicated, block: B:64:0x013a  */
    /* JADX WARN: Code duplicated, block: B:65:0x013e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0143  */
    /* JADX WARN: Code duplicated, block: B:68:0x0147  */
    /* JADX WARN: Code duplicated, block: B:70:0x014c  */
    /* JADX WARN: Code duplicated, block: B:71:0x014e  */
    /* JADX WARN: Code duplicated, block: B:75:0x015f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0187  */
    /* JADX WARN: Code duplicated, block: B:95:0x018d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0197  */
    public static o k(int i8, byte[] bArr, int i9) {
        int iM;
        boolean z7;
        int i10;
        int i11;
        int iM2;
        boolean z8;
        boolean zH;
        int i12;
        int i13;
        int i14;
        int i15;
        float f8;
        int i16;
        int i17;
        float f9;
        int i18;
        int i19;
        int i20;
        int i21;
        int iH;
        int i22;
        boolean zH2;
        boolean zH3;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        D d6 = new D(bArr, i8 + 1, i9);
        int i30 = d6.i(8);
        int i31 = d6.i(8);
        int i32 = d6.i(8);
        int iM3 = d6.m();
        if (i30 == 100 || i30 == 110 || i30 == 122 || i30 == 244 || i30 == 44 || i30 == 83 || i30 == 86 || i30 == 118 || i30 == 128 || i30 == 138) {
            iM = d6.m();
            boolean zH4 = iM == 3 ? d6.h() : false;
            int iM4 = d6.m();
            int iM5 = d6.m();
            d6.t();
            if (d6.h()) {
                int i33 = iM == 3 ? 12 : 8;
                int i34 = 0;
                while (i34 < i33) {
                    if (d6.h()) {
                        int i35 = i34 < 6 ? 16 : 64;
                        int iN = 8;
                        int i36 = 8;
                        for (int i37 = 0; i37 < i35; i37++) {
                            if (iN != 0) {
                                iN = ((d6.n() + i36) + 256) % 256;
                            }
                            if (iN != 0) {
                                i36 = iN;
                            }
                        }
                    }
                    i34++;
                }
            }
            z7 = zH4;
            i10 = iM4;
            i11 = iM5;
        } else {
            i10 = 0;
            i11 = 0;
            z7 = false;
            iM = 1;
        }
        int iM6 = d6.m() + 4;
        int iM7 = d6.m();
        if (iM7 != 0) {
            if (iM7 == 1) {
                boolean zH5 = d6.h();
                d6.n();
                d6.n();
                iM7 = iM7;
                long jM = d6.m();
                iM = iM;
                for (int i38 = 0; i38 < jM; i38++) {
                    d6.m();
                }
                z8 = zH5;
                iM2 = 0;
            } else {
                iM2 = 0;
            }
            d6.m();
            d6.t();
            int iM8 = d6.m() + 1;
            int iM9 = d6.m() + 1;
            zH = d6.h();
            i12 = 2 - (zH ? 1 : 0);
            int i39 = iM9 * i12;
            if (!zH) {
                d6.t();
            }
            d6.t();
            i13 = iM8 * 16;
            i14 = i39 * 16;
            if (d6.h()) {
                int iM10 = d6.m();
                int iM11 = d6.m();
                int iM12 = d6.m();
                int iM13 = d6.m();
                if (iM == 0) {
                    i28 = 1;
                } else {
                    i26 = iM;
                    if (i26 == 3) {
                        i27 = 1;
                        i28 = 1;
                    } else {
                        i27 = 1;
                        i28 = 2;
                    }
                    if (i26 == i27) {
                        i29 = 2;
                    } else {
                        i29 = 1;
                    }
                    i12 *= i29;
                }
                i13 -= (iM10 + iM11) * i28;
                i14 -= (iM12 + iM13) * i12;
            }
            i15 = ((i30 != 44 || i30 == 86 || i30 == 100 || i30 == 110 || i30 == 122 || i30 == 244) && (i31 & 16) != 0) ? 0 : 16;
            f8 = 1.0f;
            if (d6.h()) {
                if (d6.h()) {
                    i23 = d6.i(8);
                    if (i23 == 255) {
                        i24 = d6.i(16);
                        i25 = d6.i(16);
                        if (i24 != 0 && i25 != 0) {
                            f8 = i24 / i25;
                        }
                    } else if (i23 < 17) {
                        f8 = f29509b[i23];
                    } else {
                        U2.v("Unexpected aspect_ratio_idc value: ", i23, "NalUnitUtil");
                    }
                }
                if (d6.h()) {
                    d6.t();
                }
                if (d6.h()) {
                    d6.u(3);
                    if (d6.h()) {
                        i20 = 1;
                    } else {
                        i20 = 2;
                    }
                    if (d6.h()) {
                        int i40 = d6.i(8);
                        int i41 = d6.i(8);
                        d6.u(8);
                        iH = C3126i.h(i40);
                        i21 = C3126i.i(i41);
                    }
                    if (d6.h()) {
                        d6.m();
                        d6.m();
                    }
                    i22 = i20;
                    if (d6.h()) {
                        d6.u(65);
                    }
                    zH2 = d6.h();
                    if (zH2) {
                        l(d6);
                    }
                    zH3 = d6.h();
                    if (zH3) {
                        l(d6);
                    }
                    if (zH2 || zH3) {
                        d6.t();
                    }
                    d6.t();
                    if (d6.h()) {
                        d6.t();
                        d6.m();
                        d6.m();
                        d6.m();
                        d6.m();
                        int iM14 = d6.m();
                        d6.m();
                        i16 = iM14;
                        i19 = i21;
                        i18 = iH;
                        f9 = f8;
                        i17 = i22;
                    } else {
                        i17 = i22;
                        i19 = i21;
                        i18 = iH;
                        i16 = i15;
                        f9 = f8;
                    }
                } else {
                    i20 = -1;
                }
                i21 = -1;
                iH = -1;
                if (d6.h()) {
                    d6.m();
                    d6.m();
                }
                i22 = i20;
                if (d6.h()) {
                    d6.u(65);
                }
                zH2 = d6.h();
                if (zH2) {
                    l(d6);
                }
                zH3 = d6.h();
                if (zH3) {
                    l(d6);
                }
                if (zH2) {
                    d6.t();
                } else {
                    d6.t();
                }
                d6.t();
                if (d6.h()) {
                    d6.t();
                    d6.m();
                    d6.m();
                    d6.m();
                    d6.m();
                    int iM15 = d6.m();
                    d6.m();
                    i16 = iM15;
                    i19 = i21;
                    i18 = iH;
                    f9 = f8;
                    i17 = i22;
                } else {
                    i17 = i22;
                    i19 = i21;
                    i18 = iH;
                    i16 = i15;
                    f9 = f8;
                }
            } else {
                i16 = i15;
                i17 = -1;
                f9 = 1.0f;
                i18 = -1;
                i19 = -1;
            }
            return new o(i30, i31, i32, iM3, i13, i14, f9, i10, i11, z7, zH, iM6, iM7, iM2, z8, i18, i17, i19, i16);
        }
        iM2 = d6.m() + 4;
        z8 = false;
        d6.m();
        d6.t();
        int iM16 = d6.m() + 1;
        int iM17 = d6.m() + 1;
        zH = d6.h();
        i12 = 2 - (zH ? 1 : 0);
        int i310 = iM17 * i12;
        if (!zH) {
            d6.t();
        }
        d6.t();
        i13 = iM16 * 16;
        i14 = i310 * 16;
        if (d6.h()) {
            int iM18 = d6.m();
            int iM19 = d6.m();
            int iM110 = d6.m();
            int iM111 = d6.m();
            if (iM == 0) {
                i28 = 1;
            } else {
                i26 = iM;
                if (i26 == 3) {
                    i27 = 1;
                    i28 = 1;
                } else {
                    i27 = 1;
                    i28 = 2;
                }
                if (i26 == i27) {
                    i29 = 2;
                } else {
                    i29 = 1;
                }
                i12 *= i29;
            }
            i13 -= (iM18 + iM19) * i28;
            i14 -= (iM110 + iM111) * i12;
        }
        if (i30 != 44) {
        }
        f8 = 1.0f;
        if (d6.h()) {
            if (d6.h()) {
                i23 = d6.i(8);
                if (i23 == 255) {
                    i24 = d6.i(16);
                    i25 = d6.i(16);
                    if (i24 != 0) {
                        f8 = i24 / i25;
                    }
                } else if (i23 < 17) {
                    f8 = f29509b[i23];
                } else {
                    U2.v("Unexpected aspect_ratio_idc value: ", i23, "NalUnitUtil");
                }
            }
            if (d6.h()) {
                d6.t();
            }
            if (d6.h()) {
                d6.u(3);
                if (d6.h()) {
                    i20 = 1;
                } else {
                    i20 = 2;
                }
                if (d6.h()) {
                    int i42 = d6.i(8);
                    int i43 = d6.i(8);
                    d6.u(8);
                    iH = C3126i.h(i42);
                    i21 = C3126i.i(i43);
                }
                if (d6.h()) {
                    d6.m();
                    d6.m();
                }
                i22 = i20;
                if (d6.h()) {
                    d6.u(65);
                }
                zH2 = d6.h();
                if (zH2) {
                    l(d6);
                }
                zH3 = d6.h();
                if (zH3) {
                    l(d6);
                }
                if (zH2) {
                    d6.t();
                } else {
                    d6.t();
                }
                d6.t();
                if (d6.h()) {
                    d6.t();
                    d6.m();
                    d6.m();
                    d6.m();
                    d6.m();
                    int iM112 = d6.m();
                    d6.m();
                    i16 = iM112;
                    i19 = i21;
                    i18 = iH;
                    f9 = f8;
                    i17 = i22;
                } else {
                    i17 = i22;
                    i19 = i21;
                    i18 = iH;
                    i16 = i15;
                    f9 = f8;
                }
            } else {
                i20 = -1;
            }
            i21 = -1;
            iH = -1;
            if (d6.h()) {
                d6.m();
                d6.m();
            }
            i22 = i20;
            if (d6.h()) {
                d6.u(65);
            }
            zH2 = d6.h();
            if (zH2) {
                l(d6);
            }
            zH3 = d6.h();
            if (zH3) {
                l(d6);
            }
            if (zH2) {
                d6.t();
            } else {
                d6.t();
            }
            d6.t();
            if (d6.h()) {
                d6.t();
                d6.m();
                d6.m();
                d6.m();
                d6.m();
                int iM113 = d6.m();
                d6.m();
                i16 = iM113;
                i19 = i21;
                i18 = iH;
                f9 = f8;
                i17 = i22;
            } else {
                i17 = i22;
                i19 = i21;
                i18 = iH;
                i16 = i15;
                f9 = f8;
            }
        } else {
            i16 = i15;
            i17 = -1;
            f9 = 1.0f;
            i18 = -1;
            i19 = -1;
        }
        return new o(i30, i31, i32, iM3, i13, i14, f9, i10, i11, z7, zH, iM6, iM7, iM2, z8, i18, i17, i19, i16);
    }

    public static void l(D d6) {
        int iM = d6.m() + 1;
        d6.u(8);
        for (int i8 = 0; i8 < iM; i8++) {
            d6.m();
            d6.m();
            d6.t();
        }
        d6.u(20);
    }

    public static int m(int i8, byte[] bArr) {
        int i9;
        synchronized (f29510c) {
            int i10 = 0;
            int i11 = 0;
            while (i10 < i8) {
                while (true) {
                    if (i10 >= i8 - 2) {
                        i10 = i8;
                        break;
                    }
                    try {
                        if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                            break;
                        }
                        i10++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i10 < i8) {
                    int[] iArr = f29511d;
                    if (iArr.length <= i11) {
                        f29511d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f29511d[i11] = i10;
                    i10 += 3;
                    i11++;
                }
            }
            i9 = i8 - i11;
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = f29511d[i14] - i13;
                System.arraycopy(bArr, i13, bArr, i12, i15);
                int i16 = i12 + i15;
                int i17 = i16 + 1;
                bArr[i16] = 0;
                i12 = i16 + 2;
                bArr[i17] = 0;
                i13 += i15 + 3;
            }
            System.arraycopy(bArr, i13, bArr, i12, i9 - i12);
        }
        return i9;
    }
}
