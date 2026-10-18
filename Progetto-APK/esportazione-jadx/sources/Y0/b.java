package Y0;

import A2.i;
import F2.G;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import android.support.v4.media.session.PlaybackStateCompat;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import p126q1.k;
import p126q1.n;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class b implements s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f8007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8008e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f8010g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f8013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f8014k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8018o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f8019p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8006c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f8004a = new E(12);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f8005b = new i(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public u f8009f = new G(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e[] f8012i = new e[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f8016m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f8017n = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8015l = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f8011h = -9223372036854775807L;

    public b(G g8) {
        this.f8007d = g8;
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f8008e = 0;
        if (this.f8006c) {
            uVar = new n(uVar, this.f8007d);
        }
        this.f8009f = uVar;
        this.f8013j = -1L;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        E e8 = this.f8004a;
        tVar.c(0, e8.f28035a, 12);
        e8.L(0);
        if (e8.n() != 1179011410) {
            return false;
        }
        e8.M(4);
        return e8.n() == 541677121;
    }

    /* JADX WARN: Code duplicated, block: B:174:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:61:0x0105  */
    /* JADX WARN: Code duplicated, block: B:62:0x010e  */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        boolean z7;
        e eVar;
        long j8;
        int i8;
        e eVar2;
        int i9;
        if (this.f8013j != -1) {
            long jR = tVar.r();
            long j9 = this.f8013j;
            if (j9 < jR || j9 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE + jR) {
                wVar.f7458a = j9;
                z7 = true;
            } else {
                tVar.n((int) (j9 - jR));
                z7 = false;
            }
        } else {
            z7 = false;
        }
        this.f8013j = -1L;
        if (z7) {
            return 1;
        }
        int i10 = this.f8008e;
        e eVar3 = null;
        int i11 = 4;
        i iVar = this.f8005b;
        E e8 = this.f8004a;
        switch (i10) {
            case 0:
                if (!g(tVar)) {
                    throw P.a("AVI Header List not found", null);
                }
                tVar.n(12);
                this.f8008e = 1;
                return 0;
            case 1:
                tVar.readFully(e8.f28035a, 0, 12);
                e8.L(0);
                iVar.getClass();
                iVar.f630a = e8.n();
                iVar.f631b = e8.n();
                iVar.f632c = 0;
                if (iVar.f630a != 1414744396) {
                    throw P.a("LIST expected, found: " + iVar.f630a, null);
                }
                int iN = e8.n();
                iVar.f632c = iN;
                if (iN == 1819436136) {
                    this.f8015l = iVar.f631b;
                    this.f8008e = 2;
                    return 0;
                }
                throw P.a("hdrl expected, found: " + iVar.f632c, null);
            case 2:
                int i12 = this.f8015l - 4;
                E e9 = new E(i12);
                tVar.readFully(e9.f28035a, 0, i12);
                f fVarB = f.b(1819436136, e9);
                int i13 = fVarB.f8044b;
                if (i13 != 1819436136) {
                    throw P.a("Unexpected header list type " + i13, null);
                }
                c cVar = (c) fVarB.a(c.class);
                if (cVar == null) {
                    throw P.a("AviHeader not found", null);
                }
                this.f8010g = cVar;
                this.f8011h = ((long) cVar.f8022c) * ((long) cVar.f8020a);
                ArrayList arrayList = new ArrayList();
                F fListIterator = fVarB.f8043a.listIterator(0);
                int i14 = 0;
                while (fListIterator.hasNext()) {
                    a aVar = (a) fListIterator.next();
                    if (aVar.getType() == 1819440243) {
                        f fVar = (f) aVar;
                        int i15 = i14 + 1;
                        d dVar = (d) fVar.a(d.class);
                        g gVar = (g) fVar.a(g.class);
                        if (dVar == null) {
                            x.f("AviExtractor", "Missing Stream Header");
                        } else if (gVar == null) {
                            x.f("AviExtractor", "Missing Stream Format");
                        } else {
                            long j10 = dVar.f8026d;
                            long j11 = ((long) dVar.f8024b) * 1000000;
                            long j12 = dVar.f8025c;
                            String str = M.f28050a;
                            long jZ = M.Z(j10, j11, j12, RoundingMode.DOWN);
                            C3136t c3136t = gVar.f8045a;
                            C3135s c3135sA = c3136t.a();
                            c3135sA.f26983a = Integer.toString(i14);
                            int i16 = dVar.f8027e;
                            if (i16 != 0) {
                                c3135sA.f26997o = i16;
                            }
                            h hVar = (h) fVar.a(h.class);
                            if (hVar != null) {
                                c3135sA.f26984b = hVar.f8046a;
                            }
                            int i17 = O.i(c3136t.f27041o);
                            if (i17 == 1 || i17 == 2) {
                                L lT = this.f8009f.t(i14, i17);
                                lT.b(new C3136t(c3135sA));
                                this.f8011h = Math.max(this.f8011h, jZ);
                                eVar = new e(i14, dVar, lT);
                            }
                            if (eVar != null) {
                                arrayList.add(eVar);
                            }
                            i14 = i15;
                        }
                        eVar = null;
                        if (eVar != null) {
                            arrayList.add(eVar);
                        }
                        i14 = i15;
                    }
                }
                this.f8012i = (e[]) arrayList.toArray(new e[0]);
                this.f8009f.j();
                this.f8008e = 3;
                return 0;
            case 3:
                if (this.f8016m != -1) {
                    long jR2 = tVar.r();
                    long j13 = this.f8016m;
                    if (jR2 != j13) {
                        this.f8013j = j13;
                        return 0;
                    }
                }
                tVar.c(0, e8.f28035a, 12);
                tVar.m();
                e8.L(0);
                iVar.getClass();
                iVar.f630a = e8.n();
                iVar.f631b = e8.n();
                iVar.f632c = 0;
                int iN2 = e8.n();
                int i18 = iVar.f630a;
                if (i18 == 1179011410) {
                    tVar.n(12);
                    return 0;
                }
                if (i18 != 1414744396 || iN2 != 1769369453) {
                    this.f8013j = tVar.r() + ((long) iVar.f631b) + 8;
                    return 0;
                }
                long jR3 = tVar.r();
                this.f8016m = jR3;
                this.f8017n = jR3 + ((long) iVar.f631b) + 8;
                if (!this.f8019p) {
                    c cVar2 = this.f8010g;
                    cVar2.getClass();
                    if ((cVar2.f8021b & 16) == 16) {
                        this.f8008e = 4;
                        this.f8013j = this.f8017n;
                        return 0;
                    }
                    this.f8009f.r(new W0.x(this.f8011h));
                    this.f8019p = true;
                }
                this.f8013j = tVar.r() + 12;
                this.f8008e = 6;
                return 0;
            case 4:
                tVar.readFully(e8.f28035a, 0, 8);
                e8.L(0);
                int iN3 = e8.n();
                int iN4 = e8.n();
                if (iN3 != 829973609) {
                    this.f8013j = tVar.r() + ((long) iN4);
                    return 0;
                }
                this.f8008e = 5;
                this.f8018o = iN4;
                return 0;
            case 5:
                E e10 = new E(this.f8018o);
                tVar.readFully(e10.f28035a, 0, this.f8018o);
                if (e10.a() < 16) {
                    j8 = 0;
                } else {
                    int i19 = e10.f28036b;
                    e10.M(8);
                    long jN = e10.n();
                    long j14 = this.f8016m;
                    j8 = jN > j14 ? 0L : j14 + 8;
                    e10.L(i19);
                }
                while (e10.a() >= 16) {
                    int iN5 = e10.n();
                    int iN6 = e10.n();
                    long jN2 = ((long) e10.n()) + j8;
                    e10.M(i11);
                    e[] eVarArr = this.f8012i;
                    int length = eVarArr.length;
                    int i20 = 0;
                    while (true) {
                        if (i20 < length) {
                            eVar2 = eVarArr[i20];
                            if (eVar2.f8031c != iN5 && eVar2.f8032d != iN5) {
                                i20++;
                            }
                        } else {
                            eVar2 = null;
                        }
                    }
                    if (eVar2 != null) {
                        boolean z8 = (iN6 & 16) == 16;
                        if (eVar2.f8040l == -1) {
                            eVar2.f8040l = jN2;
                        }
                        if (z8) {
                            if (eVar2.f8039k == eVar2.f8042n.length) {
                                long[] jArr = eVar2.f8041m;
                                eVar2.f8041m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                                int[] iArr = eVar2.f8042n;
                                eVar2.f8042n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
                            }
                            long[] jArr2 = eVar2.f8041m;
                            int i21 = eVar2.f8039k;
                            jArr2[i21] = jN2;
                            eVar2.f8042n[i21] = eVar2.f8038j;
                            i9 = 1;
                            eVar2.f8039k = i21 + 1;
                        } else {
                            i9 = 1;
                        }
                        eVar2.f8038j += i9;
                    }
                    i11 = 4;
                }
                for (e eVar4 : this.f8012i) {
                    eVar4.f8041m = Arrays.copyOf(eVar4.f8041m, eVar4.f8039k);
                    eVar4.f8042n = Arrays.copyOf(eVar4.f8042n, eVar4.f8039k);
                    if ((eVar4.f8031c & 1651965952) == 1651965952 && eVar4.f8029a.f8028f != 0 && (i8 = eVar4.f8039k) > 0) {
                        eVar4.f8034f = i8;
                    }
                }
                this.f8019p = true;
                if (this.f8012i.length == 0) {
                    this.f8009f.r(new W0.x(this.f8011h));
                } else {
                    this.f8009f.r(new W0.x(this, 2, this.f8011h));
                }
                this.f8008e = 6;
                this.f8013j = this.f8016m;
                return 0;
            case 6:
                if (tVar.r() >= this.f8017n) {
                    return -1;
                }
                e eVar5 = this.f8014k;
                if (eVar5 != null) {
                    int i22 = eVar5.f8036h;
                    int iF = i22 - eVar5.f8030b.f(tVar, i22, false);
                    eVar5.f8036h = iF;
                    boolean z9 = iF == 0;
                    if (z9) {
                        if (eVar5.f8035g > 0) {
                            int i23 = eVar5.f8037i;
                            eVar5.f8030b.d((eVar5.f8033e * ((long) i23)) / ((long) eVar5.f8034f), Arrays.binarySearch(eVar5.f8042n, i23) >= 0 ? 1 : 0, eVar5.f8035g, 0, null);
                        }
                        eVar5.f8037i++;
                    }
                    if (!z9) {
                        return 0;
                    }
                    this.f8014k = null;
                    return 0;
                }
                if ((tVar.r() & 1) == 1) {
                    tVar.n(1);
                }
                tVar.c(0, e8.f28035a, 12);
                e8.L(0);
                int iN7 = e8.n();
                if (iN7 == 1414744396) {
                    e8.L(8);
                    tVar.n(e8.n() == 1769369453 ? 12 : 8);
                    tVar.m();
                    return 0;
                }
                int iN8 = e8.n();
                if (iN7 == 1263424842) {
                    this.f8013j = tVar.r() + ((long) iN8) + 8;
                    return 0;
                }
                tVar.n(8);
                tVar.m();
                for (e eVar6 : this.f8012i) {
                    if (eVar6.f8031c == iN7 || eVar6.f8032d == iN7) {
                        eVar3 = eVar6;
                        if (eVar3 == null) {
                            this.f8013j = tVar.r() + ((long) iN8);
                            return 0;
                        }
                        eVar3.f8035g = iN8;
                        eVar3.f8036h = iN8;
                        this.f8014k = eVar3;
                        return 0;
                    }
                }
                if (eVar3 == null) {
                    this.f8013j = tVar.r() + ((long) iN8);
                    return 0;
                }
                eVar3.f8035g = iN8;
                eVar3.f8036h = iN8;
                this.f8014k = eVar3;
                return 0;
            default:
                throw new AssertionError();
        }
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f8013j = -1L;
        this.f8014k = null;
        for (e eVar : this.f8012i) {
            if (eVar.f8039k == 0) {
                eVar.f8037i = 0;
            } else {
                eVar.f8037i = eVar.f8042n[M.e(eVar.f8041m, j8, true)];
            }
        }
        if (j8 != 0) {
            this.f8008e = 6;
        } else if (this.f8012i.length == 0) {
            this.f8008e = 0;
        } else {
            this.f8008e = 3;
        }
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
