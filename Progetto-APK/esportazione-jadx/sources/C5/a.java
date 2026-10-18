package C5;

import java.util.Arrays;
import java.util.Map;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char[] f1634d = "0123456789-$:/.+ABCD".toCharArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1635e = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final char[] f1636f = {'A', 'B', 'C', 'D'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f1637a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f1638b = new int[80];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1639c = 0;

    public static boolean i(char c8, char[] cArr) {
        if (cArr != null) {
            for (char c9 : cArr) {
                if (c9 == c8) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0213  */
    @Override // C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) throws p130q5.i {
        int i9;
        int i10;
        int[] iArr;
        int i11;
        int i12 = -1;
        int i13 = 2;
        int i14 = 0;
        Arrays.fill(this.f1638b, 0);
        this.f1639c = 0;
        int iF = aVar.f(0);
        int i15 = aVar.f31090H;
        if (iF >= i15) {
            throw p130q5.i.f29623I;
        }
        int i16 = 0;
        boolean z7 = true;
        while (iF < i15) {
            if (aVar.d(iF) != z7) {
                i16++;
            } else {
                int[] iArr2 = this.f1638b;
                int i17 = this.f1639c;
                iArr2[i17] = i16;
                int i18 = i17 + 1;
                this.f1639c = i18;
                if (i18 >= iArr2.length) {
                    int[] iArr3 = new int[i18 << 1];
                    System.arraycopy(iArr2, 0, iArr3, 0, i18);
                    this.f1638b = iArr3;
                }
                z7 = !z7;
                i16 = 1;
            }
            iF++;
        }
        int[] iArr4 = this.f1638b;
        int i19 = this.f1639c;
        iArr4[i19] = i16;
        int i20 = i19 + 1;
        this.f1639c = i20;
        if (i20 >= iArr4.length) {
            int[] iArr5 = new int[i20 << 1];
            System.arraycopy(iArr4, 0, iArr5, 0, i20);
            this.f1638b = iArr5;
        }
        int i21 = 1;
        while (i21 < this.f1639c) {
            int iJ = j(i21);
            if (iJ != i12) {
                char[] cArr = f1634d;
                char c8 = cArr[iJ];
                char[] cArr2 = f1636f;
                if (i(c8, cArr2)) {
                    int i22 = 0;
                    for (int i23 = i21; i23 < i21 + 7; i23++) {
                        i22 += this.f1638b[i23];
                    }
                    if (i21 == 1 || this.f1638b[i21 - 1] >= i22 / i13) {
                        StringBuilder sb = this.f1637a;
                        sb.setLength(i14);
                        int i24 = i21;
                        while (true) {
                            int iJ2 = j(i24);
                            if (iJ2 == i12) {
                                throw p130q5.i.f29623I;
                            }
                            sb.append((char) iJ2);
                            i10 = i24 + 8;
                            if ((sb.length() > 1 && i(cArr[iJ2], cArr2)) || i10 >= this.f1639c) {
                                break;
                            }
                            i24 = i10;
                            i14 = 0;
                        }
                        int i25 = i24 + 7;
                        int i26 = this.f1638b[i25];
                        int i27 = 0;
                        for (int i28 = -8; i28 < i12; i28++) {
                            i27 += this.f1638b[i10 + i28];
                        }
                        if (i10 < this.f1639c && i26 < i27 / i13) {
                            throw p130q5.i.f29623I;
                        }
                        int[] iArr6 = {i14, i14, i14, i14};
                        int[] iArr7 = {i14, i14, i14, i14};
                        int length = sb.length() - 1;
                        int i29 = i21;
                        int i30 = 0;
                        while (true) {
                            char cCharAt = sb.charAt(i30);
                            iArr = f1635e;
                            int i31 = iArr[cCharAt];
                            for (int i32 = 6; i32 >= 0; i32--) {
                                int i33 = (i32 & 1) + ((i31 & 1) << 1);
                                iArr6[i33] = iArr6[i33] + this.f1638b[i29 + i32];
                                iArr7[i33] = iArr7[i33] + 1;
                                i31 >>= 1;
                            }
                            if (i30 >= length) {
                                break;
                            }
                            i29 += 8;
                            i30++;
                        }
                        float[] fArr = new float[4];
                        float[] fArr2 = new float[4];
                        int i34 = 0;
                        while (i34 < i13) {
                            fArr2[i34] = 0.0f;
                            int i35 = i34 + 2;
                            float f8 = iArr6[i34] / iArr7[i34];
                            float f9 = iArr6[i35];
                            float f10 = iArr7[i35];
                            float f11 = ((f9 / f10) + f8) / 2.0f;
                            fArr2[i35] = f11;
                            fArr[i34] = f11;
                            fArr[i35] = ((f9 * 2.0f) + 1.5f) / f10;
                            i34++;
                            i13 = 2;
                        }
                        int i36 = 1;
                        int i37 = i21;
                        int i38 = 0;
                        loop8: while (true) {
                            int i39 = iArr[sb.charAt(i38)];
                            for (int i40 = 6; i40 >= 0; i40--) {
                                int i41 = (i40 & 1) + ((i39 & 1) << 1);
                                float f12 = this.f1638b[i37 + i40];
                                if (f12 < fArr2[i41] || f12 > fArr[i41]) {
                                    break loop8;
                                }
                                i36 = 1;
                                i39 >>= 1;
                            }
                            if (i38 >= length) {
                                for (int i42 = 0; i42 < sb.length(); i42 += i36) {
                                    sb.setCharAt(i42, cArr[sb.charAt(i42)]);
                                }
                                if (!i(sb.charAt(0), cArr2)) {
                                    throw p130q5.i.f29623I;
                                }
                                if (!i(sb.charAt(sb.length() - i36), cArr2)) {
                                    throw p130q5.i.f29623I;
                                }
                                if (sb.length() <= 3) {
                                    throw p130q5.i.f29623I;
                                }
                                if (map == null || !map.containsKey(p130q5.c.f29604O)) {
                                    i11 = 1;
                                    sb.deleteCharAt(sb.length() - 1);
                                    sb.deleteCharAt(0);
                                } else {
                                    i11 = 1;
                                }
                                int i43 = 0;
                                for (int i44 = 0; i44 < i21; i44 += i11) {
                                    i43 += this.f1638b[i44];
                                }
                                float f13 = i43;
                                while (i21 < i25) {
                                    i43 += this.f1638b[i21];
                                    i21 += i11;
                                }
                                String string = sb.toString();
                                float f14 = i8;
                                return new p130q5.m(string, null, new o[]{new o(f13, f14), new o(i43, f14)}, p130q5.a.f29579H);
                            }
                            i37 += 8;
                            i38 += i36;
                        }
                        throw p130q5.i.f29623I;
                    }
                    i9 = 2;
                } else {
                    i9 = 2;
                }
            } else {
                i9 = 2;
            }
            i21 += i9;
            i12 = -1;
            i13 = 2;
            i14 = 0;
        }
        throw p130q5.i.f29623I;
    }

    public final int j(int i8) {
        int i9 = i8 + 7;
        if (i9 >= this.f1639c) {
            return -1;
        }
        int[] iArr = this.f1638b;
        int i10 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        int i11 = 0;
        int i12 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        int i13 = 0;
        for (int i14 = i8; i14 < i9; i14 += 2) {
            int i15 = iArr[i14];
            if (i15 < i12) {
                i12 = i15;
            }
            if (i15 > i13) {
                i13 = i15;
            }
        }
        int i16 = (i12 + i13) / 2;
        int i17 = 0;
        for (int i18 = i8 + 1; i18 < i9; i18 += 2) {
            int i19 = iArr[i18];
            if (i19 < i10) {
                i10 = i19;
            }
            if (i19 > i17) {
                i17 = i19;
            }
        }
        int i20 = (i10 + i17) / 2;
        int i21 = 128;
        int i22 = 0;
        for (int i23 = 0; i23 < 7; i23++) {
            i21 >>= 1;
            if (iArr[i8 + i23] > ((i23 & 1) == 0 ? i16 : i20)) {
                i22 |= i21;
            }
        }
        while (true) {
            int[] iArr2 = f1635e;
            if (i11 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i11] == i22) {
                return i11;
            }
            i11++;
        }
    }
}
