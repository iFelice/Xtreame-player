package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1442i0 implements L {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final V1 f19206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f19207e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C1492j0 f19209g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f19212j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C1596l0 f19213k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f19217o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f19218p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f19205c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f19203a = new C1534jr(12);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final A2.i f19204b = new A2.i();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public N f19208f = new F2.G(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C1596l0[] f19211i = new C1596l0[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f19215m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f19216n = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f19214l = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f19210h = -9223372036854775807L;

    public C1442i0(C1561kH c1561kH) {
        this.f19206d = c1561kH;
    }

    /* JADX WARN: Code duplicated, block: B:170:0x038c  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        boolean z7;
        int i8;
        C1596l0 c1596l0;
        long j8;
        C1596l0 c1596l1;
        long j9 = this.f19212j;
        int i9 = 0;
        if (j9 != -1) {
            long jZzf = m7.zzf();
            if (j9 < jZzf || j9 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + jZzf) {
                wVar.f7458a = j9;
                z7 = true;
            } else {
                m7.q((int) (j9 - jZzf));
                z7 = false;
            }
        } else {
            z7 = false;
        }
        this.f19212j = -1L;
        if (z7) {
            return 1;
        }
        int i10 = this.f19207e;
        C1596l0 c1596l2 = null;
        if (i10 == 0) {
            if (!d(m7)) {
                throw C0800Ka.a("AVI Header List not found", null);
            }
            m7.q(12);
            this.f19207e = 1;
            return 0;
        }
        A2.i iVar = this.f19204b;
        C1534jr c1534jr = this.f19203a;
        if (i10 == 1) {
            m7.h(0, c1534jr.f19515a, 12);
            c1534jr.j(0);
            iVar.getClass();
            iVar.f630a = c1534jr.s();
            iVar.f631b = c1534jr.s();
            iVar.f632c = 0;
            int i11 = iVar.f630a;
            if (i11 != 1414744396) {
                throw C0800Ka.a("LIST expected, found: " + i11, null);
            }
            int iS = c1534jr.s();
            iVar.f632c = iS;
            if (iS == 1819436136) {
                this.f19214l = iVar.f631b;
                this.f19207e = 2;
                return 0;
            }
            throw C0800Ka.a("hdrl expected, found: " + iS, null);
        }
        if (i10 == 2) {
            int i12 = this.f19214l - 4;
            C1534jr c1534jr2 = new C1534jr(i12);
            m7.h(0, c1534jr2.f19515a, i12);
            C1648m0 c1648m0B = C1648m0.b(1819436136, c1534jr2);
            int i13 = c1648m0B.f19885b;
            if (i13 != 1819436136) {
                throw C0800Ka.a("Unexpected header list type " + i13, null);
            }
            C1492j0 c1492j0 = (C1492j0) c1648m0B.a(C1492j0.class);
            if (c1492j0 == null) {
                throw C0800Ka.a("AviHeader not found", null);
            }
            this.f19209g = c1492j0;
            this.f19210h = ((long) c1492j0.f19403c) * ((long) c1492j0.f19401a);
            ArrayList arrayList = new ArrayList();
            AbstractC2073uA abstractC2073uA = c1648m0B.f19884a;
            int size = abstractC2073uA.size();
            int i14 = 0;
            int i15 = 0;
            while (i14 < size) {
                InterfaceC1390h0 interfaceC1390h0 = (InterfaceC1390h0) abstractC2073uA.get(i14);
                if (interfaceC1390h0.zza() == 1819440243) {
                    C1648m0 c1648m0 = (C1648m0) interfaceC1390h0;
                    int i16 = i15 + 1;
                    C1544k0 c1544k0 = (C1544k0) c1648m0.a(C1544k0.class);
                    C1700n0 c1700n0 = (C1700n0) c1648m0.a(C1700n0.class);
                    if (c1544k0 == null) {
                        Zo.f("AviExtractor", "Missing Stream Header");
                    } else {
                        if (c1700n0 == null) {
                            Zo.f("AviExtractor", "Missing Stream Format");
                        } else {
                            i8 = i14;
                            long jV = Et.v(c1544k0.f19581d, ((long) c1544k0.f19579b) * 1000000, c1544k0.f19580c, RoundingMode.FLOOR);
                            C1804p0 c1804p0 = c1700n0.f20042a;
                            c1804p0.getClass();
                            K k8 = new K(c1804p0);
                            k8.c(i15);
                            int i17 = c1544k0.f19582e;
                            if (i17 != 0) {
                                k8.f14272m = i17;
                            }
                            C1752o0 c1752o0 = (C1752o0) c1648m0.a(C1752o0.class);
                            if (c1752o0 != null) {
                                k8.f14261b = c1752o0.f20217a;
                            }
                            int iB = AbstractC2140va.b(c1804p0.f20383m);
                            if (iB != 1) {
                                if (iB == 2) {
                                    iB = 2;
                                } else {
                                    c1596l0 = null;
                                }
                            }
                            InterfaceC1234e0 interfaceC1234e0H = this.f19208f.h(i15, iB);
                            interfaceC1234e0H.d(new C1804p0(k8));
                            c1596l0 = new C1596l0(i15, iB, jV, c1544k0.f19581d, interfaceC1234e0H);
                            this.f19210h = jV;
                        }
                        if (c1596l0 != null) {
                            arrayList.add(c1596l0);
                        }
                        i15 = i16;
                    }
                    i8 = i14;
                    c1596l0 = null;
                    if (c1596l0 != null) {
                        arrayList.add(c1596l0);
                    }
                    i15 = i16;
                } else {
                    i8 = i14;
                }
                i14 = i8 + 1;
                i9 = 0;
            }
            this.f19211i = (C1596l0[]) arrayList.toArray(new C1596l0[i9]);
            this.f19208f.f();
            this.f19207e = 3;
            return i9;
        }
        if (i10 == 3) {
            long j10 = this.f19215m;
            if (j10 != -1 && m7.zzf() != j10) {
                this.f19212j = j10;
                return 0;
            }
            m7.g(0, c1534jr.f19515a, 12);
            m7.zzj();
            c1534jr.j(0);
            iVar.getClass();
            iVar.f630a = c1534jr.s();
            iVar.f631b = c1534jr.s();
            iVar.f632c = 0;
            int iS2 = c1534jr.s();
            int i18 = iVar.f630a;
            if (i18 == 1179011410) {
                m7.q(12);
                return 0;
            }
            if (i18 != 1414744396 || iS2 != 1769369453) {
                this.f19212j = m7.zzf() + ((long) iVar.f631b) + 8;
                return 0;
            }
            long jZzf2 = m7.zzf();
            this.f19215m = jZzf2;
            long j11 = jZzf2 + ((long) iVar.f631b) + 8;
            this.f19216n = j11;
            if (!this.f19218p) {
                C1492j0 c1492j1 = this.f19209g;
                c1492j1.getClass();
                if ((c1492j1.f19402b & 16) == 16) {
                    this.f19207e = 4;
                    this.f19212j = j11;
                    return 0;
                }
                this.f19208f.g(new P(this.f19210h, 0L));
                this.f19218p = true;
            }
            this.f19212j = m7.zzf() + 12;
            this.f19207e = 6;
            return 0;
        }
        if (i10 == 4) {
            m7.h(0, c1534jr.f19515a, 8);
            c1534jr.j(0);
            int iS3 = c1534jr.s();
            int iS4 = c1534jr.s();
            if (iS3 == 829973609) {
                this.f19207e = 5;
                this.f19217o = iS4;
            } else {
                this.f19212j = m7.zzf() + ((long) iS4);
            }
            return 0;
        }
        if (i10 != 5) {
            if (m7.zzf() >= this.f19216n) {
                return -1;
            }
            C1596l0 c1596l3 = this.f19213k;
            if (c1596l3 != null) {
                int i19 = c1596l3.f19690g;
                int iE = i19 - c1596l3.f19684a.e(m7, i19, false);
                c1596l3.f19690g = iE;
                boolean z8 = iE == 0;
                if (z8) {
                    if (c1596l3.f19689f > 0) {
                        int i20 = c1596l3.f19691h;
                        c1596l3.f19684a.b((c1596l3.f19687d * ((long) i20)) / ((long) c1596l3.f19688e), Arrays.binarySearch(c1596l3.f19696m, i20) >= 0 ? 1 : 0, c1596l3.f19689f, 0, null);
                    }
                    c1596l3.f19691h++;
                }
                if (!z8) {
                    return 0;
                }
                this.f19213k = null;
                return 0;
            }
            if ((m7.zzf() & 1) == 1) {
                m7.q(1);
            }
            m7.g(0, c1534jr.f19515a, 12);
            c1534jr.j(0);
            int iS5 = c1534jr.s();
            if (iS5 == 1414744396) {
                c1534jr.j(8);
                m7.q(c1534jr.s() != 1769369453 ? 8 : 12);
                m7.zzj();
                return 0;
            }
            int iS6 = c1534jr.s();
            if (iS5 == 1263424842) {
                this.f19212j = m7.zzf() + ((long) iS6) + 8;
                return 0;
            }
            m7.q(8);
            m7.zzj();
            for (C1596l0 c1596l4 : this.f19211i) {
                if (c1596l4.f19685b == iS5 || c1596l4.f19686c == iS5) {
                    c1596l2 = c1596l4;
                    break;
                }
            }
            if (c1596l2 == null) {
                this.f19212j = m7.zzf() + ((long) iS6);
                return 0;
            }
            c1596l2.f19689f = iS6;
            c1596l2.f19690g = iS6;
            this.f19213k = c1596l2;
            return 0;
        }
        C1534jr c1534jr3 = new C1534jr(this.f19217o);
        m7.h(0, c1534jr3.f19515a, this.f19217o);
        if (c1534jr3.o() < 16) {
            j8 = 0;
        } else {
            int i21 = c1534jr3.f19516b;
            c1534jr3.k(8);
            long jS = c1534jr3.s();
            long j12 = this.f19215m;
            j8 = jS > j12 ? 0L : j12 + 8;
            c1534jr3.j(i21);
        }
        while (c1534jr3.o() >= 16) {
            int iS7 = c1534jr3.s();
            int iS8 = c1534jr3.s();
            long jS2 = ((long) c1534jr3.s()) + j8;
            c1534jr3.s();
            C1596l0[] c1596l0Arr = this.f19211i;
            int length = c1596l0Arr.length;
            int i22 = 0;
            while (true) {
                if (i22 >= length) {
                    c1596l1 = null;
                    break;
                }
                c1596l1 = c1596l0Arr[i22];
                if (c1596l1.f19685b == iS7 || c1596l1.f19686c == iS7) {
                    break;
                }
                i22++;
            }
            if (c1596l1 != null) {
                boolean z9 = (iS8 & 16) == 16;
                if (c1596l1.f19694k == -1) {
                    c1596l1.f19694k = jS2;
                }
                if (z9) {
                    if (c1596l1.f19693j == c1596l1.f19696m.length) {
                        long[] jArr = c1596l1.f19695l;
                        c1596l1.f19695l = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                        int[] iArr = c1596l1.f19696m;
                        c1596l1.f19696m = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
                    }
                    long[] jArr2 = c1596l1.f19695l;
                    int i23 = c1596l1.f19693j;
                    jArr2[i23] = jS2;
                    c1596l1.f19696m[i23] = c1596l1.f19692i;
                    c1596l1.f19693j = i23 + 1;
                }
                c1596l1.f19692i++;
            }
        }
        for (C1596l0 c1596l5 : this.f19211i) {
            c1596l5.f19695l = Arrays.copyOf(c1596l5.f19695l, c1596l5.f19693j);
            c1596l5.f19696m = Arrays.copyOf(c1596l5.f19696m, c1596l5.f19693j);
        }
        this.f19218p = true;
        this.f19208f.g(new P(this, 2, this.f19210h));
        this.f19207e = 6;
        this.f19212j = this.f19215m;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        C1534jr c1534jr = this.f19203a;
        m7.g(0, c1534jr.f19515a, 12);
        c1534jr.j(0);
        if (c1534jr.s() != 1179011410) {
            return false;
        }
        c1534jr.k(4);
        return c1534jr.s() == 541677121;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f19212j = -1L;
        this.f19213k = null;
        for (C1596l0 c1596l0 : this.f19211i) {
            if (c1596l0.f19693j == 0) {
                c1596l0.f19691h = 0;
            } else {
                c1596l0.f19691h = c1596l0.f19696m[Et.k(c1596l0.f19695l, j8, true)];
            }
        }
        if (j8 == 0) {
            this.f19207e = this.f19211i.length != 0 ? 3 : 0;
        } else {
            this.f19207e = 6;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f19207e = 0;
        if (this.f19205c) {
            n7 = new X1(n7, this.f19206d);
        }
        this.f19208f = n7;
        this.f19212j = -1L;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
