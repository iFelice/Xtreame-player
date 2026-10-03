package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1958s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1699n f20815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U0.C f20816b = new U0.C();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Ks f20817c = new Ks();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Ks f20818d = new Ks();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CO f20819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C2043th f20820f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C2043th f20821g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f20822h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f20823i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MN f20824j;

    public C1958s(MN mn, C1699n c1699n) {
        this.f20824j = mn;
        this.f20815a = c1699n;
        CO co = new CO();
        int i8 = 16;
        if (Integer.bitCount(16) != 1) {
            int iHighestOneBit = Integer.highestOneBit(15);
            i8 = iHighestOneBit + iHighestOneBit;
        }
        co.f12628a = 0;
        co.f12629b = 0;
        co.f12631d = new long[i8];
        co.f12630c = i8 - 1;
        this.f20819e = co;
        this.f20821g = C2043th.f21089d;
        this.f20823i = -9223372036854775807L;
    }

    public static Object b(Ks ks) {
        int i8;
        synchronized (ks) {
            i8 = ks.f14428d;
        }
        p113o3.r.J(i8 > 0);
        while (ks.a() > 1) {
            ks.b();
        }
        Object objB = ks.b();
        objB.getClass();
        return objB;
    }

    public final void a() {
        int i8;
        CO co = this.f20819e;
        co.f12628a = 0;
        co.f12629b = 0;
        this.f20823i = -9223372036854775807L;
        Ks ks = this.f20818d;
        synchronized (ks) {
            i8 = ks.f14428d;
        }
        if (i8 > 0) {
            ks.d((Long) b(ks), 0L);
        }
        C2043th c2043th = this.f20820f;
        Ks ks2 = this.f20817c;
        if (c2043th != null) {
            ks2.e();
        } else if (ks2.a() > 0) {
            this.f20820f = (C2043th) b(ks2);
        }
    }
}
