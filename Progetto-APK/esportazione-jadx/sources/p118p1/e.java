package p118p1;

import U4.b;
import W0.F;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.List;
import p094m0.C3136t;
import p094m0.P;
import p096m2.c;
import p117p0.E;
import p117p0.M;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class e implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u f28153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j f28154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f28155c;

    public final boolean a(t tVar) {
        g gVar = new g();
        if (gVar.a(tVar, true) && (gVar.f28161a & 2) == 2) {
            int iMin = Math.min(gVar.f28165e, 8);
            E e8 = new E(iMin);
            tVar.c(0, e8.f28035a, iMin);
            e8.L(0);
            if (e8.a() >= 5 && e8.z() == 127 && e8.B() == 1179402563) {
                this.f28154b = new d(0);
            } else {
                e8.L(0);
                try {
                    if (H1.A(1, e8, true)) {
                        this.f28154b = new l(0);
                    } else {
                        e8.L(0);
                        if (i.i(e8, i.f28168o)) {
                            this.f28154b = new i(0);
                        }
                    }
                } catch (P unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f28153a = uVar;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        try {
            return a(tVar);
        } catch (P unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        int i8;
        byte[] bArr;
        H1.j(this.f28153a);
        if (this.f28154b == null) {
            if (!a(tVar)) {
                throw P.a("Failed to determine bitstream type", null);
            }
            tVar.m();
        }
        if (!this.f28155c) {
            L lT = this.f28153a.t(0, 1);
            this.f28153a.j();
            j jVar = this.f28154b;
            jVar.f28181k = this.f28153a;
            jVar.f28180j = lT;
            jVar.d(true);
            this.f28155c = true;
        }
        j jVar2 = this.f28154b;
        H1.j((L) jVar2.f28180j);
        String str = M.f28050a;
        int i9 = jVar2.f28174d;
        f fVar = jVar2.f28179i;
        if (i9 == 0) {
            while (fVar.b(tVar)) {
                long jR = tVar.r();
                long j8 = jVar2.f28172b;
                jVar2.f28176f = jR - j8;
                E e8 = (E) fVar.f28160e;
                if (!jVar2.c(e8, j8, (c) jVar2.f28183m)) {
                    C3136t c3136t = (C3136t) ((c) jVar2.f28183m).f27210H;
                    jVar2.f28175e = c3136t.f27017H;
                    if (!jVar2.f28178h) {
                        ((L) jVar2.f28180j).b(c3136t);
                        jVar2.f28178h = true;
                    }
                    h hVar = (h) ((c) jVar2.f28183m).f27211I;
                    if (hVar == null) {
                        if (tVar.j() == -1) {
                            jVar2.f28182l = new b();
                        } else {
                            g gVar = (g) fVar.f28159d;
                            i8 = 2;
                            jVar2.f28182l = new b(jVar2, jVar2.f28172b, tVar.j(), gVar.f28164d + gVar.f28165e, gVar.f28162b, (gVar.f28161a & 4) != 0);
                        }
                        jVar2.f28174d = i8;
                        bArr = e8.f28035a;
                        if (bArr.length == 65025) {
                            return 0;
                        }
                        e8.J(e8.f28037c, Arrays.copyOf(bArr, Math.max(65025, e8.f28037c)));
                        return 0;
                    }
                    jVar2.f28182l = hVar;
                    i8 = 2;
                    jVar2.f28174d = i8;
                    bArr = e8.f28035a;
                    if (bArr.length == 65025) {
                        return 0;
                    }
                    e8.J(e8.f28037c, Arrays.copyOf(bArr, Math.max(65025, e8.f28037c)));
                    return 0;
                }
                jVar2.f28172b = tVar.r();
            }
            jVar2.f28174d = 3;
        } else {
            if (i9 == 1) {
                tVar.n((int) jVar2.f28172b);
                jVar2.f28174d = 2;
                return 0;
            }
            if (i9 == 2) {
                long J7 = ((h) jVar2.f28182l).J(tVar);
                if (J7 >= 0) {
                    wVar.f7458a = J7;
                    return 1;
                }
                if (J7 < -1) {
                    jVar2.a(-(J7 + 2));
                }
                if (!jVar2.f28177g) {
                    F fW = ((h) jVar2.f28182l).w();
                    H1.j(fW);
                    ((u) jVar2.f28181k).r(fW);
                    L l4 = (L) jVar2.f28180j;
                    fW.m();
                    l4.getClass();
                    jVar2.f28177g = true;
                }
                if (jVar2.f28176f > 0 || fVar.b(tVar)) {
                    jVar2.f28176f = 0L;
                    E e9 = (E) fVar.f28160e;
                    long jB = jVar2.b(e9);
                    if (jB >= 0) {
                        long j9 = jVar2.f28173c;
                        if (j9 + jB >= jVar2.f28171a) {
                            long j10 = (j9 * 1000000) / ((long) jVar2.f28175e);
                            ((L) jVar2.f28180j).e(e9.f28037c, e9);
                            ((L) jVar2.f28180j).d(j10, 1, e9.f28037c, 0, null);
                            jVar2.f28171a = -1L;
                        }
                    }
                    jVar2.f28173c += jB;
                    return 0;
                }
                jVar2.f28174d = 3;
            } else if (i9 != 3) {
                throw new IllegalStateException();
            }
        }
        return -1;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        j jVar = this.f28154b;
        if (jVar != null) {
            f fVar = jVar.f28179i;
            g gVar = (g) fVar.f28159d;
            gVar.f28161a = 0;
            gVar.f28162b = 0L;
            gVar.f28163c = 0;
            gVar.f28164d = 0;
            gVar.f28165e = 0;
            ((E) fVar.f28160e).I(0);
            fVar.f28156a = -1;
            fVar.f28158c = false;
            if (j8 == 0) {
                jVar.d(!jVar.f28177g);
                return;
            }
            if (jVar.f28174d != 0) {
                long j10 = (((long) jVar.f28175e) * j9) / 1000000;
                jVar.f28171a = j10;
                h hVar = (h) jVar.f28182l;
                String str = M.f28050a;
                hVar.L(j10);
                jVar.f28174d = 2;
            }
        }
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = H.f31804H;
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
