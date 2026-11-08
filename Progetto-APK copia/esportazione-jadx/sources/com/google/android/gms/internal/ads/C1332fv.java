package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import okhttp3.HttpUrl;
import p021c4.C0621y;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1332fv implements InterfaceC1795os {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f18833G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f18834H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC1317fg f18835I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1433hs f18836J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C1535js f18837K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final FrameLayout f18838L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Z7 f18839M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0966Vj f18840N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Uw f18841O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C1579kk f18842P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Xv f18843Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public Fw f18844R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f18845S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public C3117z0 f18846T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public InterfaceC1743ns f18847U;

    public C1332fv(Context context, Executor executor, p090l3.d1 d1Var, AbstractC1317fg abstractC1317fg, C1433hs c1433hs, C1535js c1535js, Xv xv, C1579kk c1579kk) {
        this.f18833G = context;
        this.f18834H = executor;
        this.f18835I = abstractC1317fg;
        this.f18836J = c1433hs;
        this.f18837K = c1535js;
        this.f18843Q = xv;
        C0671Bg c0671Bg = (C0671Bg) abstractC1317fg;
        this.f18840N = new C0966Vj((ScheduledExecutorService) c0671Bg.f12436e.zzb(), (P3.a) c0671Bg.f12440g.zzb());
        this.f18841O = abstractC1317fg.d();
        this.f18838L = new FrameLayout(context);
        this.f18842P = c1579kk;
        xv.f17531b = d1Var;
        this.f18845S = true;
        this.f18846T = null;
        this.f18847U = null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean a() {
        Fw fw = this.f18844R;
        return (fw == null || fw.f13441I.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean b(p090l3.b1 b1Var, String str, Q3.b bVar, InterfaceC1743ns interfaceC1743ns) {
        C0776Ig c0776Ig;
        Tw tw;
        Executor executor = this.f18834H;
        if (str == null) {
            p120p3.h.d("Ad unit ID should not be null for banner ad.");
            executor.execute(new RunnableC1280ev(this, 1));
            return false;
        }
        boolean zA = a();
        Xv xv = this.f18843Q;
        if (!zA) {
            J7 j8 = Q7.h8;
            C3099q c3099q = C3099q.f26624d;
            boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
            AbstractC1317fg abstractC1317fg = this.f18835I;
            if (zBooleanValue && b1Var.f26522L) {
                ((C1895qo) ((C0671Bg) abstractC1317fg).f12467w.zzb()).e(true);
            }
            Pair pair = new Pair("api-call", Long.valueOf(b1Var.f26542f0));
            p083k3.l.f25980A.f25990j.getClass();
            Bundle bundleE = U2.m.e(pair, new Pair("dynamite-enter", Long.valueOf(System.currentTimeMillis())));
            xv.f17532c = str;
            xv.f17530a = b1Var;
            xv.f17549t = bundleE;
            Yv yvA = xv.a();
            int iM = com.google.android.gms.internal.measurement.H1.M(yvA);
            Context context = this.f18833G;
            Ow owO = U4.a.o(context, iM, 3, b1Var);
            boolean zBooleanValue2 = ((Boolean) AbstractC2227x8.f21845e.l()).booleanValue();
            C1433hs c1433hs = this.f18836J;
            if (!zBooleanValue2 || !xv.f17531b.f26558Q) {
                boolean zBooleanValue3 = ((Boolean) c3099q.f26627c.a(Q7.w7)).booleanValue();
                FrameLayout frameLayout = this.f18838L;
                C1579kk c1579kk = this.f18842P;
                C0966Vj c0966Vj = this.f18840N;
                if (zBooleanValue3) {
                    C0671Bg c0671Bg = ((C0671Bg) abstractC1317fg).f12432c;
                    C1217dj c1217dj = new C1217dj();
                    c1217dj.f18346a = context;
                    c1217dj.f18347b = yvA;
                    C1217dj c1217dj2 = new C1217dj(c1217dj);
                    C1994sk c1994sk = new C1994sk();
                    c1994sk.b(c1433hs, executor);
                    c1994sk.c(c1433hs, executor);
                    c0776Ig = new C0776Ig(c0671Bg, new C0807Kh(frameLayout), new C1632ll(C0856Nl.f15074h, null), new C0621y(4), new C2046tk(c1994sk), c1217dj2, new C2053tr(), new Qr(this.f18839M), new C1889qi(c0966Vj, c1579kk), null, null);
                } else {
                    C0671Bg c0671Bg2 = ((C0671Bg) abstractC1317fg).f12432c;
                    C1217dj c1217dj3 = new C1217dj();
                    c1217dj3.f18346a = context;
                    c1217dj3.f18347b = yvA;
                    C1217dj c1217dj4 = new C1217dj(c1217dj3);
                    C1994sk c1994sk2 = new C1994sk();
                    c1994sk2.b(c1433hs, executor);
                    C0825Lk c0825Lk = new C0825Lk(c1433hs, executor);
                    HashSet hashSet = c1994sk2.f20925c;
                    hashSet.add(c0825Lk);
                    hashSet.add(new C0825Lk(this.f18837K, executor));
                    c1994sk2.d(c1433hs, executor);
                    c1994sk2.f20928f.add(new C0825Lk(c1433hs, executor));
                    c1994sk2.f20927e.add(new C0825Lk(c1433hs, executor));
                    c1994sk2.f20930h.add(new C0825Lk(c1433hs, executor));
                    c1994sk2.a(c1433hs, executor);
                    c1994sk2.c(c1433hs, executor);
                    c1994sk2.f20935m.add(new C0825Lk(c1433hs, executor));
                    c0776Ig = new C0776Ig(c0671Bg2, new C0807Kh(frameLayout), new C1632ll(C0856Nl.f15074h, null), new C0621y(4), new C2046tk(c1994sk2), c1217dj4, new C2053tr(), new Qr(this.f18839M), new C1889qi(c0966Vj, c1579kk), null, null);
                }
                if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
                    Tw tw2 = (Tw) c0776Ig.f13951W.zzb();
                    tw2.i(3);
                    tw2.b(b1Var.f26532V);
                    tw2.f(b1Var.f26529S);
                    tw = tw2;
                } else {
                    tw = null;
                }
                this.f18847U = interfaceC1743ns;
                C0823Li c0823Li = (C0823Li) c0776Ig.f13974i0.zzb();
                Fw fwA = c0823Li.a(c0823Li.b());
                this.f18844R = fwA;
                Cw.h2(fwA, new C2246xc(this, tw, owO, c0776Ig, 18, 0), executor);
                return true;
            }
            if (c1433hs != null) {
                c1433hs.y(p113o3.r.H(7, null, null));
            }
        } else if (!xv.f17545p) {
            this.f18845S = true;
        }
        return false;
    }

    public final void c() {
        int i8;
        C1579kk c1579kk = this.f18842P;
        C0966Vj c0966Vj = this.f18840N;
        synchronized (c1579kk) {
            i8 = c1579kk.f19629H;
        }
        c0966Vj.b1(i8);
    }

    public final void d() {
        synchronized (this) {
            try {
                Fw fw = this.f18844R;
                if (fw != null && fw.f13441I.isDone()) {
                    try {
                        AbstractC0852Nh abstractC0852Nh = (AbstractC0852Nh) this.f18844R.f13441I.get();
                        this.f18844R = null;
                        this.f18838L.removeAllViews();
                        if (abstractC0852Nh.d() != null) {
                            ViewParent parent = abstractC0852Nh.d().getParent();
                            if (parent instanceof ViewGroup) {
                                String str = HttpUrl.FRAGMENT_ENCODE_SET;
                                BinderC1630lj binderC1630lj = abstractC0852Nh.f21917f;
                                if (binderC1630lj != null) {
                                    str = binderC1630lj.f19824G;
                                }
                                p120p3.h.g("Banner view provided from " + str + " already has a parent view. Removing its old parent.");
                                ((ViewGroup) parent).removeView(abstractC0852Nh.d());
                            }
                        }
                        J7 j8 = Q7.w7;
                        C3099q c3099q = C3099q.f26624d;
                        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                            C0864Of c0864Of = abstractC0852Nh.f21918g.f18546G;
                            C1433hs c1433hs = this.f18836J;
                            Object obj = c0864Of.f15180H;
                            ((C1269ek) obj).f18547H = c1433hs;
                            ((C1269ek) obj).f18548I = this.f18837K;
                        }
                        this.f18838L.addView(abstractC0852Nh.d());
                        this.f18847U.mo3zzb(abstractC0852Nh);
                        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                            Executor executor = this.f18834H;
                            C1433hs c1433hs2 = this.f18836J;
                            Objects.requireNonNull(c1433hs2);
                            executor.execute(new RunnableC1026Zn(c1433hs2, 11));
                        }
                        if (abstractC0852Nh.b() >= 0) {
                            this.f18845S = false;
                            this.f18840N.a1(abstractC0852Nh.b());
                            this.f18840N.b1(abstractC0852Nh.c());
                        } else {
                            this.f18845S = true;
                            this.f18840N.a1(abstractC0852Nh.c());
                        }
                    } catch (InterruptedException e8) {
                        e = e8;
                        f();
                        p113o3.I.l("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.f18845S = true;
                        this.f18840N.zza();
                    } catch (ExecutionException e9) {
                        e = e9;
                        f();
                        p113o3.I.l("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.f18845S = true;
                        this.f18840N.zza();
                    }
                } else if (this.f18844R != null) {
                    p113o3.I.k("Show timer went off but there is an ongoing ad request.");
                    this.f18845S = true;
                } else {
                    p113o3.I.k("No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad.");
                    this.f18845S = true;
                    this.f18840N.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e() {
        Object parent = this.f18838L.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        Context context = view.getContext();
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return p113o3.O.o(view, powerManager, keyguardManager);
    }

    public final void f() {
        this.f18844R = null;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.w7)).booleanValue()) {
            this.f18834H.execute(new RunnableC1280ev(this, 0));
        }
        InterfaceC1743ns interfaceC1743ns = this.f18847U;
        if (interfaceC1743ns != null) {
            interfaceC1743ns.zza();
        }
    }
}
