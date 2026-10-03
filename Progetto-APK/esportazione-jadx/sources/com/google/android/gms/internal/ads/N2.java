package com.google.android.gms.internal.ads;

import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class N2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f14849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1286f0 f14850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC1234e0 f14851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f14852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C1804p0 f14853g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14854h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14855i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14856j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14857k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f14858l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f14859m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14860n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14861o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14862p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f14863q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f14864r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14865s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f14866t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14867u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f14868v;

    public N2(String str, int i8) {
        this.f14847a = str;
        this.f14848b = i8;
        C1534jr c1534jr = new C1534jr(1024);
        this.f14849c = c1534jr;
        byte[] bArr = c1534jr.f19515a;
        this.f14850d = new C1286f0(bArr, bArr.length);
        this.f14858l = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) throws C0800Ka {
        int iG;
        int i8;
        int iG2;
        boolean zX;
        int i9;
        p113o3.r.x(this.f14851e);
        while (c1534jr.o() > 0) {
            int i10 = this.f14854h;
            if (i10 != 0) {
                if (i10 != 1) {
                    C1286f0 c1286f0 = this.f14850d;
                    C1534jr c1534jr2 = this.f14849c;
                    if (i10 != 2) {
                        int iMin = Math.min(c1534jr.o(), this.f14856j - this.f14855i);
                        c1534jr.f(this.f14855i, c1286f0.f18645b, iMin);
                        int i11 = this.f14855i + iMin;
                        this.f14855i = i11;
                        if (i11 == this.f14856j) {
                            c1286f0.t(0);
                            if (c1286f0.x()) {
                                if (this.f14859m) {
                                }
                                this.f14854h = 0;
                            } else {
                                this.f14859m = true;
                                int iG3 = c1286f0.g(1);
                                if (iG3 == 1) {
                                    iG2 = c1286f0.g(1);
                                    i8 = 1;
                                } else {
                                    i8 = iG3;
                                    iG2 = 0;
                                }
                                this.f14860n = iG2;
                                if (iG2 != 0) {
                                    throw C0800Ka.a(null, null);
                                }
                                if (i8 == 1) {
                                    c1286f0.g((c1286f0.g(2) + 1) * 8);
                                    i8 = 1;
                                }
                                if (!c1286f0.x()) {
                                    throw C0800Ka.a(null, null);
                                }
                                this.f14861o = c1286f0.g(6);
                                int iG4 = c1286f0.g(4);
                                int iG5 = c1286f0.g(3);
                                if (iG4 != 0 || iG5 != 0) {
                                    throw C0800Ka.a(null, null);
                                }
                                if (i8 == 0) {
                                    int iE = c1286f0.e();
                                    int iA = c1286f0.a();
                                    W0.r rVarC = AbstractC1717nH.c(c1286f0, true);
                                    this.f14868v = rVarC.f7454a;
                                    this.f14865s = rVarC.f7455b;
                                    this.f14867u = rVarC.f7456c;
                                    int iA2 = iA - c1286f0.a();
                                    c1286f0.t(iE);
                                    byte[] bArr = new byte[(iA2 + 7) / 8];
                                    c1286f0.o(bArr, iA2);
                                    K k8 = new K();
                                    k8.f14260a = this.f14852f;
                                    k8.f("audio/mp4a-latm");
                                    k8.f14268i = this.f14868v;
                                    k8.f14285z = this.f14867u;
                                    k8.f14253A = this.f14865s;
                                    k8.f14274o = Collections.singletonList(bArr);
                                    k8.f14263d = this.f14847a;
                                    k8.f14265f = this.f14848b;
                                    C1804p0 c1804p0 = new C1804p0(k8);
                                    if (!c1804p0.equals(this.f14853g)) {
                                        this.f14853g = c1804p0;
                                        this.f14866t = 1024000000 / ((long) c1804p0.f20363B);
                                        this.f14851e.d(c1804p0);
                                    }
                                } else {
                                    int iG6 = c1286f0.g((c1286f0.g(2) + 1) * 8);
                                    int iA3 = c1286f0.a();
                                    W0.r rVarC2 = AbstractC1717nH.c(c1286f0, true);
                                    this.f14868v = rVarC2.f7454a;
                                    this.f14865s = rVarC2.f7455b;
                                    this.f14867u = rVarC2.f7456c;
                                    c1286f0.v(iG6 - (iA3 - c1286f0.a()));
                                }
                                int iG7 = c1286f0.g(3);
                                this.f14862p = iG7;
                                if (iG7 == 0) {
                                    c1286f0.v(8);
                                } else if (iG7 == 1) {
                                    c1286f0.v(9);
                                } else if (iG7 == 3 || iG7 == 4 || iG7 == 5) {
                                    c1286f0.v(6);
                                } else {
                                    if (iG7 != 6 && iG7 != 7) {
                                        throw new IllegalStateException();
                                    }
                                    c1286f0.v(1);
                                }
                                boolean zX2 = c1286f0.x();
                                this.f14863q = zX2;
                                this.f14864r = 0L;
                                if (zX2) {
                                    if (i8 != 1) {
                                        do {
                                            zX = c1286f0.x();
                                            this.f14864r = (this.f14864r << 8) + ((long) c1286f0.g(8));
                                        } while (zX);
                                    } else {
                                        this.f14864r = c1286f0.g((c1286f0.g(2) + 1) * 8);
                                    }
                                }
                                if (c1286f0.x()) {
                                    c1286f0.v(8);
                                }
                            }
                            if (this.f14860n != 0) {
                                throw C0800Ka.a(null, null);
                            }
                            if (this.f14861o != 0) {
                                throw C0800Ka.a(null, null);
                            }
                            if (this.f14862p != 0) {
                                throw C0800Ka.a(null, null);
                            }
                            int i12 = 0;
                            do {
                                iG = c1286f0.g(8);
                                i12 += iG;
                            } while (iG == 255);
                            int iE2 = c1286f0.e();
                            if ((iE2 & 7) == 0) {
                                c1534jr2.j(iE2 >> 3);
                            } else {
                                c1286f0.o(c1534jr2.f19515a, i12 * 8);
                                c1534jr2.j(0);
                            }
                            this.f14851e.f(i12, c1534jr2);
                            p113o3.r.M(this.f14858l != -9223372036854775807L);
                            this.f14851e.b(this.f14858l, 1, i12, 0, null);
                            this.f14858l += this.f14866t;
                            if (this.f14863q) {
                                c1286f0.v((int) this.f14864r);
                            }
                            this.f14854h = 0;
                        } else {
                            continue;
                        }
                    } else {
                        int iW = ((this.f14857k & (-225)) << 8) | c1534jr.w();
                        this.f14856j = iW;
                        if (iW > c1534jr2.f19515a.length) {
                            c1534jr2.g(iW);
                            byte[] bArr2 = c1534jr2.f19515a;
                            int length = bArr2.length;
                            c1286f0.f18645b = bArr2;
                            i9 = 0;
                            c1286f0.f18646c = 0;
                            c1286f0.f18647d = 0;
                            c1286f0.f18648e = length;
                        } else {
                            i9 = 0;
                        }
                        this.f14855i = i9;
                        this.f14854h = 3;
                    }
                } else {
                    int iW2 = c1534jr.w();
                    if ((iW2 & 224) == 224) {
                        this.f14857k = iW2;
                        this.f14854h = 2;
                    } else if (iW2 != 86) {
                        this.f14854h = 0;
                    }
                }
            } else if (c1534jr.w() == 86) {
                this.f14854h = 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f14851e = n7.h(i8.f309d, 1);
        i8.d();
        this.f14852f = i8.f310e;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f14858l = j8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f14854h = 0;
        this.f14858l = -9223372036854775807L;
        this.f14859m = false;
    }
}
