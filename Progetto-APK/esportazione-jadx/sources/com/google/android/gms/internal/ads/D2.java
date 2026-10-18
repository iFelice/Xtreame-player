package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class D2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f12749a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f12753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC1234e0 f12754f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f12758j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C1804p0 f12759k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12760l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12761m;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12755g = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f12764p = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f12750b = new AtomicInteger();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12762n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12763o = -1;

    public D2(String str, int i8, int i9) {
        this.f12749a = new C1534jr(new byte[i9]);
        this.f12751c = str;
        this.f12752d = i8;
    }

    public final void a(W0.r rVar) {
        int i8;
        int i9 = rVar.f7455b;
        if (i9 == -2147483647 || (i8 = rVar.f7456c) == -1) {
            return;
        }
        C1804p0 c1804p0 = this.f12759k;
        String str = rVar.f7454a;
        if (c1804p0 != null && i8 == c1804p0.f20362A && i9 == c1804p0.f20363B && Objects.equals(str, c1804p0.f20383m)) {
            return;
        }
        C1804p0 c1804p1 = this.f12759k;
        K k8 = c1804p1 == null ? new K() : new K(c1804p1);
        k8.f14260a = this.f12753e;
        k8.f(str);
        k8.f14285z = i8;
        k8.f14253A = i9;
        k8.f14263d = this.f12751c;
        k8.f14265f = this.f12752d;
        C1804p0 c1804p2 = new C1804p0(k8);
        this.f12759k = c1804p2;
        this.f12754f.d(c1804p2);
    }

    /* JADX WARN: Code duplicated, block: B:187:0x0468  */
    /* JADX WARN: Code duplicated, block: B:190:0x0470  */
    /* JADX WARN: Code duplicated, block: B:192:0x0473 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:193:0x0475  */
    /* JADX WARN: Code duplicated, block: B:195:0x0485  */
    /* JADX WARN: Code duplicated, block: B:197:0x0492  */
    /* JADX WARN: Code duplicated, block: B:198:0x049c  */
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) throws C0800Ka {
        long jV;
        int i8;
        int i9;
        int i10;
        int i11;
        int iG;
        int i12;
        int iG2;
        int i13;
        long jV2;
        int i14;
        int i15;
        boolean z7;
        int i16;
        int i17;
        int i18;
        int i19;
        byte b8;
        int i20;
        int i21;
        int i22;
        p113o3.r.x(this.f12754f);
        while (c1534jr.o() > 0) {
            int i23 = this.f12755g;
            C1534jr c1534jr2 = this.f12749a;
            if (i23 == 0) {
                while (c1534jr.o() > 0) {
                    int i24 = this.f12757i << 8;
                    this.f12757i = i24;
                    int iW = i24 | c1534jr.w();
                    this.f12757i = iW;
                    if (iW == 2147385345 || iW == -25230976 || iW == 536864768 || iW == -14745368) {
                        i22 = 1;
                    } else if (iW == 1683496997 || iW == 622876772) {
                        i22 = 2;
                    } else if (iW == 1078008818 || iW == -233094848) {
                        i22 = 3;
                    } else {
                        i22 = (iW == 1908687592 || iW == -398277519) ? 4 : 0;
                    }
                    this.f12761m = i22;
                    if (i22 != 0) {
                        byte[] bArr = c1534jr2.f19515a;
                        bArr[0] = (byte) ((iW >> 24) & 255);
                        bArr[1] = (byte) ((iW >> 16) & 255);
                        bArr[2] = (byte) ((iW >> 8) & 255);
                        bArr[3] = (byte) (iW & 255);
                        this.f12756h = 4;
                        this.f12757i = 0;
                        if (i22 != 3 && i22 != 4) {
                            if (i22 == 1) {
                                this.f12755g = 1;
                                break;
                            } else {
                                this.f12755g = 2;
                                break;
                            }
                        }
                        this.f12755g = 4;
                        break;
                    }
                }
            } else if (i23 != 1) {
                if (i23 != 2) {
                    if (i23 != 3) {
                        if (i23 != 4) {
                            if (i23 != 5) {
                                int iMin = Math.min(c1534jr.o(), this.f12760l - this.f12756h);
                                this.f12754f.f(iMin, c1534jr);
                                int i25 = this.f12756h + iMin;
                                this.f12756h = i25;
                                if (i25 == this.f12760l) {
                                    p113o3.r.M(this.f12764p != -9223372036854775807L);
                                    this.f12754f.b(this.f12764p, this.f12761m == 4 ? 0 : 1, this.f12760l, 0, null);
                                    this.f12764p += this.f12758j;
                                    this.f12755g = 0;
                                }
                            } else if (e(c1534jr, c1534jr2.f19515a, this.f12763o)) {
                                AtomicInteger atomicInteger = this.f12750b;
                                byte[] bArr2 = c1534jr2.f19515a;
                                C1286f0 c1286f0Q = AbstractC1717nH.q(bArr2);
                                int iG3 = c1286f0Q.g(32);
                                int iO = AbstractC1717nH.o(c1286f0Q, AbstractC1717nH.f20134n);
                                int i26 = iO + 1;
                                char c8 = iG3 == 1078008818 ? (char) 1 : (char) 0;
                                if (c8 == 0) {
                                    jV = -9223372036854775807L;
                                    i8 = -2147483647;
                                } else {
                                    if (!c1286f0Q.x()) {
                                        throw C0800Ka.b("Only supports full channel mask-based audio presentation");
                                    }
                                    int i27 = iO - 1;
                                    int i28 = bArr2[i27] << 8;
                                    int i29 = bArr2[iO] & 255;
                                    int i30 = Et.f13234a;
                                    char c9 = 65535;
                                    for (int i31 = 0; i31 < i27; i31++) {
                                        byte b9 = bArr2[i31];
                                        int[] iArr = Et.f13245l;
                                        char c10 = (char) (iArr[(c9 >> '\f') ^ ((b9 & 255) >> 4)] ^ ((char) (c9 << 4)));
                                        c9 = (char) (((char) (c10 << 4)) ^ iArr[(b9 & 15) ^ (c10 >> '\f')]);
                                    }
                                    if ((((char) i28) | i29) != c9) {
                                        throw C0800Ka.a("CRC check failed", null);
                                    }
                                    int iG4 = c1286f0Q.g(2);
                                    if (iG4 == 0) {
                                        i9 = IMediaList.Event.ItemAdded;
                                    } else if (iG4 == 1) {
                                        i9 = 480;
                                    } else {
                                        if (iG4 != 2) {
                                            throw C0800Ka.a("Unsupported base duration index in DTS UHD header: " + iG4, null);
                                        }
                                        i9 = 384;
                                    }
                                    int iG5 = c1286f0Q.g(3) + 1;
                                    int iG6 = c1286f0Q.g(2);
                                    if (iG6 == 0) {
                                        i10 = 32000;
                                    } else if (iG6 == 1) {
                                        i10 = 44100;
                                    } else {
                                        if (iG6 != 2) {
                                            throw C0800Ka.a("Unsupported clock rate index in DTS UHD header: " + iG6, null);
                                        }
                                        i10 = 48000;
                                    }
                                    if (c1286f0Q.x()) {
                                        c1286f0Q.v(36);
                                    }
                                    int iG7 = i10 * (1 << c1286f0Q.g(2));
                                    jV = Et.v(i9 * iG5, 1000000L, i10, RoundingMode.FLOOR);
                                    i8 = iG7;
                                }
                                int iO2 = 0;
                                for (char c11 = 0; c11 < c8; c11 = 1) {
                                    iO2 += AbstractC1717nH.o(c1286f0Q, AbstractC1717nH.f20136o);
                                }
                                for (int i32 = 0; i32 <= 0; i32++) {
                                    if (c8 != 0) {
                                        atomicInteger.set(AbstractC1717nH.o(c1286f0Q, AbstractC1717nH.f20138p));
                                    }
                                    iO2 += atomicInteger.get() != 0 ? AbstractC1717nH.o(c1286f0Q, AbstractC1717nH.f20140q) : 0;
                                }
                                int i33 = i26 + iO2;
                                W0.r rVar = new W0.r("audio/vnd.dts.uhd;profile=p2", 2, i8, i33, jV);
                                if (this.f12761m == 3) {
                                    a(rVar);
                                }
                                this.f12760l = i33;
                                if (jV == -9223372036854775807L) {
                                    jV = 0;
                                }
                                this.f12758j = jV;
                                c1534jr2.j(0);
                                this.f12754f.f(this.f12763o, c1534jr2);
                                this.f12755g = 6;
                            } else {
                                continue;
                            }
                        } else if (e(c1534jr, c1534jr2.f19515a, 6)) {
                            C1286f0 c1286f0Q2 = AbstractC1717nH.q(c1534jr2.f19515a);
                            c1286f0Q2.v(32);
                            int iO3 = AbstractC1717nH.o(c1286f0Q2, AbstractC1717nH.f20142r) + 1;
                            this.f12763o = iO3;
                            int i34 = this.f12756h;
                            if (i34 > iO3) {
                                int i35 = i34 - iO3;
                                this.f12756h = i34 - i35;
                                c1534jr.j(c1534jr.f19516b - i35);
                            }
                            this.f12755g = 5;
                        }
                    } else if (e(c1534jr, c1534jr2.f19515a, this.f12762n)) {
                        C1286f0 c1286f0Q3 = AbstractC1717nH.q(c1534jr2.f19515a);
                        c1286f0Q3.v(40);
                        int iG8 = c1286f0Q3.g(2);
                        boolean zX = c1286f0Q3.x();
                        int i36 = 1;
                        int i37 = true != zX ? 16 : 20;
                        c1286f0Q3.v(true != zX ? 8 : 12);
                        int iG9 = c1286f0Q3.g(i37) + 1;
                        boolean zX2 = c1286f0Q3.x();
                        if (zX2) {
                            iG = c1286f0Q3.g(2);
                            int iG10 = c1286f0Q3.g(3) + 1;
                            if (c1286f0Q3.x()) {
                                c1286f0Q3.v(36);
                            }
                            int iG11 = c1286f0Q3.g(3) + 1;
                            int iG12 = c1286f0Q3.g(3) + 1;
                            if (iG11 != 1 || iG12 != 1) {
                                throw C0800Ka.b("Multiple audio presentations or assets not supported");
                            }
                            int i38 = iG8 + 1;
                            int iG13 = c1286f0Q3.g(i38);
                            int i39 = 0;
                            while (i39 < i38) {
                                if (((iG13 >> i39) & 1) == i36) {
                                    c1286f0Q3.v(8);
                                }
                                i39++;
                                i36 = 1;
                            }
                            i11 = iG10 * IMediaList.Event.ItemAdded;
                            if (c1286f0Q3.x()) {
                                c1286f0Q3.v(2);
                                int iG14 = (c1286f0Q3.g(2) + 1) << 2;
                                int iG15 = c1286f0Q3.g(2) + 1;
                                for (int i40 = 0; i40 < iG15; i40++) {
                                    c1286f0Q3.v(iG14);
                                }
                            }
                        } else {
                            i11 = 0;
                            iG = -1;
                        }
                        c1286f0Q3.v(i37);
                        c1286f0Q3.v(12);
                        if (zX2) {
                            if (c1286f0Q3.x()) {
                                c1286f0Q3.v(4);
                            }
                            if (c1286f0Q3.x()) {
                                c1286f0Q3.v(24);
                            }
                            if (c1286f0Q3.x()) {
                                i12 = 1;
                                c1286f0Q3.w(c1286f0Q3.g(10) + 1);
                            } else {
                                i12 = 1;
                            }
                            c1286f0Q3.v(5);
                            int i41 = AbstractC1717nH.f20132m[c1286f0Q3.g(4)];
                            iG2 = c1286f0Q3.g(8) + 1;
                            i13 = i41;
                        } else {
                            i12 = 1;
                            iG2 = -1;
                            i13 = -2147483647;
                        }
                        if (zX2) {
                            if (iG == 0) {
                                i14 = 32000;
                            } else if (iG == i12) {
                                i14 = 44100;
                            } else {
                                if (iG != 2) {
                                    throw C0800Ka.a("Unsupported reference clock code in DTS HD header: " + iG, null);
                                }
                                i14 = 48000;
                            }
                            jV2 = Et.v(i11, 1000000L, i14, RoundingMode.FLOOR);
                        } else {
                            jV2 = -9223372036854775807L;
                        }
                        a(new W0.r("audio/vnd.dts.hd;profile=lbr", iG2, i13, iG9, jV2));
                        this.f12760l = iG9;
                        if (jV2 == -9223372036854775807L) {
                            jV2 = 0;
                        }
                        this.f12758j = jV2;
                        c1534jr2.j(0);
                        this.f12754f.f(this.f12762n, c1534jr2);
                        this.f12755g = 6;
                    } else {
                        continue;
                    }
                } else if (e(c1534jr, c1534jr2.f19515a, 7)) {
                    C1286f0 c1286f0Q4 = AbstractC1717nH.q(c1534jr2.f19515a);
                    c1286f0Q4.v(42);
                    this.f12762n = c1286f0Q4.g(true == c1286f0Q4.x() ? 12 : 8) + 1;
                    this.f12755g = 3;
                }
            } else if (e(c1534jr, c1534jr2.f19515a, 18)) {
                byte[] bArr3 = c1534jr2.f19515a;
                if (this.f12759k == null) {
                    String str = this.f12753e;
                    C1286f0 c1286f0Q5 = AbstractC1717nH.q(bArr3);
                    c1286f0Q5.v(60);
                    int i42 = AbstractC1717nH.f20126j[c1286f0Q5.g(6)];
                    int i43 = AbstractC1717nH.f20128k[c1286f0Q5.g(4)];
                    int iG16 = c1286f0Q5.g(5);
                    int i44 = iG16 >= 29 ? -1 : (AbstractC1717nH.f20130l[iG16] * 1000) / 2;
                    c1286f0Q5.v(10);
                    int i45 = i42 + (c1286f0Q5.g(2) > 0 ? 1 : 0);
                    K k8 = new K();
                    k8.f14260a = str;
                    k8.f("audio/vnd.dts");
                    k8.f14266g = i44;
                    k8.f14285z = i45;
                    k8.f14253A = i43;
                    k8.f14275p = null;
                    k8.f14263d = this.f12751c;
                    k8.f14265f = this.f12752d;
                    C1804p0 c1804p0 = new C1804p0(k8);
                    this.f12759k = c1804p0;
                    this.f12754f.d(c1804p0);
                }
                byte b10 = bArr3[0];
                if (b10 != -2) {
                    if (b10 == -1) {
                        i21 = ((bArr3[7] & 3) << 12) | ((bArr3[6] & 255) << 4) | ((bArr3[9] & 60) >> 2);
                    } else if (b10 != 31) {
                        i15 = ((bArr3[5] & 3) << 12) | ((bArr3[6] & 255) << 4) | ((bArr3[7] & 240) >> 4);
                    } else {
                        i21 = ((bArr3[8] & 60) >> 2) | ((bArr3[6] & 3) << 12) | ((bArr3[7] & 255) << 4);
                    }
                    i16 = i21 + 1;
                    z7 = true;
                    if (z7) {
                        i16 = (i16 * 16) / 14;
                    }
                    this.f12760l = i16;
                    if (b10 != -2) {
                        if (b10 != -1) {
                            if (b10 != 31) {
                                i19 = (bArr3[4] & 1) << 6;
                                i20 = bArr3[5] & 252;
                            } else {
                                i19 = (bArr3[5] & 7) << 4;
                                b8 = bArr3[6];
                            }
                            i18 = (i20 >> 2) | i19;
                            i17 = 1;
                        } else {
                            i19 = (bArr3[4] & 7) << 4;
                            b8 = bArr3[7];
                        }
                        i20 = b8 & 60;
                        i18 = (i20 >> 2) | i19;
                        i17 = 1;
                    } else {
                        i17 = 1;
                        i18 = ((bArr3[4] & 252) >> 2) | ((bArr3[5] & 1) << 6);
                    }
                    this.f12758j = Cw.w0(Et.u(this.f12759k.f20363B, (i18 + i17) * 32));
                    c1534jr2.j(0);
                    this.f12754f.f(18, c1534jr2);
                    this.f12755g = 6;
                } else {
                    i15 = ((bArr3[4] & 3) << 12) | ((bArr3[7] & 255) << 4) | ((bArr3[6] & 240) >> 4);
                }
                i16 = i15 + 1;
                z7 = false;
                if (z7) {
                    i16 = (i16 * 16) / 14;
                }
                this.f12760l = i16;
                if (b10 != -2) {
                    if (b10 != -1) {
                        if (b10 != 31) {
                            i19 = (bArr3[4] & 1) << 6;
                            i20 = bArr3[5] & 252;
                        } else {
                            i19 = (bArr3[5] & 7) << 4;
                            b8 = bArr3[6];
                        }
                        i18 = (i20 >> 2) | i19;
                        i17 = 1;
                    } else {
                        i19 = (bArr3[4] & 7) << 4;
                        b8 = bArr3[7];
                    }
                    i20 = b8 & 60;
                    i18 = (i20 >> 2) | i19;
                    i17 = 1;
                } else {
                    i17 = 1;
                    i18 = ((bArr3[4] & 252) >> 2) | ((bArr3[5] & 1) << 6);
                }
                this.f12758j = Cw.w0(Et.u(this.f12759k.f20363B, (i18 + i17) * 32));
                c1534jr2.j(0);
                this.f12754f.f(18, c1534jr2);
                this.f12755g = 6;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f12753e = i8.f310e;
        i8.d();
        this.f12754f = n7.h(i8.f309d, 1);
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f12764p = j8;
    }

    public final boolean e(C1534jr c1534jr, byte[] bArr, int i8) {
        int iMin = Math.min(c1534jr.o(), i8 - this.f12756h);
        c1534jr.f(this.f12756h, bArr, iMin);
        int i9 = this.f12756h + iMin;
        this.f12756h = i9;
        return i9 == i8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f12755g = 0;
        this.f12756h = 0;
        this.f12757i = 0;
        this.f12764p = -9223372036854775807L;
        this.f12750b.set(0);
    }
}
