package p021c4;

import P3.a;
import P3.b;
import S3.g;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.C2592l0;
import com.google.android.gms.internal.measurement.L1;
import com.google.android.gms.internal.measurement.M1;
import com.google.android.gms.internal.measurement.P1;
import com.google.android.gms.internal.measurement.U1;
import com.google.android.gms.internal.measurement.V;
import com.google.android.gms.internal.measurement.X1;
import com.google.android.gms.internal.measurement.Z1;
import java.util.concurrent.atomic.AtomicInteger;
import p190y4.k;

/* JADX INFO: renamed from: c4.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0597l0 implements InterfaceC0612t0 {

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static volatile C0597l0 f11249n0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f11250G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f11251H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11252I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f11253J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f11254K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final g f11255L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C0584h f11256M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Z f11257N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final T f11258O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C0591j0 f11259P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final C0595k1 f11260Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final I1 f11261R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final O f11262S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final b f11263T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final V0 f11264U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final K0 f11265V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final C0619x f11266W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final N0 f11267X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final String f11268Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public N f11269Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public C0574d1 f11270a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public r f11271b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public L f11272c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public P0 f11273d0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Boolean f11275f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public long f11276g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public volatile Boolean f11277h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public volatile boolean f11278i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f11279j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f11280k0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final long f11282m0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f11274e0 = false;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final AtomicInteger f11281l0 = new AtomicInteger(0);

    public C0597l0(A0 a8) {
        Context context = a8.f10641a;
        g gVar = new g(20, 0);
        this.f11255L = gVar;
        Cw.f12725i = gVar;
        this.f11250G = context;
        this.f11251H = a8.f10642b;
        this.f11252I = a8.f10643c;
        this.f11253J = a8.f10644d;
        this.f11254K = a8.f10648h;
        this.f11277h0 = a8.f10645e;
        this.f11268Y = a8.f10650j;
        int i8 = 1;
        this.f11278i0 = true;
        if (X1.f23042g == null && context != null) {
            Object obj = X1.f23041f;
            synchronized (obj) {
                try {
                    if (X1.f23042g == null) {
                        synchronized (obj) {
                            try {
                                L1 l4 = X1.f23042g;
                                Context applicationContext = context.getApplicationContext();
                                if (applicationContext == null) {
                                    applicationContext = context;
                                }
                                if (l4 == null || l4.f22954a != applicationContext) {
                                    if (l4 != null) {
                                        M1.d();
                                        Z1.a();
                                        P1.c();
                                    }
                                    X1.f23042g = new L1(applicationContext, k.Y(new U1(applicationContext)));
                                    X1.f23043h.incrementAndGet();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f11263T = b.f5909a;
        Long l8 = a8.f10649i;
        this.f11282m0 = l8 != null ? l8.longValue() : System.currentTimeMillis();
        C0584h c0584h = new C0584h();
        c0584h.f10616G = this;
        c0584h.f11193J = new U4.b();
        this.f11256M = c0584h;
        Z z7 = new Z(this);
        z7.p();
        this.f11257N = z7;
        T t7 = new T(this);
        t7.p();
        this.f11258O = t7;
        I1 i9 = new I1(this);
        i9.p();
        this.f11261R = i9;
        this.f11262S = new O(new C0594k0(this, 0));
        this.f11266W = new C0619x(this);
        V0 v5 = new V0(this);
        v5.o();
        this.f11264U = v5;
        K0 k8 = new K0(this);
        k8.o();
        this.f11265V = k8;
        C0595k1 c0595k1 = new C0595k1(this);
        c0595k1.o();
        this.f11260Q = c0595k1;
        N0 n7 = new N0(this);
        n7.p();
        this.f11267X = n7;
        C0591j0 c0591j0 = new C0591j0(this);
        c0591j0.p();
        this.f11259P = c0591j0;
        V v7 = a8.f10647g;
        int i10 = (v7 == null || v7.f23012H == 0) ? 1 : 0;
        if (context.getApplicationContext() instanceof Application) {
            j(k8);
            if (((C0597l0) k8.f10616G).f11250G.getApplicationContext() instanceof Application) {
                Application application = (Application) ((C0597l0) k8.f10616G).f11250G.getApplicationContext();
                if (k8.f10909I == null) {
                    k8.f10909I = new C2592l0(k8, i8);
                }
                if (i10 != 0) {
                    application.unregisterActivityLifecycleCallbacks(k8.f10909I);
                    application.registerActivityLifecycleCallbacks(k8.f10909I);
                    T t8 = ((C0597l0) k8.f10616G).f11258O;
                    k(t8);
                    t8.f11047T.a("Registered activity lifecycle callback");
                }
            }
        } else {
            k(t7);
            t7.f11042O.a("Application context is not an Application");
        }
        c0591j0.x(new K3.V(6, this, a8));
    }

    public static final void h(AbstractC0623z abstractC0623z) {
        if (abstractC0623z == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void i(AbstractC0610s0 abstractC0610s0) {
        if (abstractC0610s0 == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void j(B b8) {
        if (b8 == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!b8.f10688H) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(b8.getClass())));
        }
    }

    public static final void k(AbstractC0610s0 abstractC0610s0) {
        if (abstractC0610s0 == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!abstractC0610s0.f11367H) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(abstractC0610s0.getClass())));
        }
    }

    public static C0597l0 q(Context context, V v5, Long l4) {
        Bundle bundle;
        if (v5 != null && (v5.f23015K == null || v5.f23016L == null)) {
            v5 = new V(v5.f23011G, v5.f23012H, v5.f23013I, v5.f23014J, null, null, v5.f23017M, null);
        }
        c.h(context);
        c.h(context.getApplicationContext());
        if (f11249n0 == null) {
            synchronized (C0597l0.class) {
                try {
                    if (f11249n0 == null) {
                        f11249n0 = new C0597l0(new A0(context, v5, l4));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (v5 != null && (bundle = v5.f23017M) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            c.h(f11249n0);
            f11249n0.f11277h0 = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        c.h(f11249n0);
        return f11249n0;
    }

    @Override // p021c4.InterfaceC0612t0
    public final g a() {
        return this.f11255L;
    }

    @Override // p021c4.InterfaceC0612t0
    public final T b() {
        T t7 = this.f11258O;
        k(t7);
        return t7;
    }

    @Override // p021c4.InterfaceC0612t0
    public final a c() {
        return this.f11263T;
    }

    @Override // p021c4.InterfaceC0612t0
    public final C0591j0 d() {
        C0591j0 c0591j0 = this.f11259P;
        k(c0591j0);
        return c0591j0;
    }

    public final void e() {
        this.f11279j0++;
    }

    public final boolean f() {
        return l() == 0;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0034  */
    /* JADX WARN: Code duplicated, block: B:25:0x0076  */
    /* JADX WARN: Code duplicated, block: B:28:0x007f  */
    public final boolean g() {
        I1 i8;
        boolean zC0;
        boolean z7;
        boolean z8;
        if (!this.f11274e0) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        C0591j0 c0591j0 = this.f11259P;
        k(c0591j0);
        c0591j0.m();
        Boolean bool = this.f11275f0;
        b bVar = this.f11263T;
        if (bool == null || this.f11276g0 == 0) {
            bVar.getClass();
            this.f11276g0 = SystemClock.elapsedRealtime();
            i8 = this.f11261R;
            i(i8);
            zC0 = i8.c0("android.permission.INTERNET");
            C0584h c0584h = this.f11256M;
            z7 = true;
            if (zC0 || !i8.c0("android.permission.ACCESS_NETWORK_STATE")) {
                z8 = false;
            } else {
                Context context = this.f11250G;
                if (Q3.c.a(context).d() || c0584h.p() || (I1.j0(context) && I1.l0(context))) {
                    z8 = true;
                } else {
                    z8 = false;
                }
            }
            this.f11275f0 = Boolean.valueOf(z8);
            if (z8) {
                if (!i8.W(n().u(), n().s()) && (c0584h.B(null, E.f10814q1) || TextUtils.isEmpty(n().s()))) {
                    z7 = false;
                }
                this.f11275f0 = Boolean.valueOf(z7);
            }
        } else if (!bool.booleanValue()) {
            bVar.getClass();
            if (Math.abs(SystemClock.elapsedRealtime() - this.f11276g0) > 1000) {
                bVar.getClass();
                this.f11276g0 = SystemClock.elapsedRealtime();
                i8 = this.f11261R;
                i(i8);
                zC0 = i8.c0("android.permission.INTERNET");
                C0584h c0584h2 = this.f11256M;
                z7 = true;
                if (zC0) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                this.f11275f0 = Boolean.valueOf(z8);
                if (z8) {
                    if (!i8.W(n().u(), n().s())) {
                        z7 = false;
                    }
                    this.f11275f0 = Boolean.valueOf(z7);
                }
            }
        }
        return this.f11275f0.booleanValue();
    }

    public final int l() {
        C0591j0 c0591j0 = this.f11259P;
        k(c0591j0);
        c0591j0.m();
        C0584h c0584h = this.f11256M;
        if (c0584h.n()) {
            return 1;
        }
        k(c0591j0);
        c0591j0.m();
        if (!this.f11278i0) {
            return 8;
        }
        Z z7 = this.f11257N;
        i(z7);
        z7.m();
        Boolean boolValueOf = z7.s().contains("measurement_enabled") ? Boolean.valueOf(z7.s().getBoolean("measurement_enabled", true)) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue() ? 0 : 3;
        }
        g gVar = ((C0597l0) c0584h.f10616G).f11255L;
        Boolean boolZ = c0584h.z("firebase_analytics_collection_enabled");
        if (boolZ != null) {
            return boolZ.booleanValue() ? 0 : 4;
        }
        return (this.f11277h0 == null || this.f11277h0.booleanValue()) ? 0 : 7;
    }

    public final r m() {
        k(this.f11271b0);
        return this.f11271b0;
    }

    public final L n() {
        j(this.f11272c0);
        return this.f11272c0;
    }

    public final N o() {
        j(this.f11269Z);
        return this.f11269Z;
    }

    public final O p() {
        return this.f11262S;
    }

    public final C0574d1 r() {
        j(this.f11270a0);
        return this.f11270a0;
    }

    public final String s() {
        if (this.f11256M.B(null, E.f10814q1)) {
            return null;
        }
        return this.f11251H;
    }

    @Override // p021c4.InterfaceC0612t0
    public final Context zzaT() {
        return this.f11250G;
    }
}
