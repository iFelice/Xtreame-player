package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import okhttp3.internal.http.StatusLine;
import org.videolan.libvlc.RendererDiscoverer;
import p094m0.C3125h;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.c3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1134c3 implements InterfaceC1186d3 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f18159m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f18160n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, RendererDiscoverer.Event.ItemAdded, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f18161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC1234e0 f18162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3125h f18163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f18165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1534jr f18166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1804p0 f18168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f18170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f18171k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f18172l;

    public C1134c3(N n7, InterfaceC1234e0 interfaceC1234e0, C3125h c3125h) throws C0800Ka {
        this.f18161a = n7;
        this.f18162b = interfaceC1234e0;
        this.f18163c = c3125h;
        int iMax = Math.max(1, c3125h.f26864c / 10);
        this.f18167g = iMax;
        C1534jr c1534jr = new C1534jr(c3125h.f26867f);
        c1534jr.u();
        int iU = c1534jr.u();
        this.f18164d = iU;
        int i8 = c3125h.f26863b;
        int i9 = c3125h.f26865d;
        int iV = A0.O.v(i9 - (i8 * 4), 8, c3125h.f26866e * i8, 1);
        if (iU != iV) {
            throw C0800Ka.a("Expected frames per block: " + iV + "; got: " + iU, null);
        }
        int i10 = Et.f13234a;
        int i11 = ((iMax + iU) - 1) / iU;
        this.f18165e = new byte[i9 * i11];
        this.f18166f = new C1534jr((iU + iU) * i8 * i11);
        int i12 = ((c3125h.f26864c * c3125h.f26865d) * 8) / iU;
        K k8 = new K();
        k8.f("audio/raw");
        k8.f14266g = i12;
        k8.f14267h = i12;
        k8.f14272m = (iMax + iMax) * i8;
        k8.f14285z = c3125h.f26863b;
        k8.f14253A = c3125h.f26864c;
        k8.f14254B = 2;
        this.f18168h = new C1804p0(k8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1186d3
    public final void a(long j8) {
        this.f18169i = 0;
        this.f18170j = j8;
        this.f18171k = 0;
        this.f18172l = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x009d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:28:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:31:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:37:0x0149  */
    /* JADX WARN: Code duplicated, block: B:38:0x014d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0151  */
    /* JADX WARN: Code duplicated, block: B:42:0x0159  */
    /* JADX WARN: Code duplicated, block: B:44:0x0046 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x011e A[EDGE_INSN: B:48:0x011e->B:35:0x011e BREAK  A[LOOP:1: B:17:0x004e->B:34:0x0114], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003d -> B:4:0x0022). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.InterfaceC1186d3
    public final boolean b(M m7, long j8) {
        byte[] bArr;
        int i8;
        boolean z7;
        int i9;
        int i10;
        C1534jr c1534jr;
        int i11;
        int i12;
        int i13;
        int i14;
        byte[] bArr2;
        int i15;
        int i16;
        int iMin;
        int[] iArr;
        int i17;
        int iMax;
        int i18;
        int i19;
        byte b8;
        int i20;
        int i21;
        int i22;
        int i23;
        int iE;
        int i24 = this.f18171k;
        C3125h c3125h = this.f18163c;
        int i25 = c3125h.f26863b;
        int i26 = i24 / (i25 + i25);
        int i27 = this.f18167g;
        int i28 = Et.f13234a;
        int i29 = this.f18164d;
        int i30 = ((((i27 - i26) + i29) - 1) / i29) * c3125h.f26865d;
        boolean z8 = j8 == 0;
        while (true) {
            bArr = this.f18165e;
            if (z8 && (i23 = this.f18169i) < i30) {
                iE = m7.e(bArr, this.f18169i, (int) Math.min(i30 - i23, j8));
                if (iE == -1) {
                    break;
                }
                this.f18169i += iE;
                bArr = this.f18165e;
                if (z8) {
                }
            }
            i8 = this.f18169i / c3125h.f26865d;
            if (i8 > 0) {
                i10 = 0;
                while (true) {
                    c1534jr = this.f18166f;
                    if (i10 < i8) {
                        break;
                    }
                    i13 = 0;
                    while (true) {
                        i14 = c3125h.f26863b;
                        if (i13 < i14) {
                            bArr2 = c1534jr.f19515a;
                            int i31 = c3125h.f26865d;
                            int i32 = i10 * i31;
                            i15 = (i31 / i14) - 4;
                            i16 = (i13 * 4) + i32;
                            int i33 = bArr[i16 + 1] & 255;
                            int i34 = bArr[i16] & 255;
                            boolean z9 = z8;
                            iMin = Math.min(bArr[i16 + 2] & 255, 88);
                            iArr = f18160n;
                            i17 = iArr[iMin];
                            int i35 = (i10 * i29 * i14) + i13;
                            iMax = (short) (i34 | (i33 << 8));
                            i18 = i35 + i35;
                            bArr2[i18] = (byte) (iMax & 255);
                            bArr2[i18 + 1] = (byte) (iMax >> 8);
                            i19 = 0;
                            while (i19 < i15 + i15) {
                                b8 = bArr[((i19 / 8) * i14 * 4) + (i14 * 4) + i16 + ((i19 / 2) % 4)];
                                byte[] bArr3 = bArr;
                                i20 = b8 & 255;
                                if (i19 % 2 == 0) {
                                    i21 = b8 & 15;
                                } else {
                                    i21 = i20 >> 4;
                                }
                                int i36 = i21 & 7;
                                i22 = (((i36 + i36) + 1) * i17) >> 3;
                                if ((i21 & 8) != 0) {
                                    i22 = -i22;
                                }
                                iMax = Math.max(-32768, Math.min(iMax + i22, 32767));
                                i18 = i14 + i14 + i18;
                                bArr2[i18] = (byte) (iMax & 255);
                                bArr2[i18 + 1] = (byte) (iMax >> 8);
                                iMin = Math.max(0, Math.min(iMin + f18159m[i21], 88));
                                i19++;
                                bArr = bArr3;
                                i17 = iArr[iMin];
                                i14 = i14;
                            }
                            i13++;
                            z8 = z9;
                        }
                    }
                    i10++;
                }
                z7 = z8;
                int i37 = i29 * i8;
                int i38 = (i37 + i37) * c3125h.f26863b;
                c1534jr.j(0);
                c1534jr.i(i38);
                this.f18169i -= i8 * c3125h.f26865d;
                int i39 = c1534jr.f19517c;
                this.f18162b.f(i39, c1534jr);
                i11 = this.f18171k + i39;
                this.f18171k = i11;
                i12 = c3125h.f26863b;
                if (i11 / (i12 + i12) >= i27) {
                    c(i27);
                }
            } else {
                z7 = z8;
            }
            if (z7) {
                int i40 = this.f18171k;
                int i41 = c3125h.f26863b;
                i9 = i40 / (i41 + i41);
                if (i9 > 0) {
                    c(i9);
                }
            }
            return z7;
        }
        while (true) {
            bArr = this.f18165e;
            if (z8) {
            }
            i8 = this.f18169i / c3125h.f26865d;
            if (i8 > 0) {
                i10 = 0;
                while (true) {
                    c1534jr = this.f18166f;
                    if (i10 < i8) {
                        break;
                        break;
                    }
                    i13 = 0;
                    while (true) {
                        i14 = c3125h.f26863b;
                        if (i13 < i14) {
                            bArr2 = c1534jr.f19515a;
                            int i310 = c3125h.f26865d;
                            int i311 = i10 * i310;
                            i15 = (i310 / i14) - 4;
                            i16 = (i13 * 4) + i311;
                            int i312 = bArr[i16 + 1] & 255;
                            int i313 = bArr[i16] & 255;
                            boolean z10 = z8;
                            iMin = Math.min(bArr[i16 + 2] & 255, 88);
                            iArr = f18160n;
                            i17 = iArr[iMin];
                            int i314 = (i10 * i29 * i14) + i13;
                            iMax = (short) (i313 | (i312 << 8));
                            i18 = i314 + i314;
                            bArr2[i18] = (byte) (iMax & 255);
                            bArr2[i18 + 1] = (byte) (iMax >> 8);
                            i19 = 0;
                            while (i19 < i15 + i15) {
                                b8 = bArr[((i19 / 8) * i14 * 4) + (i14 * 4) + i16 + ((i19 / 2) % 4)];
                                byte[] bArr4 = bArr;
                                i20 = b8 & 255;
                                if (i19 % 2 == 0) {
                                    i21 = b8 & 15;
                                } else {
                                    i21 = i20 >> 4;
                                }
                                int i315 = i21 & 7;
                                i22 = (((i315 + i315) + 1) * i17) >> 3;
                                if ((i21 & 8) != 0) {
                                    i22 = -i22;
                                }
                                iMax = Math.max(-32768, Math.min(iMax + i22, 32767));
                                i18 = i14 + i14 + i18;
                                bArr2[i18] = (byte) (iMax & 255);
                                bArr2[i18 + 1] = (byte) (iMax >> 8);
                                iMin = Math.max(0, Math.min(iMin + f18159m[i21], 88));
                                i19++;
                                bArr = bArr4;
                                i17 = iArr[iMin];
                                i14 = i14;
                            }
                            i13++;
                            z8 = z10;
                        }
                    }
                    i10++;
                }
                z7 = z8;
                int i316 = i29 * i8;
                int i317 = (i316 + i316) * c3125h.f26863b;
                c1534jr.j(0);
                c1534jr.i(i317);
                this.f18169i -= i8 * c3125h.f26865d;
                int i318 = c1534jr.f19517c;
                this.f18162b.f(i318, c1534jr);
                i11 = this.f18171k + i318;
                this.f18171k = i11;
                i12 = c3125h.f26863b;
                if (i11 / (i12 + i12) >= i27) {
                    c(i27);
                }
            } else {
                z7 = z8;
            }
            if (z7) {
                int i42 = this.f18171k;
                int i43 = c3125h.f26863b;
                i9 = i42 / (i43 + i43);
                if (i9 > 0) {
                    c(i9);
                }
            }
            return z7;
            this.f18169i += iE;
        }
    }

    public final void c(int i8) {
        C3125h c3125h = this.f18163c;
        long jV = this.f18170j + Et.v(this.f18172l, 1000000L, c3125h.f26864c, RoundingMode.FLOOR);
        int i9 = (i8 + i8) * c3125h.f26863b;
        this.f18162b.b(jV, 1, i9, this.f18171k - i9, null);
        this.f18172l += (long) i8;
        this.f18171k -= i9;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1186d3
    public final void zza(int i8, long j8) {
        this.f18161a.g(new C1341g3(this.f18163c, this.f18164d, i8, j8));
        this.f18162b.d(this.f18168h);
    }
}
