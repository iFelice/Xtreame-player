package com.google.android.gms.internal.ads;

import W0.C0374g;
import android.support.v4.media.session.PlaybackStateCompat;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1959s0 implements L {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public N f20828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC1234e0 f20829e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Q9 f20831g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Q f20832h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20833i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f20834j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public p010b1.a f20835k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f20836l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f20837m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f20825a = new byte[42];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f20826b = new C1534jr(new byte[32768], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final W0.w f20827c = new W0.w();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f20830f = 0;

    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        Q q7;
        Y p7;
        long j8;
        long j9;
        boolean zE;
        int i8 = this.f20830f;
        Q9 q9 = null;
        boolean z7 = true;
        if (i8 == 0) {
            m7.zzj();
            long jZze = m7.zze();
            Q9 q9A = new V(0).a(m7, null);
            if (q9A != null && q9A.f15993G.length != 0) {
                q9 = q9A;
            }
            m7.q((int) (m7.zze() - jZze));
            this.f20831g = q9;
            this.f20830f = 1;
            return 0;
        }
        byte[] bArr = this.f20825a;
        if (i8 == 1) {
            m7.g(0, bArr, 42);
            m7.zzj();
            this.f20830f = 2;
            return 0;
        }
        int i9 = 3;
        if (i8 == 2) {
            C1534jr c1534jr = new C1534jr(4);
            m7.h(0, c1534jr.f19515a, 4);
            if (c1534jr.E() != 1716281667) {
                throw C0800Ka.a("Failed to read FLAC stream marker.", null);
            }
            this.f20830f = 3;
            return 0;
        }
        int i10 = 7;
        if (i8 != 3) {
            long j10 = 0;
            if (i8 == 4) {
                m7.zzj();
                C1534jr c1534jr2 = new C1534jr(2);
                m7.g(0, c1534jr2.f19515a, 2);
                int iA = c1534jr2.A();
                if ((iA >> 2) != 16382) {
                    m7.zzj();
                    throw C0800Ka.a("First frame does not start with sync code.", null);
                }
                m7.zzj();
                this.f20834j = iA;
                N n7 = this.f20828d;
                int i11 = Et.f13234a;
                long jZzf = m7.zzf();
                long jZzd = m7.zzd();
                Q q8 = this.f20832h;
                q8.getClass();
                if (q8.f15538k != null) {
                    p7 = new P(q8, 0, jZzf);
                } else if (jZzd == -1 || q8.f15537j <= 0) {
                    p7 = new P(q8.a(), 0L);
                } else {
                    int i12 = this.f20834j;
                    K4 k8 = new K4(q8, 3);
                    C1294f8 c1294f8 = new C1294f8(q8, i12);
                    long jA = q8.a();
                    int i13 = q8.f15530c;
                    int i14 = q8.f15531d;
                    if (i14 > 0) {
                        j8 = ((((long) i14) + ((long) i13)) / 2) + 1;
                    } else {
                        int i15 = q8.f15529b;
                        long j11 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                        int i16 = q8.f15528a;
                        if (i16 == i15 && i16 > 0) {
                            j11 = i16;
                        }
                        j8 = (((j11 * ((long) q8.f15534g)) * ((long) q8.f15535h)) / 8) + 64;
                    }
                    p010b1.a aVar = new p010b1.a(k8, c1294f8, jA, q8.f15537j, jZzf, jZzd, j8, Math.max(6, i13));
                    this.f20835k = aVar;
                    p7 = (A) aVar.f7425b;
                }
                n7.g(p7);
                this.f20830f = 5;
                return 0;
            }
            this.f20829e.getClass();
            Q q10 = this.f20832h;
            q10.getClass();
            p010b1.a aVar2 = this.f20835k;
            if (aVar2 != null && ((C0374g) aVar2.f7427d) != null) {
                return aVar2.e(m7, wVar);
            }
            if (this.f20837m == -1) {
                m7.zzj();
                m7.zzg(1);
                byte[] bArr2 = new byte[1];
                m7.g(0, bArr2, 1);
                int i17 = bArr2[0] & 1;
                boolean z8 = 1 == i17;
                m7.zzg(2);
                i10 = 1 != i17 ? 6 : 7;
                C1534jr c1534jr3 = new C1534jr(i10);
                byte[] bArr3 = c1534jr3.f19515a;
                int i18 = 0;
                while (i18 < i10) {
                    int iC = m7.c(i18, bArr3, i10 - i18);
                    if (iC == -1) {
                        break;
                    }
                    i18 += iC;
                }
                c1534jr3.i(i18);
                m7.zzj();
                try {
                    long jG = c1534jr3.G();
                    if (!z8) {
                        jG *= (long) q10.f15529b;
                    }
                    j10 = jG;
                } catch (NumberFormatException unused) {
                    z7 = false;
                }
                if (!z7) {
                    throw C0800Ka.a(null, null);
                }
                this.f20837m = j10;
                return 0;
            }
            C1534jr c1534jr4 = this.f20826b;
            int i19 = c1534jr4.f19517c;
            if (i19 < 32768) {
                int iE = m7.e(c1534jr4.f19515a, i19, 32768 - i19);
                z7 = iE == -1;
                if (!z7) {
                    c1534jr4.i(i19 + iE);
                } else if (c1534jr4.o() == 0) {
                    long j12 = this.f20837m * 1000000;
                    Q q11 = this.f20832h;
                    int i20 = Et.f13234a;
                    this.f20829e.b(j12 / ((long) q11.f15532e), 1, this.f20836l, 0, null);
                    return -1;
                }
            } else {
                z7 = false;
            }
            int i21 = c1534jr4.f19516b;
            int i22 = this.f20836l;
            int i23 = this.f20833i;
            if (i22 < i23) {
                c1534jr4.k(Math.min(i23 - i22, c1534jr4.o()));
            }
            this.f20832h.getClass();
            int i24 = c1534jr4.f19516b;
            while (true) {
                int i25 = c1534jr4.f19517c - 16;
                W0.w wVar2 = this.f20827c;
                if (i24 > i25) {
                    if (z7) {
                        while (true) {
                            int i26 = c1534jr4.f19517c;
                            if (i24 <= i26 - this.f20833i) {
                                c1534jr4.j(i24);
                                try {
                                    zE = p113o3.r.E(c1534jr4, this.f20832h, this.f20834j, wVar2);
                                } catch (IndexOutOfBoundsException unused2) {
                                    zE = false;
                                }
                                if (c1534jr4.f19516b <= c1534jr4.f19517c && zE) {
                                    c1534jr4.j(i24);
                                    j9 = wVar2.f7458a;
                                    break;
                                }
                                i24++;
                            } else {
                                c1534jr4.j(i26);
                            }
                        }
                    } else {
                        c1534jr4.j(i24);
                    }
                    j9 = -1;
                    break;
                }
                c1534jr4.j(i24);
                if (p113o3.r.E(c1534jr4, this.f20832h, this.f20834j, wVar2)) {
                    c1534jr4.j(i24);
                    j9 = wVar2.f7458a;
                    break;
                }
                i24++;
            }
            int i27 = c1534jr4.f19516b - i21;
            c1534jr4.j(i21);
            this.f20829e.f(i27, c1534jr4);
            int i28 = this.f20836l + i27;
            this.f20836l = i28;
            if (j9 != -1) {
                long j13 = this.f20837m * 1000000;
                Q q12 = this.f20832h;
                int i29 = Et.f13234a;
                this.f20829e.b(j13 / ((long) q12.f15532e), 1, i28, 0, null);
                this.f20836l = 0;
                this.f20837m = j9;
            }
            if (c1534jr4.o() >= 16) {
                return 0;
            }
            int iO = c1534jr4.o();
            byte[] bArr4 = c1534jr4.f19515a;
            System.arraycopy(bArr4, c1534jr4.f19516b, bArr4, 0, iO);
            c1534jr4.j(0);
            c1534jr4.i(iO);
            return 0;
        }
        Q q13 = this.f20832h;
        while (true) {
            m7.zzj();
            C1286f0 c1286f0 = new C1286f0(new byte[4], 4);
            m7.g(0, c1286f0.f18645b, 4);
            boolean zX = c1286f0.x();
            int iG = c1286f0.g(i10);
            int iG2 = c1286f0.g(24) + 4;
            if (iG == 0) {
                byte[] bArr5 = new byte[38];
                m7.h(0, bArr5, 38);
                q13 = new Q(bArr5, 4);
            } else {
                if (q13 == null) {
                    throw new IllegalArgumentException();
                }
                if (iG == i9) {
                    C1534jr c1534jr5 = new C1534jr(iG2);
                    m7.h(0, c1534jr5.f19515a, iG2);
                    q7 = new Q(q13.f15528a, q13.f15529b, q13.f15530c, q13.f15531d, q13.f15532e, q13.f15534g, q13.f15535h, q13.f15537j, U2.m.i(c1534jr5), q13.f15539l);
                } else {
                    Q9 q14 = q13.f15539l;
                    if (iG == 4) {
                        C1534jr c1534jr6 = new C1534jr(iG2);
                        m7.h(0, c1534jr6.f19515a, iG2);
                        c1534jr6.k(4);
                        Q9 q9P = a7.b.p(Arrays.asList((String[]) a7.b.r(c1534jr6, false, false).f14301H));
                        if (q14 != null) {
                            q9P = q14.e(q9P);
                        }
                        q7 = new Q(q13.f15528a, q13.f15529b, q13.f15530c, q13.f15531d, q13.f15532e, q13.f15534g, q13.f15535h, q13.f15537j, q13.f15538k, q9P);
                    } else if (iG == 6) {
                        C1534jr c1534jr7 = new C1534jr(iG2);
                        m7.h(0, c1534jr7.f19515a, iG2);
                        c1534jr7.k(4);
                        Q9 q15 = new Q9(AbstractC2073uA.w(G0.a(c1534jr7)));
                        if (q14 != null) {
                            q15 = q14.e(q15);
                        }
                        q7 = new Q(q13.f15528a, q13.f15529b, q13.f15530c, q13.f15531d, q13.f15532e, q13.f15534g, q13.f15535h, q13.f15537j, q13.f15538k, q15);
                    } else {
                        m7.q(iG2);
                    }
                }
                q13 = q7;
            }
            int i30 = Et.f13234a;
            this.f20832h = q13;
            if (zX) {
                this.f20833i = Math.max(q13.f15530c, 6);
                this.f20829e.d(this.f20832h.b(bArr, this.f20831g));
                this.f20830f = 4;
                return 0;
            }
            i9 = 3;
            i10 = 7;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        Q9 q9A = new V(0).a(m7, AbstractC1717nH.f20084C);
        if (q9A != null) {
            int length = q9A.f15993G.length;
        }
        C1534jr c1534jr = new C1534jr(4);
        ((F) m7).d(c1534jr.f19515a, 0, 4, false);
        return c1534jr.E() == 1716281667;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        if (j8 == 0) {
            this.f20830f = 0;
        } else {
            p010b1.a aVar = this.f20835k;
            if (aVar != null) {
                aVar.f(j9);
            }
        }
        this.f20837m = j9 != 0 ? -1L : 0L;
        this.f20836l = 0;
        this.f20826b.g(0);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f20828d = n7;
        this.f20829e = n7.h(0, 1);
        n7.f();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
