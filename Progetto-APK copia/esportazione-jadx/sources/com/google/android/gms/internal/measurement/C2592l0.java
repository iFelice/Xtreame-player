package com.google.android.gms.internal.measurement;

import Y.RunnableC0394f;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Objects;
import p021c4.C0591j0;
import p021c4.C0595k1;
import p021c4.C0597l0;
import p021c4.C0619x;
import p021c4.RunnableC0586h1;
import p021c4.RunnableC0615v;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2592l0 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23191G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f23192H;

    public /* synthetic */ C2592l0(Object obj, int i8) {
        this.f23191G = i8;
        this.f23192H = obj;
    }

    public final void a(W w7, Bundle bundle) {
        Uri uri;
        Object obj = this.f23192H;
        try {
            try {
                p021c4.K0 k8 = (p021c4.K0) obj;
                C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                p021c4.T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11047T.a("onActivityCreated");
                Intent intent = w7.f23027I;
                if (intent != null) {
                    Uri data = intent.getData();
                    if (data == null || !data.isHierarchical()) {
                        Bundle extras = intent.getExtras();
                        uri = null;
                        if (extras != null) {
                            String string = extras.getString("com.android.vending.referral_url");
                            if (!TextUtils.isEmpty(string)) {
                                data = Uri.parse(string);
                                uri = data;
                            }
                        }
                    } else {
                        uri = data;
                    }
                    if (uri != null && uri.isHierarchical()) {
                        C0597l0.i(c0597l0.f11261R);
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        String str = ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "gs" : "auto";
                        String queryParameter = uri.getQueryParameter("referrer");
                        boolean z7 = bundle == null;
                        C0591j0 c0591j0 = c0597l0.f11259P;
                        C0597l0.k(c0591j0);
                        c0591j0.x(new RunnableC0394f(this, z7, uri, str, queryParameter));
                        p021c4.V0 v5 = ((C0597l0) ((p021c4.K0) obj).f10616G).f11264U;
                        C0597l0.j(v5);
                        v5.w(w7, bundle);
                        return;
                    }
                }
                p021c4.V0 v7 = ((C0597l0) k8.f10616G).f11264U;
                C0597l0.j(v7);
                v7.w(w7, bundle);
            } catch (RuntimeException e8) {
                p021c4.T t8 = ((C0597l0) ((p021c4.K0) obj).f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Throwable caught in onActivityCreated");
            }
        } catch (Throwable th) {
            p021c4.V0 v8 = ((C0597l0) ((p021c4.K0) obj).f10616G).f11264U;
            C0597l0.j(v8);
            v8.w(w7, bundle);
            throw th;
        }
    }

    public final void b(W w7) {
        p021c4.V0 v5 = ((C0597l0) ((p021c4.K0) this.f23192H).f10616G).f11264U;
        C0597l0.j(v5);
        synchronized (v5.f11071R) {
            try {
                if (Objects.equals(v5.f11066M, w7)) {
                    v5.f11066M = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (((C0597l0) v5.f10616G).f11256M.C()) {
            v5.f11065L.remove(Integer.valueOf(w7.f23025G));
        }
    }

    public final void c(W w7) {
        int i8;
        C0597l0 c0597l0 = (C0597l0) ((p021c4.K0) this.f23192H).f10616G;
        p021c4.V0 v5 = c0597l0.f11264U;
        C0597l0.j(v5);
        synchronized (v5.f11071R) {
            v5.f11070Q = false;
            i8 = 1;
            v5.f11067N = true;
        }
        C0597l0 c0597l1 = (C0597l0) v5.f10616G;
        c0597l1.f11263T.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (c0597l1.f11256M.C()) {
            p021c4.S0 s0X = v5.x(w7);
            v5.f11063J = v5.f11062I;
            v5.f11062I = null;
            C0591j0 c0591j0 = c0597l1.f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new p135r2.j(v5, s0X, jElapsedRealtime, 2));
        } else {
            v5.f11062I = null;
            C0591j0 c0591j1 = c0597l1.f11259P;
            C0597l0.k(c0591j1);
            c0591j1.x(new RunnableC0615v(v5, jElapsedRealtime, i8));
        }
        C0595k1 c0595k1 = c0597l0.f11260Q;
        C0597l0.j(c0595k1);
        C0597l0 c0597l2 = (C0597l0) c0595k1.f10616G;
        c0597l2.f11263T.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        C0591j0 c0591j2 = c0597l2.f11259P;
        C0597l0.k(c0591j2);
        c0591j2.x(new RunnableC0586h1(c0595k1, jElapsedRealtime2, i8));
    }

    public final void d(W w7) {
        C0597l0 c0597l0 = (C0597l0) ((p021c4.K0) this.f23192H).f10616G;
        C0595k1 c0595k1 = c0597l0.f11260Q;
        C0597l0.j(c0595k1);
        C0597l0 c0597l1 = (C0597l0) c0595k1.f10616G;
        c0597l1.f11263T.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        C0591j0 c0591j0 = c0597l1.f11259P;
        C0597l0.k(c0591j0);
        int i8 = 0;
        c0591j0.x(new RunnableC0586h1(c0595k1, jElapsedRealtime, i8));
        p021c4.V0 v5 = c0597l0.f11264U;
        C0597l0.j(v5);
        Object obj = v5.f11071R;
        synchronized (obj) {
            int i9 = 1;
            v5.f11070Q = true;
            if (!Objects.equals(w7, v5.f11066M)) {
                synchronized (obj) {
                    v5.f11066M = w7;
                    v5.f11067N = false;
                    C0597l0 c0597l2 = (C0597l0) v5.f10616G;
                    if (c0597l2.f11256M.C()) {
                        v5.f11068O = null;
                        C0591j0 c0591j1 = c0597l2.f11259P;
                        C0597l0.k(c0591j1);
                        c0591j1.x(new p021c4.U0(v5, i9));
                    }
                }
            }
        }
        C0597l0 c0597l3 = (C0597l0) v5.f10616G;
        if (!c0597l3.f11256M.C()) {
            v5.f11062I = v5.f11068O;
            C0591j0 c0591j2 = c0597l3.f11259P;
            C0597l0.k(c0591j2);
            c0591j2.x(new p021c4.U0(v5, i8));
            return;
        }
        v5.q(w7.f23026H, v5.x(w7), false);
        C0619x c0619x = ((C0597l0) v5.f10616G).f11266W;
        C0597l0.h(c0619x);
        C0597l0 c0597l4 = (C0597l0) c0619x.f10616G;
        c0597l4.f11263T.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        C0591j0 c0591j3 = c0597l4.f11259P;
        C0597l0.k(c0591j3);
        c0591j3.x(new RunnableC0615v(c0619x, jElapsedRealtime2, i8));
    }

    public final void e(W w7, Bundle bundle) {
        p021c4.S0 s7;
        p021c4.V0 v5 = ((C0597l0) ((p021c4.K0) this.f23192H).f10616G).f11264U;
        C0597l0.j(v5);
        if (!((C0597l0) v5.f10616G).f11256M.C() || bundle == null || (s7 = (p021c4.S0) v5.f11065L.get(Integer.valueOf(w7.f23025G))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", s7.f11032c);
        bundle2.putString("name", s7.f11030a);
        bundle2.putString("referrer_name", s7.f11031b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        switch (this.f23191G) {
            case 0:
                ((C2598m0) this.f23192H).b(new C2562g0(this, bundle, activity));
                break;
            default:
                a(W.i(activity), bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        switch (this.f23191G) {
            case 0:
                ((C2598m0) this.f23192H).b(new C2586k0(this, activity, 4));
                break;
            default:
                b(W.i(activity));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        switch (this.f23191G) {
            case 0:
                ((C2598m0) this.f23192H).b(new C2586k0(this, activity, 2));
                break;
            default:
                c(W.i(activity));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        switch (this.f23191G) {
            case 0:
                ((C2598m0) this.f23192H).b(new C2586k0(this, activity, 1));
                break;
            default:
                d(W.i(activity));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        switch (this.f23191G) {
            case 0:
                H h8 = new H();
                ((C2598m0) this.f23192H).b(new C2562g0(this, activity, h8));
                Bundle bundleJ0 = h8.j0(50L);
                if (bundleJ0 != null) {
                    bundle.putAll(bundleJ0);
                }
                break;
            default:
                e(W.i(activity), bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.f23191G) {
            case 0:
                ((C2598m0) this.f23192H).b(new C2586k0(this, activity, 0));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        switch (this.f23191G) {
            case 0:
                ((C2598m0) this.f23192H).b(new C2586k0(this, activity, 3));
                break;
        }
    }
}
