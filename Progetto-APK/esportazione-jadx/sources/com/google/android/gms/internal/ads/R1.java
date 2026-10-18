package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class R1 extends p118p1.j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Q1 f16191n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f16192o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f16193p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public B1.e f16194q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public K4 f16195r;

    @Override // p118p1.j
    public final long e(C1534jr c1534jr) {
        byte b8 = c1534jr.f19515a[0];
        if ((b8 & 1) == 1) {
            return -1L;
        }
        Q1 q7 = this.f16191n;
        p113o3.r.x(q7);
        boolean z7 = q7.f15544d[(b8 >> 1) & (255 >>> (8 - q7.f15545e))].f3280H;
        B1.e eVar = q7.f15541a;
        int i8 = !z7 ? eVar.f1190e : eVar.f1191f;
        int i9 = this.f16193p ? (this.f16192o + i8) / 4 : 0;
        byte[] bArr = c1534jr.f19515a;
        int length = bArr.length;
        int i10 = c1534jr.f19517c + 4;
        if (length < i10) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i10);
            c1534jr.h(bArrCopyOf.length, bArrCopyOf);
        } else {
            c1534jr.i(i10);
        }
        long j8 = i9;
        byte[] bArr2 = c1534jr.f19515a;
        int i11 = c1534jr.f19517c;
        bArr2[i11 - 4] = (byte) (j8 & 255);
        bArr2[i11 - 3] = (byte) ((j8 >>> 8) & 255);
        bArr2[i11 - 2] = (byte) ((j8 >>> 16) & 255);
        bArr2[i11 - 1] = (byte) ((j8 >>> 24) & 255);
        this.f16193p = true;
        this.f16192o = i8;
        return j8;
    }

    @Override // p118p1.j
    public final void f(boolean z7) {
        super.f(z7);
        if (z7) {
            this.f16191n = null;
            this.f16194q = null;
            this.f16195r = null;
        }
        this.f16192o = 0;
        this.f16193p = false;
    }

    @Override // p118p1.j
    public final boolean g(C1534jr c1534jr, long j8, C2218x c2218x) throws C0800Ka {
        int i8;
        int iD;
        int i9;
        if (this.f16191n != null) {
            ((C1804p0) c2218x.f21779H).getClass();
            return false;
        }
        B1.e eVar = this.f16194q;
        int i10 = 4;
        Q1 q7 = null;
        if (eVar == null) {
            a7.b.u(1, c1534jr, false);
            c1534jr.t();
            int iW = c1534jr.w();
            int iT = c1534jr.t();
            int iS = c1534jr.s();
            int i11 = iS <= 0 ? -1 : iS;
            int iS2 = c1534jr.s();
            int i12 = iS2 <= 0 ? -1 : iS2;
            c1534jr.s();
            int iW2 = c1534jr.w();
            int iPow = (int) Math.pow(2.0d, iW2 & 15);
            int iPow2 = (int) Math.pow(2.0d, (iW2 & 240) >> 4);
            c1534jr.w();
            this.f16194q = new B1.e(iW, iT, i11, i12, iPow, iPow2, Arrays.copyOf(c1534jr.f19515a, c1534jr.f19517c), 0);
        } else {
            K4 k8 = this.f16195r;
            if (k8 == null) {
                this.f16195r = a7.b.r(c1534jr, true, true);
            } else {
                int i13 = c1534jr.f19517c;
                byte[] bArr = new byte[i13];
                System.arraycopy(c1534jr.f19515a, 0, bArr, 0, i13);
                int i14 = 5;
                a7.b.u(5, c1534jr, false);
                int iW3 = c1534jr.w() + 1;
                C1286f0 c1286f0 = new C1286f0(c1534jr.f19515a);
                c1286f0.f(c1534jr.f19516b * 8);
                int i15 = 0;
                while (true) {
                    int i16 = 2;
                    int i17 = 16;
                    if (i15 >= iW3) {
                        int i18 = 6;
                        int iD2 = c1286f0.d(6) + 1;
                        for (int i19 = 0; i19 < iD2; i19++) {
                            if (c1286f0.d(16) != 0) {
                                throw C0800Ka.a("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i20 = 1;
                        int iD3 = c1286f0.d(6) + 1;
                        int i21 = 0;
                        while (true) {
                            int i22 = 3;
                            if (i21 >= iD3) {
                                int i23 = 1;
                                int iD4 = c1286f0.d(i18) + 1;
                                int i24 = 0;
                                while (i24 < iD4) {
                                    if (c1286f0.d(16) > 2) {
                                        throw C0800Ka.a("residueType greater than 2 is not decodable", null);
                                    }
                                    c1286f0.f(24);
                                    c1286f0.f(24);
                                    c1286f0.f(24);
                                    int iD5 = c1286f0.d(i18) + i23;
                                    int i25 = 8;
                                    c1286f0.f(8);
                                    int[] iArr = new int[iD5];
                                    for (int i26 = 0; i26 < iD5; i26++) {
                                        iArr[i26] = ((c1286f0.i() ? c1286f0.d(5) : 0) * 8) + c1286f0.d(3);
                                    }
                                    int i27 = 0;
                                    while (i27 < iD5) {
                                        int i28 = 0;
                                        while (i28 < i25) {
                                            if ((iArr[i27] & (1 << i28)) != 0) {
                                                c1286f0.f(i25);
                                            }
                                            i28++;
                                            i25 = 8;
                                        }
                                        i27++;
                                        i25 = 8;
                                    }
                                    i24++;
                                    i18 = 6;
                                    i23 = 1;
                                }
                                int iD6 = c1286f0.d(i18) + 1;
                                for (int i29 = 0; i29 < iD6; i29++) {
                                    int iD7 = c1286f0.d(16);
                                    if (iD7 != 0) {
                                        Zo.c("VorbisUtil", "mapping type other than 0 not supported: " + iD7);
                                    } else {
                                        if (c1286f0.i()) {
                                            i8 = 1;
                                            iD = c1286f0.d(4) + 1;
                                        } else {
                                            i8 = 1;
                                            iD = 1;
                                        }
                                        boolean zI = c1286f0.i();
                                        int i30 = eVar.f1186a;
                                        if (zI) {
                                            int iD8 = c1286f0.d(8) + i8;
                                            for (int i31 = 0; i31 < iD8; i31++) {
                                                int i32 = i30 - 1;
                                                c1286f0.f(a7.b.k(i32));
                                                c1286f0.f(a7.b.k(i32));
                                            }
                                        }
                                        if (c1286f0.d(2) != 0) {
                                            throw C0800Ka.a("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (iD > 1) {
                                            for (int i33 = 0; i33 < i30; i33++) {
                                                c1286f0.f(4);
                                            }
                                        }
                                        for (int i34 = 0; i34 < iD; i34++) {
                                            c1286f0.f(8);
                                            c1286f0.f(8);
                                            c1286f0.f(8);
                                        }
                                    }
                                }
                                int iD9 = c1286f0.d(6);
                                int i35 = iD9 + 1;
                                G.c[] cVarArr = new G.c[i35];
                                for (int i36 = 0; i36 < i35; i36++) {
                                    boolean zI2 = c1286f0.i();
                                    c1286f0.d(16);
                                    c1286f0.d(16);
                                    c1286f0.d(8);
                                    cVarArr[i36] = new G.c(zI2);
                                }
                                if (!c1286f0.i()) {
                                    throw C0800Ka.a("framing bit after modes not set as expected", null);
                                }
                                q7 = new Q1(eVar, k8, bArr, cVarArr, a7.b.k(iD9));
                                break;
                            }
                            int iD10 = c1286f0.d(i17);
                            if (iD10 == 0) {
                                int i37 = 8;
                                c1286f0.f(8);
                                c1286f0.f(16);
                                c1286f0.f(16);
                                c1286f0.f(6);
                                c1286f0.f(8);
                                int iD11 = c1286f0.d(4) + 1;
                                int i38 = 0;
                                while (i38 < iD11) {
                                    c1286f0.f(i37);
                                    i38++;
                                    i37 = 8;
                                }
                            } else {
                                if (iD10 != i20) {
                                    throw C0800Ka.a("floor type greater than 1 not decodable: " + iD10, null);
                                }
                                int iD12 = c1286f0.d(i14);
                                int[] iArr2 = new int[iD12];
                                int i39 = -1;
                                for (int i40 = 0; i40 < iD12; i40++) {
                                    int iD13 = c1286f0.d(i10);
                                    iArr2[i40] = iD13;
                                    if (iD13 > i39) {
                                        i39 = iD13;
                                    }
                                }
                                int i41 = i39 + 1;
                                int[] iArr3 = new int[i41];
                                int i42 = 0;
                                while (i42 < i41) {
                                    iArr3[i42] = c1286f0.d(i22) + 1;
                                    int iD14 = c1286f0.d(i16);
                                    if (iD14 > 0) {
                                        i9 = 8;
                                        c1286f0.f(8);
                                    } else {
                                        i9 = 8;
                                    }
                                    int i43 = 0;
                                    for (int i44 = 1; i43 < (i44 << iD14); i44 = 1) {
                                        c1286f0.f(i9);
                                        i43++;
                                        i9 = 8;
                                    }
                                    i42++;
                                    i22 = 3;
                                    i16 = 2;
                                }
                                c1286f0.f(2);
                                int iD15 = c1286f0.d(4);
                                int i45 = 0;
                                int i46 = 0;
                                for (int i47 = 0; i47 < iD12; i47++) {
                                    i45 += iArr3[iArr2[i47]];
                                    while (i46 < i45) {
                                        c1286f0.f(iD15);
                                        i46++;
                                    }
                                }
                            }
                            i21++;
                            i18 = 6;
                            i17 = 16;
                            i10 = 4;
                            i14 = 5;
                            i20 = 1;
                            i16 = 2;
                        }
                    } else {
                        if (c1286f0.d(24) != 5653314) {
                            throw C0800Ka.a("expected code book to start with [0x56, 0x43, 0x42] at " + c1286f0.a(), null);
                        }
                        int iD16 = c1286f0.d(16);
                        int iD17 = c1286f0.d(24);
                        if (c1286f0.i()) {
                            c1286f0.f(5);
                            for (int iD18 = 0; iD18 < iD17; iD18 += c1286f0.d(a7.b.k(iD17 - iD18))) {
                            }
                        } else {
                            boolean zI3 = c1286f0.i();
                            for (int i48 = 0; i48 < iD17; i48++) {
                                if (!zI3) {
                                    c1286f0.f(5);
                                } else if (c1286f0.i()) {
                                    c1286f0.f(5);
                                }
                            }
                        }
                        int iD19 = c1286f0.d(4);
                        if (iD19 > 2) {
                            throw C0800Ka.a("lookup type greater than 2 not decodable: " + iD19, null);
                        }
                        if (iD19 != 1) {
                            if (iD19 == 2) {
                            }
                            i15++;
                        } else {
                            i16 = iD19;
                        }
                        c1286f0.f(32);
                        c1286f0.f(32);
                        int iD20 = c1286f0.d(4) + 1;
                        c1286f0.f(1);
                        c1286f0.f((int) ((i16 == 1 ? iD16 != 0 ? (long) Math.floor(Math.pow(iD17, 1.0d / ((double) iD16))) : 0L : ((long) iD17) * ((long) iD16)) * ((long) iD20)));
                        i15++;
                    }
                }
            }
        }
        this.f16191n = q7;
        if (q7 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        B1.e eVar2 = q7.f15541a;
        arrayList.add(eVar2.f1192g);
        arrayList.add(q7.f15543c);
        Q9 q9P = a7.b.p(AbstractC2073uA.u((String[]) q7.f15542b.f14301H));
        K k9 = new K();
        k9.f("audio/vorbis");
        k9.f14266g = eVar2.f1189d;
        k9.f14267h = eVar2.f1188c;
        k9.f14285z = eVar2.f1186a;
        k9.f14253A = eVar2.f1187b;
        k9.f14274o = arrayList;
        k9.f14269j = q9P;
        c2218x.f21779H = new C1804p0(k9);
        return true;
    }

    @Override // p118p1.j
    public final void h(long j8) {
        this.f28173c = j8;
        this.f16193p = j8 != 0;
        B1.e eVar = this.f16194q;
        this.f16192o = eVar != null ? eVar.f1190e : 0;
    }
}
