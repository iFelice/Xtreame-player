package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1273eo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f18590d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f18592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final WeakReference f18593g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1894qn f18594h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f18595i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Executor f18596j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ScheduledExecutorService f18597k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0813Kn f18598l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p120p3.a f18599m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0660Ak f18601o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Uw f18602p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f18587a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f18588b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f18589c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C2040te f18591e = new C2040te();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ConcurrentHashMap f18600n = new ConcurrentHashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f18603q = true;

    public C1273eo(Executor executor, Context context, WeakReference weakReference, C1936re c1936re, C1894qn c1894qn, ScheduledExecutorService scheduledExecutorService, C0813Kn c0813Kn, p120p3.a aVar, C0660Ak c0660Ak, Uw uw) {
        this.f18594h = c1894qn;
        this.f18592f = context;
        this.f18593g = weakReference;
        this.f18595i = c1936re;
        this.f18597k = scheduledExecutorService;
        this.f18596j = executor;
        this.f18598l = c0813Kn;
        this.f18599m = aVar;
        this.f18601o = c0660Ak;
        this.f18602p = uw;
        p083k3.l.f25980A.f25990j.getClass();
        this.f18590d = SystemClock.elapsedRealtime();
        d("com.google.android.gms.ads.MobileAds", 0, HttpUrl.FRAGMENT_ENCODE_SET, false);
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        ConcurrentHashMap concurrentHashMap = this.f18600n;
        for (String str : concurrentHashMap.keySet()) {
            C1311fa c1311fa = (C1311fa) concurrentHashMap.get(str);
            arrayList.add(new C1311fa(str, c1311fa.f18763I, c1311fa.f18764J, c1311fa.f18762H));
        }
        return arrayList;
    }

    public final void b() {
        final int i8 = 0;
        final int i9 = 1;
        if (!((Boolean) AbstractC2227x8.f21841a.l()).booleanValue()) {
            int i10 = this.f18599m.f28198I;
            J7 j8 = Q7.f15615F1;
            C3099q c3099q = C3099q.f26624d;
            if (i10 >= ((Integer) c3099q.f26627c.a(j8)).intValue() && this.f18603q) {
                if (this.f18587a) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (this.f18587a) {
                            return;
                        }
                        this.f18598l.d();
                        this.f18601o.a();
                        this.f18591e.a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Yn

                            /* JADX INFO: renamed from: H, reason: collision with root package name */
                            public final /* synthetic */ C1273eo f17644H;

                            {
                                this.f17644H = this;
                            }

                            private final void a() {
                                C1273eo c1273eo = this.f17644H;
                                synchronized (c1273eo) {
                                    try {
                                        if (c1273eo.f18589c) {
                                            return;
                                        }
                                        p083k3.l.f25980A.f25990j.getClass();
                                        c1273eo.d("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - c1273eo.f18590d), "Timeout.", false);
                                        c1273eo.f18598l.a("com.google.android.gms.ads.MobileAds", "timeout");
                                        c1273eo.f18601o.d("com.google.android.gms.ads.MobileAds", "timeout");
                                        c1273eo.f18591e.c(new Exception());
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i9) {
                                    case 0:
                                        a();
                                        return;
                                    default:
                                        C1273eo c1273eo = this.f17644H;
                                        C0813Kn c0813Kn = c1273eo.f18598l;
                                        synchronized (c0813Kn) {
                                            try {
                                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue() && !c0813Kn.f14406d) {
                                                    HashMap mapE = c0813Kn.e();
                                                    mapE.put("action", "init_finished");
                                                    c0813Kn.f14404b.add(mapE);
                                                    Iterator it = c0813Kn.f14404b.iterator();
                                                    while (it.hasNext()) {
                                                        c0813Kn.f14408f.a((Map) it.next(), false);
                                                    }
                                                    c0813Kn.f14406d = true;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        c1273eo.f18601o.b();
                                        c1273eo.f18588b = true;
                                        return;
                                }
                            }
                        }, this.f18595i);
                        this.f18587a = true;
                        D4.b bVarC = c();
                        this.f18597k.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Yn

                            /* JADX INFO: renamed from: H, reason: collision with root package name */
                            public final /* synthetic */ C1273eo f17644H;

                            {
                                this.f17644H = this;
                            }

                            private final void a() {
                                C1273eo c1273eo = this.f17644H;
                                synchronized (c1273eo) {
                                    try {
                                        if (c1273eo.f18589c) {
                                            return;
                                        }
                                        p083k3.l.f25980A.f25990j.getClass();
                                        c1273eo.d("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - c1273eo.f18590d), "Timeout.", false);
                                        c1273eo.f18598l.a("com.google.android.gms.ads.MobileAds", "timeout");
                                        c1273eo.f18601o.d("com.google.android.gms.ads.MobileAds", "timeout");
                                        c1273eo.f18591e.c(new Exception());
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i8) {
                                    case 0:
                                        a();
                                        return;
                                    default:
                                        C1273eo c1273eo = this.f17644H;
                                        C0813Kn c0813Kn = c1273eo.f18598l;
                                        synchronized (c0813Kn) {
                                            try {
                                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue() && !c0813Kn.f14406d) {
                                                    HashMap mapE = c0813Kn.e();
                                                    mapE.put("action", "init_finished");
                                                    c0813Kn.f14404b.add(mapE);
                                                    Iterator it = c0813Kn.f14404b.iterator();
                                                    while (it.hasNext()) {
                                                        c0813Kn.f14408f.a((Map) it.next(), false);
                                                    }
                                                    c0813Kn.f14406d = true;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        c1273eo.f18601o.b();
                                        c1273eo.f18588b = true;
                                        return;
                                }
                            }
                        }, ((Long) c3099q.f26627c.a(Q7.f15631H1)).longValue(), TimeUnit.SECONDS);
                        Cw.h2(bVarC, new C0864Of(this, 14), this.f18595i);
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        if (this.f18587a) {
            return;
        }
        d("com.google.android.gms.ads.MobileAds", 0, HttpUrl.FRAGMENT_ENCODE_SET, true);
        this.f18591e.b(Boolean.FALSE);
        this.f18587a = true;
        this.f18588b = true;
    }

    public final synchronized D4.b c() {
        p083k3.l lVar = p083k3.l.f25980A;
        String str = lVar.f25987g.d().y().f18944e;
        if (!TextUtils.isEmpty(str)) {
            return Cw.N1(str);
        }
        C2040te c2040te = new C2040te();
        p113o3.L lD = lVar.f25987g.d();
        lD.f27896c.add(new RunnableC0755Ha(28, this, c2040te));
        return c2040te;
    }

    public final void d(String str, int i8, String str2, boolean z7) {
        this.f18600n.put(str, new C1311fa(str, i8, str2, z7));
    }
}
