package P0;

import B0.C0044d0;
import B0.Z;
import B0.w0;
import E0.s;
import E0.t;
import O0.C0278b;
import O0.C0292p;
import O0.C0296u;
import O0.D;
import O0.T;
import O0.U;
import O0.V;
import O0.W;
import W0.C0379l;
import W0.F;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p094m0.C3136t;
import p094m0.O;
import p117p0.x;
import p141s0.A;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.M;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class m implements U, W, S0.h, S0.k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f5736G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int[] f5737H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3136t[] f5738I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean[] f5739J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final E0.b f5740K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final V f5741L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final D f5742M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final U4.b f5743N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final S0.m f5744O = new S0.m("ChunkSampleStream");

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final j f5745P = new j(0);

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final ArrayList f5746Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final List f5747R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final T f5748S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final T[] f5749T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final c f5750U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public f f5751V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public C3136t f5752W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public l f5753X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public long f5754Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public long f5755Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f5756a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f5757b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f5758c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f5759d0;

    public m(int i8, int[] iArr, C3136t[] c3136tArr, E0.p pVar, V v5, S0.d dVar, long j8, G0.r rVar, G0.o oVar, U4.b bVar, D d6, boolean z7) {
        this.f5736G = i8;
        this.f5737H = iArr;
        this.f5738I = c3136tArr;
        this.f5740K = pVar;
        this.f5741L = v5;
        this.f5742M = d6;
        this.f5743N = bVar;
        this.f5757b0 = z7;
        int i9 = 0;
        ArrayList arrayList = new ArrayList();
        this.f5746Q = arrayList;
        this.f5747R = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.f5749T = new T[length];
        this.f5739J = new boolean[length];
        int i10 = length + 1;
        int[] iArr2 = new int[i10];
        T[] tArr = new T[i10];
        rVar.getClass();
        oVar.getClass();
        T t7 = new T(dVar, rVar, oVar);
        this.f5748S = t7;
        iArr2[0] = i8;
        tArr[0] = t7;
        while (i9 < length) {
            T t8 = new T(dVar, null, null);
            this.f5749T[i9] = t8;
            int i11 = i9 + 1;
            tArr[i11] = t8;
            iArr2[i11] = this.f5737H[i9];
            i9 = i11;
        }
        this.f5750U = new c(iArr2, tArr);
        this.f5754Y = j8;
        this.f5755Z = j8;
    }

    public final boolean A() {
        return this.f5754Y != -9223372036854775807L;
    }

    public final void B() {
        int iC = C(this.f5748S.t(), this.f5756a0 - 1);
        while (true) {
            int i8 = this.f5756a0;
            if (i8 > iC) {
                return;
            }
            this.f5756a0 = i8 + 1;
            a aVar = (a) this.f5746Q.get(i8);
            C3136t c3136t = aVar.f5723J;
            if (!c3136t.equals(this.f5752W)) {
                this.f5742M.b(this.f5736G, c3136t, aVar.f5724K, aVar.f5725L, aVar.f5726M);
            }
            this.f5752W = c3136t;
        }
    }

    public final int C(int i8, int i9) {
        ArrayList arrayList;
        do {
            i9++;
            arrayList = this.f5746Q;
            if (i9 >= arrayList.size()) {
                return arrayList.size() - 1;
            }
        } while (((a) arrayList.get(i9)).c(0) <= i8);
        return i9 - 1;
    }

    public final void D(l lVar) {
        this.f5753X = lVar;
        T t7 = this.f5748S;
        t7.k();
        G0.l lVar2 = t7.f5146h;
        if (lVar2 != null) {
            lVar2.c(t7.f5143e);
            t7.f5146h = null;
            t7.f5145g = null;
        }
        for (T t8 : this.f5749T) {
            t8.k();
            G0.l lVar3 = t8.f5146h;
            if (lVar3 != null) {
                lVar3.c(t8.f5143e);
                t8.f5146h = null;
                t8.f5145g = null;
            }
        }
        this.f5744O.f(this);
    }

    public final k E(int i8, long j8) {
        int i9 = 0;
        while (true) {
            T[] tArr = this.f5749T;
            if (i9 >= tArr.length) {
                throw new IllegalStateException();
            }
            if (this.f5737H[i9] == i8) {
                boolean[] zArr = this.f5739J;
                H1.i(!zArr[i9]);
                zArr[i9] = true;
                tArr[i9].H(j8, true);
                return new k(this, this, tArr[i9], i9);
            }
            i9++;
        }
    }

    @Override // O0.U
    public final void b() throws IOException {
        S0.m mVar = this.f5744O;
        mVar.b();
        this.f5748S.A();
        if (mVar.e()) {
            return;
        }
        E0.p pVar = (E0.p) this.f5740K;
        C0278b c0278b = pVar.f2553m;
        if (c0278b != null) {
            throw c0278b;
        }
        pVar.f2541a.b();
    }

    @Override // S0.h
    public final void c(S0.j jVar, long j8, long j9, boolean z7) {
        f fVar = (f) jVar;
        this.f5751V = null;
        long j10 = fVar.f5720G;
        M m7 = fVar.f5728O;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f5743N.getClass();
        this.f5742M.c(c0292p, fVar.f5722I, this.f5736G, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N);
        if (z7) {
            return;
        }
        if (A()) {
            this.f5748S.E(false);
            for (T t7 : this.f5749T) {
                t7.E(false);
            }
        } else if (fVar instanceof a) {
            ArrayList arrayList = this.f5746Q;
            t(arrayList.size() - 1);
            if (arrayList.isEmpty()) {
                this.f5754Y = this.f5755Z;
            }
        }
        this.f5741L.r(this);
    }

    @Override // S0.k
    public final void d() {
        T t7 = this.f5748S;
        t7.E(true);
        G0.l lVar = t7.f5146h;
        if (lVar != null) {
            lVar.c(t7.f5143e);
            t7.f5146h = null;
            t7.f5145g = null;
        }
        for (T t8 : this.f5749T) {
            t8.E(true);
            G0.l lVar2 = t8.f5146h;
            if (lVar2 != null) {
                lVar2.c(t8.f5143e);
                t8.f5146h = null;
                t8.f5145g = null;
            }
        }
        for (E0.n nVar : ((E0.p) this.f5740K).f2549i) {
            i iVar = (i) nVar.f2536d;
            if (iVar != null) {
                ((e) iVar).f5711G.release();
            }
        }
        l lVar3 = this.f5753X;
        if (lVar3 != null) {
            E0.d dVar = (E0.d) lVar3;
            synchronized (dVar) {
                s sVar = (s) dVar.f2464T.remove(this);
                if (sVar != null) {
                    T t9 = sVar.f2565a;
                    t9.E(true);
                    G0.l lVar4 = t9.f5146h;
                    if (lVar4 != null) {
                        lVar4.c(t9.f5143e);
                        t9.f5146h = null;
                        t9.f5145g = null;
                    }
                }
            }
        }
    }

    @Override // O0.W
    public final long e() {
        if (A()) {
            return this.f5754Y;
        }
        if (this.f5759d0) {
            return Long.MIN_VALUE;
        }
        return y().f5727N;
    }

    @Override // O0.U
    public final boolean f() {
        return !A() && this.f5748S.y(this.f5759d0);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0280  */
    /* JADX WARN: Code duplicated, block: B:103:0x028e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0293  */
    /* JADX WARN: Code duplicated, block: B:110:0x029a  */
    /* JADX WARN: Code duplicated, block: B:113:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:114:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:116:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:118:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:119:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:122:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:123:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:126:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:128:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:130:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:133:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:211:0x0189 A[EDGE_INSN: B:211:0x0189->B:66:0x0189 BREAK  A[LOOP:2: B:52:0x011f->B:65:0x0180], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:49:0x0108  */
    /* JADX WARN: Code duplicated, block: B:50:0x010a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0123  */
    /* JADX WARN: Code duplicated, block: B:56:0x012f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0136  */
    /* JADX WARN: Code duplicated, block: B:59:0x0140  */
    /* JADX WARN: Code duplicated, block: B:60:0x014b  */
    /* JADX WARN: Code duplicated, block: B:63:0x016e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0171  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:79:0x0218  */
    /* JADX WARN: Code duplicated, block: B:81:0x0223  */
    /* JADX WARN: Code duplicated, block: B:82:0x0226  */
    /* JADX WARN: Code duplicated, block: B:85:0x022c  */
    /* JADX WARN: Code duplicated, block: B:86:0x0231  */
    /* JADX WARN: Code duplicated, block: B:91:0x024c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0258  */
    /* JADX WARN: Code duplicated, block: B:95:0x025a  */
    /* JADX WARN: Code duplicated, block: B:98:0x027a  */
    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        long j8;
        List listEmptyList;
        S0.m mVar;
        long jR;
        F0.c cVar;
        long j9;
        long jR2;
        p pVar;
        int length;
        q[] qVarArr;
        int i8;
        E0.n[] nVarArr;
        long j10;
        long j11;
        long j12;
        long jMax;
        long j13;
        j jVar;
        E0.n nVarB;
        i iVar;
        Object obj;
        Object obj2;
        Object obj3;
        F0.c cVar2;
        boolean z7;
        long j14;
        boolean z8;
        long jB;
        long jC;
        long j15;
        Object obj4;
        Object nVar;
        F0.j jVarA;
        long jE;
        boolean z9;
        F0.m mVar2;
        F0.j jVar2;
        F0.j jVarM;
        F0.j jVarA2;
        E0.n nVar2;
        E0.k kVar;
        U4.b bVar;
        long jB2;
        long jC2;
        long j16;
        boolean z10;
        if (!this.f5759d0) {
            S0.m mVar3 = this.f5744O;
            if (!mVar3.e() && !mVar3.d()) {
                boolean zA = A();
                if (zA) {
                    listEmptyList = Collections.emptyList();
                    j8 = this.f5754Y;
                } else {
                    j8 = y().f5727N;
                    listEmptyList = this.f5747R;
                }
                E0.p pVar2 = (E0.p) this.f5740K;
                C0278b c0278b = pVar2.f2553m;
                j jVar3 = this.f5745P;
                if (c0278b != null) {
                    mVar = mVar3;
                    jVar = jVar3;
                } else {
                    long j17 = c0044d0.f921a;
                    long j18 = j8 - j17;
                    long jR3 = p117p0.M.R(pVar2.f2551k.b(pVar2.f2552l).f3050b) + p117p0.M.R(pVar2.f2551k.f3014a) + j8;
                    s sVar = pVar2.f2548h;
                    if (sVar != null) {
                        t tVar = sVar.f2569e;
                        F0.c cVar3 = tVar.f2575L;
                        if (cVar3.f3017d) {
                            if (tVar.f2577N) {
                                mVar = mVar3;
                            } else {
                                mVar = mVar3;
                                Map.Entry entryCeilingEntry = tVar.f2574K.ceilingEntry(Long.valueOf(cVar3.f3021h));
                                E0.f fVar = tVar.f2571H;
                                if (entryCeilingEntry == null || ((Long) entryCeilingEntry.getValue()).longValue() >= jR3) {
                                    z10 = false;
                                } else {
                                    long jLongValue = ((Long) entryCeilingEntry.getKey()).longValue();
                                    E0.j jVar4 = fVar.f2479G;
                                    long j19 = jVar4.f2506N;
                                    if (j19 == -9223372036854775807L || j19 < jLongValue) {
                                        jVar4.f2506N = jLongValue;
                                    }
                                    z10 = true;
                                }
                                if (z10 && tVar.f2576M) {
                                    tVar.f2577N = true;
                                    tVar.f2576M = false;
                                    E0.j jVar5 = fVar.f2479G;
                                    jVar5.f2496D.removeCallbacks(jVar5.f2524w);
                                    jVar5.z();
                                }
                                if (z10) {
                                }
                            }
                            jVar = jVar3;
                        } else {
                            mVar = mVar3;
                        }
                        jR = p117p0.M.R(p117p0.M.z(pVar2.f2546f));
                        cVar = pVar2.f2551k;
                        j9 = cVar.f3014a;
                        if (j9 == -9223372036854775807L) {
                            jR2 = -9223372036854775807L;
                        } else {
                            jR2 = jR - p117p0.M.R(j9 + cVar.b(pVar2.f2552l).f3050b);
                        }
                        if (listEmptyList.isEmpty()) {
                            pVar = null;
                        } else {
                            pVar = (p) listEmptyList.get(listEmptyList.size() - 1);
                        }
                        length = ((R0.c) pVar2.f2550j).f6127c.length;
                        qVarArr = new q[length];
                        i8 = 0;
                        while (true) {
                            nVarArr = pVar2.f2549i;
                            if (i8 < length) {
                                break;
                            }
                            nVar2 = nVarArr[i8];
                            int i9 = length;
                            kVar = (E0.k) nVar2.f2539g;
                            bVar = q.f5771i;
                            if (kVar == null) {
                                qVarArr[i8] = bVar;
                                j8 = j8;
                                jR2 = jR2;
                            } else {
                                jB2 = nVar2.b(jR);
                                jC2 = nVar2.c(jR);
                                if (pVar != null) {
                                    j16 = pVar.a();
                                } else {
                                    E0.k kVar2 = (E0.k) nVar2.f2539g;
                                    H1.j(kVar2);
                                    j16 = p117p0.M.j(kVar2.f(j8, nVar2.f2534b) + nVar2.f2535c, jB2, jC2);
                                }
                                if (j16 < jB2) {
                                    qVarArr[i8] = bVar;
                                } else {
                                    qVarArr[i8] = new E0.o(pVar2.b(i8), j16, jC2);
                                }
                            }
                            i8++;
                            length = i9;
                            jR2 = jR2;
                            j8 = j8;
                        }
                        j10 = j8;
                        long j20 = jR2;
                        if (pVar2.f2551k.f3017d || nVarArr[0].d() == 0) {
                            j11 = -9223372036854775807L;
                            qVarArr = qVarArr;
                            j12 = 0;
                            jMax = -9223372036854775807L;
                        } else {
                            long jE2 = nVarArr[0].e(nVarArr[0].c(jR));
                            F0.c cVar4 = pVar2.f2551k;
                            long j21 = cVar4.f3014a;
                            j11 = -9223372036854775807L;
                            j12 = 0;
                            jMax = Math.max(0L, Math.min(j21 == -9223372036854775807L ? -9223372036854775807L : jR - p117p0.M.R(j21 + cVar4.b(pVar2.f2552l).f3050b), jE2) - j17);
                        }
                        j13 = j12;
                        long j22 = jMax;
                        long j23 = j11;
                        jVar = jVar3;
                        pVar2.f2550j.a(j18, j22, listEmptyList, qVarArr);
                        int iB = pVar2.f2550j.b();
                        SystemClock.elapsedRealtime();
                        nVarB = pVar2.b(iB);
                        iVar = (i) nVarB.f2536d;
                        obj = nVarB.f2539g;
                        obj2 = nVarB.f2538f;
                        obj3 = nVarB.f2537e;
                        if (iVar != null) {
                            mVar2 = (F0.m) obj3;
                            if (((e) iVar).f5719O == null) {
                                jVar2 = mVar2.f3072g;
                            } else {
                                jVar2 = null;
                            }
                            if (((E0.k) obj) == null) {
                                jVarM = mVar2.m();
                            } else {
                                jVarM = null;
                            }
                            if (jVar2 == null || jVarM != null) {
                                C3136t c3136tL = ((R0.c) pVar2.f2550j).l();
                                int iF = pVar2.f2550j.f();
                                Object objH = pVar2.f2550j.h();
                                if (jVar2 != null) {
                                    jVarA2 = jVar2.a(jVarM, ((F0.b) obj2).f3010a);
                                    if (jVarA2 != null) {
                                        jVar2 = jVarA2;
                                    }
                                } else {
                                    jVarM.getClass();
                                    jVar2 = jVarM;
                                }
                                jVar.f5730H = new o(pVar2.f2545e, a7.b.a(mVar2, ((F0.b) obj2).f3010a, jVar2, 0), c3136tL, iF, objH, iVar);
                            } else {
                                cVar2 = pVar2.f2551k;
                                if (cVar2.f3017d || pVar2.f2552l != cVar2.f3026m.size() - 1) {
                                    z7 = false;
                                } else {
                                    z7 = true;
                                }
                                j14 = nVarB.f2534b;
                                if (z7 || j14 != j23) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                if (nVarB.d() == j13) {
                                    jVar.f5729G = z8;
                                } else {
                                    jB = nVarB.b(jR);
                                    jC = nVarB.c(jR);
                                    if (z7) {
                                        jE = nVarB.e(jC);
                                        if ((jE - nVarB.f(jC)) + jE >= j14) {
                                            z9 = true;
                                        } else {
                                            z9 = false;
                                        }
                                        z8 &= z9;
                                    }
                                    if (pVar != null) {
                                        j15 = pVar.a();
                                    } else {
                                        E0.k kVar3 = (E0.k) obj;
                                        H1.j(kVar3);
                                        j15 = p117p0.M.j(kVar3.f(j10, j14) + nVarB.f2535c, jB, jC);
                                    }
                                    if (j15 < jB) {
                                        pVar2.f2553m = new C0278b();
                                    } else if (j15 <= jC || (pVar2.f2554n && j15 >= jC)) {
                                        jVar.f5729G = z8;
                                    } else if (!z8 || nVarB.f(j15) < j14) {
                                        int iMin = (int) Math.min(pVar2.f2547g, (jC - j15) + 1);
                                        if (j14 != -9223372036854775807L) {
                                            while (iMin > 1 && nVarB.f((((long) iMin) + j15) - 1) >= j14) {
                                                iMin--;
                                            }
                                        }
                                        long j24 = listEmptyList.isEmpty() ? j10 : -9223372036854775807L;
                                        C3136t c3136tL2 = ((R0.c) pVar2.f2550j).l();
                                        int iF2 = pVar2.f2550j.f();
                                        Object objH2 = pVar2.f2550j.h();
                                        F0.m mVar4 = (F0.m) obj3;
                                        long jF = nVarB.f(j15);
                                        F0.j jVarG = nVarB.g(j15);
                                        InterfaceC3184i interfaceC3184i = pVar2.f2545e;
                                        if (iVar == null) {
                                            nVar = new r(interfaceC3184i, a7.b.a(mVar4, ((F0.b) obj2).f3010a, jVarG, nVarB.h(j15, j20) ? 0 : 8), c3136tL2, iF2, objH2, jF, nVarB.e(j15), j15, pVar2.f2544d, c3136tL2);
                                        } else {
                                            int i10 = 1;
                                            int i11 = 1;
                                            while (true) {
                                                obj4 = obj2;
                                                if (i10 >= iMin || (jVarA = jVarG.a(nVarB.g(((long) i10) + j15), ((F0.b) obj4).f3010a)) == null) {
                                                    break;
                                                }
                                                i11++;
                                                i10++;
                                                jVarG = jVarA;
                                                obj2 = obj4;
                                            }
                                            long j25 = (((long) i11) + j15) - 1;
                                            long jE3 = nVarB.e(j25);
                                            long j26 = (j14 == -9223372036854775807L || j14 > jE3) ? -9223372036854775807L : j14;
                                            C3188m c3188mA = a7.b.a(mVar4, ((F0.b) obj4).f3010a, jVarG, nVarB.h(j25, j20) ? 0 : 8);
                                            long j27 = -mVar4.f3068c;
                                            if (O.m(c3136tL2.f27041o)) {
                                                j27 += jF;
                                            }
                                            nVar = new n(interfaceC3184i, c3188mA, c3136tL2, iF2, objH2, jF, jE3, j24, j26, j15, i11, j27, iVar);
                                        }
                                        jVar.f5730H = nVar;
                                    } else {
                                        jVar.f5729G = true;
                                    }
                                }
                            }
                        } else {
                            cVar2 = pVar2.f2551k;
                            if (cVar2.f3017d) {
                                z7 = false;
                            } else {
                                z7 = false;
                            }
                            j14 = nVarB.f2534b;
                            if (z7) {
                                z8 = true;
                            } else {
                                z8 = true;
                            }
                            if (nVarB.d() == j13) {
                                jVar.f5729G = z8;
                            } else {
                                jB = nVarB.b(jR);
                                jC = nVarB.c(jR);
                                if (z7) {
                                    jE = nVarB.e(jC);
                                    if ((jE - nVarB.f(jC)) + jE >= j14) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    z8 &= z9;
                                }
                                if (pVar != null) {
                                    j15 = pVar.a();
                                } else {
                                    E0.k kVar4 = (E0.k) obj;
                                    H1.j(kVar4);
                                    j15 = p117p0.M.j(kVar4.f(j10, j14) + nVarB.f2535c, jB, jC);
                                }
                                if (j15 < jB) {
                                    pVar2.f2553m = new C0278b();
                                } else if (j15 <= jC) {
                                    jVar.f5729G = z8;
                                } else {
                                    jVar.f5729G = z8;
                                }
                            }
                        }
                    } else {
                        mVar = mVar3;
                        jR = p117p0.M.R(p117p0.M.z(pVar2.f2546f));
                        cVar = pVar2.f2551k;
                        j9 = cVar.f3014a;
                        if (j9 == -9223372036854775807L) {
                            jR2 = -9223372036854775807L;
                        } else {
                            jR2 = jR - p117p0.M.R(j9 + cVar.b(pVar2.f2552l).f3050b);
                        }
                        if (listEmptyList.isEmpty()) {
                            pVar = null;
                        } else {
                            pVar = (p) listEmptyList.get(listEmptyList.size() - 1);
                        }
                        length = ((R0.c) pVar2.f2550j).f6127c.length;
                        qVarArr = new q[length];
                        i8 = 0;
                        while (true) {
                            nVarArr = pVar2.f2549i;
                            if (i8 < length) {
                                break;
                                break;
                            }
                            nVar2 = nVarArr[i8];
                            int i12 = length;
                            kVar = (E0.k) nVar2.f2539g;
                            bVar = q.f5771i;
                            if (kVar == null) {
                                qVarArr[i8] = bVar;
                                j8 = j8;
                                jR2 = jR2;
                            } else {
                                jB2 = nVar2.b(jR);
                                jC2 = nVar2.c(jR);
                                if (pVar != null) {
                                    j16 = pVar.a();
                                } else {
                                    E0.k kVar5 = (E0.k) nVar2.f2539g;
                                    H1.j(kVar5);
                                    j16 = p117p0.M.j(kVar5.f(j8, nVar2.f2534b) + nVar2.f2535c, jB2, jC2);
                                }
                                if (j16 < jB2) {
                                    qVarArr[i8] = bVar;
                                } else {
                                    qVarArr[i8] = new E0.o(pVar2.b(i8), j16, jC2);
                                }
                            }
                            i8++;
                            length = i12;
                            jR2 = jR2;
                            j8 = j8;
                        }
                        j10 = j8;
                        long j28 = jR2;
                        if (pVar2.f2551k.f3017d) {
                            j11 = -9223372036854775807L;
                            qVarArr = qVarArr;
                            j12 = 0;
                            jMax = -9223372036854775807L;
                        } else {
                            j11 = -9223372036854775807L;
                            qVarArr = qVarArr;
                            j12 = 0;
                            jMax = -9223372036854775807L;
                        }
                        j13 = j12;
                        long j29 = jMax;
                        long j210 = j11;
                        jVar = jVar3;
                        pVar2.f2550j.a(j18, j29, listEmptyList, qVarArr);
                        int iB2 = pVar2.f2550j.b();
                        SystemClock.elapsedRealtime();
                        nVarB = pVar2.b(iB2);
                        iVar = (i) nVarB.f2536d;
                        obj = nVarB.f2539g;
                        obj2 = nVarB.f2538f;
                        obj3 = nVarB.f2537e;
                        if (iVar != null) {
                            mVar2 = (F0.m) obj3;
                            if (((e) iVar).f5719O == null) {
                                jVar2 = mVar2.f3072g;
                            } else {
                                jVar2 = null;
                            }
                            if (((E0.k) obj) == null) {
                                jVarM = mVar2.m();
                            } else {
                                jVarM = null;
                            }
                            if (jVar2 == null) {
                            }
                            C3136t c3136tL3 = ((R0.c) pVar2.f2550j).l();
                            int iF3 = pVar2.f2550j.f();
                            Object objH3 = pVar2.f2550j.h();
                            if (jVar2 != null) {
                                jVarA2 = jVar2.a(jVarM, ((F0.b) obj2).f3010a);
                                if (jVarA2 != null) {
                                    jVar2 = jVarA2;
                                }
                            } else {
                                jVarM.getClass();
                                jVar2 = jVarM;
                            }
                            jVar.f5730H = new o(pVar2.f2545e, a7.b.a(mVar2, ((F0.b) obj2).f3010a, jVar2, 0), c3136tL3, iF3, objH3, iVar);
                        } else {
                            cVar2 = pVar2.f2551k;
                            if (cVar2.f3017d) {
                                z7 = false;
                            } else {
                                z7 = false;
                            }
                            j14 = nVarB.f2534b;
                            if (z7) {
                                z8 = true;
                            } else {
                                z8 = true;
                            }
                            if (nVarB.d() == j13) {
                                jVar.f5729G = z8;
                            } else {
                                jB = nVarB.b(jR);
                                jC = nVarB.c(jR);
                                if (z7) {
                                    jE = nVarB.e(jC);
                                    if ((jE - nVarB.f(jC)) + jE >= j14) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    z8 &= z9;
                                }
                                if (pVar != null) {
                                    j15 = pVar.a();
                                } else {
                                    E0.k kVar6 = (E0.k) obj;
                                    H1.j(kVar6);
                                    j15 = p117p0.M.j(kVar6.f(j10, j14) + nVarB.f2535c, jB, jC);
                                }
                                if (j15 < jB) {
                                    pVar2.f2553m = new C0278b();
                                } else if (j15 <= jC) {
                                    jVar.f5729G = z8;
                                } else {
                                    jVar.f5729G = z8;
                                }
                            }
                        }
                    }
                }
                boolean z11 = jVar.f5729G;
                f fVar2 = (f) jVar.f5730H;
                jVar.f5730H = null;
                jVar.f5729G = false;
                if (z11) {
                    this.f5754Y = -9223372036854775807L;
                    this.f5759d0 = true;
                    return true;
                }
                if (fVar2 == null) {
                    return false;
                }
                this.f5751V = fVar2;
                boolean z12 = fVar2 instanceof a;
                c cVar5 = this.f5750U;
                if (z12) {
                    a aVar = (a) fVar2;
                    if (zA) {
                        long j30 = this.f5754Y;
                        if (aVar.f5726M < j30) {
                            this.f5748S.f5158t = j30;
                            for (T t7 : this.f5749T) {
                                t7.f5158t = this.f5754Y;
                            }
                            if (this.f5757b0) {
                                C3136t c3136t = aVar.f5723J;
                                this.f5758c0 = !O.a(c3136t.f27041o, c3136t.f27037k);
                            }
                        }
                        this.f5757b0 = false;
                        this.f5754Y = -9223372036854775807L;
                    }
                    aVar.f5697S = cVar5;
                    T[] tArr = cVar5.f5703b;
                    int[] iArr = new int[tArr.length];
                    for (int i13 = 0; i13 < tArr.length; i13++) {
                        T t8 = tArr[i13];
                        iArr[i13] = t8.f5155q + t8.f5154p;
                    }
                    aVar.f5698T = iArr;
                    this.f5746Q.add(aVar);
                } else if (fVar2 instanceof o) {
                    ((o) fVar2).f5767Q = cVar5;
                }
                mVar.g(fVar2, this, this.f5743N.Y(fVar2.f5722I));
                return true;
            }
        }
        return false;
    }

    @Override // O0.U
    public final int j(long j8) {
        if (A()) {
            return 0;
        }
        T t7 = this.f5748S;
        int iV = t7.v(j8, this.f5759d0);
        t7.I(iV);
        B();
        return iV;
    }

    @Override // O0.W
    public final boolean k() {
        return this.f5744O.e();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x025a  */
    /* JADX WARN: Code duplicated, block: B:103:0x0264  */
    /* JADX WARN: Code duplicated, block: B:104:0x0269  */
    /* JADX WARN: Code duplicated, block: B:105:0x026c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0278  */
    /* JADX WARN: Code duplicated, block: B:110:0x0288  */
    /* JADX WARN: Code duplicated, block: B:111:0x028e  */
    /* JADX WARN: Code duplicated, block: B:114:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:118:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:48:0x011e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0138  */
    /* JADX WARN: Code duplicated, block: B:55:0x015b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0161  */
    /* JADX WARN: Code duplicated, block: B:62:0x0172 A[LOOP:1: B:60:0x016c->B:62:0x0172, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x019c A[LOOP:2: B:64:0x0196->B:66:0x019c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x01be  */
    /* JADX WARN: Code duplicated, block: B:72:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:77:0x01db  */
    /* JADX WARN: Code duplicated, block: B:79:0x01df  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:84:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:86:0x0204  */
    /* JADX WARN: Code duplicated, block: B:87:0x0215  */
    /* JADX WARN: Code duplicated, block: B:90:0x0223  */
    /* JADX WARN: Code duplicated, block: B:92:0x0231  */
    /* JADX WARN: Code duplicated, block: B:94:0x0248 A[DONT_INVERT, PHI: r11 r17 r18
      0x0248: PHI (r11v9 U4.b) = (r11v1 U4.b), (r11v1 U4.b), (r11v1 U4.b), (r11v10 U4.b) binds: [B:89:0x0221, B:93:0x0241, B:80:0x01eb, B:32:0x00c0] A[DONT_GENERATE, DONT_INLINE]
      0x0248: PHI (r17v4 java.util.ArrayList) = (r17v2 java.util.ArrayList), (r17v2 java.util.ArrayList), (r17v2 java.util.ArrayList), (r17v5 java.util.ArrayList) binds: [B:89:0x0221, B:93:0x0241, B:80:0x01eb, B:32:0x00c0] A[DONT_GENERATE, DONT_INLINE]
      0x0248: PHI (r18v3 P0.f) = (r18v1 P0.f), (r18v1 P0.f), (r18v1 P0.f), (r18v4 P0.f) binds: [B:89:0x0221, B:93:0x0241, B:80:0x01eb, B:32:0x00c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x024a  */
    /* JADX WARN: Code duplicated, block: B:97:0x024e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0258  */
    @Override // S0.h
    public final S0.g n(S0.j jVar, long j8, long j9, IOException iOException, int i8) {
        boolean z7;
        E0.n[] nVarArr;
        p096m2.i iVar;
        F0.b bVarQ;
        Object obj;
        H h8;
        U4.b bVar;
        long jElapsedRealtime;
        R0.c cVar;
        int length;
        ArrayList arrayList;
        int i9;
        int i10;
        HashSet hashSet;
        int i11;
        p072j0.c cVar2;
        HashSet hashSet2;
        ArrayList arrayListI;
        f fVar;
        int i12;
        S0.g gVarV;
        int i13;
        long j10;
        long jElapsedRealtime2;
        String str;
        Map map;
        long jMax;
        int i14;
        Integer numValueOf;
        Map map2;
        R0.c cVar3;
        f fVar2;
        S0.g gVarC;
        boolean z8;
        boolean z9;
        U4.b bVar2;
        long jZ;
        f fVar3 = (f) jVar;
        long j11 = fVar3.f5728O.f29909b;
        boolean z10 = fVar3 instanceof a;
        ArrayList arrayList2 = this.f5746Q;
        int size = arrayList2.size() - 1;
        boolean z11 = (j11 != 0 && z10 && z(size)) ? false : true;
        M m7 = fVar3.f5728O;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        long j12 = fVar3.f5726M;
        long jE0 = p117p0.M.e0(j12);
        long jE1 = p117p0.M.e0(fVar3.f5727N);
        int i15 = fVar3.f5722I;
        int i16 = this.f5736G;
        C3136t c3136t = fVar3.f5723J;
        w0 w0Var = new w0(c0292p, new C0296u(i15, i16, c3136t, fVar3.f5724K, fVar3.f5725L, jE0, jE1), iOException, i8, 1);
        E0.p pVar = (E0.p) this.f5740K;
        U4.b bVar3 = this.f5743N;
        if (z11) {
            s sVar = pVar.f2548h;
            if (sVar == null) {
                z7 = pVar.f2551k.f3017d;
                nVarArr = pVar.f2549i;
                if (z7) {
                    E0.n nVar = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                    H h9 = ((F0.m) nVar.f2537e).f3067b;
                    iVar = pVar.f2542b;
                    bVarQ = iVar.q(h9);
                    obj = nVar.f2538f;
                    if (bVarQ != null) {
                    }
                    R0.t tVar = pVar.f2550j;
                    h8 = ((F0.m) nVar.f2537e).f3067b;
                    bVar = bVar3;
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    cVar = (R0.c) tVar;
                    length = cVar.f6127c.length;
                    arrayList = arrayList2;
                    i9 = 0;
                    for (i10 = 0; i10 < length; i10++) {
                        if (cVar.p(i10, jElapsedRealtime)) {
                            i9++;
                        }
                    }
                    hashSet = new HashSet();
                    for (i11 = 0; i11 < h8.size(); i11++) {
                        hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                    }
                    int size2 = hashSet.size();
                    hashSet2 = new HashSet();
                    arrayListI = iVar.i(h8);
                    fVar = fVar3;
                    for (i12 = 0; i12 < arrayListI.size(); i12++) {
                        hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                    }
                    cVar2 = new p072j0.c(size2, size2 - hashSet2.size(), length, i9);
                    if (cVar2.a(2)) {
                        bVar.getClass();
                        gVarV = U4.b.V(cVar2, w0Var);
                        if (gVarV != null) {
                            i13 = gVarV.f6351a;
                            if (cVar2.a(i13)) {
                                j10 = gVarV.f6352b;
                                if (i13 == 2) {
                                    cVar3 = (R0.c) pVar.f2550j;
                                    if (cVar3.i(cVar3.o(c3136t), j10)) {
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                } else if (i13 == 1) {
                                    F0.b bVar4 = (F0.b) obj;
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                    str = bVar4.f3011b;
                                    map = (Map) iVar.f27224H;
                                    if (map.containsKey(str)) {
                                        Long l4 = (Long) map.get(str);
                                        String str2 = p117p0.M.f28050a;
                                        jMax = Math.max(jElapsedRealtime2, l4.longValue());
                                    } else {
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i14 = bVar4.f3012c;
                                    if (i14 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i14);
                                        map2 = (Map) iVar.f27225I;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l8 = (Long) map2.get(numValueOf);
                                            String str3 = p117p0.M.f28050a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l8.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            }
                        }
                        fVar2 = fVar;
                    } else {
                        bVar.getClass();
                        gVarV = U4.b.V(cVar2, w0Var);
                        if (gVarV != null) {
                            i13 = gVarV.f6351a;
                            if (cVar2.a(i13)) {
                                j10 = gVarV.f6352b;
                                if (i13 == 2) {
                                    cVar3 = (R0.c) pVar.f2550j;
                                    if (cVar3.i(cVar3.o(c3136t), j10)) {
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                } else if (i13 == 1) {
                                    F0.b bVar5 = (F0.b) obj;
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                    str = bVar5.f3011b;
                                    map = (Map) iVar.f27224H;
                                    if (map.containsKey(str)) {
                                        Long l9 = (Long) map.get(str);
                                        String str4 = p117p0.M.f28050a;
                                        jMax = Math.max(jElapsedRealtime2, l9.longValue());
                                    } else {
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i14 = bVar5.f3012c;
                                    if (i14 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i14);
                                        map2 = (Map) iVar.f27225I;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l10 = (Long) map2.get(numValueOf);
                                            String str5 = p117p0.M.f28050a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l10.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            }
                        }
                        fVar2 = fVar;
                    }
                    if (gVarC == null) {
                        bVar.getClass();
                        jZ = U4.b.Z(w0Var);
                        if (jZ != -9223372036854775807L) {
                            gVarC = S0.m.c(jZ, false);
                        } else {
                            gVarC = S0.m.f6365L;
                        }
                    }
                    S0.g gVar = gVarC;
                    z9 = !gVar.a();
                    bVar2 = bVar;
                    this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                    if (z9) {
                        this.f5751V = null;
                        bVar2.getClass();
                        this.f5741L.r(this);
                    }
                    return gVar;
                }
                E0.n nVar2 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                H h10 = ((F0.m) nVar2.f2537e).f3067b;
                iVar = pVar.f2542b;
                bVarQ = iVar.q(h10);
                obj = nVar2.f2538f;
                if (bVarQ != null) {
                }
                R0.t tVar2 = pVar.f2550j;
                h8 = ((F0.m) nVar2.f2537e).f3067b;
                bVar = bVar3;
                jElapsedRealtime = SystemClock.elapsedRealtime();
                cVar = (R0.c) tVar2;
                length = cVar.f6127c.length;
                arrayList = arrayList2;
                i9 = 0;
                while (i10 < length) {
                    if (cVar.p(i10, jElapsedRealtime)) {
                        i9++;
                    }
                }
                hashSet = new HashSet();
                while (i11 < h8.size()) {
                    hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                }
                int size3 = hashSet.size();
                hashSet2 = new HashSet();
                arrayListI = iVar.i(h8);
                fVar = fVar3;
                while (i12 < arrayListI.size()) {
                    hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                }
                cVar2 = new p072j0.c(size3, size3 - hashSet2.size(), length, i9);
                if (cVar2.a(2)) {
                    bVar.getClass();
                    gVarV = U4.b.V(cVar2, w0Var);
                    if (gVarV != null) {
                        i13 = gVarV.f6351a;
                        if (cVar2.a(i13)) {
                            j10 = gVarV.f6352b;
                            if (i13 == 2) {
                                cVar3 = (R0.c) pVar.f2550j;
                                if (cVar3.i(cVar3.o(c3136t), j10)) {
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            } else if (i13 == 1) {
                                F0.b bVar6 = (F0.b) obj;
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                str = bVar6.f3011b;
                                map = (Map) iVar.f27224H;
                                if (map.containsKey(str)) {
                                    Long l11 = (Long) map.get(str);
                                    String str6 = p117p0.M.f28050a;
                                    jMax = Math.max(jElapsedRealtime2, l11.longValue());
                                } else {
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i14 = bVar6.f3012c;
                                if (i14 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i14);
                                    map2 = (Map) iVar.f27225I;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l12 = (Long) map2.get(numValueOf);
                                        String str7 = p117p0.M.f28050a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l12.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                if (z11) {
                                    gVarC = S0.m.f6364K;
                                    if (z10) {
                                        fVar2 = fVar;
                                        if (t(size) == fVar2) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        H1.i(z8);
                                        if (arrayList.isEmpty()) {
                                            this.f5754Y = this.f5755Z;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                    }
                                } else {
                                    fVar2 = fVar;
                                    x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                }
                            }
                        }
                    }
                    fVar2 = fVar;
                } else {
                    bVar.getClass();
                    gVarV = U4.b.V(cVar2, w0Var);
                    if (gVarV != null) {
                        i13 = gVarV.f6351a;
                        if (cVar2.a(i13)) {
                            j10 = gVarV.f6352b;
                            if (i13 == 2) {
                                cVar3 = (R0.c) pVar.f2550j;
                                if (cVar3.i(cVar3.o(c3136t), j10)) {
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            } else if (i13 == 1) {
                                F0.b bVar7 = (F0.b) obj;
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                str = bVar7.f3011b;
                                map = (Map) iVar.f27224H;
                                if (map.containsKey(str)) {
                                    Long l13 = (Long) map.get(str);
                                    String str8 = p117p0.M.f28050a;
                                    jMax = Math.max(jElapsedRealtime2, l13.longValue());
                                } else {
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i14 = bVar7.f3012c;
                                if (i14 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i14);
                                    map2 = (Map) iVar.f27225I;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l14 = (Long) map2.get(numValueOf);
                                        String str9 = p117p0.M.f28050a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l14.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                if (z11) {
                                    gVarC = S0.m.f6364K;
                                    if (z10) {
                                        fVar2 = fVar;
                                        if (t(size) == fVar2) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        H1.i(z8);
                                        if (arrayList.isEmpty()) {
                                            this.f5754Y = this.f5755Z;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                    }
                                } else {
                                    fVar2 = fVar;
                                    x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                }
                            }
                        }
                    }
                    fVar2 = fVar;
                }
                if (gVarC == null) {
                    bVar.getClass();
                    jZ = U4.b.Z(w0Var);
                    if (jZ != -9223372036854775807L) {
                        gVarC = S0.m.c(jZ, false);
                    } else {
                        gVarC = S0.m.f6365L;
                    }
                }
                S0.g gVar2 = gVarC;
                z9 = !gVar2.a();
                bVar2 = bVar;
                this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                if (z9) {
                    this.f5751V = null;
                    bVar2.getClass();
                    this.f5741L.r(this);
                }
                return gVar2;
            }
            long j13 = sVar.f2568d;
            boolean z12 = j13 != -9223372036854775807L && j13 < j12;
            t tVar3 = sVar.f2569e;
            if (!tVar3.f2575L.f3017d) {
                z7 = pVar.f2551k.f3017d;
                nVarArr = pVar.f2549i;
                if (z7) {
                    E0.n nVar3 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                    H h11 = ((F0.m) nVar3.f2537e).f3067b;
                    iVar = pVar.f2542b;
                    bVarQ = iVar.q(h11);
                    obj = nVar3.f2538f;
                    if (bVarQ != null) {
                    }
                    R0.t tVar4 = pVar.f2550j;
                    h8 = ((F0.m) nVar3.f2537e).f3067b;
                    bVar = bVar3;
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    cVar = (R0.c) tVar4;
                    length = cVar.f6127c.length;
                    arrayList = arrayList2;
                    i9 = 0;
                    while (i10 < length) {
                        if (cVar.p(i10, jElapsedRealtime)) {
                            i9++;
                        }
                    }
                    hashSet = new HashSet();
                    while (i11 < h8.size()) {
                        hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                    }
                    int size4 = hashSet.size();
                    hashSet2 = new HashSet();
                    arrayListI = iVar.i(h8);
                    fVar = fVar3;
                    while (i12 < arrayListI.size()) {
                        hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                    }
                    cVar2 = new p072j0.c(size4, size4 - hashSet2.size(), length, i9);
                    if (cVar2.a(2)) {
                        bVar.getClass();
                        gVarV = U4.b.V(cVar2, w0Var);
                        if (gVarV != null) {
                            i13 = gVarV.f6351a;
                            if (cVar2.a(i13)) {
                                j10 = gVarV.f6352b;
                                if (i13 == 2) {
                                    cVar3 = (R0.c) pVar.f2550j;
                                    if (cVar3.i(cVar3.o(c3136t), j10)) {
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                } else if (i13 == 1) {
                                    F0.b bVar8 = (F0.b) obj;
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                    str = bVar8.f3011b;
                                    map = (Map) iVar.f27224H;
                                    if (map.containsKey(str)) {
                                        Long l15 = (Long) map.get(str);
                                        String str10 = p117p0.M.f28050a;
                                        jMax = Math.max(jElapsedRealtime2, l15.longValue());
                                    } else {
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i14 = bVar8.f3012c;
                                    if (i14 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i14);
                                        map2 = (Map) iVar.f27225I;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l16 = (Long) map2.get(numValueOf);
                                            String str11 = p117p0.M.f28050a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l16.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            }
                        }
                        fVar2 = fVar;
                    } else {
                        bVar.getClass();
                        gVarV = U4.b.V(cVar2, w0Var);
                        if (gVarV != null) {
                            i13 = gVarV.f6351a;
                            if (cVar2.a(i13)) {
                                j10 = gVarV.f6352b;
                                if (i13 == 2) {
                                    cVar3 = (R0.c) pVar.f2550j;
                                    if (cVar3.i(cVar3.o(c3136t), j10)) {
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                } else if (i13 == 1) {
                                    F0.b bVar9 = (F0.b) obj;
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                    str = bVar9.f3011b;
                                    map = (Map) iVar.f27224H;
                                    if (map.containsKey(str)) {
                                        Long l17 = (Long) map.get(str);
                                        String str12 = p117p0.M.f28050a;
                                        jMax = Math.max(jElapsedRealtime2, l17.longValue());
                                    } else {
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i14 = bVar9.f3012c;
                                    if (i14 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i14);
                                        map2 = (Map) iVar.f27225I;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l18 = (Long) map2.get(numValueOf);
                                            String str13 = p117p0.M.f28050a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l18.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            }
                        }
                        fVar2 = fVar;
                    }
                    if (gVarC == null) {
                        bVar.getClass();
                        jZ = U4.b.Z(w0Var);
                        if (jZ != -9223372036854775807L) {
                            gVarC = S0.m.c(jZ, false);
                        } else {
                            gVarC = S0.m.f6365L;
                        }
                    }
                    S0.g gVar3 = gVarC;
                    z9 = !gVar3.a();
                    bVar2 = bVar;
                    this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                    if (z9) {
                        this.f5751V = null;
                        bVar2.getClass();
                        this.f5741L.r(this);
                    }
                    return gVar3;
                }
                E0.n nVar4 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                H h12 = ((F0.m) nVar4.f2537e).f3067b;
                iVar = pVar.f2542b;
                bVarQ = iVar.q(h12);
                obj = nVar4.f2538f;
                if (bVarQ != null) {
                }
                R0.t tVar5 = pVar.f2550j;
                h8 = ((F0.m) nVar4.f2537e).f3067b;
                bVar = bVar3;
                jElapsedRealtime = SystemClock.elapsedRealtime();
                cVar = (R0.c) tVar5;
                length = cVar.f6127c.length;
                arrayList = arrayList2;
                i9 = 0;
                while (i10 < length) {
                    if (cVar.p(i10, jElapsedRealtime)) {
                        i9++;
                    }
                }
                hashSet = new HashSet();
                while (i11 < h8.size()) {
                    hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                }
                int size5 = hashSet.size();
                hashSet2 = new HashSet();
                arrayListI = iVar.i(h8);
                fVar = fVar3;
                while (i12 < arrayListI.size()) {
                    hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                }
                cVar2 = new p072j0.c(size5, size5 - hashSet2.size(), length, i9);
                if (cVar2.a(2)) {
                    bVar.getClass();
                    gVarV = U4.b.V(cVar2, w0Var);
                    if (gVarV != null) {
                        i13 = gVarV.f6351a;
                        if (cVar2.a(i13)) {
                            j10 = gVarV.f6352b;
                            if (i13 == 2) {
                                cVar3 = (R0.c) pVar.f2550j;
                                if (cVar3.i(cVar3.o(c3136t), j10)) {
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            } else if (i13 == 1) {
                                F0.b bVar10 = (F0.b) obj;
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                str = bVar10.f3011b;
                                map = (Map) iVar.f27224H;
                                if (map.containsKey(str)) {
                                    Long l19 = (Long) map.get(str);
                                    String str14 = p117p0.M.f28050a;
                                    jMax = Math.max(jElapsedRealtime2, l19.longValue());
                                } else {
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i14 = bVar10.f3012c;
                                if (i14 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i14);
                                    map2 = (Map) iVar.f27225I;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l110 = (Long) map2.get(numValueOf);
                                        String str15 = p117p0.M.f28050a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l110.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                if (z11) {
                                    gVarC = S0.m.f6364K;
                                    if (z10) {
                                        fVar2 = fVar;
                                        if (t(size) == fVar2) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        H1.i(z8);
                                        if (arrayList.isEmpty()) {
                                            this.f5754Y = this.f5755Z;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                    }
                                } else {
                                    fVar2 = fVar;
                                    x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                }
                            }
                        }
                    }
                    fVar2 = fVar;
                } else {
                    bVar.getClass();
                    gVarV = U4.b.V(cVar2, w0Var);
                    if (gVarV != null) {
                        i13 = gVarV.f6351a;
                        if (cVar2.a(i13)) {
                            j10 = gVarV.f6352b;
                            if (i13 == 2) {
                                cVar3 = (R0.c) pVar.f2550j;
                                if (cVar3.i(cVar3.o(c3136t), j10)) {
                                    if (z11) {
                                        gVarC = S0.m.f6364K;
                                        if (z10) {
                                            fVar2 = fVar;
                                            if (t(size) == fVar2) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            H1.i(z8);
                                            if (arrayList.isEmpty()) {
                                                this.f5754Y = this.f5755Z;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                        x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                    }
                                }
                            } else if (i13 == 1) {
                                F0.b bVar11 = (F0.b) obj;
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                str = bVar11.f3011b;
                                map = (Map) iVar.f27224H;
                                if (map.containsKey(str)) {
                                    Long l111 = (Long) map.get(str);
                                    String str16 = p117p0.M.f28050a;
                                    jMax = Math.max(jElapsedRealtime2, l111.longValue());
                                } else {
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i14 = bVar11.f3012c;
                                if (i14 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i14);
                                    map2 = (Map) iVar.f27225I;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l112 = (Long) map2.get(numValueOf);
                                        String str17 = p117p0.M.f28050a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l112.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                if (z11) {
                                    gVarC = S0.m.f6364K;
                                    if (z10) {
                                        fVar2 = fVar;
                                        if (t(size) == fVar2) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        H1.i(z8);
                                        if (arrayList.isEmpty()) {
                                            this.f5754Y = this.f5755Z;
                                        }
                                    } else {
                                        fVar2 = fVar;
                                    }
                                } else {
                                    fVar2 = fVar;
                                    x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                }
                            }
                        }
                    }
                    fVar2 = fVar;
                }
                if (gVarC == null) {
                    bVar.getClass();
                    jZ = U4.b.Z(w0Var);
                    if (jZ != -9223372036854775807L) {
                        gVarC = S0.m.c(jZ, false);
                    } else {
                        gVarC = S0.m.f6365L;
                    }
                }
                S0.g gVar4 = gVarC;
                z9 = !gVar4.a();
                bVar2 = bVar;
                this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                if (z9) {
                    this.f5751V = null;
                    bVar2.getClass();
                    this.f5741L.r(this);
                }
                return gVar4;
            }
            if (!tVar3.f2577N) {
                if (!z12) {
                    z7 = pVar.f2551k.f3017d;
                    nVarArr = pVar.f2549i;
                    if (z7 || !(fVar3 instanceof p) || !(iOException instanceof A) || ((A) iOException).f29862J != 404) {
                        E0.n nVar5 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                        H h13 = ((F0.m) nVar5.f2537e).f3067b;
                        iVar = pVar.f2542b;
                        bVarQ = iVar.q(h13);
                        obj = nVar5.f2538f;
                        if (bVarQ != null || ((F0.b) obj).equals(bVarQ)) {
                            R0.t tVar6 = pVar.f2550j;
                            h8 = ((F0.m) nVar5.f2537e).f3067b;
                            bVar = bVar3;
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            cVar = (R0.c) tVar6;
                            length = cVar.f6127c.length;
                            arrayList = arrayList2;
                            i9 = 0;
                            while (i10 < length) {
                                if (cVar.p(i10, jElapsedRealtime)) {
                                    i9++;
                                }
                            }
                            hashSet = new HashSet();
                            while (i11 < h8.size()) {
                                hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                            }
                            int size6 = hashSet.size();
                            hashSet2 = new HashSet();
                            arrayListI = iVar.i(h8);
                            fVar = fVar3;
                            while (i12 < arrayListI.size()) {
                                hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                            }
                            cVar2 = new p072j0.c(size6, size6 - hashSet2.size(), length, i9);
                            if (cVar2.a(2) || cVar2.a(1)) {
                                bVar.getClass();
                                gVarV = U4.b.V(cVar2, w0Var);
                                if (gVarV != null) {
                                    i13 = gVarV.f6351a;
                                    if (cVar2.a(i13)) {
                                        j10 = gVarV.f6352b;
                                        if (i13 == 2) {
                                            cVar3 = (R0.c) pVar.f2550j;
                                            if (cVar3.i(cVar3.o(c3136t), j10)) {
                                            }
                                        } else if (i13 == 1) {
                                            F0.b bVar12 = (F0.b) obj;
                                            jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                            str = bVar12.f3011b;
                                            map = (Map) iVar.f27224H;
                                            if (map.containsKey(str)) {
                                                Long l113 = (Long) map.get(str);
                                                String str18 = p117p0.M.f28050a;
                                                jMax = Math.max(jElapsedRealtime2, l113.longValue());
                                            } else {
                                                jMax = jElapsedRealtime2;
                                            }
                                            map.put(str, Long.valueOf(jMax));
                                            i14 = bVar12.f3012c;
                                            if (i14 != Integer.MIN_VALUE) {
                                                numValueOf = Integer.valueOf(i14);
                                                map2 = (Map) iVar.f27225I;
                                                if (map2.containsKey(numValueOf)) {
                                                    Long l114 = (Long) map2.get(numValueOf);
                                                    String str19 = p117p0.M.f28050a;
                                                    jElapsedRealtime2 = Math.max(jElapsedRealtime2, l114.longValue());
                                                }
                                                map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                            }
                                        }
                                        if (gVarC == null) {
                                            bVar.getClass();
                                            jZ = U4.b.Z(w0Var);
                                            if (jZ != -9223372036854775807L) {
                                                gVarC = S0.m.c(jZ, false);
                                            } else {
                                                gVarC = S0.m.f6365L;
                                            }
                                        }
                                        S0.g gVar5 = gVarC;
                                        z9 = !gVar5.a();
                                        bVar2 = bVar;
                                        this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                                        if (z9) {
                                            this.f5751V = null;
                                            bVar2.getClass();
                                            this.f5741L.r(this);
                                        }
                                        return gVar5;
                                    }
                                }
                            }
                            fVar2 = fVar;
                        }
                        if (z11) {
                            gVarC = S0.m.f6364K;
                            if (z10) {
                                fVar2 = fVar;
                                if (t(size) == fVar2) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                H1.i(z8);
                                if (arrayList.isEmpty()) {
                                    this.f5754Y = this.f5755Z;
                                }
                            } else {
                                fVar2 = fVar;
                            }
                        } else {
                            fVar2 = fVar;
                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                        }
                        if (gVarC == null) {
                            bVar.getClass();
                            jZ = U4.b.Z(w0Var);
                            if (jZ != -9223372036854775807L) {
                                gVarC = S0.m.c(jZ, false);
                            } else {
                                gVarC = S0.m.f6365L;
                            }
                        }
                        S0.g gVar6 = gVarC;
                        z9 = !gVar6.a();
                        bVar2 = bVar;
                        this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                        if (z9) {
                            this.f5751V = null;
                            bVar2.getClass();
                            this.f5741L.r(this);
                        }
                        return gVar6;
                    }
                    E0.n nVar6 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                    long jD = nVar6.d();
                    if (jD == -1 || jD == 0) {
                        E0.n nVar7 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                        H h14 = ((F0.m) nVar7.f2537e).f3067b;
                        iVar = pVar.f2542b;
                        bVarQ = iVar.q(h14);
                        obj = nVar7.f2538f;
                        if (bVarQ != null) {
                        }
                        R0.t tVar7 = pVar.f2550j;
                        h8 = ((F0.m) nVar7.f2537e).f3067b;
                        bVar = bVar3;
                        jElapsedRealtime = SystemClock.elapsedRealtime();
                        cVar = (R0.c) tVar7;
                        length = cVar.f6127c.length;
                        arrayList = arrayList2;
                        i9 = 0;
                        while (i10 < length) {
                            if (cVar.p(i10, jElapsedRealtime)) {
                                i9++;
                            }
                        }
                        hashSet = new HashSet();
                        while (i11 < h8.size()) {
                            hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                        }
                        int size7 = hashSet.size();
                        hashSet2 = new HashSet();
                        arrayListI = iVar.i(h8);
                        fVar = fVar3;
                        while (i12 < arrayListI.size()) {
                            hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                        }
                        cVar2 = new p072j0.c(size7, size7 - hashSet2.size(), length, i9);
                        if (cVar2.a(2)) {
                            bVar.getClass();
                            gVarV = U4.b.V(cVar2, w0Var);
                            if (gVarV != null) {
                                i13 = gVarV.f6351a;
                                if (cVar2.a(i13)) {
                                    j10 = gVarV.f6352b;
                                    if (i13 == 2) {
                                        cVar3 = (R0.c) pVar.f2550j;
                                        if (cVar3.i(cVar3.o(c3136t), j10)) {
                                            if (z11) {
                                                gVarC = S0.m.f6364K;
                                                if (z10) {
                                                    fVar2 = fVar;
                                                    if (t(size) == fVar2) {
                                                        z8 = true;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                    H1.i(z8);
                                                    if (arrayList.isEmpty()) {
                                                        this.f5754Y = this.f5755Z;
                                                    }
                                                } else {
                                                    fVar2 = fVar;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                                x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                            }
                                        }
                                    } else if (i13 == 1) {
                                        F0.b bVar13 = (F0.b) obj;
                                        jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                        str = bVar13.f3011b;
                                        map = (Map) iVar.f27224H;
                                        if (map.containsKey(str)) {
                                            Long l115 = (Long) map.get(str);
                                            String str110 = p117p0.M.f28050a;
                                            jMax = Math.max(jElapsedRealtime2, l115.longValue());
                                        } else {
                                            jMax = jElapsedRealtime2;
                                        }
                                        map.put(str, Long.valueOf(jMax));
                                        i14 = bVar13.f3012c;
                                        if (i14 != Integer.MIN_VALUE) {
                                            numValueOf = Integer.valueOf(i14);
                                            map2 = (Map) iVar.f27225I;
                                            if (map2.containsKey(numValueOf)) {
                                                Long l116 = (Long) map2.get(numValueOf);
                                                String str111 = p117p0.M.f28050a;
                                                jElapsedRealtime2 = Math.max(jElapsedRealtime2, l116.longValue());
                                            }
                                            map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                        }
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                }
                            }
                            fVar2 = fVar;
                        } else {
                            bVar.getClass();
                            gVarV = U4.b.V(cVar2, w0Var);
                            if (gVarV != null) {
                                i13 = gVarV.f6351a;
                                if (cVar2.a(i13)) {
                                    j10 = gVarV.f6352b;
                                    if (i13 == 2) {
                                        cVar3 = (R0.c) pVar.f2550j;
                                        if (cVar3.i(cVar3.o(c3136t), j10)) {
                                            if (z11) {
                                                gVarC = S0.m.f6364K;
                                                if (z10) {
                                                    fVar2 = fVar;
                                                    if (t(size) == fVar2) {
                                                        z8 = true;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                    H1.i(z8);
                                                    if (arrayList.isEmpty()) {
                                                        this.f5754Y = this.f5755Z;
                                                    }
                                                } else {
                                                    fVar2 = fVar;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                                x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                            }
                                        }
                                    } else if (i13 == 1) {
                                        F0.b bVar14 = (F0.b) obj;
                                        jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                        str = bVar14.f3011b;
                                        map = (Map) iVar.f27224H;
                                        if (map.containsKey(str)) {
                                            Long l117 = (Long) map.get(str);
                                            String str112 = p117p0.M.f28050a;
                                            jMax = Math.max(jElapsedRealtime2, l117.longValue());
                                        } else {
                                            jMax = jElapsedRealtime2;
                                        }
                                        map.put(str, Long.valueOf(jMax));
                                        i14 = bVar14.f3012c;
                                        if (i14 != Integer.MIN_VALUE) {
                                            numValueOf = Integer.valueOf(i14);
                                            map2 = (Map) iVar.f27225I;
                                            if (map2.containsKey(numValueOf)) {
                                                Long l118 = (Long) map2.get(numValueOf);
                                                String str113 = p117p0.M.f28050a;
                                                jElapsedRealtime2 = Math.max(jElapsedRealtime2, l118.longValue());
                                            }
                                            map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                        }
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                }
                            }
                            fVar2 = fVar;
                        }
                        if (gVarC == null) {
                            bVar.getClass();
                            jZ = U4.b.Z(w0Var);
                            if (jZ != -9223372036854775807L) {
                                gVarC = S0.m.c(jZ, false);
                            } else {
                                gVarC = S0.m.f6365L;
                            }
                        }
                        S0.g gVar7 = gVarC;
                        z9 = !gVar7.a();
                        bVar2 = bVar;
                        this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                        if (z9) {
                            this.f5751V = null;
                            bVar2.getClass();
                            this.f5741L.r(this);
                        }
                        return gVar7;
                    }
                    E0.k kVar = (E0.k) nVar6.f2539g;
                    H1.j(kVar);
                    if (((p) fVar3).a() <= ((kVar.h() + nVar6.f2535c) + jD) - 1) {
                        E0.n nVar8 = nVarArr[((R0.c) pVar.f2550j).o(c3136t)];
                        H h15 = ((F0.m) nVar8.f2537e).f3067b;
                        iVar = pVar.f2542b;
                        bVarQ = iVar.q(h15);
                        obj = nVar8.f2538f;
                        if (bVarQ != null) {
                        }
                        R0.t tVar8 = pVar.f2550j;
                        h8 = ((F0.m) nVar8.f2537e).f3067b;
                        bVar = bVar3;
                        jElapsedRealtime = SystemClock.elapsedRealtime();
                        cVar = (R0.c) tVar8;
                        length = cVar.f6127c.length;
                        arrayList = arrayList2;
                        i9 = 0;
                        while (i10 < length) {
                            if (cVar.p(i10, jElapsedRealtime)) {
                                i9++;
                            }
                        }
                        hashSet = new HashSet();
                        while (i11 < h8.size()) {
                            hashSet.add(Integer.valueOf(((F0.b) h8.get(i11)).f3012c));
                        }
                        int size8 = hashSet.size();
                        hashSet2 = new HashSet();
                        arrayListI = iVar.i(h8);
                        fVar = fVar3;
                        while (i12 < arrayListI.size()) {
                            hashSet2.add(Integer.valueOf(((F0.b) arrayListI.get(i12)).f3012c));
                        }
                        cVar2 = new p072j0.c(size8, size8 - hashSet2.size(), length, i9);
                        if (cVar2.a(2)) {
                            bVar.getClass();
                            gVarV = U4.b.V(cVar2, w0Var);
                            if (gVarV != null) {
                                i13 = gVarV.f6351a;
                                if (cVar2.a(i13)) {
                                    j10 = gVarV.f6352b;
                                    if (i13 == 2) {
                                        cVar3 = (R0.c) pVar.f2550j;
                                        if (cVar3.i(cVar3.o(c3136t), j10)) {
                                            if (z11) {
                                                gVarC = S0.m.f6364K;
                                                if (z10) {
                                                    fVar2 = fVar;
                                                    if (t(size) == fVar2) {
                                                        z8 = true;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                    H1.i(z8);
                                                    if (arrayList.isEmpty()) {
                                                        this.f5754Y = this.f5755Z;
                                                    }
                                                } else {
                                                    fVar2 = fVar;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                                x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                            }
                                        }
                                    } else if (i13 == 1) {
                                        F0.b bVar15 = (F0.b) obj;
                                        jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                        str = bVar15.f3011b;
                                        map = (Map) iVar.f27224H;
                                        if (map.containsKey(str)) {
                                            Long l119 = (Long) map.get(str);
                                            String str114 = p117p0.M.f28050a;
                                            jMax = Math.max(jElapsedRealtime2, l119.longValue());
                                        } else {
                                            jMax = jElapsedRealtime2;
                                        }
                                        map.put(str, Long.valueOf(jMax));
                                        i14 = bVar15.f3012c;
                                        if (i14 != Integer.MIN_VALUE) {
                                            numValueOf = Integer.valueOf(i14);
                                            map2 = (Map) iVar.f27225I;
                                            if (map2.containsKey(numValueOf)) {
                                                Long l1110 = (Long) map2.get(numValueOf);
                                                String str115 = p117p0.M.f28050a;
                                                jElapsedRealtime2 = Math.max(jElapsedRealtime2, l1110.longValue());
                                            }
                                            map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                        }
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                }
                            }
                            fVar2 = fVar;
                        } else {
                            bVar.getClass();
                            gVarV = U4.b.V(cVar2, w0Var);
                            if (gVarV != null) {
                                i13 = gVarV.f6351a;
                                if (cVar2.a(i13)) {
                                    j10 = gVarV.f6352b;
                                    if (i13 == 2) {
                                        cVar3 = (R0.c) pVar.f2550j;
                                        if (cVar3.i(cVar3.o(c3136t), j10)) {
                                            if (z11) {
                                                gVarC = S0.m.f6364K;
                                                if (z10) {
                                                    fVar2 = fVar;
                                                    if (t(size) == fVar2) {
                                                        z8 = true;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                    H1.i(z8);
                                                    if (arrayList.isEmpty()) {
                                                        this.f5754Y = this.f5755Z;
                                                    }
                                                } else {
                                                    fVar2 = fVar;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                                x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                            }
                                        }
                                    } else if (i13 == 1) {
                                        F0.b bVar16 = (F0.b) obj;
                                        jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                        str = bVar16.f3011b;
                                        map = (Map) iVar.f27224H;
                                        if (map.containsKey(str)) {
                                            Long l1111 = (Long) map.get(str);
                                            String str116 = p117p0.M.f28050a;
                                            jMax = Math.max(jElapsedRealtime2, l1111.longValue());
                                        } else {
                                            jMax = jElapsedRealtime2;
                                        }
                                        map.put(str, Long.valueOf(jMax));
                                        i14 = bVar16.f3012c;
                                        if (i14 != Integer.MIN_VALUE) {
                                            numValueOf = Integer.valueOf(i14);
                                            map2 = (Map) iVar.f27225I;
                                            if (map2.containsKey(numValueOf)) {
                                                Long l1112 = (Long) map2.get(numValueOf);
                                                String str117 = p117p0.M.f28050a;
                                                jElapsedRealtime2 = Math.max(jElapsedRealtime2, l1112.longValue());
                                            }
                                            map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                        }
                                        if (z11) {
                                            gVarC = S0.m.f6364K;
                                            if (z10) {
                                                fVar2 = fVar;
                                                if (t(size) == fVar2) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                H1.i(z8);
                                                if (arrayList.isEmpty()) {
                                                    this.f5754Y = this.f5755Z;
                                                }
                                            } else {
                                                fVar2 = fVar;
                                            }
                                        } else {
                                            fVar2 = fVar;
                                            x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                                        }
                                    }
                                }
                            }
                            fVar2 = fVar;
                        }
                        if (gVarC == null) {
                            bVar.getClass();
                            jZ = U4.b.Z(w0Var);
                            if (jZ != -9223372036854775807L) {
                                gVarC = S0.m.c(jZ, false);
                            } else {
                                gVarC = S0.m.f6365L;
                            }
                        }
                        S0.g gVar8 = gVarC;
                        z9 = !gVar8.a();
                        bVar2 = bVar;
                        this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
                        if (z9) {
                            this.f5751V = null;
                            bVar2.getClass();
                            this.f5741L.r(this);
                        }
                        return gVar8;
                    }
                    pVar.f2554n = true;
                } else if (tVar3.f2576M) {
                    tVar3.f2577N = true;
                    tVar3.f2576M = false;
                    E0.j jVar2 = tVar3.f2571H.f2479G;
                    jVar2.f2496D.removeCallbacks(jVar2.f2524w);
                    jVar2.z();
                }
            }
            bVar = bVar3;
            fVar = fVar3;
            arrayList = arrayList2;
            if (z11) {
                gVarC = S0.m.f6364K;
                if (z10) {
                    fVar2 = fVar;
                    if (t(size) == fVar2) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    H1.i(z8);
                    if (arrayList.isEmpty()) {
                        this.f5754Y = this.f5755Z;
                    }
                } else {
                    fVar2 = fVar;
                }
            } else {
                fVar2 = fVar;
                x.f("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            }
            if (gVarC == null) {
                bVar.getClass();
                jZ = U4.b.Z(w0Var);
                if (jZ != -9223372036854775807L) {
                    gVarC = S0.m.c(jZ, false);
                } else {
                    gVarC = S0.m.f6365L;
                }
            }
            S0.g gVar9 = gVarC;
            z9 = !gVar9.a();
            bVar2 = bVar;
            this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
            if (z9) {
                this.f5751V = null;
                bVar2.getClass();
                this.f5741L.r(this);
            }
            return gVar9;
        }
        pVar.getClass();
        bVar = bVar3;
        fVar2 = fVar3;
        gVarC = null;
        if (gVarC == null) {
            bVar.getClass();
            jZ = U4.b.Z(w0Var);
            if (jZ != -9223372036854775807L) {
                gVarC = S0.m.c(jZ, false);
            } else {
                gVarC = S0.m.f6365L;
            }
        }
        S0.g gVar10 = gVarC;
        z9 = !gVar10.a();
        bVar2 = bVar;
        this.f5742M.e(c0292p, fVar2.f5722I, this.f5736G, fVar2.f5723J, fVar2.f5724K, fVar2.f5725L, fVar2.f5726M, fVar2.f5727N, iOException, z9);
        if (z9) {
            this.f5751V = null;
            bVar2.getClass();
            this.f5741L.r(this);
        }
        return gVar10;
    }

    @Override // S0.h
    public final void o(S0.j jVar, long j8, long j9) {
        f fVar = (f) jVar;
        this.f5751V = null;
        E0.p pVar = (E0.p) this.f5740K;
        pVar.getClass();
        if (fVar instanceof o) {
            int iO = ((R0.c) pVar.f2550j).o(((o) fVar).f5723J);
            E0.n[] nVarArr = pVar.f2549i;
            E0.n nVar = nVarArr[iO];
            if (((E0.k) nVar.f2539g) == null) {
                i iVar = (i) nVar.f2536d;
                H1.j(iVar);
                F f8 = ((e) iVar).f5718N;
                C0379l c0379l = f8 instanceof C0379l ? (C0379l) f8 : null;
                if (c0379l != null) {
                    F0.m mVar = (F0.m) nVar.f2537e;
                    nVarArr[iO] = new E0.n(nVar.f2534b, mVar, (F0.b) nVar.f2538f, iVar, nVar.f2535c, new E0.l(c0379l, mVar.f3068c));
                }
            }
        }
        s sVar = pVar.f2548h;
        if (sVar != null) {
            long j10 = sVar.f2568d;
            if (j10 == -9223372036854775807L || fVar.f5727N > j10) {
                sVar.f2568d = fVar.f5727N;
            }
            sVar.f2569e.f2576M = true;
        }
        long j11 = fVar.f5720G;
        M m7 = fVar.f5728O;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f5743N.getClass();
        this.f5742M.d(c0292p, fVar.f5722I, this.f5736G, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N);
        this.f5741L.r(this);
    }

    @Override // S0.h
    public final void p(S0.j jVar, long j8, long j9, int i8) {
        C0292p c0292p;
        f fVar = (f) jVar;
        if (i8 == 0) {
            c0292p = new C0292p(fVar.f5720G, fVar.f5721H, j8);
        } else {
            long j10 = fVar.f5720G;
            M m7 = fVar.f5728O;
            Uri uri = m7.f29910c;
            c0292p = new C0292p(m7.f29911d, j9);
        }
        this.f5742M.g(c0292p, fVar.f5722I, this.f5736G, fVar.f5723J, fVar.f5724K, fVar.f5725L, fVar.f5726M, fVar.f5727N, i8);
    }

    @Override // O0.U
    public final int r(Z z7, p171w0.g gVar, int i8) {
        if (A()) {
            return -3;
        }
        T t7 = this.f5748S;
        B();
        return t7.D(z7, gVar, i8, this.f5759d0);
    }

    public final a t(int i8) {
        ArrayList arrayList = this.f5746Q;
        a aVar = (a) arrayList.get(i8);
        p117p0.M.W(i8, arrayList.size(), arrayList);
        this.f5756a0 = Math.max(this.f5756a0, arrayList.size());
        int i9 = 0;
        this.f5748S.n(aVar.c(0));
        while (true) {
            T[] tArr = this.f5749T;
            if (i9 >= tArr.length) {
                return aVar;
            }
            T t7 = tArr[i9];
            i9++;
            t7.n(aVar.c(i9));
        }
    }

    @Override // O0.W
    public final long u() {
        if (this.f5759d0) {
            return Long.MIN_VALUE;
        }
        if (A()) {
            return this.f5754Y;
        }
        long jMax = this.f5755Z;
        a aVarY = y();
        if (!aVarY.b()) {
            ArrayList arrayList = this.f5746Q;
            aVarY = arrayList.size() > 1 ? (a) U2.g(arrayList, 2) : null;
        }
        if (aVarY != null) {
            jMax = Math.max(jMax, aVarY.f5727N);
        }
        return Math.max(jMax, this.f5748S.q());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    @Override // O0.W
    public final void w(long j8) {
        int size;
        S0.m mVar = this.f5744O;
        if (mVar.d() || A()) {
            return;
        }
        boolean zE = mVar.e();
        ArrayList arrayList = this.f5746Q;
        E0.b bVar = this.f5740K;
        if (zE) {
            f fVar = this.f5751V;
            fVar.getClass();
            if ((fVar instanceof a) && z(arrayList.size() - 1)) {
                return;
            }
            E0.p pVar = (E0.p) bVar;
            if (pVar.f2553m != null) {
                return;
            }
            pVar.f2550j.getClass();
            return;
        }
        E0.p pVar2 = (E0.p) bVar;
        C0278b c0278b = pVar2.f2553m;
        List list = this.f5747R;
        if (c0278b == null) {
            R0.t tVar = pVar2.f2550j;
            if (((R0.c) tVar).f6127c.length < 2) {
                size = list.size();
            } else {
                size = tVar.d(j8, list);
            }
        } else {
            size = list.size();
        }
        if (size < arrayList.size()) {
            H1.i(!mVar.e());
            int size2 = arrayList.size();
            while (true) {
                if (size >= size2) {
                    size = -1;
                    break;
                } else if (!z(size)) {
                    break;
                } else {
                    size++;
                }
            }
            if (size == -1) {
                return;
            }
            long j9 = y().f5727N;
            a aVarT = t(size);
            if (arrayList.isEmpty()) {
                this.f5754Y = this.f5755Z;
            }
            this.f5759d0 = false;
            this.f5742M.h(this.f5736G, aVarT.f5726M, j9);
        }
    }

    public final E0.b x() {
        return this.f5740K;
    }

    public final a y() {
        return (a) U2.g(this.f5746Q, 1);
    }

    public final boolean z(int i8) {
        int iT;
        a aVar = (a) this.f5746Q.get(i8);
        if (this.f5748S.t() > aVar.c(0)) {
            return true;
        }
        int i9 = 0;
        do {
            T[] tArr = this.f5749T;
            if (i9 >= tArr.length) {
                return false;
            }
            iT = tArr[i9].t();
            i9++;
        } while (iT <= aVar.c(i9));
        return true;
    }
}
