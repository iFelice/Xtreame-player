package com.google.android.gms.internal.ads;

import W0.C0369b;
import java.io.EOFException;
import java.math.RoundingMode;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1493j1 implements L {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public N f19408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC1234e0 f19409f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19411h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Q9 f19412i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f19414k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f19415l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f19416m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public InterfaceC1597l1 f19417n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f19418o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f19404a = new C1534jr(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0369b f19405b = new C0369b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final T f19406c = new T();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f19413j = -9223372036854775807L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final V f19407d = new V(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC1234e0 f19410g = new I();

    public final boolean a(M m7) {
        InterfaceC1597l1 interfaceC1597l1 = this.f19417n;
        if (interfaceC1597l1 != null) {
            long jZzd = interfaceC1597l1.zzd();
            if (jZzd != -1 && m7.zze() > jZzd - 4) {
                return true;
            }
        }
        try {
            return !m7.d(this.f19404a.f19515a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final boolean b(M m7, boolean z7) throws C0800Ka, EOFException {
        int i8;
        int iZze;
        int iB;
        m7.zzj();
        if (m7.zzf() == 0) {
            Q9 q9A = this.f19407d.a(m7, null);
            this.f19412i = q9A;
            if (q9A != null) {
                this.f19406c.b(q9A);
            }
            iZze = (int) m7.zze();
            if (!z7) {
                m7.q(iZze);
            }
            i8 = 0;
        } else {
            i8 = 0;
            iZze = 0;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (a(m7)) {
                if (i9 > 0) {
                    break;
                }
                throw new EOFException();
            }
            C1534jr c1534jr = this.f19404a;
            c1534jr.j(0);
            int iR = c1534jr.r();
            if ((i8 == 0 || ((-128000) & iR) == (((long) i8) & (-128000))) && (iB = AbstractC1717nH.b(iR)) != -1) {
                i9++;
                if (i9 != 1) {
                    if (i9 == 4) {
                        break;
                    }
                } else {
                    this.f19405b.b(iR);
                    i8 = iR;
                }
                m7.zzg(iB - 4);
            } else {
                int i11 = i10 + 1;
                if (i10 == (true != z7 ? 131072 : 32768)) {
                    if (z7) {
                        return false;
                    }
                    throw C0800Ka.a("Searched too many bytes.", null);
                }
                if (z7) {
                    m7.zzj();
                    m7.zzg(iZze + i11);
                } else {
                    m7.q(1);
                }
                i10 = i11;
                i8 = 0;
                i9 = 0;
            }
        }
        if (z7) {
            m7.q(iZze + i10);
        } else {
            m7.zzj();
        }
        this.f19411h = i8;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:33:0x0089 A[PHI: r21
      0x0089: PHI (r21v4 com.google.android.gms.internal.ads.T) = 
      (r10v6 com.google.android.gms.internal.ads.T)
      (r10v6 com.google.android.gms.internal.ads.T)
      (r21v6 com.google.android.gms.internal.ads.T)
     binds: [B:55:0x011d, B:62:0x0132, B:32:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x008d  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:53:0x0109  */
    /* JADX WARN: Code duplicated, block: B:54:0x010e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0121  */
    /* JADX WARN: Code duplicated, block: B:59:0x0127  */
    /* JADX WARN: Code duplicated, block: B:61:0x0130  */
    /* JADX WARN: Code duplicated, block: B:63:0x0134  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        int iR;
        T t7;
        p103n1.h hVarB;
        long jZzf;
        long jZzd;
        long j8;
        long jZzd2;
        long jA;
        C0369b c0369b;
        int i8;
        InterfaceC1597l1 c1391h1;
        int i9;
        int i10;
        C1443i1 c1443i1C;
        InterfaceC1597l1 c1391h2;
        long jT;
        p113o3.r.x(this.f19409f);
        int i11 = Et.f13234a;
        if (this.f19411h == 0) {
            try {
                b(m7, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        InterfaceC1597l1 interfaceC1597l1 = this.f19417n;
        C0369b c0369b2 = this.f19405b;
        C1534jr c1534jr = this.f19404a;
        if (interfaceC1597l1 == null) {
            C1534jr c1534jr2 = new C1534jr(c0369b2.f7375c);
            m7.g(0, c1534jr2.l(), c0369b2.f7375c);
            int i12 = 21;
            if ((c0369b2.f7373a & 1) != 0) {
                if (c0369b2.f7377e != 1) {
                    i12 = 36;
                }
            } else if (c0369b2.f7377e == 1) {
                i12 = 13;
            }
            if (c1534jr2.q() >= i12 + 4) {
                c1534jr2.j(i12);
                iR = c1534jr2.r();
                if (iR != 1483304551) {
                    if (iR == 1231971951) {
                        iR = 1231971951;
                    } else if (c1534jr2.q() >= 40) {
                        c1534jr2.j(36);
                        if (c1534jr2.r() == 1447187017) {
                            iR = 1447187017;
                        } else {
                            iR = 0;
                        }
                    } else {
                        iR = 0;
                    }
                }
            } else if (c1534jr2.q() >= 40) {
                c1534jr2.j(36);
                if (c1534jr2.r() == 1447187017) {
                    iR = 1447187017;
                } else {
                    iR = 0;
                }
            } else {
                iR = 0;
            }
            T t8 = this.f19406c;
            InterfaceC1597l1 interfaceC1597l2 = null;
            if (iR == 1231971951) {
                t7 = t8;
                hVarB = p103n1.h.b(c0369b2, c1534jr2);
                if (!t7.a() && (i9 = hVarB.f27414c) != -1 && (i10 = hVarB.f27415d) != -1) {
                    t7.f16572a = i9;
                    t7.f16573b = i10;
                }
                jZzf = m7.zzf();
                jZzd = m7.zzd();
                j8 = hVarB.f27413b;
                if (jZzd == -1 && j8 != -1) {
                    long j9 = jZzf + j8;
                    if (m7.zzd() != j9) {
                        StringBuilder sbD = p148t.a.d("Data size mismatch between stream (", m7.zzd(), ") and Xing frame (");
                        sbD.append(j9);
                        sbD.append("), using Xing value.");
                        Zo.e("Mp3Extractor", sbD.toString());
                    }
                }
                m7.q(c0369b2.f7375c);
                if (iR == 1483304551) {
                    c1391h1 = C1701n1.c(hVarB, jZzf);
                } else {
                    jZzd2 = m7.zzd();
                    jA = hVarB.a();
                    if (jA != -9223372036854775807L) {
                        c1391h1 = null;
                    } else {
                        c0369b = hVarB.f27417f;
                        if (j8 != -1) {
                            jZzd2 = jZzf + j8;
                            i8 = c0369b.f7375c;
                        } else if (jZzd2 != -1) {
                            j8 = jZzd2 - jZzf;
                            i8 = c0369b.f7375c;
                        } else {
                            c1391h1 = null;
                        }
                        long j10 = j8 - ((long) i8);
                        long j11 = jZzd2;
                        RoundingMode roundingMode = RoundingMode.HALF_UP;
                        c1391h1 = new C1391h1(Cw.w0(Et.v(j10, 8000000L, jA, roundingMode)), Cw.w0(Cw.z0(j10, hVarB.f27412a, roundingMode)), j11, jZzf + ((long) c0369b.f7375c));
                    }
                }
            } else if (iR != 1447187017) {
                if (iR != 1483304551) {
                    m7.zzj();
                    t7 = t8;
                } else {
                    t7 = t8;
                    hVarB = p103n1.h.b(c0369b2, c1534jr2);
                    if (!t7.a()) {
                        t7.f16572a = i9;
                        t7.f16573b = i10;
                    }
                    jZzf = m7.zzf();
                    jZzd = m7.zzd();
                    j8 = hVarB.f27413b;
                    if (jZzd == -1) {
                    }
                    m7.q(c0369b2.f7375c);
                    if (iR == 1483304551) {
                        c1391h1 = C1701n1.c(hVarB, jZzf);
                    } else {
                        jZzd2 = m7.zzd();
                        jA = hVarB.a();
                        if (jA != -9223372036854775807L) {
                            c0369b = hVarB.f27417f;
                            if (j8 != -1) {
                                jZzd2 = jZzf + j8;
                                i8 = c0369b.f7375c;
                            } else if (jZzd2 != -1) {
                                j8 = jZzd2 - jZzf;
                                i8 = c0369b.f7375c;
                            }
                            long j12 = j8 - ((long) i8);
                            long j13 = jZzd2;
                            RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                            c1391h1 = new C1391h1(Cw.w0(Et.v(j12, 8000000L, jA, roundingMode2)), Cw.w0(Cw.z0(j12, hVarB.f27412a, roundingMode2)), j13, jZzf + ((long) c0369b.f7375c));
                        }
                    }
                }
                c1391h1 = null;
            } else {
                c1391h1 = C1649m1.c(m7.zzd(), m7.zzf(), this.f19405b, c1534jr2);
                m7.q(c0369b2.f7375c);
                t7 = t8;
            }
            Q9 q9 = this.f19412i;
            long jZzf2 = m7.zzf();
            if (q9 == null) {
                c1443i1C = null;
                break;
            }
            int iA = q9.a();
            int i13 = 0;
            while (true) {
                if (i13 >= iA) {
                    c1443i1C = null;
                    break;
                }
                K9 k9C = q9.c(i13);
                if (k9C instanceof S0) {
                    S0 s7 = (S0) k9C;
                    int iA2 = q9.a();
                    int i14 = 0;
                    while (true) {
                        if (i14 >= iA2) {
                            jT = -9223372036854775807L;
                            break;
                        }
                        K9 k9C2 = q9.c(i14);
                        if (k9C2 instanceof U0) {
                            U0 u7 = (U0) k9C2;
                            if (u7.f15304G.equals("TLEN")) {
                                jT = Et.t(Long.parseLong((String) u7.f16782I.get(0)));
                                break;
                            }
                        }
                        i14++;
                    }
                    c1443i1C = C1443i1.c(jZzf2, s7, jT);
                    break;
                }
                i13++;
            }
            if (this.f19418o) {
                c1391h2 = new C1545k1();
            } else {
                if (c1443i1C != null) {
                    interfaceC1597l2 = c1443i1C;
                } else if (c1391h1 != null) {
                    interfaceC1597l2 = c1391h1;
                }
                if (interfaceC1597l2 != null) {
                    interfaceC1597l2.zzh();
                    c1391h2 = interfaceC1597l2;
                } else {
                    m7.g(0, c1534jr.l(), 4);
                    c1534jr.j(0);
                    c0369b2.b(c1534jr.r());
                    c1391h2 = new C1391h1(c0369b2.f7378f, c0369b2.f7375c, m7.zzd(), m7.zzf());
                }
            }
            this.f19417n = c1391h2;
            this.f19408e.g(c1391h2);
            K k8 = new K();
            k8.f(c0369b2.f7374b);
            k8.d();
            k8.j(c0369b2.f7377e);
            k8.g(c0369b2.f7376d);
            T t9 = t7;
            k8.a(t9.f16572a);
            k8.b(t9.f16573b);
            k8.e(this.f19412i);
            if (this.f19417n.zzc() != -2147483647) {
                k8.i(this.f19417n.zzc());
            }
            this.f19410g.d(k8.h());
            this.f19415l = m7.zzf();
        } else {
            long j14 = this.f19415l;
            if (j14 != 0) {
                long jZzf3 = m7.zzf();
                if (jZzf3 < j14) {
                    m7.q((int) (j14 - jZzf3));
                }
            }
        }
        int i15 = this.f19416m;
        if (i15 == 0) {
            m7.zzj();
            if (!a(m7)) {
                c1534jr.j(0);
                int iR2 = c1534jr.r();
                if (((-128000) & iR2) != (((long) this.f19411h) & (-128000)) || AbstractC1717nH.b(iR2) == -1) {
                    m7.q(1);
                    this.f19411h = 0;
                } else {
                    c0369b2.b(iR2);
                    if (this.f19413j == -9223372036854775807L) {
                        this.f19413j = this.f19417n.a(m7.zzf());
                    }
                    i15 = c0369b2.f7375c;
                    this.f19416m = i15;
                }
                return 0;
            }
            return -1;
        }
        int iE = this.f19410g.e(m7, i15, true);
        if (iE != -1) {
            int i16 = this.f19416m - iE;
            this.f19416m = i16;
            if (i16 <= 0) {
                this.f19410g.b(((this.f19414k * 1000000) / ((long) c0369b2.f7376d)) + this.f19413j, 1, c0369b2.f7375c, 0, null);
                this.f19414k += (long) c0369b2.f7379g;
                this.f19416m = 0;
            }
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        return b(m7, true);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f19411h = 0;
        this.f19413j = -9223372036854775807L;
        this.f19414k = 0L;
        this.f19416m = 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f19408e = n7;
        InterfaceC1234e0 interfaceC1234e0H = n7.h(0, 1);
        this.f19409f = interfaceC1234e0H;
        this.f19410g = interfaceC1234e0H;
        this.f19408e.f();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
