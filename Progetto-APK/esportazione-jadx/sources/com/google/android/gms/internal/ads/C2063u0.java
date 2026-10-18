package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2063u0 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f21176a = new C1534jr(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f21177b = new C1534jr(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f21178c = new C1534jr(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1534jr f21179d = new C1534jr();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C2115v0 f21180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public N f21181f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f21182g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f21183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f21184i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f21185j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f21186k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f21187l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f21188m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f21189n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C2011t0 f21190o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C2219x0 f21191p;

    public C2063u0() {
        C2115v0 c2115v0 = new C2115v0(new I());
        c2115v0.f21420H = -9223372036854775807L;
        c2115v0.f21421I = new long[0];
        c2115v0.f21422J = new long[0];
        this.f21180e = c2115v0;
        this.f21182g = 1;
    }

    public final C1534jr a(M m7) {
        int i8 = this.f21187l;
        C1534jr c1534jr = this.f21179d;
        byte[] bArr = c1534jr.f19515a;
        if (i8 > bArr.length) {
            int length = bArr.length;
            c1534jr.h(0, new byte[Math.max(length + length, i8)]);
        } else {
            c1534jr.j(0);
        }
        c1534jr.i(this.f21187l);
        m7.h(0, c1534jr.f19515a, this.f21187l);
        return c1534jr;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        long j8;
        boolean zB1;
        boolean z7;
        p113o3.r.x(this.f21181f);
        while (true) {
            int i8 = this.f21182g;
            int i9 = 8;
            if (i8 == 1) {
                C1534jr c1534jr = this.f21177b;
                if (!m7.b(c1534jr.f19515a, 0, 9, true)) {
                    return -1;
                }
                c1534jr.j(0);
                c1534jr.k(4);
                int iW = c1534jr.w();
                int i10 = iW & 4;
                int i11 = iW & 1;
                if (i10 != 0 && this.f21190o == null) {
                    this.f21190o = new C2011t0(this.f21181f.h(8, 1));
                }
                if (i11 != 0 && this.f21191p == null) {
                    this.f21191p = new C2219x0(this.f21181f.h(9, 2));
                }
                this.f21181f.f();
                this.f21185j = c1534jr.r() - 5;
                this.f21182g = 2;
            } else if (i8 == 2) {
                m7.q(this.f21185j);
                this.f21185j = 0;
                this.f21182g = 3;
            } else if (i8 == 3) {
                C1534jr c1534jr2 = this.f21178c;
                if (!m7.b(c1534jr2.f19515a, 0, 11, true)) {
                    return -1;
                }
                c1534jr2.j(0);
                this.f21186k = c1534jr2.w();
                this.f21187l = c1534jr2.y();
                this.f21188m = c1534jr2.y();
                this.f21188m = (this.f21188m | ((long) (c1534jr2.w() << 24))) * 1000;
                c1534jr2.k(3);
                this.f21182g = 4;
            } else {
                if (i8 != 4) {
                    throw new IllegalStateException();
                }
                boolean z8 = this.f21183h;
                C2115v0 c2115v0 = this.f21180e;
                if (z8) {
                    j8 = this.f21184i + this.f21188m;
                } else {
                    j8 = c2115v0.f21420H == -9223372036854775807L ? 0L : this.f21188m;
                }
                int i12 = this.f21186k;
                if (i12 == 8) {
                    if (this.f21190o != null) {
                        if (!this.f21189n) {
                            this.f21181f.g(new P(-9223372036854775807L, 0L));
                            this.f21189n = true;
                        }
                        C2011t0 c2011t0 = this.f21190o;
                        C1534jr c1534jrA = a(m7);
                        c2011t0.a1(c1534jrA);
                        zB1 = c2011t0.b1(j8, c1534jrA);
                    }
                    z7 = true;
                    if (!this.f21183h && zB1) {
                        this.f21183h = true;
                        this.f21184i = c2115v0.f21420H == -9223372036854775807L ? -this.f21188m : 0L;
                    }
                    this.f21185j = 4;
                    this.f21182g = 2;
                    if (z7) {
                        return 0;
                    }
                } else {
                    i9 = i12;
                }
                if (i9 == 9) {
                    if (this.f21191p != null) {
                        if (!this.f21189n) {
                            this.f21181f.g(new P(-9223372036854775807L, 0L));
                            this.f21189n = true;
                        }
                        C2219x0 c2219x0 = this.f21191p;
                        C1534jr c1534jrA2 = a(m7);
                        zB1 = c2219x0.a1(c1534jrA2) && c2219x0.b1(j8, c1534jrA2);
                        z7 = true;
                    } else {
                        m7.q(this.f21187l);
                        zB1 = false;
                        z7 = false;
                    }
                    if (!this.f21183h) {
                        this.f21183h = true;
                        this.f21184i = c2115v0.f21420H == -9223372036854775807L ? -this.f21188m : 0L;
                    }
                    this.f21185j = 4;
                    this.f21182g = 2;
                    if (z7) {
                        return 0;
                    }
                } else {
                    if (i9 != 18 || this.f21189n) {
                        m7.q(this.f21187l);
                        zB1 = false;
                        z7 = false;
                    } else {
                        C1534jr c1534jrA3 = a(m7);
                        c2115v0.getClass();
                        c2115v0.a1(j8, c1534jrA3);
                        long j9 = c2115v0.f21420H;
                        if (j9 != -9223372036854775807L) {
                            this.f21181f.g(new W(j9, c2115v0.f21422J, c2115v0.f21421I));
                            this.f21189n = true;
                        }
                        z7 = true;
                    }
                    if (!this.f21183h) {
                        this.f21183h = true;
                        this.f21184i = c2115v0.f21420H == -9223372036854775807L ? -this.f21188m : 0L;
                    }
                    this.f21185j = 4;
                    this.f21182g = 2;
                    if (z7) {
                        return 0;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        C1534jr c1534jr = this.f21176a;
        F f8 = (F) m7;
        f8.d(c1534jr.f19515a, 0, 3, false);
        c1534jr.j(0);
        if (c1534jr.y() != 4607062) {
            return false;
        }
        f8.d(c1534jr.f19515a, 0, 2, false);
        c1534jr.j(0);
        if ((c1534jr.A() & 250) != 0) {
            return false;
        }
        f8.d(c1534jr.f19515a, 0, 4, false);
        c1534jr.j(0);
        int iR = c1534jr.r();
        m7.zzj();
        F f9 = (F) m7;
        f9.i(iR, false);
        f9.d(c1534jr.f19515a, 0, 4, false);
        c1534jr.j(0);
        return c1534jr.r() == 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        if (j8 == 0) {
            this.f21182g = 1;
            this.f21183h = false;
        } else {
            this.f21182g = 3;
        }
        this.f21185j = 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f21181f = n7;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
