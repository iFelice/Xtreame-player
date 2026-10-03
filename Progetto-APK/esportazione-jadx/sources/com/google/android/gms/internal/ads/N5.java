package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class N5 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Activity f14880G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Application f14881H;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public RunnableC0878Pf f14887N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f14889P;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f14882I = new Object();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f14883J = true;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f14884K = false;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ArrayList f14885L = new ArrayList();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ArrayList f14886M = new ArrayList();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f14888O = false;

    public final void a(O5 o7) {
        synchronized (this.f14882I) {
            this.f14885L.add(o7);
        }
    }

    public final void b(C0717Eh c0717Eh) {
        synchronized (this.f14882I) {
            this.f14885L.remove(c0717Eh);
        }
    }

    public final void c(Activity activity) {
        synchronized (this.f14882I) {
            try {
                if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                    this.f14880G = activity;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f14882I) {
            try {
                Activity activity2 = this.f14880G;
                if (activity2 == null) {
                    return;
                }
                if (activity2.equals(activity)) {
                    this.f14880G = null;
                }
                Iterator it = this.f14886M.iterator();
                while (it.hasNext()) {
                    A0.O.I(it.next());
                    try {
                        throw null;
                    } catch (Exception e8) {
                        p083k3.l.f25980A.f25987g.i("AppActivityTracker.ActivityListener.onActivityDestroyed", e8);
                        p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        c(activity);
        synchronized (this.f14882I) {
            Iterator it = this.f14886M.iterator();
            while (it.hasNext()) {
                A0.O.I(it.next());
                try {
                    throw null;
                } catch (Exception e8) {
                    p083k3.l.f25980A.f25987g.i("AppActivityTracker.ActivityListener.onActivityPaused", e8);
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                }
            }
        }
        this.f14884K = true;
        RunnableC0878Pf runnableC0878Pf = this.f14887N;
        if (runnableC0878Pf != null) {
            p113o3.O.f27924l.removeCallbacks(runnableC0878Pf);
        }
        p113o3.J j8 = p113o3.O.f27924l;
        RunnableC0878Pf runnableC0878Pf2 = new RunnableC0878Pf(this, 6);
        this.f14887N = runnableC0878Pf2;
        j8.postDelayed(runnableC0878Pf2, this.f14889P);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        c(activity);
        this.f14884K = false;
        boolean z7 = !this.f14883J;
        this.f14883J = true;
        RunnableC0878Pf runnableC0878Pf = this.f14887N;
        if (runnableC0878Pf != null) {
            p113o3.O.f27924l.removeCallbacks(runnableC0878Pf);
        }
        synchronized (this.f14882I) {
            Iterator it = this.f14886M.iterator();
            while (it.hasNext()) {
                A0.O.I(it.next());
                try {
                    throw null;
                } catch (Exception e8) {
                    p083k3.l.f25980A.f25987g.i("AppActivityTracker.ActivityListener.onActivityResumed", e8);
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                }
            }
            if (z7) {
                Iterator it2 = this.f14885L.iterator();
                while (it2.hasNext()) {
                    try {
                        ((O5) it2.next()).a(true);
                    } catch (Exception e9) {
                        p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                    }
                }
            } else {
                p120p3.h.b("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
