package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.http2.Http2;

/* JADX INFO: loaded from: classes.dex */
public final class M1 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f14604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f14605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f14606d;

    public M1(int i8) {
        this.f14603a = i8;
        if (i8 == 1) {
            this.f14605c = new A2(null, 0, 0);
            this.f14606d = new C1534jr(2786);
        } else {
            if (i8 != 2) {
                return;
            }
            this.f14605c = new A2(null, 0, 1);
            this.f14606d = new C1534jr(Http2.INITIAL_MAX_FRAME_SIZE);
        }
    }

    public final boolean a(M m7) {
        N1 n7 = new N1();
        if (n7.a(m7, true) && (n7.f14840a & 2) == 2) {
            int iMin = Math.min(n7.f14844e, 8);
            C1534jr c1534jr = new C1534jr(iMin);
            m7.g(0, c1534jr.f19515a, iMin);
            c1534jr.j(0);
            if (c1534jr.o() >= 5 && c1534jr.w() == 127 && c1534jr.E() == 1179402563) {
                this.f14606d = new L1(1);
            } else {
                c1534jr.j(0);
                try {
                    if (a7.b.u(1, c1534jr, true)) {
                        this.f14606d = new R1(1);
                    } else {
                        c1534jr.j(0);
                        if (P1.i(c1534jr, P1.f15305o)) {
                            this.f14606d = new P1(1);
                        }
                    }
                } catch (C0800Ka unused) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x020e  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        int i8;
        byte[] bArr;
        int i9 = 1;
        switch (this.f14603a) {
            case 0:
                p113o3.r.x((N) this.f14605c);
                if (((p118p1.j) this.f14606d) == null) {
                    if (!a(m7)) {
                        throw C0800Ka.a("Failed to determine bitstream type", null);
                    }
                    m7.zzj();
                }
                if (!this.f14604b) {
                    InterfaceC1234e0 interfaceC1234e0H = ((N) this.f14605c).h(0, 1);
                    ((N) this.f14605c).f();
                    p118p1.j jVar = (p118p1.j) this.f14606d;
                    jVar.f28181k = (N) this.f14605c;
                    jVar.f28180j = interfaceC1234e0H;
                    jVar.f(true);
                    this.f14604b = true;
                }
                p118p1.j jVar2 = (p118p1.j) this.f14606d;
                p113o3.r.x((InterfaceC1234e0) jVar2.f28180j);
                int i10 = Et.f13234a;
                int i11 = jVar2.f28174d;
                p118p1.f fVar = jVar2.f28179i;
                if (i11 == 0) {
                    while (true) {
                        if (fVar.c(m7)) {
                            long jZzf = m7.zzf();
                            long j8 = jVar2.f28172b;
                            jVar2.f28176f = jZzf - j8;
                            C1534jr c1534jr = (C1534jr) fVar.f28160e;
                            if (jVar2.g(c1534jr, j8, (C2218x) jVar2.f28183m)) {
                                jVar2.f28172b = m7.zzf();
                            } else {
                                C1804p0 c1804p0 = (C1804p0) ((C2218x) jVar2.f28183m).f21779H;
                                jVar2.f28175e = c1804p0.f20363B;
                                if (!jVar2.f28178h) {
                                    ((InterfaceC1234e0) jVar2.f28180j).d(c1804p0);
                                    jVar2.f28178h = true;
                                }
                                O1 o4 = (O1) ((C2218x) jVar2.f28183m).f21780I;
                                if (o4 != null) {
                                    jVar2.f28182l = o4;
                                } else {
                                    if (m7.zzd() == -1) {
                                        jVar2.f28182l = new C2272y1();
                                    } else {
                                        N1 n7 = (N1) fVar.f28159d;
                                        i8 = 2;
                                        jVar2.f28182l = new I1(jVar2, jVar2.f28172b, m7.zzd(), n7.f14843d + n7.f14844e, n7.f14841b, (4 & n7.f14840a) != 0);
                                    }
                                    jVar2.f28174d = i8;
                                    bArr = c1534jr.f19515a;
                                    if (bArr.length != 65025) {
                                        c1534jr.h(c1534jr.f19517c, Arrays.copyOf(bArr, Math.max(65025, c1534jr.f19517c)));
                                    }
                                    i9 = 0;
                                }
                                i8 = 2;
                                jVar2.f28174d = i8;
                                bArr = c1534jr.f19515a;
                                if (bArr.length != 65025) {
                                    c1534jr.h(c1534jr.f19517c, Arrays.copyOf(bArr, Math.max(65025, c1534jr.f19517c)));
                                }
                                i9 = 0;
                            }
                        } else {
                            jVar2.f28174d = 3;
                            i9 = -1;
                        }
                    }
                } else {
                    if (i11 == 1) {
                        m7.q((int) jVar2.f28172b);
                        jVar2.f28174d = 2;
                        return 0;
                    }
                    if (i11 != 2) {
                        i9 = -1;
                    } else {
                        long jA = ((O1) jVar2.f28182l).a(m7);
                        if (jA >= 0) {
                            wVar.f7458a = jA;
                        } else {
                            if (jA < -1) {
                                jVar2.h(-(jA + 2));
                            }
                            if (!jVar2.f28177g) {
                                Y yZze = ((O1) jVar2.f28182l).zze();
                                p113o3.r.x(yZze);
                                ((N) jVar2.f28181k).g(yZze);
                                jVar2.f28177g = true;
                            }
                            if (jVar2.f28176f > 0 || fVar.c(m7)) {
                                jVar2.f28176f = 0L;
                                C1534jr c1534jr2 = (C1534jr) fVar.f28160e;
                                long jE = jVar2.e(c1534jr2);
                                if (jE >= 0) {
                                    long j9 = jVar2.f28173c;
                                    if (j9 + jE >= jVar2.f28171a) {
                                        long j10 = (j9 * 1000000) / ((long) jVar2.f28175e);
                                        ((InterfaceC1234e0) jVar2.f28180j).f(c1534jr2.f19517c, c1534jr2);
                                        ((InterfaceC1234e0) jVar2.f28180j).b(j10, 1, c1534jr2.f19517c, 0, null);
                                        jVar2.f28171a = -1L;
                                    }
                                }
                                jVar2.f28173c += jE;
                                i9 = 0;
                            } else {
                                jVar2.f28174d = 3;
                                i9 = -1;
                            }
                        }
                    }
                }
                return i9;
            case 1:
                int iE = m7.e(((C1534jr) this.f14606d).f19515a, 0, 2786);
                if (iE == -1) {
                    return -1;
                }
                ((C1534jr) this.f14606d).j(0);
                ((C1534jr) this.f14606d).i(iE);
                if (!this.f14604b) {
                    ((A2) this.f14605c).d(4, 0L);
                    this.f14604b = true;
                }
                ((A2) this.f14605c).b((C1534jr) this.f14606d);
                return 0;
            default:
                int iE2 = m7.e(((C1534jr) this.f14606d).f19515a, 0, Http2.INITIAL_MAX_FRAME_SIZE);
                if (iE2 == -1) {
                    return -1;
                }
                ((C1534jr) this.f14606d).j(0);
                ((C1534jr) this.f14606d).i(iE2);
                if (!this.f14604b) {
                    ((A2) this.f14605c).d(4, 0L);
                    this.f14604b = true;
                }
                ((A2) this.f14605c).b((C1534jr) this.f14606d);
                return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0139 A[LOOP:5: B:38:0x00d7->B:56:0x0139, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:71:0x0138 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        int iN;
        int i8;
        int i9;
        int i10;
        int i11 = 4;
        int i12 = 7;
        char c8 = 2;
        int i13 = 1;
        switch (this.f14603a) {
            case 0:
                try {
                    return a(m7);
                } catch (C0800Ka unused) {
                    return false;
                }
            case 1:
                C1534jr c1534jr = new C1534jr(10);
                int i14 = 0;
                while (true) {
                    F f8 = (F) m7;
                    f8.d(c1534jr.f19515a, 0, 10, false);
                    c1534jr.j(0);
                    if (c1534jr.y() != 4801587) {
                        m7.zzj();
                        F f9 = (F) m7;
                        f9.i(i14, false);
                        int i15 = i14;
                        while (true) {
                            int i16 = 0;
                            while (true) {
                                f9.d(c1534jr.f19515a, 0, 6, false);
                                c1534jr.j(0);
                                if (c1534jr.A() == 2935) {
                                    i16++;
                                    if (i16 >= i11) {
                                        return true;
                                    }
                                    byte[] bArr = c1534jr.f19515a;
                                    if (bArr.length < 6) {
                                        iN = -1;
                                        i8 = -1;
                                    } else {
                                        if (((bArr[5] & 248) >> 3) > 10) {
                                            int i17 = ((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1;
                                            iN = i17 + i17;
                                            i8 = -1;
                                        } else {
                                            byte b8 = bArr[i11];
                                            iN = AbstractC1717nH.n((b8 & 192) >> 6, b8 & 63);
                                            i8 = -1;
                                        }
                                        if (iN == i8) {
                                            return false;
                                        }
                                        f9.i(iN - 6, false);
                                        i11 = 4;
                                    }
                                    if (iN == i8) {
                                        return false;
                                    }
                                    f9.i(iN - 6, false);
                                    i11 = 4;
                                }
                            }
                            m7.zzj();
                            i15++;
                            if (i15 - i14 >= 8192) {
                                return false;
                            }
                            f9.i(i15, false);
                        }
                    } else {
                        c1534jr.k(3);
                        int iV = c1534jr.v();
                        i14 += iV + 10;
                        f8.i(iV, false);
                        i11 = 4;
                    }
                }
                break;
            default:
                C1534jr c1534jr2 = new C1534jr(10);
                int i18 = 0;
                while (true) {
                    F f10 = (F) m7;
                    f10.d(c1534jr2.f19515a, 0, 10, false);
                    c1534jr2.j(0);
                    if (c1534jr2.y() != 4801587) {
                        m7.zzj();
                        F f11 = (F) m7;
                        f11.i(i18, false);
                        int i19 = i18;
                        while (true) {
                            int i20 = 0;
                            while (true) {
                                f11.d(c1534jr2.f19515a, 0, i12, false);
                                c1534jr2.j(0);
                                int iA = c1534jr2.A();
                                if (iA == 44096 || iA == 44097) {
                                    i20 += i13;
                                    if (i20 >= 4) {
                                        return true;
                                    }
                                    byte[] bArr2 = c1534jr2.f19515a;
                                    if (bArr2.length < i12) {
                                        i10 = -1;
                                    } else {
                                        int i21 = (bArr2[3] & 255) | ((bArr2[c8] & 255) << 8);
                                        if (i21 == 65535) {
                                            i21 = ((bArr2[4] & 255) << 16) | ((bArr2[5] & 255) << 8) | (bArr2[6] & 255);
                                            i9 = 7;
                                        } else {
                                            i9 = 4;
                                        }
                                        if (iA == 44097) {
                                            i9 += 2;
                                        }
                                        i10 = i9 + i21;
                                    }
                                    if (i10 == -1) {
                                        return false;
                                    }
                                    f11.i(i10 - 7, false);
                                    i12 = 7;
                                    c8 = 2;
                                    i13 = 1;
                                }
                            }
                            m7.zzj();
                            i19++;
                            if (i19 - i18 >= 8192) {
                                return false;
                            }
                            f11.i(i19, false);
                        }
                    } else {
                        c1534jr2.k(3);
                        int iV2 = c1534jr2.v();
                        i18 += iV2 + 10;
                        f10.i(iV2, false);
                        i12 = 7;
                        c8 = 2;
                        i13 = 1;
                    }
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        switch (this.f14603a) {
            case 0:
                p118p1.j jVar = (p118p1.j) this.f14606d;
                if (jVar != null) {
                    p118p1.f fVar = jVar.f28179i;
                    N1 n7 = (N1) fVar.f28159d;
                    n7.f14840a = 0;
                    n7.f14841b = 0L;
                    n7.f14842c = 0;
                    n7.f14843d = 0;
                    n7.f14844e = 0;
                    ((C1534jr) fVar.f28160e).g(0);
                    fVar.f28156a = -1;
                    fVar.f28158c = false;
                    if (j8 == 0) {
                        jVar.f(!jVar.f28177g);
                    } else if (jVar.f28174d != 0) {
                        long j10 = (((long) jVar.f28175e) * j9) / 1000000;
                        jVar.f28171a = j10;
                        O1 o4 = (O1) jVar.f28182l;
                        int i8 = Et.f13234a;
                        o4.b(j10);
                        jVar.f28174d = 2;
                    }
                }
                break;
            case 1:
                this.f14604b = false;
                ((A2) this.f14605c).zze();
                break;
            default:
                this.f14604b = false;
                ((A2) this.f14605c).zze();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        switch (this.f14603a) {
            case 0:
                this.f14605c = n7;
                break;
            case 1:
                ((A2) this.f14605c).c(n7, new A1.I(Integer.MIN_VALUE, 0, 1, 1));
                n7.f();
                n7.g(new P(-9223372036854775807L, 0L));
                break;
            default:
                ((A2) this.f14605c).c(n7, new A1.I(Integer.MIN_VALUE, 0, 1, 1));
                n7.f();
                n7.g(new P(-9223372036854775807L, 0L));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        switch (this.f14603a) {
            case 0:
                C1969sA c1969sA = AbstractC2073uA.f21207H;
                break;
            case 1:
                C1969sA c1969sA2 = AbstractC2073uA.f21207H;
                break;
            default:
                C1969sA c1969sA3 = AbstractC2073uA.f21207H;
                break;
        }
        return PA.f15340K;
    }
}
