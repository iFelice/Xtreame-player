package B1;

import W0.L;
import W0.t;
import W0.u;
import java.math.RoundingMode;
import okhttp3.internal.http.StatusLine;
import org.videolan.libvlc.RendererDiscoverer;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.E;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class a implements b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f1157m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f1158n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, RendererDiscoverer.Event.ItemAdded, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f1159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L f1160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f1161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f1163e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final E f1164f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1165g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C3136t f1166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1167i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f1168j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1169k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f1170l;

    public a(u uVar, L l4, e eVar) throws P {
        this.f1159a = uVar;
        this.f1160b = l4;
        this.f1161c = eVar;
        int i8 = eVar.f1188c;
        int iMax = Math.max(1, i8 / 10);
        this.f1165g = iMax;
        E e8 = new E(eVar.f1192g);
        e8.s();
        int iS = e8.s();
        this.f1162d = iS;
        int i9 = eVar.f1187b;
        int i10 = eVar.f1190e;
        int i11 = (((i10 - (i9 * 4)) * 8) / (eVar.f1191f * i9)) + 1;
        if (iS != i11) {
            throw P.a("Expected frames per block: " + i11 + "; got: " + iS, null);
        }
        int iF = M.f(iMax, iS);
        this.f1163e = new byte[iF * i10];
        this.f1164f = new E(iS * 2 * i9 * iF);
        int i12 = ((i10 * i8) * 8) / iS;
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("audio/raw");
        c3135s.f26990h = i12;
        c3135s.f26991i = i12;
        c3135s.f26997o = iMax * 2 * i9;
        c3135s.f26973F = i9;
        c3135s.f26974G = i8;
        c3135s.f26975H = 2;
        this.f1166h = new C3136t(c3135s);
    }

    @Override // B1.b
    public final void a(long j8) {
        this.f1167i = 0;
        this.f1168j = j8;
        this.f1169k = 0;
        this.f1170l = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:27:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:37:0x014a  */
    /* JADX WARN: Code duplicated, block: B:38:0x014e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0046 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x011b A[EDGE_INSN: B:48:0x011b->B:35:0x011b BREAK  A[LOOP:1: B:17:0x004e->B:34:0x010f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003d -> B:4:0x0021). Please report as a decompilation issue!!! */
    @Override // B1.b
    public final boolean b(t tVar, long j8) {
        byte[] bArr;
        int i8;
        int i9;
        boolean z7;
        int i10;
        int i11;
        E e8;
        int i12;
        int i13;
        int i14;
        int i15;
        byte[] bArr2;
        int i16;
        int i17;
        int i18;
        int[] iArr;
        int i19;
        int i20;
        int i21;
        int i22;
        byte b8;
        int i23;
        int i24;
        int i25;
        int i26;
        int iQ;
        int i27 = this.f1169k;
        e eVar = this.f1161c;
        int i28 = i27 / (eVar.f1187b * 2);
        int i29 = this.f1165g;
        int i30 = this.f1162d;
        int iF = M.f(i29 - i28, i30) * eVar.f1190e;
        boolean z8 = j8 == 0;
        while (true) {
            bArr = this.f1163e;
            if (z8 && (i26 = this.f1167i) < iF) {
                iQ = tVar.q(bArr, this.f1167i, (int) Math.min(iF - i26, j8));
                if (iQ == -1) {
                    break;
                }
                this.f1167i += iQ;
                bArr = this.f1163e;
                if (z8) {
                }
            }
            int i31 = this.f1167i;
            i8 = eVar.f1190e;
            i9 = i31 / i8;
            if (i9 > 0) {
                i11 = 0;
                while (true) {
                    e8 = this.f1164f;
                    if (i11 < i9) {
                        break;
                    }
                    i14 = 0;
                    while (true) {
                        i15 = eVar.f1187b;
                        if (i14 < i15) {
                            bArr2 = e8.f28035a;
                            int i32 = (i14 * 4) + (i11 * i8);
                            i16 = (i15 * 4) + i32;
                            i17 = (i8 / i15) - 4;
                            i18 = (short) ((bArr[i32] & 255) | ((bArr[i32 + 1] & 255) << 8));
                            int i33 = bArr[i32 + 2] & 255;
                            boolean z9 = z8;
                            int iMin = Math.min(i33, 88);
                            iArr = f1158n;
                            i19 = iArr[iMin];
                            i20 = ((i11 * i30 * i15) + i14) * 2;
                            bArr2[i20] = (byte) (i18 & 255);
                            bArr2[i20 + 1] = (byte) (i18 >> 8);
                            i21 = iMin;
                            int i34 = i29;
                            i22 = 0;
                            while (i22 < i17 * 2) {
                                b8 = bArr[((i22 / 8) * i15 * 4) + i16 + ((i22 / 2) % 4)];
                                byte[] bArr3 = bArr;
                                i23 = b8 & 255;
                                if (i22 % 2 == 0) {
                                    i24 = b8 & 15;
                                } else {
                                    i24 = i23 >> 4;
                                }
                                i25 = ((((i24 & 7) * 2) + 1) * i19) >> 3;
                                if ((i24 & 8) != 0) {
                                    i25 = -i25;
                                }
                                i18 = M.i(i18 + i25, -32768, 32767);
                                i20 = (i15 * 2) + i20;
                                bArr2[i20] = (byte) (i18 & 255);
                                bArr2[i20 + 1] = (byte) (i18 >> 8);
                                i21 = M.i(i21 + f1157m[i24], 0, 88);
                                i19 = iArr[i21];
                                i22++;
                                i16 = i16;
                                bArr = bArr3;
                            }
                            i14++;
                            z8 = z9;
                            i29 = i34;
                        }
                    }
                    i11++;
                }
                i12 = i29;
                z7 = z8;
                int i35 = i30 * i9 * 2 * eVar.f1187b;
                e8.L(0);
                e8.K(i35);
                this.f1167i -= i9 * i8;
                int i36 = e8.f28037c;
                this.f1160b.e(i36, e8);
                i13 = this.f1169k + i36;
                this.f1169k = i13;
                if (i13 / (eVar.f1187b * 2) >= i12) {
                    d(i12);
                }
            } else {
                z7 = z8;
            }
            if (z7 && (i10 = this.f1169k / (eVar.f1187b * 2)) > 0) {
                d(i10);
            }
            return z7;
        }
        while (true) {
            bArr = this.f1163e;
            if (z8) {
            }
            int i37 = this.f1167i;
            i8 = eVar.f1190e;
            i9 = i37 / i8;
            if (i9 > 0) {
                i11 = 0;
                while (true) {
                    e8 = this.f1164f;
                    if (i11 < i9) {
                        break;
                        break;
                    }
                    i14 = 0;
                    while (true) {
                        i15 = eVar.f1187b;
                        if (i14 < i15) {
                            bArr2 = e8.f28035a;
                            int i38 = (i14 * 4) + (i11 * i8);
                            i16 = (i15 * 4) + i38;
                            i17 = (i8 / i15) - 4;
                            i18 = (short) ((bArr[i38] & 255) | ((bArr[i38 + 1] & 255) << 8));
                            int i39 = bArr[i38 + 2] & 255;
                            boolean z10 = z8;
                            int iMin2 = Math.min(i39, 88);
                            iArr = f1158n;
                            i19 = iArr[iMin2];
                            i20 = ((i11 * i30 * i15) + i14) * 2;
                            bArr2[i20] = (byte) (i18 & 255);
                            bArr2[i20 + 1] = (byte) (i18 >> 8);
                            i21 = iMin2;
                            int i310 = i29;
                            i22 = 0;
                            while (i22 < i17 * 2) {
                                b8 = bArr[((i22 / 8) * i15 * 4) + i16 + ((i22 / 2) % 4)];
                                byte[] bArr4 = bArr;
                                i23 = b8 & 255;
                                if (i22 % 2 == 0) {
                                    i24 = b8 & 15;
                                } else {
                                    i24 = i23 >> 4;
                                }
                                i25 = ((((i24 & 7) * 2) + 1) * i19) >> 3;
                                if ((i24 & 8) != 0) {
                                    i25 = -i25;
                                }
                                i18 = M.i(i18 + i25, -32768, 32767);
                                i20 = (i15 * 2) + i20;
                                bArr2[i20] = (byte) (i18 & 255);
                                bArr2[i20 + 1] = (byte) (i18 >> 8);
                                i21 = M.i(i21 + f1157m[i24], 0, 88);
                                i19 = iArr[i21];
                                i22++;
                                i16 = i16;
                                bArr = bArr4;
                            }
                            i14++;
                            z8 = z10;
                            i29 = i310;
                        }
                    }
                    i11++;
                }
                i12 = i29;
                z7 = z8;
                int i311 = i30 * i9 * 2 * eVar.f1187b;
                e8.L(0);
                e8.K(i311);
                this.f1167i -= i9 * i8;
                int i312 = e8.f28037c;
                this.f1160b.e(i312, e8);
                i13 = this.f1169k + i312;
                this.f1169k = i13;
                if (i13 / (eVar.f1187b * 2) >= i12) {
                    d(i12);
                }
            } else {
                z7 = z8;
            }
            if (z7) {
                d(i10);
            }
            return z7;
            this.f1167i += iQ;
        }
    }

    @Override // B1.b
    public final void c(int i8, long j8) {
        this.f1159a.r(new g(this.f1161c, this.f1162d, i8, j8));
        this.f1160b.b(this.f1166h);
    }

    public final void d(int i8) {
        long j8 = this.f1168j;
        long j9 = this.f1170l;
        e eVar = this.f1161c;
        long j10 = eVar.f1188c;
        String str = M.f28050a;
        long jZ = j8 + M.Z(j9, 1000000L, j10, RoundingMode.DOWN);
        int i9 = i8 * 2 * eVar.f1187b;
        this.f1160b.d(jZ, 1, i9, this.f1169k - i9, null);
        this.f1170l += (long) i8;
        this.f1169k -= i9;
    }
}
