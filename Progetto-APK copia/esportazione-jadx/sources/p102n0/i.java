package p102n0;

import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f27336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f27337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f27338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f27340g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f27341h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final short[] f27342i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public short[] f27343j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f27344k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public short[] f27345l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f27346m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public short[] f27347n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f27348o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f27349p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f27350q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f27351r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f27352s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f27353t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f27354u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f27355v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public double f27356w;

    public i(int i8, int i9, float f8, float f9, int i10) {
        this.f27334a = i8;
        this.f27335b = i9;
        this.f27336c = f8;
        this.f27337d = f9;
        this.f27338e = i8 / i10;
        this.f27339f = i8 / 400;
        int i11 = i8 / 65;
        this.f27340g = i11;
        int i12 = i11 * 2;
        this.f27341h = i12;
        this.f27342i = new short[i12];
        this.f27343j = new short[i12 * i9];
        this.f27345l = new short[i12 * i9];
        this.f27347n = new short[i12 * i9];
    }

    public static void e(int i8, int i9, short[] sArr, int i10, short[] sArr2, int i11, short[] sArr3, int i12) {
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = (i10 * i9) + i13;
            int i15 = (i12 * i9) + i13;
            int i16 = (i11 * i9) + i13;
            for (int i17 = 0; i17 < i8; i17++) {
                sArr[i14] = (short) (((sArr3[i15] * i17) + ((i8 - i17) * sArr2[i16])) / i8);
                i14 += i9;
                i16 += i9;
                i15 += i9;
            }
        }
    }

    public final void a(short[] sArr, int i8, int i9) {
        short[] sArrC = c(this.f27345l, this.f27346m, i9);
        this.f27345l = sArrC;
        int i10 = this.f27335b;
        System.arraycopy(sArr, i8 * i10, sArrC, this.f27346m * i10, i10 * i9);
        this.f27346m += i9;
    }

    public final void b(short[] sArr, int i8, int i9) {
        int i10 = this.f27341h / i9;
        int i11 = this.f27335b;
        int i12 = i9 * i11;
        int i13 = i8 * i11;
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = 0;
            for (int i16 = 0; i16 < i12; i16++) {
                i15 += sArr[(i14 * i12) + i13 + i16];
            }
            this.f27342i[i14] = (short) (i15 / i12);
        }
    }

    public final short[] c(short[] sArr, int i8, int i9) {
        int length = sArr.length;
        int i10 = this.f27335b;
        int i11 = length / i10;
        return i8 + i9 <= i11 ? sArr : Arrays.copyOf(sArr, (((i11 * 3) / 2) + i9) * i10);
    }

    public final int d(short[] sArr, int i8, int i9, int i10) {
        int i11 = i8 * this.f27335b;
        int i12 = 255;
        int i13 = 1;
        int i14 = 0;
        int i15 = 0;
        while (i9 <= i10) {
            int iAbs = 0;
            for (int i16 = 0; i16 < i9; i16++) {
                iAbs += Math.abs(sArr[i11 + i16] - sArr[(i11 + i9) + i16]);
            }
            if (iAbs * i14 < i13 * i9) {
                i14 = i9;
                i13 = iAbs;
            }
            if (iAbs * i12 > i15 * i9) {
                i12 = i9;
                i15 = iAbs;
            }
            i9++;
        }
        this.f27354u = i13 / i14;
        this.f27355v = i15 / i12;
        return i14;
    }

    public final void f() {
        int i8;
        int i9;
        int iD;
        int i10;
        int iRound;
        int iRound2;
        int i11;
        int i12;
        int i13;
        int i14;
        long j8;
        long j9;
        int i15 = this.f27346m;
        float f8 = this.f27336c;
        float f9 = this.f27337d;
        double d6 = f8 / f9;
        float f10 = this.f27338e * f9;
        int i16 = this.f27334a;
        int i17 = this.f27335b;
        int i18 = 0;
        int i19 = 1;
        if (d6 > 1.0000100135803223d || d6 < 0.9999899864196777d) {
            int i20 = this.f27344k;
            int i21 = this.f27341h;
            if (i20 >= i21) {
                int i22 = 0;
                while (true) {
                    int i23 = this.f27351r;
                    if (i23 > 0) {
                        int iMin = Math.min(i21, i23);
                        a(this.f27343j, i22, iMin);
                        this.f27351r -= iMin;
                        i22 += iMin;
                        i9 = i15;
                        i8 = i16;
                    } else {
                        short[] sArr = this.f27343j;
                        int i24 = i16 > 4000 ? i16 / 4000 : 1;
                        int i25 = this.f27340g;
                        int i26 = this.f27339f;
                        if (i17 == i19 && i24 == i19) {
                            iD = d(sArr, i22, i26, i25);
                            i9 = i15;
                            i8 = i16;
                        } else {
                            b(sArr, i22, i24);
                            i8 = i16;
                            i9 = i15;
                            short[] sArr2 = this.f27342i;
                            int iD2 = d(sArr2, i18, i26 / i24, i25 / i24);
                            if (i24 != 1) {
                                int i27 = iD2 * i24;
                                int i28 = i24 * 4;
                                int i29 = i27 - i28;
                                int i30 = i27 + i28;
                                if (i29 >= i26) {
                                    i26 = i29;
                                }
                                if (i30 <= i25) {
                                    i25 = i30;
                                }
                                if (i17 == 1) {
                                    iD = d(sArr, i22, i26, i25);
                                } else {
                                    b(sArr, i22, 1);
                                    iD = d(sArr2, i18, i26, i25);
                                }
                            } else {
                                iD = iD2;
                            }
                        }
                        int i31 = this.f27354u;
                        int i32 = this.f27355v;
                        if (i31 == 0 || (i10 = this.f27352s) == 0 || i32 > i31 * 3 || i31 * 2 <= this.f27353t * 3) {
                            i10 = iD;
                        }
                        this.f27353t = i31;
                        this.f27352s = iD;
                        if (d6 > 1.0d) {
                            short[] sArr3 = this.f27343j;
                            if (d6 >= 2.0d) {
                                double d8 = (((double) i10) / (d6 - 1.0d)) + this.f27356w;
                                iRound2 = (int) Math.round(d8);
                                this.f27356w = d8 - ((double) iRound2);
                            } else {
                                double d9 = (((2.0d - d6) * ((double) i10)) / (d6 - 1.0d)) + this.f27356w;
                                int iRound3 = (int) Math.round(d9);
                                this.f27351r = iRound3;
                                this.f27356w = d9 - ((double) iRound3);
                                iRound2 = i10;
                            }
                            short[] sArrC = c(this.f27345l, this.f27346m, iRound2);
                            this.f27345l = sArrC;
                            int i33 = i22;
                            e(iRound2, this.f27335b, sArrC, this.f27346m, sArr3, i33, sArr3, i22 + i10);
                            this.f27346m += iRound2;
                            i22 = i10 + iRound2 + i33;
                        } else {
                            int i34 = i22;
                            short[] sArr4 = this.f27343j;
                            if (d6 < 0.5d) {
                                double d10 = ((((double) i10) * d6) / (1.0d - d6)) + this.f27356w;
                                iRound = (int) Math.round(d10);
                                this.f27356w = d10 - ((double) iRound);
                            } else {
                                double d11 = ((((2.0d * d6) - 1.0d) * ((double) i10)) / (1.0d - d6)) + this.f27356w;
                                int iRound4 = (int) Math.round(d11);
                                this.f27351r = iRound4;
                                this.f27356w = d11 - ((double) iRound4);
                                iRound = i10;
                            }
                            int i35 = i10 + iRound;
                            short[] sArrC2 = c(this.f27345l, this.f27346m, i35);
                            this.f27345l = sArrC2;
                            System.arraycopy(sArr4, i34 * i17, sArrC2, this.f27346m * i17, i10 * i17);
                            e(iRound, this.f27335b, this.f27345l, this.f27346m + i10, sArr4, i34 + i10, sArr4, i34);
                            this.f27346m += i35;
                            i22 = i34 + iRound;
                        }
                    }
                    if (i22 + i21 > i20) {
                        break;
                    }
                    i16 = i8;
                    i15 = i9;
                    i18 = 0;
                    i19 = 1;
                }
                int i36 = this.f27344k - i22;
                short[] sArr5 = this.f27343j;
                System.arraycopy(sArr5, i22 * i17, sArr5, i18, i36 * i17);
                this.f27344k = i36;
            }
            if (f10 != 1.0f || this.f27346m == (i11 = i9)) {
            }
            int i37 = i8;
            long j10 = (long) (i37 / f10);
            long j11 = i37;
            while (j10 != 0 && j11 != 0 && j10 % 2 == 0 && j11 % 2 == 0) {
                j10 /= 2;
                j11 /= 2;
            }
            int i38 = this.f27346m - i11;
            short[] sArrC3 = c(this.f27347n, this.f27348o, i38);
            this.f27347n = sArrC3;
            System.arraycopy(this.f27345l, i11 * i17, sArrC3, this.f27348o * i17, i38 * i17);
            this.f27346m = i11;
            this.f27348o += i38;
            int i39 = 0;
            while (true) {
                i12 = this.f27348o;
                i13 = i12 - 1;
                if (i39 >= i13) {
                    break;
                }
                while (true) {
                    i14 = this.f27349p + 1;
                    j8 = i14;
                    long j12 = j8 * j10;
                    j9 = this.f27350q;
                    if (j12 <= j9 * j11) {
                        break;
                    }
                    this.f27345l = c(this.f27345l, this.f27346m, 1);
                    int i40 = 0;
                    while (i40 < i17) {
                        short[] sArr6 = this.f27345l;
                        int i41 = (this.f27346m * i17) + i40;
                        short[] sArr7 = this.f27347n;
                        int i42 = (i39 * i17) + i40;
                        short s7 = sArr7[i42];
                        short s8 = sArr7[i42 + i17];
                        long j13 = ((long) this.f27350q) * j11;
                        int i43 = this.f27349p;
                        long j14 = j11;
                        long j15 = ((long) (i43 + 1)) * j10;
                        long j16 = j15 - j13;
                        long j17 = j15 - (((long) i43) * j10);
                        sArr6[i41] = (short) ((((j17 - j16) * ((long) s8)) + (((long) s7) * j16)) / j17);
                        i40++;
                        j11 = j14;
                    }
                    this.f27350q++;
                    this.f27346m++;
                    j11 = j11;
                }
                long j18 = j11;
                this.f27349p = i14;
                if (j8 == j18) {
                    this.f27349p = 0;
                    H1.i(j9 == j10);
                    this.f27350q = 0;
                }
                i39++;
                j11 = j18;
            }
            if (i13 == 0) {
                return;
            }
            short[] sArr8 = this.f27347n;
            System.arraycopy(sArr8, i13 * i17, sArr8, 0, (i12 - i13) * i17);
            this.f27348o -= i13;
            return;
        }
        a(this.f27343j, 0, this.f27344k);
        this.f27344k = 0;
        i9 = i15;
        i8 = i16;
        if (f10 != 1.0f) {
        }
    }
}
