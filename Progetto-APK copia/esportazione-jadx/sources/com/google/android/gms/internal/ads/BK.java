package com.google.android.gms.internal.ads;

import B0.C0042c0;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class BK implements Handler.Callback, InterfaceC2086uN, InterfaceC2243xO, PK, InterfaceC1410hK, SK {

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final long f12318x0 = Et.w(10000);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC1048aK[] f12319G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Set f12320H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC1048aK[] f12321I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AbstractC2191wO f12322J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C2295yO f12323K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final DK f12324L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final BO f12325M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C2054ts f12326N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final HandlerThread f12327O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Looper f12328P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final C2196we f12329Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final C1521je f12330R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final long f12331S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final C1462iK f12332T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final ArrayList f12333U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final InterfaceC1840pl f12334V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final IK f12335W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final QK f12336X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final long f12337Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final C2344zL f12338Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public ZK f12339a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public RK f12340b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public B0.U f12341c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f12342d0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f12344f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f12345g0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f12347i0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f12350l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f12351m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public AK f12352n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public long f12353o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public long f12354p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f12355q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f12356r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public C1512jK f12357s0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public C1720nK f12359u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final C1876qK f12360v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final C1254eK f12361w0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f12348j0 = 0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f12349k0 = false;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f12343e0 = false;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public long f12358t0 = -9223372036854775807L;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public long f12346h0 = -9223372036854775807L;

    public BK(AbstractC1048aK[] abstractC1048aKArr, AbstractC2191wO abstractC2191wO, C2295yO c2295yO, DK dk, BO bo, InterfaceC1152cL interfaceC1152cL, ZK zk, C1254eK c1254eK, long j8, Looper looper, InterfaceC1840pl interfaceC1840pl, C1876qK c1876qK, C2344zL c2344zL, C1720nK c1720nK) {
        this.f12360v0 = c1876qK;
        this.f12319G = abstractC1048aKArr;
        this.f12322J = abstractC2191wO;
        this.f12323K = c2295yO;
        this.f12324L = dk;
        this.f12325M = bo;
        this.f12339a0 = zk;
        this.f12361w0 = c1254eK;
        this.f12337Y = j8;
        this.f12334V = interfaceC1840pl;
        this.f12338Z = c2344zL;
        this.f12359u0 = c1720nK;
        this.f12331S = dk.zzb();
        C0904Rd c0904Rd = AbstractC0774Ie.f13891a;
        RK rkG = RK.g(c2295yO);
        this.f12340b0 = rkG;
        this.f12341c0 = new B0.U(rkG, 2);
        int length = abstractC1048aKArr.length;
        this.f12321I = new AbstractC1048aK[2];
        C1983sO c1983sO = (C1983sO) abstractC2191wO;
        c1983sO.getClass();
        for (int i8 = 0; i8 < 2; i8++) {
            AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i8];
            abstractC1048aK.f17870e = i8;
            abstractC1048aK.f17871f = c2344zL;
            abstractC1048aK.f17872g = interfaceC1840pl;
            this.f12321I[i8] = abstractC1048aK;
            synchronized (abstractC1048aK.f17866a) {
                abstractC1048aK.f17882q = c1983sO;
            }
        }
        this.f12332T = new C1462iK(this);
        this.f12333U = new ArrayList();
        this.f12320H = Collections.newSetFromMap(new IdentityHashMap());
        this.f12329Q = new C2196we();
        this.f12330R = new C1521je();
        abstractC2191wO.f21695a = this;
        abstractC2191wO.f21696b = bo;
        this.f12356r0 = true;
        Nr nr = (Nr) interfaceC1840pl;
        C2054ts c2054tsA = nr.a(looper, null);
        this.f12335W = new IK(interfaceC1152cL, c2054tsA, new Xu(this, 26), c1720nK);
        this.f12336X = new QK(this, interfaceC1152cL, c2054tsA, c2344zL);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f12327O = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f12328P = looper2;
        this.f12326N = nr.a(looper2, this);
    }

    public static boolean C(AbstractC1048aK abstractC1048aK) {
        return abstractC1048aK.f17873h != 0;
    }

    public static final void G(UK uk) {
        synchronized (uk) {
        }
        try {
            uk.f16825a.b(uk.f16827c, uk.f16828d);
        } finally {
            uk.b(true);
        }
    }

    public static int H(C2196we c2196we, C1521je c1521je, int i8, boolean z7, Object obj, AbstractC0774Ie abstractC0774Ie, AbstractC0774Ie abstractC0774Ie2) {
        Object obj2 = abstractC0774Ie.e(abstractC0774Ie.n(obj, c1521je).f19467c, c2196we, 0L).f21708a;
        for (int i9 = 0; i9 < abstractC0774Ie2.c(); i9++) {
            if (abstractC0774Ie2.e(i9, c2196we, 0L).f21708a.equals(obj2)) {
                return i9;
            }
        }
        int iA = abstractC0774Ie.a(obj);
        int iB = abstractC0774Ie.b();
        int i10 = iA;
        int iA2 = -1;
        for (int i11 = 0; i11 < iB && iA2 == -1; i11++) {
            i10 = abstractC0774Ie.i(i10, c1521je, c2196we, i8, z7);
            if (i10 == -1) {
                iA2 = -1;
                break;
            }
            iA2 = abstractC0774Ie2.a(abstractC0774Ie.f(i10));
        }
        if (iA2 == -1) {
            return -1;
        }
        return abstractC0774Ie2.d(iA2, c1521je, false).f19467c;
    }

    public static Pair M(AbstractC0774Ie abstractC0774Ie, AK ak, int i8, boolean z7, C2196we c2196we, C1521je c1521je) {
        AbstractC0774Ie abstractC0774Ie2 = ak.f12000a;
        if (abstractC0774Ie.o()) {
            return null;
        }
        AbstractC0774Ie abstractC0774Ie3 = true == abstractC0774Ie2.o() ? abstractC0774Ie : abstractC0774Ie2;
        try {
            Pair pairL = abstractC0774Ie3.l(c2196we, c1521je, ak.f12001b, ak.f12002c);
            if (abstractC0774Ie.equals(abstractC0774Ie3)) {
                return pairL;
            }
            if (abstractC0774Ie.a(pairL.first) != -1) {
                return (abstractC0774Ie3.n(pairL.first, c1521je).f19469e && abstractC0774Ie3.e(c1521je.f19467c, c2196we, 0L).f21718k == abstractC0774Ie3.a(pairL.first)) ? abstractC0774Ie.l(c2196we, c1521je, abstractC0774Ie.n(pairL.first, c1521je).f19467c, ak.f12002c) : pairL;
            }
            int iH = H(c2196we, c1521je, i8, z7, pairL.first, abstractC0774Ie3, abstractC0774Ie);
            if (iH != -1) {
                return abstractC0774Ie.l(c2196we, c1521je, iH, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public final synchronized void A(C2239xK c2239xK, long j8) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j8;
        boolean z7 = false;
        while (!c2239xK.f21877G.f12342d0 && j8 > 0) {
            try {
                wait(j8);
            } catch (InterruptedException unused) {
                z7 = true;
            }
            j8 = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
    }

    public final boolean B() {
        GK gk = this.f12335W.f13872j;
        if (gk == null) {
            return false;
        }
        return (!gk.f13500d ? 0L : gk.f13497a.zzc()) != Long.MIN_VALUE;
    }

    public final boolean D() {
        GK gk = this.f12335W.f13870h;
        long j8 = gk.f13502f.f13746e;
        if (gk.f13500d) {
            return j8 == -9223372036854775807L || this.f12340b0.f16256r < j8 || !E();
        }
        return false;
    }

    public final boolean E() {
        RK rk = this.f12340b0;
        return rk.f16250l && rk.f16252n == 0;
    }

    public final boolean F(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN) {
        if (!c2190wN.b() && !abstractC0774Ie.o()) {
            int i8 = abstractC0774Ie.n(c2190wN.f21690a, this.f12330R).f19467c;
            C2196we c2196we = this.f12329Q;
            abstractC0774Ie.e(i8, c2196we, 0L);
            if (c2196we.b() && c2196we.f21714g && c2196we.f21711d != -9223372036854775807L) {
                return true;
            }
        }
        return false;
    }

    public final synchronized boolean I() {
        if (!this.f12342d0 && this.f12328P.getThread().isAlive()) {
            this.f12326N.c(7);
            A(new C2239xK(this), this.f12337Y);
            return this.f12342d0;
        }
        return true;
    }

    public final long J(AbstractC0774Ie abstractC0774Ie, Object obj, long j8) {
        int i8 = abstractC0774Ie.n(obj, this.f12330R).f19467c;
        C2196we c2196we = this.f12329Q;
        abstractC0774Ie.e(i8, c2196we, 0L);
        if (c2196we.f21711d == -9223372036854775807L || !c2196we.b() || !c2196we.f21714g) {
            return -9223372036854775807L;
        }
        long j9 = c2196we.f21712e;
        return Et.t((j9 == -9223372036854775807L ? System.currentTimeMillis() : j9 + SystemClock.elapsedRealtime()) - c2196we.f21711d) - j8;
    }

    public final long K(C2190wN c2190wN, long j8, boolean z7, boolean z8) throws C1512jK {
        BK bk;
        long j9 = j8;
        v();
        z(false, true);
        if (z8 || this.f12340b0.f16243e == 3) {
            s(2);
        }
        IK ik = this.f12335W;
        GK gk = ik.f13870h;
        GK gk2 = gk;
        while (gk2 != null && !c2190wN.equals(gk2.f13502f.f13742a)) {
            gk2 = gk2.f13508l;
        }
        if (z7 || gk != gk2 || (gk2 != null && gk2.f13511o + j9 < 0)) {
            AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
            int length = abstractC1048aKArr.length;
            for (int i8 = 0; i8 < 2; i8++) {
                O(abstractC1048aKArr[i8]);
            }
            if (gk2 != null) {
                while (ik.f13870h != gk2) {
                    ik.g();
                }
                ik.r(gk2);
                gk2.f13511o = 1000000000000L;
                a();
            }
        }
        if (gk2 != null) {
            ik.r(gk2);
            if (gk2.f13500d) {
                GK gk3 = gk2;
                if (gk3.f13501e) {
                    InterfaceC2138vN interfaceC2138vN = gk3.f13497a;
                    long jA = interfaceC2138vN.a(j9);
                    bk = this;
                    interfaceC2138vN.e(jA - bk.f12331S);
                    j9 = jA;
                }
                bk.n(j9);
                i();
            } else {
                HK hk = gk2.f13502f;
                if (j9 != hk.f13743b) {
                    hk = new HK(hk.f13742a, j8, hk.f13744c, hk.f13745d, hk.f13746e, hk.f13747f, hk.f13748g, hk.f13749h);
                }
                gk2.f13502f = hk;
            }
            bk = this;
            bk.n(j9);
            i();
        } else {
            bk = this;
            ik.o();
            bk.n(j9);
        }
        bk.e(false);
        bk.f12326N.c(2);
        return j9;
    }

    public final Pair L(AbstractC0774Ie abstractC0774Ie) {
        int i8;
        long j8 = 0;
        if (abstractC0774Ie.o()) {
            return Pair.create(RK.f16238t, 0L);
        }
        Pair pairL = abstractC0774Ie.l(this.f12329Q, this.f12330R, abstractC0774Ie.g(this.f12349k0), -9223372036854775807L);
        C2190wN c2190wNN = this.f12335W.n(abstractC0774Ie, pairL.first, 0L);
        long jLongValue = ((Long) pairL.second).longValue();
        if (c2190wNN.b()) {
            Object obj = c2190wNN.f21690a;
            C1521je c1521je = this.f12330R;
            abstractC0774Ie.n(obj, c1521je);
            C1027a c1027aA = c1521je.f19470f.a(-1);
            int i9 = 0;
            while (true) {
                int[] iArr = c1027aA.f17823d;
                if (i9 >= iArr.length || (i8 = iArr[i9]) == 0 || i8 == 1) {
                    break;
                }
                i9++;
            }
            if (-1 == i9) {
                c1521je.f19470f.getClass();
            }
        } else {
            j8 = jLongValue;
        }
        return Pair.create(c2190wNN, Long.valueOf(j8));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00cd  */
    public final RK N(C2190wN c2190wN, long j8, long j9, long j10, boolean z7, int i8) {
        C1104bO c1104bO;
        C2295yO c2295yO;
        List list;
        PA paH;
        GK gk;
        this.f12356r0 = (!this.f12356r0 && j8 == this.f12340b0.f16256r && c2190wN.equals(this.f12340b0.f16240b)) ? false : true;
        m();
        RK rk = this.f12340b0;
        C1104bO c1104bO2 = rk.f16246h;
        C2295yO c2295yO2 = rk.f16247i;
        List list2 = rk.f16248j;
        if (this.f12336X.f16017j) {
            GK gk2 = this.f12335W.f13870h;
            C1104bO c1104bO3 = gk2 == null ? C1104bO.f18041d : gk2.f13509m;
            C2295yO c2295yO3 = gk2 == null ? this.f12323K : gk2.f13510n;
            InterfaceC2087uO[] interfaceC2087uOArr = c2295yO3.f22031c;
            C1917rA c1917rA = new C1917rA();
            boolean z8 = false;
            for (InterfaceC2087uO interfaceC2087uO : interfaceC2087uOArr) {
                if (interfaceC2087uO != null) {
                    Q9 q9 = interfaceC2087uO.zzd(0).f20381k;
                    if (q9 == null) {
                        c1917rA.b(new Q9(-9223372036854775807L, new K9[0]));
                    } else {
                        c1917rA.b(q9);
                        z8 = true;
                    }
                }
            }
            if (z8) {
                paH = c1917rA.h();
            } else {
                C1969sA c1969sA = AbstractC2073uA.f21207H;
                paH = PA.f15340K;
            }
            PA pa = paH;
            if (gk2 != null) {
                HK hk = gk2.f13502f;
                long j11 = hk.f13744c;
                if (j11 != j9) {
                    if (j9 == j11) {
                        gk = gk2;
                    } else {
                        gk = gk2;
                        hk = new HK(hk.f13742a, hk.f13743b, j9, hk.f13745d, hk.f13746e, hk.f13747f, hk.f13748g, hk.f13749h);
                    }
                    gk.f13502f = hk;
                } else {
                    c2295yO3 = c2295yO3;
                }
            } else {
                c2295yO3 = c2295yO3;
            }
            GK gk3 = this.f12335W.f13870h;
            if (gk3 == null) {
                break;
                break;
            }
            C2295yO c2295yO4 = gk3.f13510n;
            int i9 = 0;
            while (true) {
                int length = this.f12319G.length;
                if (i9 >= 2) {
                    break;
                }
                if (c2295yO4.b(i9)) {
                    if (this.f12319G[i9].f17867b != 1) {
                        break;
                    }
                    c2295yO4.f22030b[i9].getClass();
                }
                i9++;
            }
            c1104bO = c1104bO3;
            list = pa;
            c2295yO = c2295yO3;
        } else if (c2190wN.equals(rk.f16240b)) {
            c1104bO = c1104bO2;
            c2295yO = c2295yO2;
            list = list2;
        } else {
            c2295yO = this.f12323K;
            c1104bO = C1104bO.f18041d;
            list = PA.f15340K;
        }
        if (z7) {
            B0.U u7 = this.f12341c0;
            if (!u7.f833e || u7.f831c == 5) {
                u7.f832d = true;
                u7.f833e = true;
                u7.f831c = i8;
            } else {
                p113o3.r.J(i8 == 5);
            }
        }
        RK rk2 = this.f12340b0;
        long j12 = rk2.f16254p;
        GK gk4 = this.f12335W.f13872j;
        return rk2.b(c2190wN, j8, j9, j10, gk4 == null ? 0L : Math.max(0L, j12 - (this.f12353o0 - gk4.f13511o)), c1104bO, c2295yO, list);
    }

    public final void O(AbstractC1048aK abstractC1048aK) {
        if (C(abstractC1048aK)) {
            C1462iK c1462iK = this.f12332T;
            if (abstractC1048aK == c1462iK.f19293c) {
                c1462iK.f19294d = null;
                c1462iK.f19293c = null;
                c1462iK.f19295e = true;
            }
            int i8 = abstractC1048aK.f17873h;
            if (i8 == 2) {
                p113o3.r.M(i8 == 2);
                abstractC1048aK.f17873h = 1;
                abstractC1048aK.f();
            }
            p113o3.r.M(abstractC1048aK.f17873h == 1);
            C0871Om c0871Om = abstractC1048aK.f17868c;
            c0871Om.f15197I = null;
            c0871Om.f15196H = null;
            abstractC1048aK.f17873h = 0;
            abstractC1048aK.f17874i = null;
            abstractC1048aK.f17875j = null;
            abstractC1048aK.f17879n = false;
            abstractC1048aK.y();
            this.f12351m0--;
        }
    }

    public final void a() throws C1512jK {
        int length = this.f12319G.length;
        b(new boolean[2], this.f12335W.f13871i.c());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003c  */
    public final void b(boolean[] zArr, long j8) throws C1512jK {
        AbstractC1048aK[] abstractC1048aKArr;
        int i8;
        Set set;
        Set set2;
        int i9;
        C2295yO c2295yO;
        AbstractC1048aK[] abstractC1048aKArr2;
        FK fk;
        IK ik = this.f12335W;
        GK gk = ik.f13871i;
        C2295yO c2295yO2 = gk.f13510n;
        int i10 = 0;
        while (true) {
            abstractC1048aKArr = this.f12319G;
            int length = abstractC1048aKArr.length;
            set = this.f12320H;
            if (i10 >= 2) {
                break;
            }
            if (!c2295yO2.b(i10) && set.remove(abstractC1048aKArr[i10])) {
                abstractC1048aKArr[i10].j();
            }
            i10++;
        }
        int i11 = 0;
        for (i8 = 2; i11 < i8; i8 = 2) {
            if (c2295yO2.b(i11)) {
                boolean z7 = zArr[i11];
                AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i11];
                if (C(abstractC1048aK)) {
                    set2 = set;
                    i9 = i11;
                    ik = ik;
                    c2295yO = c2295yO2;
                    abstractC1048aKArr2 = abstractC1048aKArr;
                } else {
                    GK gk2 = ik.f13871i;
                    boolean z8 = gk2 == ik.f13870h;
                    C2295yO c2295yO3 = gk2.f13510n;
                    YK yk = c2295yO3.f22030b[i11];
                    InterfaceC2087uO interfaceC2087uO = c2295yO3.f22031c[i11];
                    int iZzc = interfaceC2087uO != null ? interfaceC2087uO.zzc() : 0;
                    C1804p0[] c1804p0Arr = new C1804p0[iZzc];
                    c2295yO = c2295yO2;
                    for (int i12 = 0; i12 < iZzc; i12++) {
                        c1804p0Arr[i12] = interfaceC2087uO.zzd(i12);
                    }
                    boolean z9 = E() && this.f12340b0.f16243e == 3;
                    boolean z10 = !z7 && z9;
                    this.f12351m0++;
                    set.add(abstractC1048aK);
                    UN un = gk2.f13499c[i11];
                    set2 = set;
                    i9 = i11;
                    long j9 = gk2.f13511o;
                    C2190wN c2190wN = gk2.f13502f.f13742a;
                    p113o3.r.M(abstractC1048aK.f17873h == 0);
                    abstractC1048aK.f17869d = yk;
                    abstractC1048aK.f17873h = 1;
                    abstractC1048aK.z(z10, z8);
                    boolean z11 = z8;
                    abstractC1048aKArr2 = abstractC1048aKArr;
                    abstractC1048aK.i(c1804p0Arr, un, j8, j9, c2190wN);
                    abstractC1048aK.f17879n = false;
                    abstractC1048aK.f17877l = j8;
                    abstractC1048aK.f17878m = j8;
                    abstractC1048aK.A(j8, z10);
                    abstractC1048aK.b(11, new C2291yK());
                    C1462iK c1462iK = this.f12332T;
                    c1462iK.getClass();
                    FK fkT = abstractC1048aK.t();
                    if (fkT != null && fkT != (fk = c1462iK.f19294d)) {
                        if (fk != null) {
                            throw new C1512jK(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
                        }
                        c1462iK.f19294d = fkT;
                        c1462iK.f19293c = abstractC1048aK;
                        ((C1774oM) fkT).a(c1462iK.f19291a.f18039d);
                    }
                    if (z9 && z11) {
                        p113o3.r.M(abstractC1048aK.f17873h == 1);
                        abstractC1048aK.f17873h = 2;
                        abstractC1048aK.e();
                    }
                }
            } else {
                set2 = set;
                i9 = i11;
                ik = ik;
                c2295yO = c2295yO2;
                abstractC1048aKArr2 = abstractC1048aKArr;
            }
            i11 = i9 + 1;
            ik = ik;
            c2295yO2 = c2295yO;
            set = set2;
            abstractC1048aKArr = abstractC1048aKArr2;
        }
        gk.f13503g = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final /* bridge */ /* synthetic */ void c(VN vn) {
        this.f12326N.a(9, (InterfaceC2138vN) vn).a();
    }

    public final void d(IOException iOException, int i8) {
        C1512jK c1512jK = new C1512jK(0, iOException, i8);
        GK gk = this.f12335W.f13870h;
        if (gk != null) {
            c1512jK = c1512jK.a(gk.f13502f.f13742a);
        }
        Zo.d("ExoPlayerImplInternal", "Playback error", c1512jK);
        u(false, false);
        this.f12340b0 = this.f12340b0.d(c1512jK);
    }

    public final void e(boolean z7) {
        GK gk = this.f12335W.f13872j;
        C2190wN c2190wN = gk == null ? this.f12340b0.f16240b : gk.f13502f.f13742a;
        boolean z8 = !this.f12340b0.f16249k.equals(c2190wN);
        if (z8) {
            this.f12340b0 = this.f12340b0.a(c2190wN);
        }
        RK rk = this.f12340b0;
        rk.f16254p = gk == null ? rk.f16256r : gk.b();
        RK rk2 = this.f12340b0;
        long j8 = rk2.f16254p;
        GK gk2 = this.f12335W.f13872j;
        rk2.f16255q = gk2 != null ? Math.max(0L, j8 - (this.f12353o0 - gk2.f13511o)) : 0L;
        if ((z8 || z7) && gk != null && gk.f13500d) {
            C2190wN c2190wN2 = gk.f13502f.f13742a;
            C2295yO c2295yO = gk.f13510n;
            AbstractC0774Ie abstractC0774Ie = this.f12340b0.f16239a;
            this.f12324L.b(this.f12338Z, this.f12319G, c2295yO.f22031c);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final void f(InterfaceC2138vN interfaceC2138vN) {
        this.f12326N.a(8, interfaceC2138vN).a();
    }

    /* JADX WARN: Code duplicated, block: B:142:0x028f  */
    /* JADX WARN: Code duplicated, block: B:195:0x033e  */
    /* JADX WARN: Code duplicated, block: B:248:0x040c  */
    /* JADX WARN: Code duplicated, block: B:251:0x041e  */
    /* JADX WARN: Code duplicated, block: B:255:0x0429  */
    /* JADX WARN: Code duplicated, block: B:257:0x0433 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:263:0x0446  */
    /* JADX WARN: Code duplicated, block: B:266:0x0452  */
    /* JADX WARN: Code duplicated, block: B:270:0x047c  */
    public final void g(AbstractC0774Ie abstractC0774Ie, boolean z7) throws Throwable {
        Object obj;
        C2190wN c2190wN;
        C1521je c1521je;
        C2196we c2196we;
        int i8;
        int i9;
        boolean z8;
        boolean z9;
        boolean z10;
        int iG;
        boolean z11;
        long j8;
        boolean z12;
        C2190wN c2190wN2;
        long jK;
        boolean z13;
        long j9;
        boolean z14;
        int i10;
        int iG2;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        long j10;
        C2190wN c2190wN3;
        boolean z19;
        Object obj2;
        C2190wN c2190wN4;
        Object obj3;
        long j11;
        boolean z20;
        C2190wN c2190wN5;
        RK rk = this.f12340b0;
        AK ak = this.f12352n0;
        int i11 = this.f12348j0;
        boolean z21 = this.f12349k0;
        if (abstractC0774Ie.o()) {
            c2190wN2 = RK.f16238t;
            j9 = -9223372036854775807L;
            z14 = true;
            z13 = false;
            z12 = true;
            z8 = false;
            jK = 0;
        } else {
            C1521je c1521je2 = this.f12330R;
            C2190wN c2190wN6 = rk.f16240b;
            Object obj4 = c2190wN6.f21690a;
            AbstractC0774Ie abstractC0774Ie2 = rk.f16239a;
            boolean z22 = abstractC0774Ie2.o() || abstractC0774Ie2.n(c2190wN6.f21690a, c1521je2).f19469e;
            long jLongValue = (rk.f16240b.b() || z22) ? rk.f16241c : rk.f16256r;
            C2196we c2196we2 = this.f12329Q;
            if (ak != null) {
                c2190wN = c2190wN6;
                c1521je = c1521je2;
                Pair pairM = M(abstractC0774Ie, ak, i11, z21, c2196we2, c1521je);
                if (pairM == null) {
                    iG2 = abstractC0774Ie.g(z21);
                    obj = obj4;
                    jLongValue = jLongValue;
                    z16 = false;
                    z18 = true;
                    z17 = false;
                } else {
                    if (ak.f12002c == -9223372036854775807L) {
                        iG2 = abstractC0774Ie.n(pairM.first, c1521je).f19467c;
                        obj = obj4;
                        jLongValue = jLongValue;
                        z15 = false;
                    } else {
                        Object obj5 = pairM.first;
                        jLongValue = ((Long) pairM.second).longValue();
                        obj = obj5;
                        iG2 = -1;
                        z15 = true;
                    }
                    z16 = rk.f16243e == 4;
                    z17 = z15;
                    z18 = false;
                }
                z8 = z16;
                z10 = z17;
                c2196we = c2196we2;
                i9 = iG2;
                z9 = z18;
                i8 = -1;
            } else {
                obj = obj4;
                c2190wN = c2190wN6;
                c1521je = c1521je2;
                c2196we = c2196we2;
                if (rk.f16239a.o()) {
                    iG = abstractC0774Ie.g(z21);
                } else if (abstractC0774Ie.a(obj) == -1) {
                    int iH = H(c2196we, c1521je, i11, z21, obj, rk.f16239a, abstractC0774Ie);
                    if (iH == -1) {
                        iH = abstractC0774Ie.g(z21);
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    i9 = iH;
                    obj = obj;
                    c2196we = c2196we;
                    jLongValue = jLongValue;
                    i8 = -1;
                    z8 = false;
                    z10 = false;
                    z9 = z11;
                } else if (jLongValue == -9223372036854775807L) {
                    iG = abstractC0774Ie.n(obj, c1521je).f19467c;
                } else if (z22) {
                    rk.f16239a.n(c2190wN.f21690a, c1521je);
                    c2196we = c2196we;
                    if (rk.f16239a.e(c1521je.f19467c, c2196we, 0L).f21718k == rk.f16239a.a(c2190wN.f21690a)) {
                        Pair pairL = abstractC0774Ie.l(c2196we, c1521je, abstractC0774Ie.n(obj, c1521je).f19467c, jLongValue);
                        Object obj6 = pairL.first;
                        jLongValue = ((Long) pairL.second).longValue();
                        obj = obj6;
                    } else {
                        obj = obj;
                        jLongValue = jLongValue;
                    }
                    i8 = -1;
                    i9 = -1;
                    z8 = false;
                    z9 = false;
                    z10 = true;
                } else {
                    i8 = -1;
                    i9 = -1;
                    z8 = false;
                    z9 = false;
                    z10 = false;
                }
                i9 = iG;
                i8 = -1;
                z8 = false;
                z9 = false;
                z10 = false;
            }
            if (i9 != i8) {
                Pair pairL2 = abstractC0774Ie.l(c2196we, c1521je, i9, -9223372036854775807L);
                Object obj7 = pairL2.first;
                jLongValue = ((Long) pairL2.second).longValue();
                obj = obj7;
                j8 = -9223372036854775807L;
            } else {
                j8 = jLongValue;
            }
            C2190wN c2190wNN = this.f12335W.n(abstractC0774Ie, obj, jLongValue);
            boolean z23 = (!c2190wN.f21690a.equals(obj) || c2190wN.b() || c2190wNN.b()) ? false : true;
            C1521je c1521jeN = abstractC0774Ie.n(obj, c1521je);
            if (!z22 && jLongValue == j8 && c2190wN.f21690a.equals(c2190wNN.f21690a)) {
                if (c2190wN.b()) {
                    c1521jeN.c(c2190wN.f21691b);
                }
                if (c2190wNN.b()) {
                    c1521jeN.c(-1);
                }
            }
            z12 = true;
            if (true == z23) {
                c2190wNN = c2190wN;
            }
            if (c2190wNN.b()) {
                if (c2190wNN.equals(c2190wN)) {
                    jLongValue = rk.f16256r;
                } else {
                    abstractC0774Ie.n(c2190wNN.f21690a, c1521je);
                    int i12 = c2190wNN.f21692c;
                    C1027a c1027aA = c1521je.f19470f.a(c2190wNN.f21691b);
                    int i13 = 0;
                    while (true) {
                        int[] iArr = c1027aA.f17823d;
                        if (i13 >= iArr.length || (i10 = iArr[i13]) == 0 || i10 == 1) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                    if (i12 == i13) {
                        c1521je.f19470f.getClass();
                    }
                    jLongValue = 0;
                }
            }
            c2190wN2 = c2190wNN;
            jK = jLongValue;
            z13 = z10;
            j9 = j8;
            z14 = z9;
        }
        boolean z24 = (this.f12340b0.f16240b.equals(c2190wN2) && jK == this.f12340b0.f16256r) ? false : true;
        if (z14) {
            try {
                if (this.f12340b0.f16243e != z12) {
                    try {
                        s(4);
                    } catch (Throwable th) {
                        th = th;
                        j10 = -9223372036854775807L;
                        z19 = true;
                        c2190wN3 = c2190wN2;
                        obj2 = null;
                        RK rk2 = this.f12340b0;
                        AbstractC0774Ie abstractC0774Ie3 = rk2.f16239a;
                        C2190wN c2190wN7 = rk2.f16240b;
                        if (z19 == z13) {
                            j10 = jK;
                        }
                        y(abstractC0774Ie, c2190wN3, abstractC0774Ie3, c2190wN7, j10, false);
                        if (z24) {
                            RK rk3 = this.f12340b0;
                            Object obj8 = rk3.f16240b.f21690a;
                            AbstractC0774Ie abstractC0774Ie4 = rk3.f16239a;
                            if (z24) {
                                z19 = false;
                            } else {
                                z19 = false;
                            }
                            this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj8) == -1 ? 4 : 3);
                        } else {
                            RK rk4 = this.f12340b0;
                            Object obj9 = rk4.f16240b.f21690a;
                            AbstractC0774Ie abstractC0774Ie5 = rk4.f16239a;
                            if (z24) {
                                z19 = false;
                            } else {
                                z19 = false;
                            }
                            this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj9) == -1 ? 4 : 3);
                        }
                        m();
                        o(abstractC0774Ie, this.f12340b0.f16239a);
                        this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                        if (!abstractC0774Ie.o()) {
                            this.f12352n0 = obj2;
                        }
                        e(false);
                        this.f12326N.c(2);
                        throw th;
                    }
                }
                l(false, false, false, z12);
            } catch (Throwable th2) {
                th = th2;
                j10 = -9223372036854775807L;
                z19 = true;
                c2190wN3 = c2190wN2;
                obj2 = null;
                RK rk5 = this.f12340b0;
                AbstractC0774Ie abstractC0774Ie6 = rk5.f16239a;
                C2190wN c2190wN8 = rk5.f16240b;
                if (z19 == z13) {
                    j10 = jK;
                }
                y(abstractC0774Ie, c2190wN3, abstractC0774Ie6, c2190wN8, j10, false);
                if (z24) {
                    RK rk6 = this.f12340b0;
                    Object obj10 = rk6.f16240b.f21690a;
                    AbstractC0774Ie abstractC0774Ie7 = rk6.f16239a;
                    if (z24) {
                        z19 = false;
                    } else {
                        z19 = false;
                    }
                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj10) == -1 ? 4 : 3);
                } else {
                    RK rk7 = this.f12340b0;
                    Object obj11 = rk7.f16240b.f21690a;
                    AbstractC0774Ie abstractC0774Ie8 = rk7.f16239a;
                    if (z24) {
                        z19 = false;
                    } else {
                        z19 = false;
                    }
                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj11) == -1 ? 4 : 3);
                }
                m();
                o(abstractC0774Ie, this.f12340b0.f16239a);
                this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                if (!abstractC0774Ie.o()) {
                    this.f12352n0 = obj2;
                }
                e(false);
                this.f12326N.c(2);
                throw th;
            }
        }
        AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
        int length = abstractC1048aKArr.length;
        for (int i14 = 0; i14 < 2; i14++) {
            AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i14];
            if (!Objects.equals(abstractC1048aK.f17881p, abstractC0774Ie)) {
                abstractC1048aK.f17881p = abstractC0774Ie;
            }
        }
        if (z24) {
            c2190wN4 = c2190wN2;
            try {
                if (abstractC0774Ie.o()) {
                    c2190wN3 = c2190wN4;
                    j10 = -9223372036854775807L;
                } else {
                    try {
                        GK gk = this.f12335W.f13870h;
                        while (gk != null) {
                            try {
                                c2190wN5 = c2190wN4;
                                try {
                                    if (gk.f13502f.f13742a.equals(c2190wN5)) {
                                        HK hkM = this.f12335W.m(abstractC0774Ie, gk.f13502f);
                                        gk.f13502f = hkM;
                                        try {
                                            InterfaceC2138vN interfaceC2138vN = gk.f13497a;
                                            if (interfaceC2138vN instanceof C1413hN) {
                                                long j12 = hkM.f13745d;
                                                j10 = -9223372036854775807L;
                                                if (j12 == -9223372036854775807L) {
                                                    j12 = Long.MIN_VALUE;
                                                }
                                                try {
                                                    ((C1413hN) interfaceC2138vN).f19089K = j12;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    c2190wN3 = c2190wN5;
                                                    obj2 = null;
                                                    z19 = true;
                                                    RK rk8 = this.f12340b0;
                                                    AbstractC0774Ie abstractC0774Ie9 = rk8.f16239a;
                                                    C2190wN c2190wN9 = rk8.f16240b;
                                                    if (z19 == z13) {
                                                        j10 = jK;
                                                    }
                                                    y(abstractC0774Ie, c2190wN3, abstractC0774Ie9, c2190wN9, j10, false);
                                                    if (z24) {
                                                        RK rk9 = this.f12340b0;
                                                        Object obj12 = rk9.f16240b.f21690a;
                                                        AbstractC0774Ie abstractC0774Ie10 = rk9.f16239a;
                                                        if (z24) {
                                                            z19 = false;
                                                        } else {
                                                            z19 = false;
                                                        }
                                                        this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj12) == -1 ? 4 : 3);
                                                    } else {
                                                        RK rk10 = this.f12340b0;
                                                        Object obj13 = rk10.f16240b.f21690a;
                                                        AbstractC0774Ie abstractC0774Ie11 = rk10.f16239a;
                                                        if (z24) {
                                                            z19 = false;
                                                        } else {
                                                            z19 = false;
                                                        }
                                                        this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj13) == -1 ? 4 : 3);
                                                    }
                                                    m();
                                                    o(abstractC0774Ie, this.f12340b0.f16239a);
                                                    this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                                                    if (!abstractC0774Ie.o()) {
                                                        this.f12352n0 = obj2;
                                                    }
                                                    e(false);
                                                    this.f12326N.c(2);
                                                    throw th;
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            j10 = -9223372036854775807L;
                                            c2190wN3 = c2190wN5;
                                            obj2 = null;
                                            z19 = true;
                                            RK rk11 = this.f12340b0;
                                            AbstractC0774Ie abstractC0774Ie12 = rk11.f16239a;
                                            C2190wN c2190wN10 = rk11.f16240b;
                                            if (z19 == z13) {
                                                j10 = jK;
                                            }
                                            y(abstractC0774Ie, c2190wN3, abstractC0774Ie12, c2190wN10, j10, false);
                                            if (z24) {
                                                RK rk12 = this.f12340b0;
                                                Object obj14 = rk12.f16240b.f21690a;
                                                AbstractC0774Ie abstractC0774Ie13 = rk12.f16239a;
                                                if (z24) {
                                                    z19 = false;
                                                } else {
                                                    z19 = false;
                                                }
                                                this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj14) == -1 ? 4 : 3);
                                            } else {
                                                RK rk13 = this.f12340b0;
                                                Object obj15 = rk13.f16240b.f21690a;
                                                AbstractC0774Ie abstractC0774Ie14 = rk13.f16239a;
                                                if (z24) {
                                                    z19 = false;
                                                } else {
                                                    z19 = false;
                                                }
                                                this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj15) == -1 ? 4 : 3);
                                            }
                                            m();
                                            o(abstractC0774Ie, this.f12340b0.f16239a);
                                            this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                                            if (!abstractC0774Ie.o()) {
                                                this.f12352n0 = obj2;
                                            }
                                            e(false);
                                            this.f12326N.c(2);
                                            throw th;
                                        }
                                    }
                                    gk = gk.f13508l;
                                    c2190wN4 = c2190wN5;
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                c2190wN5 = c2190wN4;
                            }
                        }
                        C2190wN c2190wN11 = c2190wN4;
                        j10 = -9223372036854775807L;
                        try {
                            IK ik = this.f12335W;
                            c2190wN3 = c2190wN11;
                            try {
                                jK = K(c2190wN11, jK, ik.f13870h != ik.f13871i, z8);
                            } catch (Throwable th7) {
                                th = th7;
                                obj2 = null;
                                z19 = true;
                                RK rk14 = this.f12340b0;
                                AbstractC0774Ie abstractC0774Ie15 = rk14.f16239a;
                                C2190wN c2190wN12 = rk14.f16240b;
                                if (z19 == z13) {
                                    j10 = jK;
                                }
                                y(abstractC0774Ie, c2190wN3, abstractC0774Ie15, c2190wN12, j10, false);
                                if (z24) {
                                    RK rk15 = this.f12340b0;
                                    Object obj16 = rk15.f16240b.f21690a;
                                    AbstractC0774Ie abstractC0774Ie16 = rk15.f16239a;
                                    if (z24) {
                                        z19 = false;
                                    } else {
                                        z19 = false;
                                    }
                                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj16) == -1 ? 4 : 3);
                                } else {
                                    RK rk16 = this.f12340b0;
                                    Object obj17 = rk16.f16240b.f21690a;
                                    AbstractC0774Ie abstractC0774Ie17 = rk16.f16239a;
                                    if (z24) {
                                        z19 = false;
                                    } else {
                                        z19 = false;
                                    }
                                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj17) == -1 ? 4 : 3);
                                }
                                m();
                                o(abstractC0774Ie, this.f12340b0.f16239a);
                                this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                                if (!abstractC0774Ie.o()) {
                                    this.f12352n0 = obj2;
                                }
                                e(false);
                                this.f12326N.c(2);
                                throw th;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            c2190wN3 = c2190wN11;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        c2190wN3 = c2190wN4;
                        j10 = -9223372036854775807L;
                    }
                }
            } catch (Throwable th10) {
                th = th10;
                obj2 = null;
                c2190wN3 = c2190wN4;
                z19 = true;
                j10 = -9223372036854775807L;
                RK rk17 = this.f12340b0;
                AbstractC0774Ie abstractC0774Ie18 = rk17.f16239a;
                C2190wN c2190wN13 = rk17.f16240b;
                if (z19 == z13) {
                    j10 = jK;
                }
                y(abstractC0774Ie, c2190wN3, abstractC0774Ie18, c2190wN13, j10, false);
                if (z24) {
                    RK rk18 = this.f12340b0;
                    Object obj18 = rk18.f16240b.f21690a;
                    AbstractC0774Ie abstractC0774Ie19 = rk18.f16239a;
                    if (z24) {
                        z19 = false;
                    } else {
                        z19 = false;
                    }
                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj18) == -1 ? 4 : 3);
                } else {
                    RK rk19 = this.f12340b0;
                    Object obj19 = rk19.f16240b.f21690a;
                    AbstractC0774Ie abstractC0774Ie110 = rk19.f16239a;
                    if (z24) {
                        z19 = false;
                    } else {
                        z19 = false;
                    }
                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj19) == -1 ? 4 : 3);
                }
                m();
                o(abstractC0774Ie, this.f12340b0.f16239a);
                this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                if (!abstractC0774Ie.o()) {
                    this.f12352n0 = obj2;
                }
                e(false);
                this.f12326N.c(2);
                throw th;
            }
        } else {
            try {
                IK ik2 = this.f12335W;
                long j13 = this.f12353o0;
                try {
                    GK gk2 = ik2.f13871i;
                    if (gk2 == null) {
                        c2190wN4 = c2190wN2;
                        j11 = 0;
                    } else {
                        c2190wN4 = c2190wN2;
                        try {
                            long j14 = gk2.f13511o;
                            try {
                                if (gk2.f13500d) {
                                    long jMax = j14;
                                    int i15 = 0;
                                    while (true) {
                                        try {
                                            AbstractC1048aK[] abstractC1048aKArr2 = this.f12319G;
                                            int length2 = abstractC1048aKArr2.length;
                                            if (i15 >= 2) {
                                                j11 = jMax;
                                                break;
                                            }
                                            if (C(abstractC1048aKArr2[i15])) {
                                                AbstractC1048aK abstractC1048aK2 = this.f12319G[i15];
                                                if (abstractC1048aK2.f17874i == gk2.f13499c[i15]) {
                                                    long j15 = abstractC1048aK2.f17878m;
                                                    j11 = Long.MIN_VALUE;
                                                    if (j15 == Long.MIN_VALUE) {
                                                        break;
                                                    } else {
                                                        jMax = Math.max(j15, jMax);
                                                    }
                                                }
                                            }
                                            i15++;
                                        } catch (Throwable th11) {
                                            th = th11;
                                            c2190wN3 = c2190wN4;
                                            obj2 = null;
                                            z19 = true;
                                            j10 = -9223372036854775807L;
                                            RK rk110 = this.f12340b0;
                                            AbstractC0774Ie abstractC0774Ie111 = rk110.f16239a;
                                            C2190wN c2190wN14 = rk110.f16240b;
                                            if (z19 == z13) {
                                                j10 = jK;
                                            }
                                            y(abstractC0774Ie, c2190wN3, abstractC0774Ie111, c2190wN14, j10, false);
                                            if (z24 || j9 != this.f12340b0.f16241c) {
                                                RK rk111 = this.f12340b0;
                                                Object obj110 = rk111.f16240b.f21690a;
                                                AbstractC0774Ie abstractC0774Ie112 = rk111.f16239a;
                                                if (z24 || !z7 || abstractC0774Ie112.o() || abstractC0774Ie112.n(obj110, this.f12330R).f19469e) {
                                                    z19 = false;
                                                }
                                                this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj110) == -1 ? 4 : 3);
                                            }
                                            m();
                                            o(abstractC0774Ie, this.f12340b0.f16239a);
                                            this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                                            if (!abstractC0774Ie.o()) {
                                                this.f12352n0 = obj2;
                                            }
                                            e(false);
                                            this.f12326N.c(2);
                                            throw th;
                                        }
                                    }
                                } else {
                                    j11 = j14;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                obj3 = null;
                                obj2 = obj3;
                                c2190wN3 = c2190wN4;
                                z19 = true;
                                j10 = -9223372036854775807L;
                                RK rk112 = this.f12340b0;
                                AbstractC0774Ie abstractC0774Ie113 = rk112.f16239a;
                                C2190wN c2190wN15 = rk112.f16240b;
                                if (z19 == z13) {
                                    j10 = jK;
                                }
                                y(abstractC0774Ie, c2190wN3, abstractC0774Ie113, c2190wN15, j10, false);
                                if (z24) {
                                    RK rk113 = this.f12340b0;
                                    Object obj111 = rk113.f16240b.f21690a;
                                    AbstractC0774Ie abstractC0774Ie114 = rk113.f16239a;
                                    if (z24) {
                                        z19 = false;
                                    } else {
                                        z19 = false;
                                    }
                                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj111) == -1 ? 4 : 3);
                                } else {
                                    RK rk114 = this.f12340b0;
                                    Object obj112 = rk114.f16240b.f21690a;
                                    AbstractC0774Ie abstractC0774Ie115 = rk114.f16239a;
                                    if (z24) {
                                        z19 = false;
                                    } else {
                                        z19 = false;
                                    }
                                    this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj112) == -1 ? 4 : 3);
                                }
                                m();
                                o(abstractC0774Ie, this.f12340b0.f16239a);
                                this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                                if (!abstractC0774Ie.o()) {
                                    this.f12352n0 = obj2;
                                }
                                e(false);
                                this.f12326N.c(2);
                                throw th;
                            }
                        } catch (Throwable th13) {
                            th = th13;
                        }
                    }
                    obj3 = null;
                    try {
                        if (!ik2.t(abstractC0774Ie, j13, j11)) {
                            q(false);
                        }
                        c2190wN3 = c2190wN4;
                        j10 = -9223372036854775807L;
                    } catch (Throwable th14) {
                        th = th14;
                        obj2 = obj3;
                        c2190wN3 = c2190wN4;
                        z19 = true;
                        j10 = -9223372036854775807L;
                        RK rk115 = this.f12340b0;
                        AbstractC0774Ie abstractC0774Ie116 = rk115.f16239a;
                        C2190wN c2190wN16 = rk115.f16240b;
                        if (z19 == z13) {
                            j10 = jK;
                        }
                        y(abstractC0774Ie, c2190wN3, abstractC0774Ie116, c2190wN16, j10, false);
                        if (z24) {
                            RK rk116 = this.f12340b0;
                            Object obj113 = rk116.f16240b.f21690a;
                            AbstractC0774Ie abstractC0774Ie117 = rk116.f16239a;
                            if (z24) {
                                z19 = false;
                            } else {
                                z19 = false;
                            }
                            this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj113) == -1 ? 4 : 3);
                        } else {
                            RK rk117 = this.f12340b0;
                            Object obj114 = rk117.f16240b.f21690a;
                            AbstractC0774Ie abstractC0774Ie118 = rk117.f16239a;
                            if (z24) {
                                z19 = false;
                            } else {
                                z19 = false;
                            }
                            this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z19, abstractC0774Ie.a(obj114) == -1 ? 4 : 3);
                        }
                        m();
                        o(abstractC0774Ie, this.f12340b0.f16239a);
                        this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
                        if (!abstractC0774Ie.o()) {
                            this.f12352n0 = obj2;
                        }
                        e(false);
                        this.f12326N.c(2);
                        throw th;
                    }
                } catch (Throwable th15) {
                    th = th15;
                    c2190wN4 = c2190wN2;
                }
            } catch (Throwable th16) {
                th = th16;
                c2190wN4 = c2190wN2;
            }
        }
        RK rk20 = this.f12340b0;
        y(abstractC0774Ie, c2190wN3, rk20.f16239a, rk20.f16240b, true != z13 ? j10 : jK, false);
        if (z24 || j9 != this.f12340b0.f16241c) {
            RK rk21 = this.f12340b0;
            Object obj20 = rk21.f16240b.f21690a;
            AbstractC0774Ie abstractC0774Ie20 = rk21.f16239a;
            z20 = false;
            this.f12340b0 = N(c2190wN3, jK, j9, this.f12340b0.f16242d, z24 && z7 && !abstractC0774Ie20.o() && !abstractC0774Ie20.n(obj20, this.f12330R).f19469e, abstractC0774Ie.a(obj20) == -1 ? 4 : 3);
        } else {
            z20 = false;
        }
        m();
        o(abstractC0774Ie, this.f12340b0.f16239a);
        this.f12340b0 = this.f12340b0.f(abstractC0774Ie);
        if (!abstractC0774Ie.o()) {
            this.f12352n0 = null;
        }
        e(z20);
        this.f12326N.c(2);
    }

    public final void h(C1778ob c1778ob, float f8, boolean z7, boolean z8) {
        int i8;
        BK bk = this;
        if (z7) {
            if (z8) {
                bk.f12341c0.f(1);
            }
            RK rk = bk.f12340b0;
            bk = this;
            bk.f12340b0 = new RK(rk.f16239a, rk.f16240b, rk.f16241c, rk.f16242d, rk.f16243e, rk.f16244f, rk.f16245g, rk.f16246h, rk.f16247i, rk.f16248j, rk.f16249k, rk.f16250l, rk.f16251m, rk.f16252n, c1778ob, rk.f16254p, rk.f16255q, rk.f16256r, rk.f16257s);
        }
        float f9 = c1778ob.f20290a;
        GK gk = bk.f12335W.f13870h;
        while (true) {
            i8 = 0;
            if (gk == null) {
                break;
            }
            InterfaceC2087uO[] interfaceC2087uOArr = gk.f13510n.f22031c;
            int length = interfaceC2087uOArr.length;
            while (i8 < length) {
                InterfaceC2087uO interfaceC2087uO = interfaceC2087uOArr[i8];
                i8++;
            }
            gk = gk.f13508l;
        }
        AbstractC1048aK[] abstractC1048aKArr = bk.f12319G;
        int length2 = abstractC1048aKArr.length;
        while (i8 < 2) {
            AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i8];
            if (abstractC1048aK != null) {
                abstractC1048aK.k(f8, c1778ob.f20290a);
            }
            i8++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:285:0x056a  */
    /* JADX WARN: Code duplicated, block: B:413:0x07b1 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:417:0x07c5 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:419:0x07cb A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:491:0x08d7  */
    /* JADX WARN: Code duplicated, block: B:528:0x099c A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:530:0x09a0 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:532:0x09a6  */
    /* JADX WARN: Code duplicated, block: B:533:0x09a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:534:0x09a9 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:536:0x09b9 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:538:0x09c1 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:540:0x09cb A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, LOOP:9: B:539:0x09c9->B:540:0x09cb, LOOP_END, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:546:0x09e2  */
    /* JADX WARN: Code duplicated, block: B:549:0x09e8 A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:569:0x0a4b A[Catch: RuntimeException -> 0x005c, IOException -> 0x005e, xC -> 0x0060, Ka -> 0x0062, tM -> 0x0064, jK -> 0x0066, TryCatch #16 {RuntimeException -> 0x005c, blocks: (B:3:0x000a, B:4:0x0016, B:6:0x001a, B:9:0x0034, B:28:0x0068, B:29:0x0079, B:30:0x0091, B:31:0x0099, B:32:0x00a1, B:36:0x00a8, B:38:0x00b1, B:40:0x00bf, B:41:0x00c7, B:42:0x00d2, B:43:0x00e6, B:44:0x00fe, B:45:0x0108, B:46:0x0109, B:48:0x0118, B:49:0x011e, B:50:0x012b, B:52:0x0138, B:53:0x014e, B:54:0x015d, B:55:0x0168, B:57:0x0178, B:58:0x0184, B:59:0x0198, B:61:0x01a2, B:64:0x01ad, B:65:0x01b4, B:66:0x01bf, B:70:0x01c6, B:72:0x01ce, B:74:0x01d2, B:76:0x01d8, B:78:0x01e0, B:80:0x01e8, B:81:0x01eb, B:83:0x01f0, B:90:0x01fd, B:91:0x01fe, B:95:0x0205, B:97:0x0213, B:98:0x0216, B:99:0x021b, B:101:0x022b, B:102:0x022e, B:103:0x0233, B:104:0x0238, B:106:0x0242, B:108:0x0246, B:110:0x024a, B:114:0x0251, B:116:0x0258, B:117:0x0260, B:118:0x0265, B:120:0x026f, B:122:0x0273, B:124:0x02a1, B:125:0x02c1, B:134:0x02ed, B:136:0x02f1, B:137:0x02f4, B:144:0x02ff, B:156:0x0313, B:157:0x0318, B:158:0x0320, B:159:0x033f, B:161:0x0366, B:244:0x04b4, B:218:0x0464, B:217:0x0460, B:255:0x04d1, B:256:0x04dd, B:162:0x0389, B:166:0x039c, B:168:0x03ac, B:169:0x03c0, B:171:0x03c5, B:175:0x03cc, B:177:0x03d1, B:179:0x03de, B:257:0x04de, B:259:0x04f8, B:262:0x0501, B:264:0x0509, B:268:0x0510, B:270:0x0517, B:271:0x051f, B:273:0x0527, B:275:0x0533, B:277:0x0548, B:278:0x054d, B:279:0x0551, B:281:0x0555, B:283:0x0562, B:350:0x069a, B:352:0x06a2, B:354:0x06aa, B:357:0x06b0, B:358:0x06bc, B:360:0x06c2, B:362:0x06ca, B:365:0x06da, B:367:0x06de, B:369:0x06e4, B:371:0x06ea, B:373:0x06ef, B:374:0x06f8, B:375:0x0712, B:377:0x0718, B:379:0x071d, B:381:0x0727, B:383:0x072b, B:422:0x07da, B:423:0x07df, B:428:0x07ea, B:430:0x07f2, B:431:0x07f7, B:433:0x0803, B:434:0x081c, B:436:0x0822, B:438:0x082a, B:440:0x0833, B:444:0x083c, B:449:0x084b, B:455:0x0858, B:457:0x085e, B:466:0x0870, B:468:0x087a, B:470:0x0886, B:472:0x088c, B:476:0x0899, B:485:0x08c6, B:487:0x08cd, B:489:0x08d1, B:523:0x0978, B:525:0x0984, B:544:0x09db, B:547:0x09e3, B:549:0x09e8, B:551:0x09f0, B:553:0x09fe, B:554:0x0a0a, B:555:0x0a0e, B:557:0x0a14, B:559:0x0a1d, B:561:0x0a23, B:563:0x0a2e, B:570:0x0a52, B:572:0x0a58, B:576:0x0a62, B:587:0x0a80, B:584:0x0a77, B:586:0x0a7b, B:564:0x0a35, B:567:0x0a43, B:568:0x0a4a, B:569:0x0a4b, B:496:0x08e3, B:498:0x08e7, B:500:0x08fb, B:502:0x0904, B:504:0x090e, B:508:0x0917, B:510:0x0921, B:516:0x092c, B:520:0x0957, B:526:0x0995, B:528:0x099c, B:530:0x09a0, B:534:0x09a9, B:536:0x09b9, B:538:0x09c1, B:540:0x09cb, B:541:0x09d0, B:542:0x09d3, B:543:0x09d8, B:519:0x0947, B:478:0x08a1, B:480:0x08a5, B:481:0x08b0, B:483:0x08b6, B:469:0x087f, B:386:0x0734, B:388:0x0738, B:390:0x0740, B:392:0x0744, B:394:0x074e, B:397:0x0754, B:398:0x0757, B:400:0x0760, B:402:0x0772, B:404:0x077b, B:406:0x0783, B:411:0x078f, B:413:0x07b1, B:414:0x07b4, B:415:0x07bf, B:417:0x07c5, B:419:0x07cb, B:420:0x07d2, B:286:0x0571, B:288:0x0575, B:291:0x0580, B:294:0x058b, B:296:0x0591, B:299:0x059f, B:301:0x05a5, B:302:0x05ab, B:303:0x05ae, B:305:0x05b4, B:307:0x05be, B:309:0x05ef, B:311:0x05fe, B:314:0x0608, B:316:0x0610, B:317:0x0612, B:318:0x0615, B:320:0x061b, B:323:0x0631, B:325:0x0637, B:327:0x0641, B:329:0x0649, B:331:0x065a, B:333:0x0660, B:334:0x0669, B:335:0x066c, B:337:0x0672, B:340:0x0677, B:342:0x067d, B:344:0x0685, B:346:0x068b, B:348:0x0691, B:349:0x0697, B:282:0x055f, B:588:0x0a85, B:592:0x0a8c, B:145:0x0300, B:147:0x0304, B:148:0x0307, B:151:0x030e, B:155:0x0312), top: B:665:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:575:0x0a61  */
    /* JADX WARN: Code duplicated, block: B:688:0x07d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:692:0x0a0e A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x08d5, code lost:
    
        if (D() != false) goto L491;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:538:0x09c1, please report this as an issue */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleMessage(android.os.Message r35) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3038
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.BK.handleMessage(android.os.Message):boolean");
    }

    public final void i() {
        boolean zF;
        boolean z7;
        long j8 = -9223372036854775807L;
        if (B()) {
            GK gk = this.f12335W.f13872j;
            long jZzc = !gk.f13500d ? 0L : gk.f13497a.zzc();
            GK gk2 = this.f12335W.f13872j;
            long jMax = gk2 == null ? 0L : Math.max(0L, jZzc - (this.f12353o0 - gk2.f13511o));
            if (gk != this.f12335W.f13870h) {
                long j9 = gk.f13502f.f13743b;
            }
            long j10 = F(this.f12340b0.f16239a, gk.f13502f.f13742a) ? this.f12361w0.f18509h : -9223372036854775807L;
            C2344zL c2344zL = this.f12338Z;
            AbstractC0774Ie abstractC0774Ie = this.f12340b0.f16239a;
            C2190wN c2190wN = gk.f13502f.f13742a;
            float f8 = this.f12332T.zzc().f20290a;
            boolean z8 = this.f12340b0.f16250l;
            CK ck = new CK(c2344zL, jMax, f8, this.f12345g0, j10);
            zF = this.f12324L.f(ck);
            GK gk3 = this.f12335W.f13870h;
            if (!zF && gk3.f13500d && jMax < 500000 && this.f12331S > 0) {
                gk3.f13497a.e(this.f12340b0.f16256r);
                zF = this.f12324L.f(ck);
            }
        } else {
            zF = false;
        }
        this.f12347i0 = zF;
        if (zF) {
            GK gk4 = this.f12335W.f13872j;
            long j11 = this.f12353o0;
            float f9 = this.f12332T.zzc().f20290a;
            long j12 = this.f12346h0;
            p113o3.r.M(gk4.f13508l == null);
            long j13 = j11 - gk4.f13511o;
            C0042c0 c0042c0 = new C0042c0();
            c0042c0.f917a = j13;
            p113o3.r.J(f9 > 0.0f || f9 == -3.4028235E38f);
            c0042c0.f918b = f9;
            if (j12 < 0) {
                if (j12 != -9223372036854775807L) {
                    j8 = j12;
                    z7 = false;
                }
                p113o3.r.J(z7);
                c0042c0.f919c = j8;
                gk4.f13497a.j(new EK(c0042c0));
            } else {
                j8 = j12;
            }
            z7 = true;
            p113o3.r.J(z7);
            c0042c0.f919c = j8;
            gk4.f13497a.j(new EK(c0042c0));
        }
        w();
    }

    public final void j() {
        B0.U u7 = this.f12341c0;
        RK rk = this.f12340b0;
        boolean z7 = u7.f832d | (((RK) u7.f834f) != rk);
        u7.f832d = z7;
        u7.f834f = rk;
        if (z7) {
            C2135vK c2135vK = this.f12360v0.f20564G;
            c2135vK.getClass();
            c2135vK.f21491i.b(new RunnableC1170co(19, c2135vK, u7));
            this.f12341c0 = new B0.U(this.f12340b0, 2);
        }
    }

    public final void k() throws C1512jK {
        int i8;
        float f8 = this.f12332T.zzc().f20290a;
        IK ik = this.f12335W;
        GK gk = ik.f13870h;
        GK gk2 = ik.f13871i;
        C2295yO c2295yO = null;
        GK gk3 = gk;
        boolean z7 = true;
        while (gk3 != null && gk3.f13500d) {
            C2295yO c2295yOE = gk3.e(this.f12340b0.f16239a);
            C2295yO c2295yO2 = gk3 == this.f12335W.f13870h ? c2295yOE : c2295yO;
            C2295yO c2295yO3 = gk3.f13510n;
            boolean z8 = false;
            if (c2295yO3 != null) {
                if (c2295yO3.f22031c.length == c2295yOE.f22031c.length) {
                    int i9 = 0;
                    while (true) {
                        if (i9 >= c2295yOE.f22031c.length) {
                            if (gk3 != gk2) {
                                z8 = true;
                            }
                            z7 &= z8;
                            gk3 = gk3.f13508l;
                            c2295yO = c2295yO2;
                        } else if (c2295yOE.a(c2295yO3, i9)) {
                            i9++;
                        }
                    }
                }
            }
            if (z7) {
                IK ik2 = this.f12335W;
                GK gk4 = ik2.f13870h;
                boolean zR = ik2.r(gk4);
                int length = this.f12319G.length;
                boolean[] zArr = new boolean[2];
                c2295yO2.getClass();
                long jA = gk4.a(c2295yO2, this.f12340b0.f16256r, zR, zArr);
                RK rk = this.f12340b0;
                boolean z9 = (rk.f16243e == 4 || jA == rk.f16256r) ? false : true;
                RK rk2 = this.f12340b0;
                i8 = 2;
                this.f12340b0 = N(rk2.f16240b, jA, rk2.f16241c, rk2.f16242d, z9, 5);
                if (z9) {
                    n(jA);
                }
                int length2 = this.f12319G.length;
                boolean[] zArr2 = new boolean[2];
                int i10 = 0;
                while (true) {
                    AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
                    int length3 = abstractC1048aKArr.length;
                    if (i10 >= 2) {
                        break;
                    }
                    AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i10];
                    boolean zC = C(abstractC1048aK);
                    zArr2[i10] = zC;
                    UN un = gk4.f13499c[i10];
                    if (zC) {
                        if (un != abstractC1048aK.f17874i) {
                            O(abstractC1048aK);
                        } else if (zArr[i10]) {
                            long j8 = this.f12353o0;
                            abstractC1048aK.f17879n = false;
                            abstractC1048aK.f17877l = j8;
                            abstractC1048aK.f17878m = j8;
                            abstractC1048aK.A(j8, false);
                        }
                    }
                    i10++;
                }
                b(zArr2, this.f12353o0);
            } else {
                i8 = 2;
                this.f12335W.r(gk3);
                if (gk3.f13500d) {
                    gk3.a(c2295yOE, Math.max(gk3.f13502f.f13743b, this.f12353o0 - gk3.f13511o), false, new boolean[2]);
                }
            }
            e(true);
            if (this.f12340b0.f16243e != 4) {
                i();
                x();
                this.f12326N.c(i8);
                return;
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008b  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ba A[PHI: r2 r6 r8
      0x00ba: PHI (r2v2 com.google.android.gms.internal.ads.wN) = (r2v1 com.google.android.gms.internal.ads.wN), (r2v8 com.google.android.gms.internal.ads.wN) binds: [B:32:0x008f, B:34:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r6v3 long) = (r6v2 long), (r6v14 long) binds: [B:32:0x008f, B:34:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00ba: PHI (r8v3 long) = (r8v2 long), (r8v8 long) binds: [B:32:0x008f, B:34:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:55:0x0129  */
    /* JADX WARN: Code duplicated, block: B:57:0x012e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0133  */
    /* JADX WARN: Code duplicated, block: B:61:0x0138  */
    /* JADX WARN: Code duplicated, block: B:63:0x013d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0142  */
    /* JADX WARN: Code duplicated, block: B:67:0x0149  */
    /* JADX WARN: Code duplicated, block: B:70:0x016f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0186  */
    /* JADX WARN: Code duplicated, block: B:98:? A[RETURN, SYNTHETIC] */
    public final void l(boolean z7, boolean z8, boolean z9, boolean z10) {
        long j8;
        long j9;
        long j10;
        AbstractC0774Ie wk;
        C2190wN c2190wN;
        RK rk;
        C1104bO c1104bO;
        C2295yO c2295yO;
        List list;
        this.f12326N.f21154a.removeMessages(2);
        this.f12357s0 = null;
        boolean z11 = true;
        z(false, true);
        C1462iK c1462iK = this.f12332T;
        c1462iK.f19296f = false;
        c1462iK.f19291a.d();
        this.f12353o0 = 1000000000000L;
        AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
        int length = abstractC1048aKArr.length;
        for (int i8 = 0; i8 < 2; i8++) {
            try {
                O(abstractC1048aKArr[i8]);
            } catch (C1512jK | RuntimeException e8) {
                Zo.d("ExoPlayerImplInternal", "Disable failed.", e8);
            }
        }
        if (z7) {
            AbstractC1048aK[] abstractC1048aKArr2 = this.f12319G;
            int length2 = abstractC1048aKArr2.length;
            for (int i9 = 0; i9 < 2; i9++) {
                AbstractC1048aK abstractC1048aK = abstractC1048aKArr2[i9];
                if (this.f12320H.remove(abstractC1048aK)) {
                    try {
                        abstractC1048aK.j();
                    } catch (RuntimeException e9) {
                        Zo.d("ExoPlayerImplInternal", "Reset failed.", e9);
                    }
                }
            }
        }
        this.f12351m0 = 0;
        RK rk2 = this.f12340b0;
        C2190wN c2190wN2 = rk2.f16240b;
        long jLongValue = rk2.f16256r;
        if (this.f12340b0.f16240b.b()) {
            j8 = this.f12340b0.f16241c;
        } else {
            RK rk3 = this.f12340b0;
            C1521je c1521je = this.f12330R;
            C2190wN c2190wN3 = rk3.f16240b;
            AbstractC0774Ie abstractC0774Ie = rk3.f16239a;
            if (abstractC0774Ie.o() || abstractC0774Ie.n(c2190wN3.f21690a, c1521je).f19469e) {
                j8 = this.f12340b0.f16241c;
            } else {
                j8 = this.f12340b0.f16256r;
            }
        }
        if (z8) {
            this.f12352n0 = null;
            Pair pairL = L(this.f12340b0.f16239a);
            c2190wN2 = (C2190wN) pairL.first;
            jLongValue = ((Long) pairL.second).longValue();
            j8 = -9223372036854775807L;
            if (c2190wN2.equals(this.f12340b0.f16240b)) {
                j9 = jLongValue;
                j10 = j8;
                z11 = false;
            } else {
                j9 = jLongValue;
                j10 = -9223372036854775807L;
            }
        } else {
            j9 = jLongValue;
            j10 = j8;
            z11 = false;
        }
        this.f12335W.o();
        this.f12347i0 = false;
        AbstractC0774Ie abstractC0774Ie2 = this.f12340b0.f16239a;
        if (z9 && (abstractC0774Ie2 instanceof WK)) {
            WK wk2 = (WK) abstractC0774Ie2;
            WN wn = this.f12336X.f16019l;
            AbstractC0774Ie[] abstractC0774IeArr = wk2.f17206h;
            AbstractC0774Ie[] abstractC0774IeArr2 = new AbstractC0774Ie[abstractC0774IeArr.length];
            for (int i10 = 0; i10 < abstractC0774IeArr.length; i10++) {
                abstractC0774IeArr2[i10] = new VK(abstractC0774IeArr[i10]);
            }
            wk = new WK(abstractC0774IeArr2, wk2.f17207i, wn);
            if (c2190wN2.f21691b != -1) {
                wk.n(c2190wN2.f21690a, this.f12330R);
                C1521je c1521je2 = this.f12330R;
                C2196we c2196we = this.f12329Q;
                wk.e(c1521je2.f19467c, c2196we, 0L);
                if (c2196we.b()) {
                    c2190wN = new C2190wN(c2190wN2.f21690a, c2190wN2.f21693d);
                }
            }
            rk = this.f12340b0;
            int i11 = rk.f16243e;
            C1512jK c1512jK = z10 ? null : rk.f16244f;
            if (z11) {
                c1104bO = C1104bO.f18041d;
            } else {
                c1104bO = rk.f16246h;
            }
            C1104bO c1104bO2 = c1104bO;
            if (z11) {
                c2295yO = this.f12323K;
            } else {
                c2295yO = rk.f16247i;
            }
            C2295yO c2295yO2 = c2295yO;
            if (z11) {
                C1969sA c1969sA = AbstractC2073uA.f21207H;
                list = PA.f15340K;
            } else {
                list = rk.f16248j;
            }
            this.f12340b0 = new RK(wk, c2190wN, j10, j9, i11, c1512jK, false, c1104bO2, c2295yO2, list, c2190wN, rk.f16250l, rk.f16251m, rk.f16252n, rk.f16253o, j9, 0L, j9, 0L);
            if (z9) {
                this.f12335W.p();
                QK qk = this.f12336X;
                HashMap map = qk.f16013f;
                for (NK nk : map.values()) {
                    try {
                        nk.f14899a.l(nk.f14900b);
                    } catch (RuntimeException e10) {
                        Zo.d("MediaSourceList", "Failed to release child source.", e10);
                    }
                    AbstractC1257eN abstractC1257eN = nk.f14899a;
                    C0871Om c0871Om = nk.f14901c;
                    abstractC1257eN.o(c0871Om);
                    nk.f14899a.n(c0871Om);
                }
                map.clear();
                qk.f16014g.clear();
                qk.f16017j = false;
            }
        }
        wk = abstractC0774Ie2;
        c2190wN = c2190wN2;
        rk = this.f12340b0;
        int i12 = rk.f16243e;
        C1512jK c1512jK2 = z10 ? null : rk.f16244f;
        if (z11) {
            c1104bO = C1104bO.f18041d;
        } else {
            c1104bO = rk.f16246h;
        }
        C1104bO c1104bO3 = c1104bO;
        if (z11) {
            c2295yO = this.f12323K;
        } else {
            c2295yO = rk.f16247i;
        }
        C2295yO c2295yO3 = c2295yO;
        if (z11) {
            C1969sA c1969sA2 = AbstractC2073uA.f21207H;
            list = PA.f15340K;
        } else {
            list = rk.f16248j;
        }
        this.f12340b0 = new RK(wk, c2190wN, j10, j9, i12, c1512jK2, false, c1104bO3, c2295yO3, list, c2190wN, rk.f16250l, rk.f16251m, rk.f16252n, rk.f16253o, j9, 0L, j9, 0L);
        if (z9) {
            this.f12335W.p();
            QK qk2 = this.f12336X;
            HashMap map2 = qk2.f16013f;
            while (r5.hasNext()) {
                nk.f14899a.l(nk.f14900b);
                AbstractC1257eN abstractC1257eN2 = nk.f14899a;
                C0871Om c0871Om2 = nk.f14901c;
                abstractC1257eN2.o(c0871Om2);
                nk.f14899a.n(c0871Om2);
            }
            map2.clear();
            qk2.f16014g.clear();
            qk2.f16017j = false;
        }
    }

    public final void m() {
        GK gk = this.f12335W.f13870h;
        boolean z7 = false;
        if (gk != null && gk.f13502f.f13748g && this.f12343e0) {
            z7 = true;
        }
        this.f12344f0 = z7;
    }

    public final void n(long j8) {
        GK gk = this.f12335W.f13870h;
        long j9 = j8 + (gk == null ? 1000000000000L : gk.f13511o);
        this.f12353o0 = j9;
        this.f12332T.f19291a.b(j9);
        AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
        int length = abstractC1048aKArr.length;
        for (int i8 = 0; i8 < 2; i8++) {
            AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i8];
            if (C(abstractC1048aK)) {
                long j10 = this.f12353o0;
                abstractC1048aK.f17879n = false;
                abstractC1048aK.f17877l = j10;
                abstractC1048aK.f17878m = j10;
                abstractC1048aK.A(j10, false);
            }
        }
        for (GK gk2 = r0.f13870h; gk2 != null; gk2 = gk2.f13508l) {
            for (InterfaceC2087uO interfaceC2087uO : gk2.f13510n.f22031c) {
            }
        }
    }

    public final void o(AbstractC0774Ie abstractC0774Ie, AbstractC0774Ie abstractC0774Ie2) {
        if (abstractC0774Ie.o() && abstractC0774Ie2.o()) {
            return;
        }
        ArrayList arrayList = this.f12333U;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            A0.O.I(arrayList.get(size));
            throw null;
        }
    }

    public final void p(long j8) {
        this.f12326N.f21154a.sendEmptyMessageAtTime(2, j8 + ((this.f12340b0.f16243e != 3 || E()) ? f12318x0 : 1000L));
    }

    public final void q(boolean z7) throws C1512jK {
        C2190wN c2190wN = this.f12335W.f13870h.f13502f.f13742a;
        long jK = K(c2190wN, this.f12340b0.f16256r, true, false);
        if (jK != this.f12340b0.f16256r) {
            RK rk = this.f12340b0;
            this.f12340b0 = N(c2190wN, jK, rk.f16241c, rk.f16242d, z7, 5);
        }
    }

    public final void r(int i8, int i9, boolean z7, boolean z8) {
        this.f12341c0.f(z8 ? 1 : 0);
        this.f12340b0 = this.f12340b0.c(z7, i9, i8);
        z(false, false);
        for (GK gk = this.f12335W.f13870h; gk != null; gk = gk.f13508l) {
            for (InterfaceC2087uO interfaceC2087uO : gk.f13510n.f22031c) {
            }
        }
        if (!E()) {
            v();
            x();
            return;
        }
        int i10 = this.f12340b0.f16243e;
        C2054ts c2054ts = this.f12326N;
        if (i10 != 3) {
            if (i10 == 2) {
                c2054ts.c(2);
            }
        } else {
            C1462iK c1462iK = this.f12332T;
            c1462iK.f19296f = true;
            c1462iK.f19291a.c();
            t();
            c2054ts.c(2);
        }
    }

    public final void s(int i8) {
        RK rk = this.f12340b0;
        if (rk.f16243e != i8) {
            if (i8 != 2) {
                this.f12358t0 = -9223372036854775807L;
            }
            this.f12340b0 = rk.e(i8);
        }
    }

    public final void t() {
        GK gk = this.f12335W.f13870h;
        if (gk == null) {
            return;
        }
        C2295yO c2295yO = gk.f13510n;
        int i8 = 0;
        while (true) {
            AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
            int length = abstractC1048aKArr.length;
            if (i8 >= 2) {
                return;
            }
            if (c2295yO.b(i8)) {
                AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i8];
                int i9 = abstractC1048aK.f17873h;
                if (i9 == 1) {
                    p113o3.r.M(i9 == 1);
                    abstractC1048aK.f17873h = 2;
                    abstractC1048aK.e();
                }
            }
            i8++;
        }
    }

    public final void u(boolean z7, boolean z8) {
        l(z7 || !this.f12350l0, false, true, false);
        this.f12341c0.f(z8 ? 1 : 0);
        this.f12324L.d(this.f12338Z);
        s(1);
    }

    public final void v() {
        int i8;
        C1462iK c1462iK = this.f12332T;
        c1462iK.f19296f = false;
        c1462iK.f19291a.d();
        AbstractC1048aK[] abstractC1048aKArr = this.f12319G;
        int length = abstractC1048aKArr.length;
        for (int i9 = 0; i9 < 2; i9++) {
            AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i9];
            if (C(abstractC1048aK) && (i8 = abstractC1048aK.f17873h) == 2) {
                p113o3.r.M(i8 == 2);
                abstractC1048aK.f17873h = 1;
                abstractC1048aK.f();
            }
        }
    }

    public final void w() {
        GK gk = this.f12335W.f13872j;
        boolean z7 = this.f12347i0 || (gk != null && gk.f13497a.zzp());
        RK rk = this.f12340b0;
        if (z7 != rk.f16245g) {
            this.f12340b0 = new RK(rk.f16239a, rk.f16240b, rk.f16241c, rk.f16242d, rk.f16243e, rk.f16244f, z7, rk.f16246h, rk.f16247i, rk.f16248j, rk.f16249k, rk.f16250l, rk.f16251m, rk.f16252n, rk.f16253o, rk.f16254p, rk.f16255q, rk.f16256r, rk.f16257s);
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c3  */
    public final void x() {
        C1778ob c1778obZzc;
        float fMax;
        long jMax;
        GK gk = this.f12335W.f13870h;
        if (gk == null) {
            return;
        }
        long jZzd = gk.f13500d ? gk.f13497a.zzd() : -9223372036854775807L;
        if (jZzd != -9223372036854775807L) {
            if (!gk.h()) {
                this.f12335W.r(gk);
                e(false);
                i();
            }
            n(jZzd);
            if (jZzd != this.f12340b0.f16256r) {
                RK rk = this.f12340b0;
                this.f12340b0 = N(rk.f16240b, jZzd, rk.f16241c, jZzd, true, 5);
            }
        } else {
            C1462iK c1462iK = this.f12332T;
            boolean z7 = gk != this.f12335W.f13871i;
            AbstractC1048aK abstractC1048aK = c1462iK.f19293c;
            C1101bL c1101bL = c1462iK.f19291a;
            if (abstractC1048aK == null || abstractC1048aK.o() || ((z7 && c1462iK.f19293c.f17873h != 2) || (!c1462iK.f19293c.p() && (z7 || c1462iK.f19293c.l())))) {
                c1462iK.f19295e = true;
                if (c1462iK.f19296f) {
                    c1101bL.c();
                }
            } else {
                FK fk = c1462iK.f19294d;
                fk.getClass();
                long jZza = fk.zza();
                if (!c1462iK.f19295e) {
                    c1101bL.b(jZza);
                    c1778obZzc = fk.zzc();
                    if (!c1778obZzc.equals(c1101bL.f18039d)) {
                        c1101bL.a(c1778obZzc);
                        ((BK) c1462iK.f19292b).f12326N.a(16, c1778obZzc).a();
                    }
                } else if (jZza < c1101bL.zza()) {
                    c1101bL.d();
                } else {
                    c1462iK.f19295e = false;
                    if (c1462iK.f19296f) {
                        c1101bL.c();
                    }
                    c1101bL.b(jZza);
                    c1778obZzc = fk.zzc();
                    if (!c1778obZzc.equals(c1101bL.f18039d)) {
                        c1101bL.a(c1778obZzc);
                        ((BK) c1462iK.f19292b).f12326N.a(16, c1778obZzc).a();
                    }
                }
            }
            long jZza2 = c1462iK.zza();
            this.f12353o0 = jZza2;
            long j8 = jZza2 - gk.f13511o;
            long j9 = this.f12340b0.f16256r;
            if (!this.f12333U.isEmpty() && !this.f12340b0.f16240b.b()) {
                if (this.f12356r0) {
                    this.f12356r0 = false;
                }
                RK rk2 = this.f12340b0;
                rk2.f16239a.a(rk2.f16240b.f21690a);
                int iMin = Math.min(this.f12355q0, this.f12333U.size());
                if (iMin > 0) {
                    A0.O.I(this.f12333U.get(iMin - 1));
                }
                if (iMin < this.f12333U.size()) {
                    A0.O.I(this.f12333U.get(iMin));
                }
                this.f12355q0 = iMin;
            }
            if (this.f12332T.zzj()) {
                boolean z8 = !this.f12341c0.f833e;
                RK rk3 = this.f12340b0;
                this.f12340b0 = N(rk3.f16240b, j8, rk3.f16241c, j8, z8, 6);
            } else {
                RK rk4 = this.f12340b0;
                rk4.f16256r = j8;
                rk4.f16257s = SystemClock.elapsedRealtime();
            }
        }
        this.f12340b0.f16254p = this.f12335W.f13872j.b();
        RK rk5 = this.f12340b0;
        long j10 = rk5.f16254p;
        GK gk2 = this.f12335W.f13872j;
        rk5.f16255q = gk2 == null ? 0L : Math.max(0L, j10 - (this.f12353o0 - gk2.f13511o));
        RK rk6 = this.f12340b0;
        if (rk6.f16250l && rk6.f16243e == 3 && F(rk6.f16239a, rk6.f16240b)) {
            RK rk7 = this.f12340b0;
            if (rk7.f16253o.f20290a == 1.0f) {
                C1254eK c1254eK = this.f12361w0;
                long J7 = J(rk7.f16239a, rk7.f16240b.f21690a, rk7.f16256r);
                long j11 = this.f12340b0.f16254p;
                GK gk3 = this.f12335W.f13872j;
                long jMax2 = gk3 == null ? 0L : Math.max(0L, j11 - (this.f12353o0 - gk3.f13511o));
                if (c1254eK.f18504c != -9223372036854775807L) {
                    long j12 = J7 - jMax2;
                    long j13 = c1254eK.f18514m;
                    if (j13 == -9223372036854775807L) {
                        c1254eK.f18514m = j12;
                        c1254eK.f18515n = 0L;
                    } else {
                        long jMax3 = Math.max(j12, (long) ((j12 * 9.999871E-4f) + (j13 * 0.999f)));
                        c1254eK.f18514m = jMax3;
                        c1254eK.f18515n = (long) ((Math.abs(j12 - jMax3) * 9.999871E-4f) + (c1254eK.f18515n * 0.999f));
                    }
                    if (c1254eK.f18513l == -9223372036854775807L || SystemClock.elapsedRealtime() - c1254eK.f18513l >= 1000) {
                        c1254eK.f18513l = SystemClock.elapsedRealtime();
                        long j14 = (c1254eK.f18515n * 3) + c1254eK.f18514m;
                        if (c1254eK.f18509h > j14) {
                            float fT = Et.t(1000L);
                            long[] jArr = {j14, c1254eK.f18506e, c1254eK.f18509h - (((long) ((c1254eK.f18512k - 1.0f) * fT)) + ((long) ((c1254eK.f18510i - 1.0f) * fT)))};
                            jMax = jArr[0];
                            for (int i8 = 1; i8 < 3; i8++) {
                                long j15 = jArr[i8];
                                if (j15 > jMax) {
                                    jMax = j15;
                                }
                            }
                            c1254eK.f18509h = jMax;
                        } else {
                            jMax = Math.max(c1254eK.f18509h, Math.min(J7 - ((long) (Math.max(0.0f, c1254eK.f18512k - 1.0f) / 1.0E-7f)), j14));
                            c1254eK.f18509h = jMax;
                            long j16 = c1254eK.f18508g;
                            if (j16 != -9223372036854775807L && jMax > j16) {
                                c1254eK.f18509h = j16;
                                jMax = j16;
                            }
                        }
                        long j17 = J7 - jMax;
                        fMax = 1.0f;
                        if (Math.abs(j17) < c1254eK.f18502a) {
                            c1254eK.f18512k = 1.0f;
                        } else {
                            fMax = Math.max(c1254eK.f18511j, Math.min((j17 * 1.0E-7f) + 1.0f, c1254eK.f18510i));
                            c1254eK.f18512k = fMax;
                        }
                    } else {
                        fMax = c1254eK.f18512k;
                    }
                } else {
                    fMax = 1.0f;
                }
                if (this.f12332T.zzc().f20290a != fMax) {
                    C1778ob c1778ob = new C1778ob(fMax, this.f12340b0.f16253o.f20291b);
                    this.f12326N.f21154a.removeMessages(16);
                    this.f12332T.a(c1778ob);
                    h(this.f12340b0.f16253o, this.f12332T.zzc().f20290a, false, false);
                }
            }
        }
    }

    public final void y(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN, AbstractC0774Ie abstractC0774Ie2, C2190wN c2190wN2, long j8, boolean z7) {
        if (!F(abstractC0774Ie, c2190wN)) {
            C1778ob c1778ob = c2190wN.b() ? C1778ob.f20289d : this.f12340b0.f16253o;
            C1462iK c1462iK = this.f12332T;
            if (c1462iK.zzc().equals(c1778ob)) {
                return;
            }
            this.f12326N.f21154a.removeMessages(16);
            c1462iK.a(c1778ob);
            h(this.f12340b0.f16253o, c1778ob.f20290a, false, false);
            return;
        }
        Object obj = c2190wN.f21690a;
        C1521je c1521je = this.f12330R;
        int i8 = abstractC0774Ie.n(obj, c1521je).f19467c;
        C2196we c2196we = this.f12329Q;
        abstractC0774Ie.e(i8, c2196we, 0L);
        A4 a8 = c2196we.f21715h;
        int i9 = Et.f13234a;
        C1254eK c1254eK = this.f12361w0;
        c1254eK.getClass();
        a8.getClass();
        long jT = Et.t(-9223372036854775807L);
        c1254eK.f18504c = jT;
        c1254eK.f18507f = jT;
        c1254eK.f18508g = jT;
        c1254eK.f18511j = 0.97f;
        c1254eK.f18510i = 1.03f;
        c1254eK.b();
        if (j8 != -9223372036854775807L) {
            c1254eK.f18505d = J(abstractC0774Ie, obj, j8);
            c1254eK.b();
            return;
        }
        if (!Objects.equals(!abstractC0774Ie2.o() ? abstractC0774Ie2.e(abstractC0774Ie2.n(c2190wN2.f21690a, c1521je).f19467c, c2196we, 0L).f21708a : null, c2196we.f21708a) || z7) {
            c1254eK.f18505d = -9223372036854775807L;
            c1254eK.b();
        }
    }

    public final void z(boolean z7, boolean z8) {
        this.f12345g0 = z7;
        long jElapsedRealtime = -9223372036854775807L;
        if (z7 && !z8) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.f12346h0 = jElapsedRealtime;
    }
}
