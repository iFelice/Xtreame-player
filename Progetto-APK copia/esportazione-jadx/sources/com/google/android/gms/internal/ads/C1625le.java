package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.le, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1625le {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f19805a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p113o3.L f19806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1781oe f19807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f19808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f19809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p120p3.a f19810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f19811g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0848Nd f19812h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Boolean f19813i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicInteger f19814j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f19815k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1573ke f19816l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Object f19817m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public D4.b f19818n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AtomicBoolean f19819o;

    public C1625le() {
        p113o3.L l4 = new p113o3.L();
        this.f19806b = l4;
        this.f19807c = new C1781oe(C3097p.f26618f.f26621c, l4);
        this.f19808d = false;
        this.f19812h = null;
        this.f19813i = null;
        this.f19814j = new AtomicInteger(0);
        this.f19815k = new AtomicInteger(0);
        this.f19816l = new C1573ke();
        this.f19817m = new Object();
        this.f19819o = new AtomicBoolean();
    }

    public final boolean a(Context context) {
        if (U2.m.a()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.J7)).booleanValue()) {
                return this.f19819o.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final Resources b() {
        if (this.f19810f.f28199J) {
            return this.f19809e.getResources();
        }
        try {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ha)).booleanValue()) {
                return com.google.android.gms.internal.measurement.H1.J(this.f19809e).f6428a.getResources();
            }
            com.google.android.gms.internal.measurement.H1.J(this.f19809e).f6428a.getResources();
            return null;
        } catch (p120p3.j e8) {
            p120p3.h.h("Cannot load resource from dynamite apk or local jar", e8);
            return null;
        }
    }

    public final C0848Nd c() {
        C0848Nd c0848Nd;
        synchronized (this.f19805a) {
            c0848Nd = this.f19812h;
        }
        return c0848Nd;
    }

    public final p113o3.L d() {
        p113o3.L l4;
        synchronized (this.f19805a) {
            l4 = this.f19806b;
        }
        return l4;
    }

    public final D4.b e() {
        if (this.f19809e != null) {
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15584B2)).booleanValue()) {
                synchronized (this.f19817m) {
                    try {
                        D4.b bVar = this.f19818n;
                        if (bVar != null) {
                            return bVar;
                        }
                        D4.b bVarB = AbstractC1988se.f20906a.b(new CallableC1419he(this, 0));
                        this.f19818n = bVarB;
                        return bVarB;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return Cw.N1(new ArrayList());
    }

    public final Boolean f() {
        Boolean bool;
        synchronized (this.f19805a) {
            bool = this.f19813i;
        }
        return bool;
    }

    public final void g(Context context, p120p3.a aVar) {
        C0848Nd c0848Nd;
        synchronized (this.f19805a) {
            try {
                if (!this.f19808d) {
                    this.f19809e = context.getApplicationContext();
                    this.f19810f = aVar;
                    p083k3.l.f25980A.f25986f.n(this.f19807c);
                    this.f19806b.F(this.f19809e);
                    C0667Bc.d(this.f19809e, this.f19810f);
                    J7 j8 = Q7.f15694P1;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        c0848Nd = new C0848Nd(1);
                    } else {
                        p113o3.I.k("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                        c0848Nd = null;
                    }
                    this.f19812h = c0848Nd;
                    if (c0848Nd != null) {
                        AbstractC2987b.d0(new p105n3.j(this).b(), "AppState.registerCsiReporter");
                    }
                    if (U2.m.a()) {
                        if (((Boolean) c3099q.f26627c.a(Q7.J7)).booleanValue()) {
                            try {
                                ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new p082k2.h(this, 3));
                            } catch (RuntimeException e8) {
                                p120p3.h.h("Failed to register network callback", e8);
                                this.f19819o.set(true);
                            }
                        }
                    }
                    this.f19808d = true;
                    e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p083k3.l.f25980A.f25983c.w(context, aVar.f28196G);
    }

    public final void h(String str, Throwable th) {
        C0667Bc.d(this.f19809e, this.f19810f).c(th, str, ((Double) B8.f12293g.l()).floatValue());
    }

    public final void i(String str, Throwable th) {
        C0667Bc.d(this.f19809e, this.f19810f).b(str, th);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0037 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:4:0x0007, B:6:0x000b, B:8:0x001d, B:10:0x002d, B:13:0x0037, B:14:0x003f), top: B:19:0x0007 }] */
    public final void j(String str, Throwable th) {
        Context context = this.f19809e;
        p120p3.a aVar = this.f19810f;
        synchronized (C0667Bc.f12367Q) {
            try {
                if (C0667Bc.f12369S == null) {
                    J7 j8 = Q7.f15776Z6;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        if (((Boolean) c3099q.f26627c.a(Q7.f15769Y6)).booleanValue()) {
                            C0667Bc.f12369S = new C0650Aa(7);
                        } else {
                            C0667Bc.f12369S = new C0667Bc(context, aVar);
                        }
                    } else {
                        C0667Bc.f12369S = new C0650Aa(7);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        C0667Bc.f12369S.b(str, th);
    }

    public final void k(Boolean bool) {
        synchronized (this.f19805a) {
            this.f19813i = bool;
        }
    }
}
