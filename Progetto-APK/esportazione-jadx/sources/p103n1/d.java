package p103n1;

import N.C0260i;
import Q3.b;
import W0.A;
import W0.AbstractC0368a;
import W0.C;
import W0.C0369b;
import W0.D;
import W0.L;
import W0.q;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.math.RoundingMode;
import java.util.List;
import p065i1.m;
import p065i1.o;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.M;
import p094m0.N;
import p094m0.O;
import p117p0.E;
import p117p0.x;
import p117p0.y;
import p148t.a;
import p190y4.k;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class d implements s {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final C0260i f27384v = new C0260i(29);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f27387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0369b f27388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final A f27389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C f27390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final q f27391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public u f27392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public L f27393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public L f27394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f27395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public N f27396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f27397m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f27398n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f27399o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f27400p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f27401q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public f f27402r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f27403s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f27404t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f27405u;

    public d() {
        this(-9223372036854775807L);
    }

    public static long a(N n7) {
        if (n7 == null) {
            return -9223372036854775807L;
        }
        int iD = n7.d();
        for (int i8 = 0; i8 < iD; i8++) {
            M mC = n7.c(i8);
            if (mC instanceof o) {
                o oVar = (o) mC;
                if (oVar.f25537a.equals("TLEN")) {
                    return p117p0.M.R(Long.parseLong((String) oVar.f25550c.get(0)));
                }
            }
        }
        return -9223372036854775807L;
    }

    public final void c() {
        f fVar = this.f27402r;
        if ((fVar instanceof a) && fVar.f()) {
            long j8 = this.f27400p;
            if (j8 == -1 || j8 == this.f27402r.c()) {
                return;
            }
            a aVar = (a) this.f27402r;
            long j9 = this.f27400p;
            this.f27402r = new a(aVar.f27373i, aVar.f27374j, j9, aVar.f27372h, aVar.f27375k);
            u uVar = this.f27392h;
            uVar.getClass();
            uVar.r(this.f27402r);
            this.f27393i.getClass();
            this.f27402r.m();
        }
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f27392h = uVar;
        L lT = uVar.t(0, 1);
        this.f27393i = lT;
        this.f27394j = lT;
        this.f27392h.j();
    }

    public final boolean e(t tVar) {
        f fVar = this.f27402r;
        if (fVar != null) {
            long jC = fVar.c();
            if (jC != -1 && tVar.f() > jC - 4) {
                return true;
            }
        }
        try {
            return !tVar.e(this.f27387c.f28035a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final boolean f(t tVar, boolean z7) throws EOFException {
        int i8;
        int iF;
        int iC;
        int i9 = z7 ? 32768 : 131072;
        tVar.m();
        if (tVar.r() == 0) {
            N nD = this.f27390f.d(tVar, (this.f27385a & 8) == 0 ? null : f27384v);
            this.f27396l = nD;
            if (nD != null) {
                this.f27389e.b(nD);
            }
            iF = (int) tVar.f();
            if (!z7) {
                tVar.n(iF);
            }
            i8 = 0;
        } else {
            i8 = 0;
            iF = 0;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (e(tVar)) {
                if (i10 > 0) {
                    break;
                }
                c();
                throw new EOFException();
            }
            E e8 = this.f27387c;
            e8.L(0);
            int iL = e8.l();
            if ((i8 == 0 || ((-128000) & iL) == (((long) i8) & (-128000))) && (iC = AbstractC0368a.c(iL)) != -1) {
                i10++;
                if (i10 != 1) {
                    if (i10 == 4) {
                        break;
                    }
                } else {
                    this.f27388d.a(iL);
                    i8 = iL;
                }
                tVar.g(iC - 4);
            } else {
                int i12 = i11 + 1;
                if (i11 == i9) {
                    if (z7) {
                        return false;
                    }
                    c();
                    throw new EOFException();
                }
                if (z7) {
                    tVar.m();
                    tVar.g(iF + i12);
                } else {
                    tVar.n(1);
                }
                i11 = i12;
                i8 = 0;
                i10 = 0;
            }
        }
        if (z7) {
            tVar.n(iF + i11);
        } else {
            tVar.m();
        }
        this.f27395k = i8;
        return true;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        return f(tVar, true);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x023d  */
    /* JADX WARN: Code duplicated, block: B:109:0x0268  */
    /* JADX WARN: Code duplicated, block: B:115:0x0287  */
    /* JADX WARN: Code duplicated, block: B:118:0x0295  */
    /* JADX WARN: Code duplicated, block: B:119:0x0299  */
    /* JADX WARN: Code duplicated, block: B:120:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:126:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:130:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:132:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:134:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:136:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:14:0x0041  */
    /* JADX WARN: Code duplicated, block: B:217:0x050c  */
    /* JADX WARN: Code duplicated, block: B:251:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:254:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:25:0x0066  */
    /* JADX WARN: Code duplicated, block: B:27:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    /* JADX WARN: Code duplicated, block: B:36:0x0093  */
    /* JADX WARN: Code duplicated, block: B:71:0x019a  */
    /* JADX WARN: Code duplicated, block: B:72:0x019f  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:79:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:81:0x01b9 A[LOOP:3: B:80:0x01b7->B:81:0x01b9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:86:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:87:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:90:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:91:0x01ed  */
    /* JADX WARN: Instruction removed from duplicated block: B:106:0x023d, please report this as an issue */
    @Override // W0.s
    public final int h(t tVar, w wVar) {
        d dVar;
        int i8;
        int i9;
        t tVar2;
        E e8;
        int iF;
        int i10;
        int i11;
        int iL;
        int iL2;
        int iD;
        long jB;
        long[] jArr;
        E e9;
        int i12;
        int i13;
        long j8;
        C0369b c0369b;
        long jR;
        long j9;
        long j10;
        long jX;
        long j11;
        f aVar;
        long j12;
        long jX2;
        long j13;
        long[] jArr2;
        int i14;
        A a8;
        c cVar;
        f aVar2;
        long jA;
        long jC;
        long j14;
        long j15;
        long jMax;
        int iZ;
        H1.j(this.f27393i);
        String str = p117p0.M.f28050a;
        int i15 = this.f27395k;
        C0369b c0369b2 = this.f27388d;
        if (i15 == 0) {
            try {
                f(tVar, false);
            } catch (EOFException unused) {
                dVar = this;
                i8 = -1;
                i9 = -1;
            }
        }
        f fVar = this.f27402r;
        E e10 = this.f27387c;
        if (fVar == null) {
            E e11 = new E(c0369b2.f7375c);
            tVar.c(0, e11.f28035a, c0369b2.f7375c);
            if ((c0369b2.f7373a & 1) != 0) {
                if (c0369b2.f7377e != 1) {
                    i11 = 36;
                } else {
                    i11 = 21;
                }
            } else if (c0369b2.f7377e != 1) {
                i11 = 21;
            } else {
                i11 = 13;
            }
            if (e11.f28037c >= i11 + 4) {
                e11.L(i11);
                iL = e11.l();
                if (iL != 1483304551 && iL != 1231971951) {
                    if (e11.f28037c >= 40) {
                        e11.L(36);
                        if (e11.l() == 1447187017) {
                            iL = 1447187017;
                        } else {
                            iL = 0;
                        }
                    } else {
                        iL = 0;
                    }
                }
            } else if (e11.f28037c >= 40) {
                e11.L(36);
                if (e11.l() == 1447187017) {
                    iL = 1447187017;
                } else {
                    iL = 0;
                }
            } else {
                iL = 0;
            }
            A a9 = this.f27389e;
            if (iL == 1231971951) {
                e8 = e10;
                iL2 = e11.l();
                if ((iL2 & 1) != 0) {
                    iD = e11.D();
                } else {
                    iD = -1;
                }
                if ((iL2 & 2) != 0) {
                    jB = e11.B();
                } else {
                    jB = -1;
                }
                if ((iL2 & 4) == 4) {
                    jArr2 = new long[100];
                    for (i14 = 0; i14 < 100; i14++) {
                        jArr2[i14] = e11.z();
                    }
                    jArr = jArr2;
                } else {
                    jArr = null;
                }
                if ((iL2 & 8) != 0) {
                    e9 = e11;
                    e9.M(4);
                } else {
                    e9 = e11;
                }
                if (e9.a() >= 24) {
                    e9.M(21);
                    int iC = e9.C();
                    i13 = (16773120 & iC) >> 12;
                    i12 = iC & 4095;
                } else {
                    i12 = -1;
                    i13 = -1;
                }
                j8 = iD;
                c0369b = new C0369b();
                c0369b.f7373a = c0369b2.f7373a;
                c0369b.f7374b = c0369b2.f7374b;
                c0369b.f7375c = c0369b2.f7375c;
                c0369b.f7376d = c0369b2.f7376d;
                c0369b.f7377e = c0369b2.f7377e;
                c0369b.f7378f = c0369b2.f7378f;
                c0369b.f7379g = c0369b2.f7379g;
                if ((a9.f7303a != -1 || a9.f7304b == -1) && i13 != -1 && i12 != -1) {
                    a9.f7303a = i13;
                    a9.f7304b = i12;
                }
                jR = tVar.r();
                if (tVar.j() != -1 && jB != -1) {
                    j13 = jR + jB;
                    if (tVar.j() != j13) {
                        x.e("Mp3Extractor", "Data size mismatch between stream (" + tVar.j() + ") and Xing frame (" + j13 + "), using Xing value.");
                    }
                }
                tVar.n(c0369b2.f7375c);
                if (iL == 1483304551) {
                    if (j8 != -1 || j8 == 0) {
                        j12 = -9223372036854775807L;
                        jX2 = -9223372036854775807L;
                    } else {
                        jX2 = p117p0.M.X(c0369b.f7376d, (j8 * ((long) c0369b.f7379g)) - 1);
                        j12 = -9223372036854775807L;
                    }
                    if (jX2 == j12) {
                        aVar = null;
                    } else {
                        aVar = new i(jR, c0369b.f7375c, jX2, c0369b.f7378f, jB, jArr);
                    }
                } else {
                    j9 = tVar.j();
                    if (j8 != -1 || j8 == 0) {
                        j10 = -9223372036854775807L;
                        jX = -9223372036854775807L;
                    } else {
                        jX = p117p0.M.X(c0369b.f7376d, (((long) c0369b.f7379g) * j8) - 1);
                        j10 = -9223372036854775807L;
                    }
                    if (jX != j10) {
                        if (jB != -1) {
                            j9 = jR + jB;
                            j11 = jB - ((long) c0369b.f7375c);
                        } else if (j9 != -1) {
                            j11 = (j9 - jR) - ((long) c0369b.f7375c);
                        } else {
                            aVar = null;
                        }
                        long j16 = j9;
                        long j17 = j11;
                        RoundingMode roundingMode = RoundingMode.HALF_UP;
                        aVar = new a(k.y(p117p0.M.Z(j17, 8000000L, jX, roundingMode)), k.y(b.d(j17, j8, roundingMode)), j16, jR + ((long) c0369b.f7375c), false);
                    } else {
                        aVar = null;
                    }
                }
                dVar = this;
            } else if (iL == 1447187017) {
                long j18 = tVar.j();
                long jR2 = tVar.r();
                e11.M(6);
                int iL3 = e11.l();
                e8 = e10;
                long j19 = jR2 + ((long) c0369b2.f7375c);
                long j20 = j19 + ((long) iL3);
                int iL4 = e11.l();
                if (iL4 <= 0) {
                    aVar = null;
                    break;
                }
                long jX3 = p117p0.M.X(c0369b2.f7376d, (((long) iL4) * ((long) c0369b2.f7379g)) - 1);
                int iF2 = e11.F();
                int iF3 = e11.F();
                int iF4 = e11.F();
                e11.M(2);
                long[] jArr3 = new long[iF2];
                long[] jArr4 = new long[iF2];
                long j21 = jR2 + ((long) c0369b2.f7375c);
                int i16 = 0;
                while (true) {
                    if (i16 >= iF2) {
                        long[] jArr5 = jArr3;
                        long j22 = j20;
                        long j23 = j21;
                        if (j18 == -1 || j18 == j22) {
                            j15 = j22;
                        } else {
                            StringBuilder sbD = a.d("VBRI data size mismatch: ", j18, ", ");
                            j15 = j22;
                            sbD.append(j15);
                            x.f("VbriSeeker", sbD.toString());
                        }
                        if (j15 != j23) {
                            StringBuilder sbD2 = a.d("VBRI bytes and ToC mismatch (using max): ", j15, ", ");
                            sbD2.append(j23);
                            sbD2.append("\nSeeking will be inaccurate.");
                            x.f("VbriSeeker", sbD2.toString());
                            jMax = Math.max(j15, j23);
                        } else {
                            jMax = j15;
                        }
                        aVar = new g(jArr5, jArr4, jX3, j19, jMax, c0369b2.f7378f);
                        break;
                    }
                    long[] jArr6 = jArr3;
                    long j24 = j20;
                    jArr6[i16] = (((long) i16) * jX3) / ((long) iF2);
                    long j25 = j21;
                    jArr4[i16] = j25;
                    if (iF4 == 1) {
                        iZ = e11.z();
                    } else if (iF4 == 2) {
                        iZ = e11.F();
                    } else if (iF4 == 3) {
                        iZ = e11.C();
                    } else {
                        if (iF4 != 4) {
                            aVar = null;
                            break;
                        }
                        iZ = e11.D();
                    }
                    j21 = (((long) iZ) * ((long) iF3)) + j25;
                    i16++;
                    jArr3 = jArr6;
                    j20 = j24;
                    e11 = e11;
                    iF4 = iF4;
                }
                tVar.n(c0369b2.f7375c);
                dVar = this;
            } else if (iL != 1483304551) {
                tVar.m();
                e8 = e10;
                dVar = this;
                aVar = null;
            } else {
                e8 = e10;
                iL2 = e11.l();
                if ((iL2 & 1) != 0) {
                    iD = e11.D();
                } else {
                    iD = -1;
                }
                if ((iL2 & 2) != 0) {
                    jB = e11.B();
                } else {
                    jB = -1;
                }
                if ((iL2 & 4) == 4) {
                    jArr2 = new long[100];
                    while (i14 < 100) {
                        jArr2[i14] = e11.z();
                    }
                    jArr = jArr2;
                } else {
                    jArr = null;
                }
                if ((iL2 & 8) != 0) {
                    e9 = e11;
                    e9.M(4);
                } else {
                    e9 = e11;
                }
                if (e9.a() >= 24) {
                    e9.M(21);
                    int iC2 = e9.C();
                    i13 = (16773120 & iC2) >> 12;
                    i12 = iC2 & 4095;
                } else {
                    i12 = -1;
                    i13 = -1;
                }
                j8 = iD;
                c0369b = new C0369b();
                c0369b.f7373a = c0369b2.f7373a;
                c0369b.f7374b = c0369b2.f7374b;
                c0369b.f7375c = c0369b2.f7375c;
                c0369b.f7376d = c0369b2.f7376d;
                c0369b.f7377e = c0369b2.f7377e;
                c0369b.f7378f = c0369b2.f7378f;
                c0369b.f7379g = c0369b2.f7379g;
                if (a9.f7303a != -1) {
                    a9.f7303a = i13;
                    a9.f7304b = i12;
                } else {
                    a9.f7303a = i13;
                    a9.f7304b = i12;
                }
                jR = tVar.r();
                if (tVar.j() != -1) {
                    j13 = jR + jB;
                    if (tVar.j() != j13) {
                        x.e("Mp3Extractor", "Data size mismatch between stream (" + tVar.j() + ") and Xing frame (" + j13 + "), using Xing value.");
                    }
                }
                tVar.n(c0369b2.f7375c);
                if (iL == 1483304551) {
                    if (j8 != -1) {
                        j12 = -9223372036854775807L;
                        jX2 = -9223372036854775807L;
                    } else {
                        j12 = -9223372036854775807L;
                        jX2 = -9223372036854775807L;
                    }
                    if (jX2 == j12) {
                        aVar = null;
                    } else {
                        aVar = new i(jR, c0369b.f7375c, jX2, c0369b.f7378f, jB, jArr);
                    }
                } else {
                    j9 = tVar.j();
                    if (j8 != -1) {
                        j10 = -9223372036854775807L;
                        jX = -9223372036854775807L;
                    } else {
                        j10 = -9223372036854775807L;
                        jX = -9223372036854775807L;
                    }
                    if (jX != j10) {
                        if (jB != -1) {
                            j9 = jR + jB;
                            j11 = jB - ((long) c0369b.f7375c);
                        } else if (j9 != -1) {
                            j11 = (j9 - jR) - ((long) c0369b.f7375c);
                        } else {
                            aVar = null;
                        }
                        long j110 = j9;
                        long j111 = j11;
                        RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                        aVar = new a(k.y(p117p0.M.Z(j111, 8000000L, jX, roundingMode2)), k.y(b.d(j111, j8, roundingMode2)), j110, jR + ((long) c0369b.f7375c), false);
                    } else {
                        aVar = null;
                    }
                }
                dVar = this;
            }
            N n7 = dVar.f27396l;
            long jR3 = tVar.r();
            if (n7 == null) {
                a8 = a9;
                cVar = null;
                break;
            }
            M[] mArr = n7.f26777a;
            int length = mArr.length;
            int i17 = 0;
            while (true) {
                if (i17 >= length) {
                    a8 = a9;
                    cVar = null;
                    break;
                }
                M m7 = mArr[i17];
                if (m7 instanceof m) {
                    m mVar = (m) m7;
                    long jA2 = a(n7);
                    int length2 = mVar.f25545e.length;
                    int i18 = length2 + 1;
                    long[] jArr7 = new long[i18];
                    long[] jArr8 = new long[i18];
                    jArr7[0] = jR3;
                    jArr8[0] = 0;
                    long j26 = 0;
                    int i19 = 1;
                    while (i19 <= length2) {
                        int i20 = i19 - 1;
                        jR3 += (long) (mVar.f25543c + mVar.f25545e[i20]);
                        j26 += (long) (mVar.f25544d + mVar.f25546f[i20]);
                        jArr7[i19] = jR3;
                        jArr8[i19] = j26;
                        i19++;
                        length2 = length2;
                        a9 = a9;
                    }
                    a8 = a9;
                    cVar = new c(jA2, jArr7, jArr8);
                    break;
                }
                i17++;
            }
            boolean z7 = dVar.f27403s;
            int i21 = dVar.f27385a;
            if (z7) {
                tVar2 = tVar;
                aVar2 = new e(-9223372036854775807L);
                e8 = e8;
            } else {
                if ((i21 & 4) != 0) {
                    if (cVar != null) {
                        jA = cVar.f27383c;
                    } else {
                        if (aVar != null) {
                            long jM = aVar.m();
                            jC = aVar.c();
                            j14 = jM;
                        } else {
                            jA = a(dVar.f27396l);
                        }
                        aVar = new b(j14, tVar.r(), jC);
                    }
                    j14 = jA;
                    jC = -1;
                    aVar = new b(j14, tVar.r(), jC);
                } else if (cVar != null) {
                    aVar = cVar;
                } else if (aVar == null) {
                    aVar = null;
                }
                if (aVar == null || aVar.f() || (i21 & 1) == 0 || aVar.m() == -9223372036854775807L || (aVar.c() == -1 && tVar.j() == -1)) {
                    if (aVar == null || (!aVar.f() && (i21 & 1) != 0)) {
                        boolean z8 = (i21 & 2) != 0;
                        tVar2 = tVar;
                        tVar2.c(0, e8.f28035a, 4);
                        e8.L(0);
                        c0369b2.a(e8.l());
                        aVar2 = new a(c0369b2.f7378f, c0369b2.f7375c, tVar.j(), tVar.r(), z8);
                    }
                    L l4 = dVar.f27393i;
                    aVar2.m();
                    l4.getClass();
                } else {
                    long jE = aVar.e() != -1 ? aVar.e() : 0L;
                    long jC2 = aVar.c() != -1 ? aVar.c() : tVar.j();
                    aVar = new a(k.d0(p117p0.M.Z(jC2 - jE, 8000000L, aVar.m(), RoundingMode.HALF_UP)), -1, jC2, jE, false);
                }
                tVar2 = tVar;
                aVar2 = aVar;
                e8 = e8;
                L l8 = dVar.f27393i;
                aVar2.m();
                l8.getClass();
            }
            dVar.f27402r = aVar2;
            dVar.f27392h.r(aVar2);
            C3135s c3135s = new C3135s();
            c3135s.f26995m = O.p("audio/mpeg");
            c3135s.f26996n = O.p(c0369b2.f7374b);
            c3135s.f26997o = 4096;
            c3135s.f26973F = c0369b2.f7377e;
            c3135s.f26974G = c0369b2.f7376d;
            A a10 = a8;
            c3135s.f26976I = a10.f7303a;
            c3135s.f26977J = a10.f7304b;
            c3135s.f26993k = (i21 & 8) != 0 ? null : dVar.f27396l;
            if (dVar.f27402r.l() != -2147483647) {
                c3135s.f26990h = dVar.f27402r.l();
            }
            dVar.f27394j.b(new C3136t(c3135s));
            dVar.f27399o = tVar.r();
        } else {
            tVar2 = tVar;
            dVar = this;
            e8 = e10;
            if (dVar.f27399o != 0) {
                long jR4 = tVar.r();
                long j27 = dVar.f27399o;
                if (jR4 < j27) {
                    tVar2.n((int) (j27 - jR4));
                }
            }
        }
        if (dVar.f27401q == 0) {
            tVar.m();
            if (e(tVar)) {
                i9 = -1;
            } else {
                e8.L(0);
                int iL5 = e8.l();
                if (((-128000) & iL5) != (((long) dVar.f27395k) & (-128000)) || AbstractC0368a.c(iL5) == -1) {
                    tVar2.n(1);
                    dVar.f27395k = 0;
                } else {
                    c0369b2.a(iL5);
                    if (dVar.f27397m == -9223372036854775807L) {
                        dVar.f27397m = dVar.f27402r.a(tVar.r());
                        long j28 = dVar.f27386b;
                        if (j28 != -9223372036854775807L) {
                            dVar.f27397m = (j28 - dVar.f27402r.a(0L)) + dVar.f27397m;
                        }
                    }
                    dVar.f27401q = c0369b2.f7375c;
                    long jR5 = tVar.r() + ((long) c0369b2.f7375c);
                    dVar.f27400p = jR5;
                    f fVar2 = dVar.f27402r;
                    if (fVar2 instanceof b) {
                        b bVar = (b) fVar2;
                        long j29 = (((dVar.f27398n + ((long) c0369b2.f7379g)) * 1000000) / ((long) c0369b2.f7376d)) + dVar.f27397m;
                        y yVar = bVar.f27380d.f7322b;
                        int i22 = yVar.f28127a;
                        D d6 = bVar.f27380d;
                        if (i22 == 0 || j29 - yVar.c(i22 - 1) >= 100000) {
                            d6.b(j29, jR5);
                        }
                        if (dVar.f27404t) {
                            long j30 = dVar.f27405u;
                            y yVar2 = d6.f7322b;
                            int i23 = yVar2.f28127a;
                            if (i23 != 0 && j30 - yVar2.c(i23 - 1) < 100000) {
                                dVar.f27404t = false;
                                dVar.f27394j = dVar.f27393i;
                            }
                        }
                    }
                    iF = dVar.f27394j.f(tVar2, dVar.f27401q, true);
                    if (iF == -1) {
                        i9 = -1;
                    } else {
                        i10 = dVar.f27401q - iF;
                        dVar.f27401q = i10;
                        if (i10 <= 0) {
                            dVar.f27394j.d(((dVar.f27398n * 1000000) / ((long) c0369b2.f7376d)) + dVar.f27397m, 1, c0369b2.f7375c, 0, null);
                            dVar.f27398n += (long) c0369b2.f7379g;
                            dVar.f27401q = 0;
                        }
                    }
                }
                i9 = 0;
            }
            i8 = -1;
        } else {
            iF = dVar.f27394j.f(tVar2, dVar.f27401q, true);
            if (iF == -1) {
                i9 = -1;
            } else {
                i10 = dVar.f27401q - iF;
                dVar.f27401q = i10;
                if (i10 <= 0) {
                    dVar.f27394j.d(((dVar.f27398n * 1000000) / ((long) c0369b2.f7376d)) + dVar.f27397m, 1, c0369b2.f7375c, 0, null);
                    dVar.f27398n += (long) c0369b2.f7379g;
                    dVar.f27401q = 0;
                }
                i9 = 0;
            }
            i8 = -1;
        }
        if (i9 == i8) {
            f fVar3 = dVar.f27402r;
            if (fVar3 instanceof b) {
                long j31 = ((dVar.f27398n * 1000000) / ((long) c0369b2.f7376d)) + dVar.f27397m;
                if (fVar3.m() != j31) {
                    f fVar4 = dVar.f27402r;
                    ((b) fVar4).f27380d.f7323c = j31;
                    dVar.f27392h.r(fVar4);
                    L l9 = dVar.f27393i;
                    dVar.f27402r.m();
                    l9.getClass();
                }
            }
        }
        return i9;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f27395k = 0;
        this.f27397m = -9223372036854775807L;
        this.f27398n = 0L;
        this.f27401q = 0;
        this.f27405u = j9;
        f fVar = this.f27402r;
        if (fVar instanceof b) {
            y yVar = ((b) fVar).f27380d.f7322b;
            int i8 = yVar.f28127a;
            if (i8 != 0 && j9 - yVar.c(i8 - 1) < 100000) {
                return;
            }
            this.f27404t = true;
            this.f27394j = this.f27391g;
        }
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    public d(long j8) {
        this.f27385a = 0;
        this.f27386b = j8;
        this.f27387c = new E(10);
        this.f27388d = new C0369b();
        this.f27389e = new A();
        this.f27397m = -9223372036854775807L;
        this.f27390f = new C(0);
        q qVar = new q();
        this.f27391g = qVar;
        this.f27394j = qVar;
        this.f27400p = -1L;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
