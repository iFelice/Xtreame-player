package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1668mK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f19930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Nr f19931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1564kK f19932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Mx f19933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Gz f19934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Gz f19935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C1616lK f19936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C2064u1 f19937h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Looper f19938i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f19939j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C1097bH f19940k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f19941l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f19942m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ZK f19943n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f19944o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f19945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f19946q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f19947r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String f19948s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final C1254eK f19949t;

    public C1668mK(Context context, C2093uf c2093uf) {
        C1564kK c1564kK = new C1564kK(c2093uf);
        Mx mx = new Mx(context);
        P7 p7 = new P7(context, 1);
        C1079b c1079b = new C1079b(4);
        C1616lK c1616lK = new C1616lK(context);
        C2064u1 c2064u1 = new C2064u1(22);
        context.getClass();
        this.f19930a = context;
        this.f19932c = c1564kK;
        this.f19933d = mx;
        this.f19934e = p7;
        this.f19935f = c1079b;
        this.f19936g = c1616lK;
        this.f19937h = c2064u1;
        int i8 = Et.f13234a;
        Looper looperMyLooper = Looper.myLooper();
        this.f19938i = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
        this.f19940k = C1097bH.f18033b;
        this.f19941l = 1;
        this.f19942m = true;
        this.f19943n = ZK.f17760c;
        this.f19949t = new C1254eK(Et.t(20L), Et.t(500L));
        this.f19931b = InterfaceC1840pl.f20481a;
        this.f19944o = 500L;
        this.f19945p = 2000L;
        this.f19946q = true;
        this.f19948s = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f19939j = -1000;
    }
}
