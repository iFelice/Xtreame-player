package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ni, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0853Ni {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f15054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f15055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f15056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f15057f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f15058g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15059h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final short[] f15060i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public short[] f15061j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f15062k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public short[] f15063l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f15064m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public short[] f15065n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f15066o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f15067p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f15068q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f15069r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f15070s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f15071t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f15072u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f15073v;

    public C0853Ni(int i8, int i9, float f8, float f9, int i10) {
        this.f15052a = i8;
        this.f15053b = i9;
        this.f15054c = f8;
        this.f15055d = f9;
        this.f15056e = i8 / i10;
        this.f15057f = i8 / 400;
        int i11 = i8 / 65;
        this.f15058g = i11;
        int i12 = i11 + i11;
        this.f15059h = i12;
        this.f15060i = new short[i12];
        int i13 = i12 * i9;
        this.f15061j = new short[i13];
        this.f15063l = new short[i13];
        this.f15065n = new short[i13];
    }

    public static void d(int i8, int i9, short[] sArr, int i10, short[] sArr2, int i11, short[] sArr3, int i12) {
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = (i11 * i9) + i13;
            int i15 = (i12 * i9) + i13;
            int i16 = (i10 * i9) + i13;
            for (int i17 = 0; i17 < i8; i17++) {
                sArr[i16] = (short) (((sArr3[i15] * i17) + ((i8 - i17) * sArr2[i14])) / i8);
                i16 += i9;
                i14 += i9;
                i15 += i9;
            }
        }
    }

    public final int a(short[] sArr, int i8, int i9, int i10) {
        int i11 = 1;
        int i12 = 255;
        int i13 = 0;
        int i14 = 0;
        while (i9 <= i10) {
            int iAbs = 0;
            for (int i15 = 0; i15 < i9; i15++) {
                int i16 = this.f15053b * i8;
                iAbs += Math.abs(sArr[i16 + i15] - sArr[(i16 + i9) + i15]);
            }
            int i17 = iAbs * i13;
            int i18 = i11 * i9;
            if (i17 < i18) {
                i11 = iAbs;
            }
            if (i17 < i18) {
                i13 = i9;
            }
            int i19 = iAbs * i12;
            int i20 = i14 * i9;
            if (i19 > i20) {
                i14 = iAbs;
            }
            if (i19 > i20) {
                i12 = i9;
            }
            i9++;
        }
        this.f15072u = i11 / i13;
        this.f15073v = i14 / i12;
        return i13;
    }

    public final void b(short[] sArr, int i8, int i9) {
        short[] sArrF = f(this.f15063l, this.f15064m, i9);
        this.f15063l = sArrF;
        int i10 = this.f15064m;
        int i11 = this.f15053b;
        System.arraycopy(sArr, i8 * i11, sArrF, i10 * i11, i9 * i11);
        this.f15064m += i9;
    }

    public final void c(short[] sArr, int i8, int i9) {
        int i10;
        for (int i11 = 0; i11 < this.f15059h / i9; i11++) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                int i14 = this.f15053b;
                i10 = i14 * i9;
                if (i12 < i10) {
                    i13 += sArr[(i10 * i11) + (i14 * i8) + i12];
                    i12++;
                }
            }
            this.f15060i[i11] = (short) (i13 / i10);
        }
    }

    public final void e() {
        int i8;
        int i9;
        float f8;
        int iA;
        int i10;
        int i11;
        int i12;
        float f9;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        float f10 = this.f15054c;
        float f11 = this.f15055d;
        float f12 = f10 / f11;
        double d6 = f12;
        int i18 = this.f15052a;
        int i19 = this.f15053b;
        int i20 = 1;
        int i21 = this.f15064m;
        if (d6 > 1.00001d || d6 < 0.99999d) {
            int i22 = this.f15062k;
            int i23 = this.f15059h;
            if (i22 >= i23) {
                int i24 = 0;
                while (true) {
                    int i25 = this.f15069r;
                    if (i25 > 0) {
                        int iMin = Math.min(i23, i25);
                        b(this.f15061j, i24, iMin);
                        this.f15069r -= iMin;
                        i24 += iMin;
                        f8 = f11;
                        i9 = i21;
                        i8 = i18;
                    } else {
                        short[] sArr = this.f15061j;
                        int i26 = i18 > 4000 ? i18 / 4000 : 1;
                        int i27 = this.f15058g;
                        int i28 = this.f15057f;
                        if (i19 == i20 && i26 == i20) {
                            iA = a(sArr, i24, i28, i27);
                            f8 = f11;
                            i9 = i21;
                            i8 = i18;
                        } else {
                            c(sArr, i24, i26);
                            i8 = i18;
                            i9 = i21;
                            short[] sArr2 = this.f15060i;
                            f8 = f11;
                            int iA2 = a(sArr2, 0, i28 / i26, i27 / i26);
                            if (i26 != 1) {
                                int i29 = iA2 * i26;
                                int i30 = i26 * 4;
                                int i31 = i29 - i30;
                                if (i31 >= i28) {
                                    i28 = i31;
                                }
                                int i32 = i29 + i30;
                                if (i32 <= i27) {
                                    i27 = i32;
                                }
                                if (i19 == 1) {
                                    iA = a(sArr, i24, i28, i27);
                                } else {
                                    c(sArr, i24, 1);
                                    iA = a(sArr2, 0, i28, i27);
                                }
                            } else {
                                iA = iA2;
                            }
                        }
                        int i33 = this.f15072u;
                        int i34 = this.f15073v;
                        if (i33 == 0 || (i10 = this.f15070s) == 0 || i34 > i33 * 3 || i33 + i33 <= this.f15071t * 3) {
                            i10 = iA;
                        }
                        int i35 = i24 + i10;
                        this.f15071t = i33;
                        this.f15070s = iA;
                        float f13 = i10;
                        if (d6 > 1.0d) {
                            short[] sArr3 = this.f15061j;
                            float f14 = (-1.0f) + f12;
                            if (f12 >= 2.0f) {
                                i12 = (int) (f13 / f14);
                            } else {
                                this.f15069r = (int) (((2.0f - f12) * f13) / f14);
                                i12 = i10;
                            }
                            short[] sArrF = f(this.f15063l, this.f15064m, i12);
                            this.f15063l = sArrF;
                            int i36 = i24;
                            d(i12, this.f15053b, sArrF, this.f15064m, sArr3, i36, sArr3, i35);
                            this.f15064m += i12;
                            i24 = i10 + i12 + i36;
                        } else {
                            int i37 = i24;
                            short[] sArr4 = this.f15061j;
                            float f15 = 1.0f - f12;
                            if (f12 < 0.5f) {
                                i11 = (int) ((f13 * f12) / f15);
                            } else {
                                this.f15069r = (int) ((((f12 + f12) - 1.0f) * f13) / f15);
                                i11 = i10;
                            }
                            int i38 = i10 + i11;
                            short[] sArrF2 = f(this.f15063l, this.f15064m, i38);
                            this.f15063l = sArrF2;
                            System.arraycopy(sArr4, i37 * i19, sArrF2, this.f15064m * i19, i10 * i19);
                            d(i11, this.f15053b, this.f15063l, this.f15064m + i10, sArr4, i35, sArr4, i37);
                            this.f15064m += i38;
                            i24 = i37 + i11;
                        }
                    }
                    if (i24 + i23 > i22) {
                        break;
                    }
                    i18 = i8;
                    i21 = i9;
                    f11 = f8;
                    i20 = 1;
                }
                int i39 = this.f15062k - i24;
                short[] sArr5 = this.f15061j;
                System.arraycopy(sArr5, i24 * i19, sArr5, 0, i39 * i19);
                this.f15062k = i39;
            }
            f9 = this.f15056e * f8;
            if (f9 != 1.0f || this.f15064m == (i13 = i9)) {
            }
            int i40 = i8;
            int i41 = (int) (i40 / f9);
            int i42 = i40;
            while (true) {
                if (i41 <= 16384 && i42 <= 16384) {
                    break;
                }
                i41 /= 2;
                i42 /= 2;
            }
            int i43 = this.f15064m - i13;
            short[] sArrF3 = f(this.f15065n, this.f15066o, i43);
            this.f15065n = sArrF3;
            System.arraycopy(this.f15063l, i13 * i19, sArrF3, this.f15066o * i19, i43 * i19);
            this.f15064m = i13;
            this.f15066o += i43;
            int i44 = 0;
            while (true) {
                i14 = this.f15066o;
                i15 = i14 - 1;
                if (i44 >= i15) {
                    break;
                }
                while (true) {
                    i16 = this.f15067p + 1;
                    int i45 = i16 * i41;
                    i17 = this.f15068q;
                    if (i45 <= i17 * i42) {
                        break;
                    }
                    this.f15063l = f(this.f15063l, this.f15064m, 1);
                    for (int i46 = 0; i46 < i19; i46++) {
                        short[] sArr6 = this.f15063l;
                        int i47 = this.f15064m * i19;
                        short[] sArr7 = this.f15065n;
                        int i48 = (i44 * i19) + i46;
                        short s7 = sArr7[i48];
                        short s8 = sArr7[i48 + i19];
                        int i49 = this.f15068q * i42;
                        int i50 = this.f15067p;
                        int i51 = i50 * i41;
                        int i52 = (i50 + 1) * i41;
                        int i53 = i52 - i49;
                        int i54 = i52 - i51;
                        sArr6[i47 + i46] = (short) ((((i54 - i53) * s8) + (s7 * i53)) / i54);
                    }
                    this.f15068q++;
                    this.f15064m++;
                }
                this.f15067p = i16;
                if (i16 == i42) {
                    this.f15067p = 0;
                    p113o3.r.M(i17 == i41);
                    this.f15068q = 0;
                }
                i44++;
            }
            if (i15 != 0) {
                short[] sArr8 = this.f15065n;
                System.arraycopy(sArr8, i15 * i19, sArr8, 0, (i14 - i15) * i19);
                this.f15066o -= i15;
                return;
            }
            return;
        }
        b(this.f15061j, 0, this.f15062k);
        this.f15062k = 0;
        f8 = f11;
        i9 = i21;
        i8 = i18;
        f9 = this.f15056e * f8;
        if (f9 != 1.0f) {
        }
    }

    public final short[] f(short[] sArr, int i8, int i9) {
        int length = sArr.length;
        int i10 = this.f15053b;
        int i11 = length / i10;
        return i8 + i9 <= i11 ? sArr : Arrays.copyOf(sArr, (((i11 * 3) / 2) + i9) * i10);
    }
}
