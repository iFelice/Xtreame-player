package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RK {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final C2190wN f16238t = new C2190wN(new Object(), -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC0774Ie f16239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2190wN f16240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f16242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1512jK f16244f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f16245g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1104bO f16246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C2295yO f16247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f16248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C2190wN f16249k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f16250l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f16251m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f16252n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C1778ob f16253o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile long f16254p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile long f16255q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile long f16256r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile long f16257s;

    public RK(AbstractC0774Ie abstractC0774Ie, C2190wN c2190wN, long j8, long j9, int i8, C1512jK c1512jK, boolean z7, C1104bO c1104bO, C2295yO c2295yO, List list, C2190wN c2190wN2, boolean z8, int i9, int i10, C1778ob c1778ob, long j10, long j11, long j12, long j13) {
        this.f16239a = abstractC0774Ie;
        this.f16240b = c2190wN;
        this.f16241c = j8;
        this.f16242d = j9;
        this.f16243e = i8;
        this.f16244f = c1512jK;
        this.f16245g = z7;
        this.f16246h = c1104bO;
        this.f16247i = c2295yO;
        this.f16248j = list;
        this.f16249k = c2190wN2;
        this.f16250l = z8;
        this.f16251m = i9;
        this.f16252n = i10;
        this.f16253o = c1778ob;
        this.f16254p = j10;
        this.f16255q = j11;
        this.f16256r = j12;
        this.f16257s = j13;
    }

    public static RK g(C2295yO c2295yO) {
        C0904Rd c0904Rd = AbstractC0774Ie.f13891a;
        C2190wN c2190wN = f16238t;
        return new RK(c0904Rd, c2190wN, -9223372036854775807L, 0L, 1, null, false, C1104bO.f18041d, c2295yO, PA.f15340K, c2190wN, false, 1, 0, C1778ob.f20289d, 0L, 0L, 0L, 0L);
    }

    public final RK a(C2190wN c2190wN) {
        return new RK(this.f16239a, this.f16240b, this.f16241c, this.f16242d, this.f16243e, this.f16244f, this.f16245g, this.f16246h, this.f16247i, this.f16248j, c2190wN, this.f16250l, this.f16251m, this.f16252n, this.f16253o, this.f16254p, this.f16255q, this.f16256r, this.f16257s);
    }

    public final RK b(C2190wN c2190wN, long j8, long j9, long j10, long j11, C1104bO c1104bO, C2295yO c2295yO, List list) {
        C2190wN c2190wN2 = this.f16249k;
        boolean z7 = this.f16250l;
        int i8 = this.f16251m;
        int i9 = this.f16252n;
        C1778ob c1778ob = this.f16253o;
        long j12 = this.f16254p;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        return new RK(this.f16239a, c2190wN, j9, j10, this.f16243e, this.f16244f, this.f16245g, c1104bO, c2295yO, list, c2190wN2, z7, i8, i9, c1778ob, j12, j11, j8, jElapsedRealtime);
    }

    public final RK c(boolean z7, int i8, int i9) {
        return new RK(this.f16239a, this.f16240b, this.f16241c, this.f16242d, this.f16243e, this.f16244f, this.f16245g, this.f16246h, this.f16247i, this.f16248j, this.f16249k, z7, i8, i9, this.f16253o, this.f16254p, this.f16255q, this.f16256r, this.f16257s);
    }

    public final RK d(C1512jK c1512jK) {
        return new RK(this.f16239a, this.f16240b, this.f16241c, this.f16242d, this.f16243e, c1512jK, this.f16245g, this.f16246h, this.f16247i, this.f16248j, this.f16249k, this.f16250l, this.f16251m, this.f16252n, this.f16253o, this.f16254p, this.f16255q, this.f16256r, this.f16257s);
    }

    public final RK e(int i8) {
        return new RK(this.f16239a, this.f16240b, this.f16241c, this.f16242d, i8, this.f16244f, this.f16245g, this.f16246h, this.f16247i, this.f16248j, this.f16249k, this.f16250l, this.f16251m, this.f16252n, this.f16253o, this.f16254p, this.f16255q, this.f16256r, this.f16257s);
    }

    public final RK f(AbstractC0774Ie abstractC0774Ie) {
        return new RK(abstractC0774Ie, this.f16240b, this.f16241c, this.f16242d, this.f16243e, this.f16244f, this.f16245g, this.f16246h, this.f16247i, this.f16248j, this.f16249k, this.f16250l, this.f16251m, this.f16252n, this.f16253o, this.f16254p, this.f16255q, this.f16256r, this.f16257s);
    }

    public final boolean h() {
        return this.f16243e == 3 && this.f16250l && this.f16252n == 0;
    }
}
