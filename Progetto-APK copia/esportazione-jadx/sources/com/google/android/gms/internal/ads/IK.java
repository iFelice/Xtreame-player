package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class IK {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC1152cL f13865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC2101un f13866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f13867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13869g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public GK f13870h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public GK f13871i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public GK f13872j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13873k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Object f13874l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f13875m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Xu f13877o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1521je f13863a = new C1521je();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2196we f13864b = new C2196we();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f13876n = new ArrayList();

    public IK(InterfaceC1152cL interfaceC1152cL, C2054ts c2054ts, Xu xu, C1720nK c1720nK) {
        this.f13865c = interfaceC1152cL;
        this.f13866d = c2054ts;
        this.f13877o = xu;
    }

    public static C2190wN b(AbstractC0774Ie abstractC0774Ie, Object obj, long j8, long j9, C2196we c2196we, C1521je c1521je) {
        abstractC0774Ie.n(obj, c1521je);
        abstractC0774Ie.e(c1521je.f19467c, c2196we, 0L);
        abstractC0774Ie.a(obj);
        c1521je.f19470f.getClass();
        abstractC0774Ie.n(obj, c1521je);
        c1521je.f19470f.a(-1);
        int i8 = C1027a.f17819f;
        return new C2190wN(obj, -1, j9);
    }

    public final HK a(AbstractC0774Ie abstractC0774Ie, Object obj, long j8, long j9, long j10) {
        C1521je c1521je = this.f13863a;
        abstractC0774Ie.n(obj, c1521je);
        c1521je.getClass();
        c1521je.f19470f.getClass();
        C2190wN c2190wN = new C2190wN(obj, -1, j10);
        boolean z7 = !c2190wN.b();
        boolean zE = e(abstractC0774Ie, c2190wN);
        boolean zD = d(abstractC0774Ie, c2190wN, z7);
        long j11 = c1521je.f19468d;
        return new HK(c2190wN, (j11 == -9223372036854775807L || j8 < j11) ? j8 : Math.max(0L, (-1) + j11), j9, -9223372036854775807L, j11, z7, zE, zD);
    }

    public final void c() {
        C1917rA c1917rA = new C1917rA();
        for (GK gk = this.f13870h; gk != null; gk = gk.f13508l) {
            c1917rA.b(gk.f13502f.f13742a);
        }
        GK gk2 = this.f13871i;
        ((C2054ts) this.f13866d).b(new K.a(this, c1917rA, gk2 == null ? null : gk2.f13502f.f13742a, 26, 0));
    }

    public final boolean d(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN, boolean z7) {
        int iA = abstractC0774Ie.a(c2190wN.f21690a);
        if (!abstractC0774Ie.e(abstractC0774Ie.d(iA, this.f13863a, false).f19467c, this.f13864b, 0L).f21714g) {
            if (abstractC0774Ie.i(iA, this.f13863a, this.f13864b, this.f13868f, this.f13869g) == -1 && z7) {
                return true;
            }
        }
        return false;
    }

    public final boolean e(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN) {
        if (!(!c2190wN.b() && c2190wN.f21694e == -1)) {
            return false;
        }
        Object obj = c2190wN.f21690a;
        return abstractC0774Ie.e(abstractC0774Ie.n(obj, this.f13863a).f19467c, this.f13864b, 0L).f21719l == abstractC0774Ie.a(obj);
    }

    public final boolean f(AbstractC0774Ie abstractC0774Ie) {
        GK gk;
        GK gk2 = this.f13870h;
        if (gk2 == null) {
            return true;
        }
        int iA = abstractC0774Ie.a(gk2.f13498b);
        while (true) {
            iA = abstractC0774Ie.i(iA, this.f13863a, this.f13864b, this.f13868f, this.f13869g);
            while (true) {
                gk2.getClass();
                gk = gk2.f13508l;
                if (gk == null || gk2.f13502f.f13747f) {
                    break;
                }
                gk2 = gk;
            }
            if (iA == -1 || gk == null || abstractC0774Ie.a(gk.f13498b) != iA) {
                break;
            }
            gk2 = gk;
        }
        boolean zR = r(gk2);
        gk2.f13502f = m(abstractC0774Ie, gk2.f13502f);
        return !zR;
    }

    public final GK g() {
        GK gk = this.f13870h;
        if (gk == null) {
            return null;
        }
        if (gk == this.f13871i) {
            this.f13871i = gk.f13508l;
        }
        gk.g();
        int i8 = this.f13873k - 1;
        this.f13873k = i8;
        if (i8 == 0) {
            this.f13872j = null;
            GK gk2 = this.f13870h;
            this.f13874l = gk2.f13498b;
            this.f13875m = gk2.f13502f.f13742a.f21693d;
        }
        this.f13870h = this.f13870h.f13508l;
        c();
        return this.f13870h;
    }

    public final GK h() {
        GK gk = this.f13871i;
        p113o3.r.x(gk);
        this.f13871i = gk.f13508l;
        c();
        GK gk2 = this.f13871i;
        p113o3.r.x(gk2);
        return gk2;
    }

    public final GK i(HK hk) {
        GK gk;
        GK gk2 = this.f13872j;
        long j8 = hk.f13743b;
        long j9 = gk2 == null ? 1000000000000L : (gk2.f13511o + gk2.f13502f.f13746e) - j8;
        int i8 = 0;
        while (true) {
            if (i8 >= this.f13876n.size()) {
                gk = null;
                break;
            }
            HK hk2 = ((GK) this.f13876n.get(i8)).f13502f;
            long j10 = hk2.f13746e;
            if ((j10 == -9223372036854775807L || j10 == hk.f13746e) && hk2.f13743b == j8 && hk2.f13742a.equals(hk.f13742a)) {
                gk = (GK) this.f13876n.remove(i8);
                break;
            }
            i8++;
        }
        if (gk == null) {
            BK bk = (BK) this.f13877o.f17529H;
            gk = new GK(bk.f12321I, j9, bk.f12322J, bk.f12324L.zzj(), bk.f12336X, hk, bk.f12323K);
        } else {
            gk.f13502f = hk;
            gk.f13511o = j9;
        }
        GK gk3 = this.f13872j;
        if (gk3 == null) {
            this.f13870h = gk;
            this.f13871i = gk;
        } else if (gk != gk3.f13508l) {
            gk3.i();
            gk3.f13508l = gk;
        }
        this.f13874l = null;
        this.f13872j = gk;
        this.f13873k++;
        c();
        return gk;
    }

    public final GK j() {
        return this.f13870h;
    }

    public final GK k() {
        return this.f13871i;
    }

    public final HK l(long j8, RK rk) {
        GK gk = this.f13872j;
        return gk == null ? y(rk.f16239a, rk.f16240b, rk.f16241c, rk.f16256r) : x(rk.f16239a, gk, j8);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x006e  */
    public final HK m(AbstractC0774Ie abstractC0774Ie, HK hk) {
        long j8;
        long jA;
        long j9;
        C2190wN c2190wN = hk.f13742a;
        boolean zB = c2190wN.b();
        int i8 = c2190wN.f21694e;
        boolean z7 = !zB && i8 == -1;
        boolean zE = e(abstractC0774Ie, c2190wN);
        boolean zD = d(abstractC0774Ie, c2190wN, z7);
        Object obj = hk.f13742a.f21690a;
        C1521je c1521je = this.f13863a;
        abstractC0774Ie.n(obj, c1521je);
        if (c2190wN.b() || i8 == -1) {
            j8 = -9223372036854775807L;
        } else {
            c1521je.f19470f.a(i8).getClass();
            j8 = 0;
        }
        boolean zB2 = c2190wN.b();
        int i9 = c2190wN.f21691b;
        if (!zB2) {
            if (j8 != -9223372036854775807L) {
                j8 = 0;
                j9 = 0;
            } else {
                jA = c1521je.f19468d;
            }
            if (c2190wN.b()) {
                c1521je.c(i9);
            } else if (i8 != -1) {
                c1521je.c(i8);
            }
            return new HK(c2190wN, hk.f13743b, hk.f13744c, j8, j9, z7, zE, zD);
        }
        jA = c1521je.a(i9, c2190wN.f21692c);
        j9 = jA;
        if (c2190wN.b()) {
            c1521je.c(i9);
        } else if (i8 != -1) {
            c1521je.c(i8);
        }
        return new HK(c2190wN, hk.f13743b, hk.f13744c, j8, j9, z7, zE, zD);
    }

    public final C2190wN n(AbstractC0774Ie abstractC0774Ie, Object obj, long j8) {
        long jW;
        int iA;
        C1521je c1521je = this.f13863a;
        int i8 = abstractC0774Ie.n(obj, c1521je).f19467c;
        Object obj2 = this.f13874l;
        if (obj2 == null || (iA = abstractC0774Ie.a(obj2)) == -1 || abstractC0774Ie.d(iA, c1521je, false).f19467c != i8) {
            GK gk = this.f13870h;
            while (true) {
                if (gk == null) {
                    GK gk2 = this.f13870h;
                    while (true) {
                        if (gk2 == null) {
                            jW = w(obj);
                            if (jW != -1) {
                                break;
                            }
                            jW = this.f13867e;
                            this.f13867e = 1 + jW;
                            if (this.f13870h != null) {
                                break;
                            }
                            this.f13874l = obj;
                            this.f13875m = jW;
                            break;
                        }
                        int iA2 = abstractC0774Ie.a(gk2.f13498b);
                        if (iA2 != -1 && abstractC0774Ie.d(iA2, c1521je, false).f19467c == i8) {
                            jW = gk2.f13502f.f13742a.f21693d;
                            break;
                        }
                        gk2 = gk2.f13508l;
                    }
                } else {
                    if (gk.f13498b.equals(obj)) {
                        jW = gk.f13502f.f13742a.f21693d;
                        break;
                    }
                    gk = gk.f13508l;
                }
            }
        } else {
            jW = this.f13875m;
        }
        long j9 = jW;
        abstractC0774Ie.n(obj, c1521je);
        int i9 = c1521je.f19467c;
        C2196we c2196we = this.f13864b;
        abstractC0774Ie.e(i9, c2196we, 0L);
        for (int iA3 = abstractC0774Ie.a(obj); iA3 >= c2196we.f21718k; iA3--) {
            abstractC0774Ie.d(iA3, c1521je, true);
            c1521je.f19470f.getClass();
            c1521je.f19470f.a(-1);
            int i10 = C1027a.f17819f;
        }
        return b(abstractC0774Ie, obj, j8, j9, c2196we, this.f13863a);
    }

    public final void o() {
        if (this.f13873k == 0) {
            return;
        }
        GK gk = this.f13870h;
        p113o3.r.x(gk);
        this.f13874l = gk.f13498b;
        this.f13875m = gk.f13502f.f13742a.f21693d;
        while (gk != null) {
            gk.g();
            gk = gk.f13508l;
        }
        this.f13870h = null;
        this.f13872j = null;
        this.f13871i = null;
        this.f13873k = 0;
        c();
    }

    public final void p() {
        if (this.f13876n.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < this.f13876n.size(); i8++) {
            ((GK) this.f13876n.get(i8)).g();
        }
        this.f13876n = arrayList;
    }

    public final void q(C1720nK c1720nK) {
        c1720nK.getClass();
        p();
    }

    public final boolean r(GK gk) {
        p113o3.r.x(gk);
        int i8 = 0;
        if (gk.equals(this.f13872j)) {
            return false;
        }
        this.f13872j = gk;
        boolean z7 = false;
        while (true) {
            gk = gk.f13508l;
            if (gk == null) {
                break;
            }
            if (gk == this.f13871i) {
                this.f13871i = this.f13870h;
                z7 = true;
            }
            gk.g();
            this.f13873k--;
        }
        GK gk2 = this.f13872j;
        gk2.getClass();
        if (gk2.f13508l != null) {
            gk2.i();
            gk2.f13508l = null;
            while (true) {
                C2295yO c2295yO = gk2.f13510n;
                if (i8 >= c2295yO.f22029a) {
                    break;
                }
                c2295yO.b(i8);
                InterfaceC2087uO interfaceC2087uO = gk2.f13510n.f22031c[i8];
                i8++;
            }
        }
        c();
        return z7;
    }

    public final boolean s() {
        GK gk = this.f13872j;
        if (gk != null) {
            return !gk.f13502f.f13749h && gk.h() && this.f13872j.f13502f.f13746e != -9223372036854775807L && this.f13873k < 100;
        }
        return true;
    }

    public final boolean t(AbstractC0774Ie abstractC0774Ie, long j8, long j9) {
        HK hkM;
        HK hk;
        GK gk = this.f13870h;
        GK gk2 = null;
        while (gk != null) {
            HK hk2 = gk.f13502f;
            if (gk2 == null) {
                hkM = m(abstractC0774Ie, hk2);
            } else {
                HK hkX = x(abstractC0774Ie, gk2, j8);
                if (hkX == null) {
                    return !r(gk2);
                }
                if (hk2.f13743b != hkX.f13743b || !hk2.f13742a.equals(hkX.f13742a)) {
                    return !r(gk2);
                }
                hkM = hkX;
            }
            long j10 = hk2.f13744c;
            if (j10 == hkM.f13744c) {
                hk = hkM;
            } else {
                hk = new HK(hkM.f13742a, hkM.f13743b, j10, hkM.f13745d, hkM.f13746e, hkM.f13747f, hkM.f13748g, hkM.f13749h);
            }
            gk.f13502f = hk;
            long j11 = hk2.f13746e;
            if (j11 != -9223372036854775807L) {
                long j12 = hkM.f13746e;
                if (j11 != j12) {
                    InterfaceC2138vN interfaceC2138vN = gk.f13497a;
                    if (interfaceC2138vN instanceof C1413hN) {
                        long j13 = hk.f13745d;
                        if (j13 == -9223372036854775807L) {
                            j13 = Long.MIN_VALUE;
                        }
                        ((C1413hN) interfaceC2138vN).f19089K = j13;
                    }
                    return (r(gk) || (gk == this.f13871i && ((j9 > Long.MIN_VALUE ? 1 : (j9 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j9 > ((j12 > (-9223372036854775807L) ? 1 : (j12 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : gk.f13511o + j12) ? 1 : (j9 == ((j12 > (-9223372036854775807L) ? 1 : (j12 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : gk.f13511o + j12) ? 0 : -1)) >= 0))) ? false : true;
                }
            }
            gk2 = gk;
            gk = gk.f13508l;
        }
        return true;
    }

    public final boolean u(AbstractC0774Ie abstractC0774Ie, int i8) {
        this.f13868f = i8;
        return f(abstractC0774Ie);
    }

    public final boolean v(AbstractC0774Ie abstractC0774Ie, boolean z7) {
        this.f13869g = z7;
        return f(abstractC0774Ie);
    }

    public final long w(Object obj) {
        for (int i8 = 0; i8 < this.f13876n.size(); i8++) {
            GK gk = (GK) this.f13876n.get(i8);
            if (gk.f13498b.equals(obj)) {
                return gk.f13502f.f13742a.f21693d;
            }
        }
        return -1L;
    }

    public final HK x(AbstractC0774Ie abstractC0774Ie, GK gk, long j8) {
        int i8;
        long jLongValue;
        int i9;
        C2190wN c2190wN;
        long j9;
        long j10;
        long jW;
        HK hk = gk.f13502f;
        long j11 = (gk.f13511o + hk.f13746e) - j8;
        boolean z7 = hk.f13747f;
        C1521je c1521je = this.f13863a;
        long j12 = hk.f13744c;
        C2190wN c2190wN2 = hk.f13742a;
        if (z7) {
            int i10 = abstractC0774Ie.i(abstractC0774Ie.a(c2190wN2.f21690a), this.f13863a, this.f13864b, this.f13868f, this.f13869g);
            if (i10 != -1) {
                int i11 = abstractC0774Ie.d(i10, c1521je, true).f19467c;
                Object obj = c1521je.f19466b;
                obj.getClass();
                if (abstractC0774Ie.e(i11, this.f13864b, 0L).f21718k == i10) {
                    Pair pairM = abstractC0774Ie.m(this.f13864b, this.f13863a, i11, -9223372036854775807L, Math.max(0L, j11));
                    if (pairM != null) {
                        obj = pairM.first;
                        long jLongValue2 = ((Long) pairM.second).longValue();
                        GK gk2 = gk.f13508l;
                        if (gk2 == null || !gk2.f13498b.equals(obj)) {
                            jW = w(obj);
                            if (jW == -1) {
                                jW = this.f13867e;
                                this.f13867e = 1 + jW;
                            }
                        } else {
                            jW = gk2.f13502f.f13742a.f21693d;
                        }
                        j10 = jLongValue2;
                        j9 = -9223372036854775807L;
                        c2190wN = c2190wN2;
                    }
                } else {
                    c2190wN = c2190wN2;
                    j9 = 0;
                    j10 = 0;
                    jW = c2190wN.f21693d;
                }
                C2190wN c2190wNB = b(abstractC0774Ie, obj, j10, jW, this.f13864b, this.f13863a);
                if (j9 != -9223372036854775807L && j12 != -9223372036854775807L) {
                    abstractC0774Ie.n(c2190wN.f21690a, c1521je).f19470f.getClass();
                    c1521je.f19470f.getClass();
                }
                return y(abstractC0774Ie, c2190wNB, j9, j10);
            }
        } else {
            abstractC0774Ie.n(c2190wN2.f21690a, c1521je);
            boolean zB = c2190wN2.b();
            Object obj2 = c2190wN2.f21690a;
            if (!zB) {
                int i12 = c2190wN2.f21694e;
                if (i12 != -1) {
                    c1521je.f19470f.getClass();
                    if (i12 == -1) {
                        c1521je.f19470f.a(-1);
                        int i13 = C1027a.f17819f;
                    }
                }
                C1027a c1027aA = c1521je.f19470f.a(i12);
                int i14 = 0;
                while (true) {
                    int[] iArr = c1027aA.f17823d;
                    if (i14 >= iArr.length || (i8 = iArr[i14]) == 0 || i8 == 1) {
                        break;
                    }
                    i14++;
                }
                c1521je.c(i12);
                if (i14 != c1521je.f19470f.a(i12).f17820a) {
                    return z(abstractC0774Ie, c2190wN2.f21690a, c2190wN2.f21694e, i14, hk.f13746e, c2190wN2.f21693d);
                }
                abstractC0774Ie.n(obj2, c1521je);
                c1521je.f19470f.a(i12).getClass();
                c1521je.f19470f.a(i12).getClass();
                return a(abstractC0774Ie, c2190wN2.f21690a, 0L, hk.f13746e, c2190wN2.f21693d);
            }
            T5 t7 = c1521je.f19470f;
            int i15 = c2190wN2.f21691b;
            if (t7.a(i15).f17820a != -1) {
                C1027a c1027aA2 = c1521je.f19470f.a(i15);
                int i16 = c2190wN2.f21692c + 1;
                while (true) {
                    int[] iArr2 = c1027aA2.f17823d;
                    if (i16 >= iArr2.length || (i9 = iArr2[i16]) == 0 || i9 == 1) {
                        break;
                    }
                    i16++;
                }
                if (i16 < 0) {
                    return z(abstractC0774Ie, c2190wN2.f21690a, i15, i16, hk.f13744c, c2190wN2.f21693d);
                }
                if (j12 == -9223372036854775807L) {
                    Pair pairM2 = abstractC0774Ie.m(this.f13864b, c1521je, c1521je.f19467c, -9223372036854775807L, Math.max(0L, j11));
                    if (pairM2 != null) {
                        jLongValue = ((Long) pairM2.second).longValue();
                    }
                } else {
                    jLongValue = j12;
                }
                abstractC0774Ie.n(obj2, c1521je);
                T5 t8 = c1521je.f19470f;
                int i17 = c2190wN2.f21691b;
                t8.a(i17).getClass();
                c1521je.f19470f.a(i17).getClass();
                return a(abstractC0774Ie, c2190wN2.f21690a, Math.max(0L, jLongValue), hk.f13744c, c2190wN2.f21693d);
            }
        }
        return null;
    }

    public final HK y(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN, long j8, long j9) {
        abstractC0774Ie.n(c2190wN.f21690a, this.f13863a);
        if (!c2190wN.b()) {
            return a(abstractC0774Ie, c2190wN.f21690a, j9, j8, c2190wN.f21693d);
        }
        return z(abstractC0774Ie, c2190wN.f21690a, c2190wN.f21691b, c2190wN.f21692c, j8, c2190wN.f21693d);
    }

    public final HK z(AbstractC0774Ie abstractC0774Ie, Object obj, int i8, int i9, long j8, long j9) {
        int i10;
        C2190wN c2190wN = new C2190wN(obj, i8, i9, j9, -1);
        C1521je c1521je = this.f13863a;
        long jA = abstractC0774Ie.n(obj, c1521je).a(i8, i9);
        C1027a c1027aA = c1521je.f19470f.a(i8);
        int i11 = 0;
        while (true) {
            int[] iArr = c1027aA.f17823d;
            if (i11 >= iArr.length || (i10 = iArr[i11]) == 0 || i10 == 1) {
                break;
            }
            i11++;
        }
        if (i9 == i11) {
            c1521je.f19470f.getClass();
        }
        c1521je.c(i8);
        long jMax = 0;
        if (jA != -9223372036854775807L && jA <= 0) {
            jMax = Math.max(0L, (-1) + jA);
        }
        return new HK(c2190wN, jMax, j8, -9223372036854775807L, jA, false, false, false);
    }
}
