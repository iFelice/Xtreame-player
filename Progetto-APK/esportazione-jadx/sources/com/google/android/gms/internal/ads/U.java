package com.google.android.gms.internal.ads;

import androidx.leanback.widget.C0484j;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f16775g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16776h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f16777i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16778j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f16779k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Ex f16780l;

    public U(List list, int i8, int i9, int i10, int i11, int i12, int i13, int i14, float f8, int i15, String str, Ex ex) {
        this.f16769a = list;
        this.f16770b = i8;
        this.f16771c = i9;
        this.f16772d = i10;
        this.f16773e = i11;
        this.f16774f = i12;
        this.f16775g = i13;
        this.f16776h = i14;
        this.f16777i = f8;
        this.f16778j = i15;
        this.f16779k = str;
        this.f16780l = ex;
    }

    public static U a(C1534jr c1534jr, boolean z7, Ex ex) {
        int i8;
        int i9;
        int i10;
        C0484j c0484j;
        int i11 = 4;
        try {
            if (z7) {
                c1534jr.k(4);
            } else {
                c1534jr.k(21);
            }
            int iW = c1534jr.w() & 3;
            int iW2 = c1534jr.w();
            int iP = c1534jr.p();
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < iW2; i14++) {
                c1534jr.k(1);
                int iA = c1534jr.A();
                for (int i15 = 0; i15 < iA; i15++) {
                    int iA2 = c1534jr.A();
                    i13 += iA2 + 4;
                    c1534jr.k(iA2);
                }
            }
            c1534jr.j(iP);
            byte[] bArr = new byte[i13];
            Ex ex2 = ex;
            int i16 = 0;
            int i17 = 0;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            int i23 = -1;
            float f8 = 1.0f;
            int i24 = -1;
            String strA = null;
            while (i16 < iW2) {
                int iW3 = c1534jr.w() & 63;
                int iA3 = c1534jr.A();
                Ex exD = ex2;
                int i25 = 0;
                while (i25 < iA3) {
                    int iA4 = c1534jr.A();
                    int i26 = iA3;
                    System.arraycopy(AbstractC2008sy.f21015a, i12, bArr, i17, i11);
                    int i27 = i17 + 4;
                    System.arraycopy(c1534jr.l(), c1534jr.p(), bArr, i27, iA4);
                    int i28 = 32;
                    if (iW3 == 32) {
                        if (i25 == 0) {
                            exD = AbstractC2008sy.d(i27, bArr, i27 + iA4);
                            i8 = iW2;
                            iW3 = iW3;
                            i9 = 0;
                        }
                        i17 = i27 + iA4;
                        c1534jr.k(iA4);
                        i25 = i9 + 1;
                        iA3 = i26;
                        iW2 = i8;
                        iW3 = iW3;
                        i11 = 4;
                        i12 = 0;
                    } else {
                        i28 = iW3;
                    }
                    i8 = iW2;
                    int i29 = 8;
                    if (i28 != 33) {
                        iW3 = iW3;
                        if (i28 == 39 && i25 == 0) {
                            int i30 = i17 + 6;
                            int i31 = (i27 + iA4) - 1;
                            while (true) {
                                byte b8 = bArr[i31];
                                if (b8 != 0) {
                                    if (b8 == 0) {
                                        i9 = i25;
                                        i10 = i18;
                                        c0484j = null;
                                    } else if (i31 > i30) {
                                        C1286f0 c1286f0 = new C1286f0(bArr, i30, i31 + 1);
                                        while (true) {
                                            if (c1286f0.n(16)) {
                                                int iB = c1286f0.b(i29);
                                                int i32 = 0;
                                                while (iB == 255) {
                                                    i32 += 255;
                                                    iB = c1286f0.b(i29);
                                                }
                                                int i33 = i32 + iB;
                                                int iB2 = c1286f0.b(i29);
                                                int i34 = 0;
                                                while (iB2 == 255) {
                                                    i34 += 255;
                                                    iB2 = c1286f0.b(8);
                                                }
                                                int i35 = i34 + iB2;
                                                if (i35 != 0) {
                                                    if (c1286f0.n(i35)) {
                                                        if (i33 == 176) {
                                                            int iE = c1286f0.e();
                                                            boolean zP = c1286f0.p();
                                                            int iE2 = zP ? c1286f0.e() : 0;
                                                            int iE3 = c1286f0.e();
                                                            i9 = i25;
                                                            i10 = i18;
                                                            int i36 = 0;
                                                            int i37 = -1;
                                                            while (true) {
                                                                if (i36 <= iE3) {
                                                                    int iE4 = c1286f0.e();
                                                                    c1286f0.e();
                                                                    int i38 = iE3;
                                                                    int iB3 = c1286f0.b(6);
                                                                    if (iB3 != 63) {
                                                                        c1286f0.b(iB3 == 0 ? Math.max(0, iE - 30) : Math.max(0, (iB3 + iE) - 31));
                                                                        if (zP) {
                                                                            int iB4 = c1286f0.b(6);
                                                                            if (iB4 != 63) {
                                                                                c1286f0.b(iB4 == 0 ? Math.max(0, iE2 - 30) : Math.max(0, (iB4 + iE2) - 31));
                                                                            }
                                                                        }
                                                                        if (c1286f0.p()) {
                                                                            c1286f0.m(10);
                                                                        }
                                                                        i36++;
                                                                        iE3 = i38;
                                                                        i37 = iE4;
                                                                    }
                                                                    c0484j = null;
                                                                } else {
                                                                    c0484j = new C0484j(i37, (Object) null);
                                                                }
                                                            }
                                                        } else {
                                                            i29 = 8;
                                                        }
                                                    }
                                                }
                                            }
                                            i9 = i25;
                                            i10 = i18;
                                            c0484j = null;
                                        }
                                    }
                                    if (c0484j == null && exD != null) {
                                        if (c0484j.f9298H == ((Fv) exD.f13251a.get(0)).f13438b) {
                                            i18 = i10;
                                            i23 = 4;
                                        } else {
                                            i18 = i10;
                                            i23 = 5;
                                        }
                                    }
                                } else if (i31 > i30) {
                                    i31--;
                                }
                                i9 = i25;
                                i10 = i18;
                                c0484j = null;
                                if (c0484j == null) {
                                }
                            }
                        } else {
                            i9 = i25;
                            i10 = i18;
                        }
                        i18 = i10;
                    } else if (i25 == 0) {
                        Sw swC = AbstractC2008sy.c(bArr, i27, i27 + iA4, exD);
                        int i39 = swC.f16550b + 8;
                        int i40 = swC.f16551c + 8;
                        int i41 = swC.f16556h;
                        int i42 = swC.f16557i;
                        int i43 = swC.f16558j;
                        float f9 = swC.f16554f;
                        int i44 = swC.f16555g;
                        Wv wv = swC.f16549a;
                        if (wv != null) {
                            strA = AbstractC1270el.a(wv.f17343a, wv.f17344b, wv.f17345c, wv.f17346d, wv.f17347e, wv.f17348f);
                        }
                        i18 = i39;
                        f8 = f9;
                        i21 = i42;
                        i9 = i25;
                        i20 = i41;
                        i19 = i40;
                        i24 = i44;
                        i22 = i43;
                    } else {
                        iW3 = iW3;
                        i9 = i25;
                        i10 = i18;
                        i18 = i10;
                    }
                    i17 = i27 + iA4;
                    c1534jr.k(iA4);
                    i25 = i9 + 1;
                    iA3 = i26;
                    iW2 = i8;
                    iW3 = iW3;
                    i11 = 4;
                    i12 = 0;
                }
                i16++;
                ex2 = exD;
                i11 = 4;
                i12 = 0;
            }
            return new U(i13 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iW + 1, i18, i19, i20, i21, i22, i23, f8, i24, strA, ex2);
        } catch (ArrayIndexOutOfBoundsException e8) {
            throw C0800Ka.a("Error parsing".concat(true != z7 ? "HEVC config" : "L-HEVC config"), e8);
        }
    }
}
