package K3;

import B0.C0041c;
import E1.C0181p;
import Z5.AbstractC0463u;
import android.app.Activity;
import android.app.PendingIntent;
import android.app.job.JobParameters;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.atv_ads_framework.C2374a;
import com.google.android.gms.internal.atv_ads_framework.C2376b;
import com.google.android.gms.internal.atv_ads_framework.C2378c;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.cast.BinderC2486q;
import com.google.android.gms.internal.cast.C2509w;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.U1;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.api.Service;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p021c4.A0;
import p021c4.A1;
import p021c4.AbstractC0604p;
import p021c4.BinderC0608r0;
import p021c4.C0567b0;
import p021c4.C0572d;
import p021c4.C0574d1;
import p021c4.C0578f;
import p021c4.C0579f0;
import p021c4.C0580f1;
import p021c4.C0584h;
import p021c4.C0591j0;
import p021c4.C0594k0;
import p021c4.C0595k1;
import p021c4.C0597l0;
import p021c4.C0602o;
import p021c4.C0606q;
import p021c4.C0620x0;
import p021c4.EnumC0614u0;
import p021c4.EnumC0618w0;
import p021c4.F0;
import p021c4.I1;
import p021c4.InterfaceC0583g1;
import p021c4.InterfaceC0612t0;
import p021c4.J1;
import p021c4.K0;
import p021c4.O0;
import p021c4.P0;
import p021c4.S0;
import p021c4.ServiceConnectionC0571c1;
import p021c4.W0;
import p021c4.Z;
import p021c4.Z0;
import p021c4.o1;
import p021c4.p1;
import p039f.ExecutorC3006v;

/* JADX INFO: loaded from: classes.dex */
public final class V implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4519G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f4520H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f4521I;

    public /* synthetic */ V(int i8, Object obj, Object obj2) {
        this.f4519G = i8;
        this.f4521I = obj;
        this.f4520H = obj2;
    }

    private final void a() {
        if (((W) this.f4521I).f4522G) {
            J3.b bVar = ((U) this.f4520H).f4518b;
            if (!((bVar.f4133H == 0 || bVar.f4134I == null) ? false : true)) {
                W w7 = (W) this.f4521I;
                w7.a();
                int i8 = bVar.f4133H;
                w7.getClass();
                throw null;
            }
            W w8 = (W) this.f4521I;
            w8.getClass();
            Activity activityA = w8.a();
            PendingIntent pendingIntent = bVar.f4134I;
            com.bumptech.glide.c.h(pendingIntent);
            int i9 = ((U) this.f4520H).f4517a;
            int i10 = GoogleApiActivity.f11749H;
            Intent intent = new Intent(activityA, (Class<?>) GoogleApiActivity.class);
            intent.putExtra("pending_intent", pendingIntent);
            intent.putExtra("failing_client_id", i9);
            intent.putExtra("notify_manager", false);
            throw null;
        }
    }

    private final void b() {
        W3.f fVar = (W3.f) this.f4520H;
        p052g4.i iVar = (p052g4.i) this.f4521I;
        Context context = fVar.f7471a;
        String string = W3.f.b(context).getString("app_set_id", null);
        long j8 = W3.f.b(fVar.f7471a).getLong("app_set_id_last_used_time", -1L);
        long j9 = j8 != -1 ? 33696000000L + j8 : -1L;
        if (string == null || System.currentTimeMillis() > j9) {
            string = UUID.randomUUID().toString();
            try {
                if (!context.getSharedPreferences("app_set_id_storage", 0).edit().putString("app_set_id", string).commit()) {
                    String strValueOf = String.valueOf(context.getPackageName());
                    Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID generated for App ".concat(strValueOf) : new String("Failed to store app set ID generated for App "));
                    throw new W3.e("Failed to store the app set ID.");
                }
                W3.f.c(context);
                if (!context.getSharedPreferences("app_set_id_storage", 0).edit().putLong("app_set_id_creation_time", System.currentTimeMillis()).commit()) {
                    String strValueOf2 = String.valueOf(context.getPackageName());
                    Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to store app set ID creation time for App ".concat(strValueOf2) : new String("Failed to store app set ID creation time for App "));
                    throw new W3.e("Failed to store the app set ID creation time.");
                }
            } catch (W3.e e8) {
                iVar.a(e8);
                return;
            }
        } else {
            try {
                W3.f.c(context);
            } catch (W3.e e9) {
                iVar.a(e9);
                return;
            }
        }
        iVar.b(new A3.b(string, 1));
    }

    private final void c() {
        synchronized (((p052g4.o) this.f4521I).f25366I) {
            try {
                Object obj = ((p052g4.o) this.f4521I).f25367J;
                if (((p052g4.d) obj) != null) {
                    ((p052g4.d) obj).onComplete((p052g4.h) this.f4520H);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void d() {
        synchronized (((p052g4.o) this.f4521I).f25366I) {
            try {
                Object obj = ((p052g4.o) this.f4521I).f25367J;
                if (((p052g4.e) obj) != null) {
                    Exception excE = ((p052g4.h) this.f4520H).e();
                    com.bumptech.glide.c.h(excE);
                    ((p052g4.e) obj).onFailure(excE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:162:0x0511  */
    /* JADX WARN: Code duplicated, block: B:225:0x0737  */
    /* JADX WARN: Code duplicated, block: B:231:0x0751 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:232:0x0753  */
    /* JADX WARN: Code duplicated, block: B:235:0x076d  */
    /* JADX WARN: Code duplicated, block: B:238:0x078e  */
    /* JADX WARN: Code duplicated, block: B:373:0x0b25  */
    /* JADX WARN: Code duplicated, block: B:374:0x0b33  */
    /* JADX WARN: Code duplicated, block: B:377:0x0b44  */
    /* JADX WARN: Code duplicated, block: B:385:0x0bd0  */
    /* JADX WARN: Code duplicated, block: B:394:0x0c1c  */
    /* JADX WARN: Code duplicated, block: B:398:0x0c32  */
    /* JADX WARN: Code duplicated, block: B:401:0x0c3b  */
    /* JADX WARN: Code duplicated, block: B:403:0x0c43  */
    /* JADX WARN: Code duplicated, block: B:407:0x0c50  */
    /* JADX WARN: Code duplicated, block: B:411:0x0c85  */
    /* JADX WARN: Code duplicated, block: B:413:0x0c90  */
    /* JADX WARN: Code duplicated, block: B:415:0x0cc2  */
    /* JADX WARN: Code duplicated, block: B:418:0x0cda  */
    /* JADX WARN: Code duplicated, block: B:460:0x0524 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v38, types: [com.google.android.gms.internal.measurement.Y1] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z7;
        C0620x0 c0620x0;
        Bundle bundle;
        Boolean boolD;
        Bundle bundle2;
        String str;
        EnumC0618w0 enumC0618w0;
        K0 k8;
        K0 k9;
        String str2;
        boolean zF;
        SharedPreferences sharedPreferences;
        Boolean boolValueOf;
        long jMax;
        Bundle bundle3;
        int i8;
        IntentFilter intentFilter;
        C0597l0 c0597l0;
        Long lValueOf;
        Object obj;
        p096m2.l lVar;
        boolean z8 = false;
        int i9 = 1;
        switch (this.f4519G) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                ((BinderC2486q) this.f4520H).r1((C0181p) this.f4521I);
                return;
            case 3:
                List list = ((C2509w) this.f4520H).f22811e;
                if (list != null) {
                    list.isEmpty();
                }
                A0.O.I(this.f4521I);
                throw null;
            case 4:
                InterfaceC0612t0 interfaceC0612t0 = (InterfaceC0612t0) this.f4520H;
                interfaceC0612t0.a();
                if (S3.g.d()) {
                    interfaceC0612t0.d().x(this);
                    return;
                }
                AbstractC0604p abstractC0604p = (AbstractC0604p) this.f4521I;
                boolean z9 = abstractC0604p.f11324c != 0;
                abstractC0604p.f11324c = 0L;
                if (z9) {
                    abstractC0604p.b();
                    return;
                }
                return;
            case 5:
                AppMeasurementDynamiteService.$r8$lambda$W3cgi1t5N0SU6fYxM9Fsh5qQfPc((AppMeasurementDynamiteService) this.f4520H, (com.google.android.gms.internal.measurement.P) this.f4521I);
                return;
            case 6:
                C0597l0 c0597l1 = (C0597l0) this.f4521I;
                A0 a8 = (A0) this.f4520H;
                C0591j0 c0591j0 = c0597l1.f11259P;
                C0597l0.k(c0591j0);
                c0591j0.m();
                C0584h c0584h = c0597l1.f11256M;
                ((C0597l0) c0584h.f10616G).getClass();
                p021c4.r rVar = new p021c4.r(c0597l1);
                rVar.p();
                c0597l1.f11271b0 = rVar;
                com.google.android.gms.internal.measurement.V v5 = a8.f10647g;
                p021c4.L l4 = new p021c4.L(c0597l1, a8.f10646f, v5 == null ? 0L : v5.f23011G);
                l4.o();
                c0597l1.f11272c0 = l4;
                p021c4.N n7 = new p021c4.N(c0597l1);
                n7.o();
                c0597l1.f11269Z = n7;
                C0574d1 c0574d1 = new C0574d1(c0597l1);
                c0574d1.o();
                c0597l1.f11270a0 = c0574d1;
                I1 i10 = c0597l1.f11261R;
                if (i10.f11367H) {
                    throw new IllegalStateException("Can't initialize twice");
                }
                i10.T();
                ((C0597l0) i10.f10616G).f11281l0.incrementAndGet();
                i10.f11367H = true;
                Z z10 = c0597l1.f11257N;
                if (z10.f11367H) {
                    throw new IllegalStateException("Can't initialize twice");
                }
                z10.r();
                ((C0597l0) z10.f10616G).f11281l0.incrementAndGet();
                z10.f11367H = true;
                p021c4.L l8 = c0597l1.f11272c0;
                if (l8.f10688H) {
                    throw new IllegalStateException("Can't initialize twice");
                }
                l8.q();
                ((C0597l0) l8.f10616G).f11281l0.incrementAndGet();
                l8.f10688H = true;
                P0 p7 = new P0(c0597l1);
                p7.o();
                c0597l1.f11273d0 = p7;
                if (p7.f10688H) {
                    throw new IllegalStateException("Can't initialize twice");
                }
                p7.q();
                ((C0597l0) p7.f10616G).f11281l0.incrementAndGet();
                p7.f10688H = true;
                p021c4.T t7 = c0597l1.f11258O;
                C0597l0.k(t7);
                c0584h.u();
                p021c4.Q q7 = t7.f11045R;
                q7.b(119002L, "App measurement initialized, version");
                C0597l0.k(t7);
                q7.a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                String strT = l4.t();
                if (TextUtils.isEmpty(c0597l1.f11251H)) {
                    if (i10.d0(strT, c0584h.f11192I)) {
                        C0597l0.k(t7);
                        q7.a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
                    } else {
                        C0597l0.k(t7);
                        q7.a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strT)));
                    }
                }
                C0597l0.k(t7);
                t7.f11046S.a("Debug-level message logging enabled");
                int i11 = c0597l1.f11279j0;
                AtomicInteger atomicInteger = c0597l1.f11281l0;
                if (i11 != atomicInteger.get()) {
                    C0597l0.k(t7);
                    t7.f11039L.c(Integer.valueOf(c0597l1.f11279j0), Integer.valueOf(atomicInteger.get()), "Not all components initialized");
                }
                c0597l1.f11274e0 = true;
                C0591j0 c0591j1 = c0597l1.f11259P;
                C0597l0.k(c0591j1);
                c0591j1.m();
                p021c4.D d6 = p021c4.E.f10749S0;
                if (c0584h.B(null, d6)) {
                    C0597l0.h(c0597l1.f11273d0);
                    if (c0597l1.f11273d0.r() == 2) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else {
                    z7 = false;
                }
                C2578i4.b();
                if (c0584h.B(null, p021c4.E.f10759X0)) {
                    i10.m();
                    if (i10.w0() == 1) {
                        i10.m();
                        intentFilter = new IntentFilter();
                        intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                        c0597l0 = (C0597l0) i10.f10616G;
                        if (c0597l0.f11256M.B(null, d6)) {
                            intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                        }
                        U4.a.f(c0597l0.f11250G, new p039f.G((C0597l0) i10.f10616G), intentFilter, 2);
                        p021c4.T t8 = c0597l0.f11258O;
                        C0597l0.k(t8);
                        t8.f11046S.a("Registered app receiver");
                        if (z7) {
                            C0597l0.h(c0597l1.f11273d0);
                            c0597l1.f11273d0.s(((Long) p021c4.E.f10716C.a(null)).longValue());
                        }
                    } else if (z7) {
                        z7 = true;
                        i10.m();
                        intentFilter = new IntentFilter();
                        intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                        c0597l0 = (C0597l0) i10.f10616G;
                        if (c0597l0.f11256M.B(null, d6)) {
                            intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                        }
                        U4.a.f(c0597l0.f11250G, new p039f.G((C0597l0) i10.f10616G), intentFilter, 2);
                        p021c4.T t9 = c0597l0.f11258O;
                        C0597l0.k(t9);
                        t9.f11046S.a("Registered app receiver");
                        if (z7) {
                            C0597l0.h(c0597l1.f11273d0);
                            c0597l1.f11273d0.s(((Long) p021c4.E.f10716C.a(null)).longValue());
                        }
                    }
                } else if (z7) {
                    z7 = true;
                    i10.m();
                    intentFilter = new IntentFilter();
                    intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    c0597l0 = (C0597l0) i10.f10616G;
                    if (c0597l0.f11256M.B(null, d6)) {
                        intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                    }
                    U4.a.f(c0597l0.f11250G, new p039f.G((C0597l0) i10.f10616G), intentFilter, 2);
                    p021c4.T t10 = c0597l0.f11258O;
                    C0597l0.k(t10);
                    t10.f11046S.a("Registered app receiver");
                    if (z7) {
                        C0597l0.h(c0597l1.f11273d0);
                        c0597l1.f11273d0.s(((Long) p021c4.E.f10716C.a(null)).longValue());
                    }
                }
                C0620x0 c0620x0U = z10.u();
                EnumC0614u0 enumC0614u0Y = c0584h.y("google_analytics_default_allow_ad_storage", false);
                EnumC0614u0 enumC0614u0Y2 = c0584h.y("google_analytics_default_allow_analytics_storage", false);
                EnumC0614u0 enumC0614u0 = EnumC0614u0.UNINITIALIZED;
                EnumC0618w0 enumC0618w1 = EnumC0618w0.ANALYTICS_STORAGE;
                com.google.android.gms.internal.measurement.V v7 = a8.f10647g;
                final K0 k10 = c0597l1.f11265V;
                if (!(enumC0614u0Y == enumC0614u0 && enumC0614u0Y2 == enumC0614u0) && C0620x0.l(-10, z10.s().getInt("consent_source", 100))) {
                    EnumMap enumMap = new EnumMap(EnumC0618w0.class);
                    enumMap.put(EnumC0618w0.AD_STORAGE, enumC0614u0Y);
                    enumMap.put(enumC0618w1, enumC0614u0Y2);
                    c0620x0 = new C0620x0(enumMap, -10);
                } else {
                    if (!TextUtils.isEmpty(c0597l1.n().u()) && ((i8 = c0620x0U.f11405b) == 0 || i8 == 30 || i8 == 10 || i8 == 30 || i8 == 30 || i8 == 40)) {
                        C0597l0.j(k10);
                        k10.G(new C0620x0(-10), false);
                    } else if (!c0584h.B(null, p021c4.E.f10814q1) && TextUtils.isEmpty(c0597l1.n().u()) && v7 != null && (bundle3 = v7.f23017M) != null && C0620x0.l(30, z10.s().getInt("consent_source", 100))) {
                        c0620x0 = C0620x0.d(30, bundle3);
                        Iterator it = c0620x0.f11404a.values().iterator();
                        do {
                            if (it.hasNext()) {
                            }
                        } while (((EnumC0614u0) it.next()) == EnumC0614u0.UNINITIALIZED);
                    }
                    c0620x0 = null;
                }
                if (c0620x0 != null) {
                    C0597l0.j(k10);
                    k10.G(c0620x0, true);
                    c0620x0U = c0620x0;
                }
                C0597l0.j(k10);
                k10.F(c0620x0U);
                z10.m();
                int i12 = C0606q.b(z10.s().getString("dma_consent_settings", null)).f11334a;
                EnumC0614u0 enumC0614u0Y3 = c0584h.y("google_analytics_default_allow_ad_personalization_signals", true);
                if (enumC0614u0Y3 != enumC0614u0) {
                    C0597l0.k(t7);
                    t7.f11047T.b(enumC0614u0Y3, "Default ad personalization consent from Manifest");
                }
                EnumC0614u0 enumC0614u0Y4 = c0584h.y("google_analytics_default_allow_ad_user_data", true);
                if (enumC0614u0Y4 != enumC0614u0 && C0620x0.l(-10, i12)) {
                    C0597l0.j(k10);
                    EnumMap enumMap2 = new EnumMap(EnumC0618w0.class);
                    enumMap2.put(EnumC0618w0.AD_USER_DATA, enumC0614u0Y4);
                    k10.E(new C0606q(enumMap2, -10, (Boolean) null, (String) null), true);
                } else if (TextUtils.isEmpty(c0597l1.n().u()) || !(i12 == 0 || i12 == 30)) {
                    if (TextUtils.isEmpty(c0597l1.n().u()) && v7 != null && (bundle2 = v7.f23017M) != null && C0620x0.l(30, i12)) {
                        C0606q c0606qA = C0606q.a(30, bundle2);
                        Iterator it2 = c0606qA.f11338e.values().iterator();
                        while (it2.hasNext()) {
                            if (((EnumC0614u0) it2.next()) != EnumC0614u0.UNINITIALIZED) {
                                C0597l0.j(k10);
                                k10.E(c0606qA, true);
                            }
                        }
                    }
                    if (TextUtils.isEmpty(c0597l1.n().u()) && v7 != null && (bundle = v7.f23017M) != null && z10.f11097T.n() == null && (boolD = C0606q.d(bundle)) != null) {
                        C0597l0.j(k10);
                        k10.H(v7.f23015K, "allow_personalized_ads", boolD.toString(), false);
                    }
                } else {
                    C0597l0.j(k10);
                    k10.E(new C0606q(-10, (String) null, (Boolean) null, (Boolean) null), true);
                }
                Boolean boolZ = c0584h.z("google_analytics_tcf_data_enabled");
                if (boolZ == null || boolZ.booleanValue()) {
                    C0597l0.k(t7);
                    t7.f11046S.a("TCF client enabled.");
                    C0597l0.j(k10);
                    k10.m();
                    C0597l0 c0597l2 = (C0597l0) k10.f10616G;
                    p021c4.T t11 = c0597l2.f11258O;
                    C0597l0.k(t11);
                    t11.f11046S.a("Register tcfPrefChangeListener.");
                    if (k10.f10927a0 == null) {
                        k10.f10928b0 = new F0(k10, (C0597l0) k10.f10616G, 2);
                        final int i13 = 1;
                        k10.f10927a0 = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.internal.measurement.Y1
                            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str3) {
                                switch (i13) {
                                    case 0:
                                        ((Z1) k10).getClass();
                                        throw null;
                                    default:
                                        p021c4.K0 k11 = (p021c4.K0) k10;
                                        C0597l0 c0597l3 = (C0597l0) k11.f10616G;
                                        boolean zB = c0597l3.f11256M.B(null, p021c4.E.f10796k1);
                                        p021c4.T t12 = c0597l3.f11258O;
                                        if (!zB) {
                                            if (Objects.equals(str3, "IABTCF_TCString")) {
                                                C0597l0.k(t12);
                                                t12.f11047T.a("IABTCF_TCString change picked up in listener.");
                                                p021c4.F0 f8 = k11.f10928b0;
                                                com.bumptech.glide.c.h(f8);
                                                f8.c(500L);
                                                return;
                                            }
                                            return;
                                        }
                                        if (Objects.equals(str3, "IABTCF_TCString") || Objects.equals(str3, "IABTCF_gdprApplies") || Objects.equals(str3, "IABTCF_EnableAdvertiserConsentMode")) {
                                            C0597l0.k(t12);
                                            t12.f11047T.a("IABTCF_TCString change picked up in listener.");
                                            p021c4.F0 f9 = k11.f10928b0;
                                            com.bumptech.glide.c.h(f9);
                                            f9.c(500L);
                                            return;
                                        }
                                        return;
                                }
                            }
                        };
                    }
                    Z z11 = c0597l2.f11257N;
                    C0597l0.i(z11);
                    z11.q().registerOnSharedPreferenceChangeListener(k10.f10927a0);
                    C0597l0.j(k10);
                    k10.w();
                }
                E1.I i14 = z10.f11090M;
                long jA = i14.a();
                long j8 = c0597l1.f11282m0;
                if (jA == 0) {
                    C0597l0.k(t7);
                    t7.f11047T.b(Long.valueOf(j8), "Persisting first open");
                    i14.b(j8);
                }
                C0597l0.j(k10);
                C0594k0 c0594k0 = k10.f10924X;
                if (c0594k0.d() && c0594k0.e()) {
                    Z z12 = c0594k0.f11239G.f11257N;
                    C0597l0.i(z12);
                    z12.f11107d0.o(null);
                }
                if (c0597l1.g()) {
                    boolean zIsEmpty = TextUtils.isEmpty(c0597l1.n().u());
                    C0041c c0041c = z10.f11091N;
                    try {
                        if (zIsEmpty) {
                            str = null;
                            if (c0584h.B(null, p021c4.E.f10814q1) || TextUtils.isEmpty(c0597l1.n().s())) {
                                k8 = k10;
                                enumC0618w0 = enumC0618w1;
                            }
                            if (!z10.u().k(enumC0618w0)) {
                                c0041c.o(null);
                            }
                            C0597l0.j(k8);
                            k9 = k8;
                            k9.f10913M.set(c0041c.n());
                            ((C0597l0) i10.f10616G).f11250G.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                            str2 = null;
                            if (TextUtils.isEmpty(c0597l1.n().u()) || (!c0584h.B(str2, p021c4.E.f10814q1) && !TextUtils.isEmpty(c0597l1.n().s()))) {
                                zF = c0597l1.f();
                                sharedPreferences = z10.f11086I;
                                if ((sharedPreferences != null || !sharedPreferences.contains("deferred_analytics_collection")) && !c0584h.n()) {
                                    z10.w(!zF);
                                }
                                if (zF) {
                                    C0597l0.j(k9);
                                    k9.r();
                                }
                                C0595k1 c0595k1 = c0597l1.f11260Q;
                                C0597l0.j(c0595k1);
                                c0595k1.f11242K.A();
                                c0597l1.r().s(new AtomicReference());
                                c0597l1.r().w(z10.f11109f0.u());
                            }
                        } else {
                            str = null;
                        }
                        ((C0597l0) i10.f10616G).f11250G.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                    } catch (ClassNotFoundException unused) {
                        C0041c c0041c2 = z10.f11106c0;
                        if (!TextUtils.isEmpty(c0041c2.n())) {
                            C0597l0.k(t7);
                            t7.f11042O.a("Remote config removed with active feature rollouts");
                            str2 = null;
                            c0041c2.o(null);
                        }
                        if (TextUtils.isEmpty(c0597l1.n().u())) {
                            zF = c0597l1.f();
                            sharedPreferences = z10.f11086I;
                            if (sharedPreferences != null) {
                                z10.w(!zF);
                            } else {
                                z10.w(!zF);
                            }
                            if (zF) {
                                C0597l0.j(k9);
                                k9.r();
                            }
                            C0595k1 c0595k2 = c0597l1.f11260Q;
                            C0597l0.j(c0595k2);
                            c0595k2.f11242K.A();
                            c0597l1.r().s(new AtomicReference());
                            c0597l1.r().w(z10.f11109f0.u());
                        } else {
                            zF = c0597l1.f();
                            sharedPreferences = z10.f11086I;
                            if (sharedPreferences != null) {
                                z10.w(!zF);
                            } else {
                                z10.w(!zF);
                            }
                            if (zF) {
                                C0597l0.j(k9);
                                k9.r();
                            }
                            C0595k1 c0595k3 = c0597l1.f11260Q;
                            C0597l0.j(c0595k3);
                            c0595k3.f11242K.A();
                            c0597l1.r().s(new AtomicReference());
                            c0597l1.r().w(z10.f11109f0.u());
                        }
                        C2578i4.b();
                        if (c0584h.B(null, p021c4.E.f10759X0)) {
                            i10.m();
                            if (i10.w0() == 1) {
                                long jIntValue = ((Integer) p021c4.E.f10830x0.a(null)).intValue();
                                long jNextInt = new Random().nextInt(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                                c0597l1.f11263T.getClass();
                                jMax = Math.max(500L, ((jIntValue * 1000) + jNextInt) - SystemClock.elapsedRealtime());
                                if (jMax > 500) {
                                    C0597l0.k(t7);
                                    t7.f11047T.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                                }
                                C0597l0.j(k9);
                                k9.m();
                                if (k9.f10918R == null) {
                                    k9.f10918R = new F0(k9, (C0597l0) k9.f10616G, 0);
                                }
                                k9.f10918R.c(jMax);
                            }
                        }
                        z10.f11099V.a(true);
                        return;
                    }
                    p021c4.D d8 = p021c4.E.f10814q1;
                    if (c0584h.B(str, d8)) {
                        String strU = c0597l1.n().u();
                        z10.m();
                        String string = z10.s().getString("gmp_app_id", str);
                        boolean zIsEmpty2 = TextUtils.isEmpty(strU);
                        boolean zIsEmpty3 = TextUtils.isEmpty(string);
                        if (!zIsEmpty2 && !zIsEmpty3) {
                            com.bumptech.glide.c.h(strU);
                            if (!strU.equals(string)) {
                                k8 = k10;
                                enumC0618w0 = enumC0618w1;
                                C0597l0.k(t7);
                                t7.f11045R.a("Rechecking which service to use due to a GMP App Id change");
                                z10.m();
                                z10.m();
                                if (z10.s().contains("measurement_enabled")) {
                                    boolValueOf = Boolean.valueOf(z10.s().getBoolean("measurement_enabled", true));
                                } else {
                                    boolValueOf = null;
                                }
                                SharedPreferences.Editor editorEdit = z10.s().edit();
                                editorEdit.clear();
                                editorEdit.apply();
                                if (boolValueOf != null) {
                                    z10.m();
                                    SharedPreferences.Editor editorEdit2 = z10.s().edit();
                                    editorEdit2.putBoolean("measurement_enabled", boolValueOf.booleanValue());
                                    editorEdit2.apply();
                                }
                                c0597l1.o().s();
                                c0597l1.f11270a0.r();
                                c0597l1.f11270a0.q();
                                i14.b(j8);
                                c0041c.o(null);
                            }
                        }
                        k8 = k10;
                        enumC0618w0 = enumC0618w1;
                    } else {
                        String strU2 = c0597l1.n().u();
                        z10.m();
                        String string2 = z10.s().getString("gmp_app_id", null);
                        String strS = c0597l1.n().s();
                        z10.m();
                        k8 = k10;
                        enumC0618w0 = enumC0618w1;
                        if (i10.m0(strU2, string2, strS, z10.s().getString("admob_app_id", null))) {
                            C0597l0.k(t7);
                            t7.f11045R.a("Rechecking which service to use due to a GMP App Id change");
                            z10.m();
                            z10.m();
                            if (z10.s().contains("measurement_enabled")) {
                                boolValueOf = Boolean.valueOf(z10.s().getBoolean("measurement_enabled", true));
                            } else {
                                boolValueOf = null;
                            }
                            SharedPreferences.Editor editorEdit3 = z10.s().edit();
                            editorEdit3.clear();
                            editorEdit3.apply();
                            if (boolValueOf != null) {
                                z10.m();
                                SharedPreferences.Editor editorEdit4 = z10.s().edit();
                                editorEdit4.putBoolean("measurement_enabled", boolValueOf.booleanValue());
                                editorEdit4.apply();
                            }
                            c0597l1.o().s();
                            c0597l1.f11270a0.r();
                            c0597l1.f11270a0.q();
                            i14.b(j8);
                            c0041c.o(null);
                        }
                    }
                    String strU3 = c0597l1.n().u();
                    z10.m();
                    SharedPreferences.Editor editorEdit5 = z10.s().edit();
                    editorEdit5.putString("gmp_app_id", strU3);
                    editorEdit5.apply();
                    if (c0584h.B(null, d8)) {
                        z10.m();
                        SharedPreferences.Editor editorEdit6 = z10.s().edit();
                        editorEdit6.putString("admob_app_id", null);
                        editorEdit6.apply();
                    } else {
                        String strS2 = c0597l1.n().s();
                        z10.m();
                        SharedPreferences.Editor editorEdit7 = z10.s().edit();
                        editorEdit7.putString("admob_app_id", strS2);
                        editorEdit7.apply();
                    }
                    if (!z10.u().k(enumC0618w0)) {
                        c0041c.o(null);
                    }
                    C0597l0.j(k8);
                    k9 = k8;
                    k9.f10913M.set(c0041c.n());
                    str2 = null;
                    if (TextUtils.isEmpty(c0597l1.n().u())) {
                        zF = c0597l1.f();
                        sharedPreferences = z10.f11086I;
                        if (sharedPreferences != null) {
                            z10.w(!zF);
                        } else {
                            z10.w(!zF);
                        }
                        if (zF) {
                            C0597l0.j(k9);
                            k9.r();
                        }
                        C0595k1 c0595k4 = c0597l1.f11260Q;
                        C0597l0.j(c0595k4);
                        c0595k4.f11242K.A();
                        c0597l1.r().s(new AtomicReference());
                        c0597l1.r().w(z10.f11109f0.u());
                    } else {
                        zF = c0597l1.f();
                        sharedPreferences = z10.f11086I;
                        if (sharedPreferences != null) {
                            z10.w(!zF);
                        } else {
                            z10.w(!zF);
                        }
                        if (zF) {
                            C0597l0.j(k9);
                            k9.r();
                        }
                        C0595k1 c0595k5 = c0597l1.f11260Q;
                        C0597l0.j(c0595k5);
                        c0595k5.f11242K.A();
                        c0597l1.r().s(new AtomicReference());
                        c0597l1.r().w(z10.f11109f0.u());
                    }
                    break;
                } else {
                    if (c0597l1.f()) {
                        if (!i10.c0("android.permission.INTERNET")) {
                            C0597l0.k(t7);
                            t7.f11039L.a("App is missing INTERNET permission");
                        }
                        if (!i10.c0("android.permission.ACCESS_NETWORK_STATE")) {
                            C0597l0.k(t7);
                            t7.f11039L.a("App is missing ACCESS_NETWORK_STATE permission");
                        }
                        Context context = c0597l1.f11250G;
                        if (!Q3.c.a(context).d() && !c0584h.p()) {
                            if (!I1.j0(context)) {
                                C0597l0.k(t7);
                                t7.f11039L.a("AppMeasurementReceiver not registered/enabled");
                            }
                            if (!I1.l0(context)) {
                                C0597l0.k(t7);
                                t7.f11039L.a("AppMeasurementService not registered/enabled");
                            }
                        }
                        C0597l0.k(t7);
                        t7.f11039L.a("Uploading is not possible. App measurement disabled");
                    }
                    k9 = k10;
                }
                C2578i4.b();
                if (c0584h.B(null, p021c4.E.f10759X0)) {
                    i10.m();
                    if (i10.w0() == 1) {
                        long jIntValue2 = ((Integer) p021c4.E.f10830x0.a(null)).intValue();
                        long jNextInt2 = new Random().nextInt(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                        c0597l1.f11263T.getClass();
                        jMax = Math.max(500L, ((jIntValue2 * 1000) + jNextInt2) - SystemClock.elapsedRealtime());
                        if (jMax > 500) {
                            C0597l0.k(t7);
                            t7.f11047T.b(Long.valueOf(jMax), "Waiting to fetch trigger URIs until some time after boot. Delay in millis");
                        }
                        C0597l0.j(k9);
                        k9.m();
                        if (k9.f10918R == null) {
                            k9.f10918R = new F0(k9, (C0597l0) k9.f10616G, 0);
                        }
                        k9.f10918R.c(jMax);
                    }
                }
                z10.f11099V.a(true);
                return;
            case 7:
                BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f4521I;
                binderC0608r0.f11346G.i();
                C0578f c0578f = (C0578f) this.f4520H;
                Object objI = c0578f.f11162I.i();
                A1 a9 = binderC0608r0.f11346G;
                if (objI == null) {
                    a9.getClass();
                    String str3 = c0578f.f11160G;
                    com.bumptech.glide.c.h(str3);
                    J1 j1W = a9.w(str3);
                    if (j1W != null) {
                        a9.L(c0578f, j1W);
                        return;
                    }
                    return;
                }
                a9.getClass();
                String str4 = c0578f.f11160G;
                com.bumptech.glide.c.h(str4);
                J1 j1W2 = a9.w(str4);
                if (j1W2 != null) {
                    a9.Q(c0578f, j1W2);
                    return;
                }
                return;
            case 8:
                C0597l0 c0597l3 = (C0597l0) ((K0) this.f4520H).f10616G;
                p021c4.L lN = c0597l3.n();
                String str5 = (String) this.f4521I;
                String str6 = lN.f10953X;
                if (str6 != null && !str6.equals(str5)) {
                    z8 = true;
                }
                lN.f10953X = str5;
                if (z8) {
                    c0597l3.n().w();
                    return;
                }
                return;
            case 9:
                K0 k11 = (K0) this.f4520H;
                k11.m();
                if (Build.VERSION.SDK_INT < 30) {
                    return;
                }
                List<o1> list2 = (List) this.f4521I;
                Z z13 = ((C0597l0) k11.f10616G).f11257N;
                C0597l0.i(z13);
                SparseArray sparseArrayT = z13.t();
                for (o1 o1Var : list2) {
                    int i15 = o1Var.f11320I;
                    if (!sparseArrayT.contains(i15) || ((Long) sparseArrayT.get(i15)).longValue() < o1Var.f11319H) {
                        k11.M().add(o1Var);
                    }
                }
                k11.B();
                return;
            case 10:
                K0 k12 = (K0) this.f4521I;
                C0595k1 c0595k6 = ((C0597l0) k12.f10616G).f11260Q;
                C0597l0.j(c0595k6);
                C0597l0 c0597l4 = (C0597l0) c0595k6.f10616G;
                Z z14 = c0597l4.f11257N;
                C0597l0.i(z14);
                if (z14.u().k(EnumC0618w0.ANALYTICS_STORAGE)) {
                    Z z15 = c0597l4.f11257N;
                    C0597l0.i(z15);
                    c0597l4.f11263T.getClass();
                    if (!z15.x(System.currentTimeMillis()) && z15.f11101X.a() != 0) {
                        lValueOf = Long.valueOf(z15.f11101X.a());
                    }
                    obj = this.f4520H;
                    if (lValueOf == null) {
                        I1 i16 = ((C0597l0) k12.f10616G).f11261R;
                        C0597l0.i(i16);
                        i16.N((com.google.android.gms.internal.measurement.M) obj, lValueOf.longValue());
                        return;
                    } else {
                        try {
                            ((com.google.android.gms.internal.measurement.M) obj).V0(null);
                            return;
                        } catch (RemoteException e8) {
                            p021c4.T t12 = ((C0597l0) k12.f10616G).f11258O;
                            C0597l0.k(t12);
                            t12.f11039L.b(e8, "getSessionId failed with exception");
                            return;
                        }
                    }
                }
                p021c4.T t13 = c0597l4.f11258O;
                C0597l0.k(t13);
                t13.f11044Q.a("Analytics storage consent denied; will not get session id");
                lValueOf = null;
                obj = this.f4520H;
                if (lValueOf == null) {
                    ((com.google.android.gms.internal.measurement.M) obj).V0(null);
                    return;
                }
                I1 i17 = ((C0597l0) k12.f10616G).f11261R;
                C0597l0.i(i17);
                i17.N((com.google.android.gms.internal.measurement.M) obj, lValueOf.longValue());
                return;
            case 11:
                ((K0) this.f4521I).K((Boolean) this.f4520H, true);
                return;
            case 12:
                K0 k13 = (K0) this.f4521I;
                C0597l0 c0597l5 = (C0597l0) k13.f10616G;
                Z z16 = c0597l5.f11257N;
                C0597l0.i(z16);
                z16.m();
                z16.m();
                C0606q c0606qB = C0606q.b(z16.s().getString("dma_consent_settings", null));
                C0606q c0606q = (C0606q) this.f4520H;
                boolean zL = C0620x0.l(c0606q.f11334a, c0606qB.f11334a);
                p021c4.T t14 = c0597l5.f11258O;
                if (!zL) {
                    C0597l0.k(t14);
                    t14.f11045R.b(Integer.valueOf(c0606q.f11334a), "Lower precedence consent source ignored, proposed source");
                    return;
                }
                SharedPreferences.Editor editorEdit8 = z16.s().edit();
                editorEdit8.putString("dma_consent_settings", c0606q.f11335b);
                editorEdit8.apply();
                C0597l0.k(t14);
                t14.f11047T.b(c0606q, "Setting DMA consent(FE)");
                C0597l0 c0597l6 = (C0597l0) k13.f10616G;
                if (c0597l6.r().z()) {
                    C0574d1 c0574d1R = c0597l6.r();
                    c0574d1R.m();
                    c0574d1R.n();
                    c0574d1R.E(new W0(c0574d1R, i9));
                    return;
                }
                C0574d1 c0574d1R2 = c0597l6.r();
                c0574d1R2.m();
                c0574d1R2.n();
                if (c0574d1R2.y()) {
                    c0574d1R2.E(new Z0(c0574d1R2, c0574d1R2.B(false), 4));
                    return;
                }
                return;
            case 13:
                K0 k14 = ((AppMeasurementDynamiteService) this.f4521I).f24099G.f11265V;
                C0597l0.j(k14);
                p096m2.l lVar2 = (p096m2.l) this.f4520H;
                k14.m();
                k14.n();
                if (lVar2 != null && lVar2 != (lVar = k14.f10910J)) {
                    com.bumptech.glide.c.j("EventInterceptor already set.", lVar == null);
                }
                k14.f10910J = lVar2;
                return;
            case 14:
                C0574d1 c0574d2 = (C0574d1) this.f4521I;
                p021c4.G g8 = c0574d2.f11146J;
                if (g8 == null) {
                    p021c4.T t15 = ((C0597l0) c0574d2.f10616G).f11258O;
                    C0597l0.k(t15);
                    t15.f11039L.a("Failed to send current screen to service");
                    return;
                }
                try {
                    S0 s7 = (S0) this.f4520H;
                    if (s7 == null) {
                        g8.v3(0L, null, null, ((C0597l0) c0574d2.f10616G).f11250G.getPackageName());
                    } else {
                        g8.v3(s7.f11032c, s7.f11030a, s7.f11031b, ((C0597l0) c0574d2.f10616G).f11250G.getPackageName());
                    }
                    c0574d2.D();
                    return;
                } catch (RemoteException e9) {
                    p021c4.T t16 = ((C0597l0) c0574d2.f10616G).f11258O;
                    C0597l0.k(t16);
                    t16.f11039L.b(e9, "Failed to send current screen to the service");
                    return;
                }
            case 15:
                C0574d1.G(((ServiceConnectionC0571c1) this.f4521I).f11136c, (ComponentName) this.f4520H);
                return;
            case 16:
                C0574d1 c0574d3 = ((ServiceConnectionC0571c1) this.f4521I).f11136c;
                c0574d3.f11146J = null;
                if (!((C0597l0) c0574d3.f10616G).f11256M.B(null, p021c4.E.f10811p1) || ((J3.b) this.f4520H).f4133H != 7777) {
                    c0574d3.C();
                    return;
                }
                if (c0574d3.f11149M == null) {
                    c0574d3.f11149M = Executors.newScheduledThreadPool(1);
                }
                c0574d3.f11149M.schedule(new com.google.android.gms.internal.cast.X(this, 5), ((Long) p021c4.E.f10762Z.a(null)).longValue(), TimeUnit.MILLISECONDS);
                return;
            case 17:
                U1 u7 = (U1) this.f4520H;
                JobParameters jobParameters = (JobParameters) this.f4521I;
                Log.v("FA", "[sgtm] AppMeasurementJobService processed last Scion upload request.");
                ((InterfaceC0583g1) u7.f23010G).b(jobParameters);
                return;
            case 18:
                A1 a10 = (A1) this.f4520H;
                a10.i();
                Runnable runnable = (Runnable) this.f4521I;
                a10.d().m();
                if (a10.f10667V == null) {
                    a10.f10667V = new ArrayList();
                }
                a10.f10667V.add(runnable);
                a10.T();
                return;
            case 19:
                A1 a11 = (A1) this.f4521I;
                a11.d().m();
                a11.f10662Q = new C0567b0(a11);
                C0602o c0602o = new C0602o(a11);
                c0602o.o();
                a11.f10654I = c0602o;
                C0584h c0584hC0 = a11.c0();
                C0579f0 c0579f0 = a11.f10652G;
                com.bumptech.glide.c.h(c0579f0);
                c0584hC0.f11193J = c0579f0;
                C0580f1 c0580f1 = new C0580f1(a11);
                c0580f1.o();
                a11.f10660O = c0580f1;
                C0572d c0572d = new C0572d(a11);
                c0572d.o();
                a11.f10657L = c0572d;
                O0 o4 = new O0(a11);
                o4.o();
                a11.f10659N = o4;
                p1 p1Var = new p1(a11);
                p1Var.o();
                a11.f10656K = p1Var;
                a11.f10655J = new p021c4.X(a11);
                if (a11.f10669X != a11.f10670Y) {
                    a11.b().f11039L.c(Integer.valueOf(a11.f10669X), Integer.valueOf(a11.f10670Y), "Not all upload components initialized");
                }
                a11.f10664S.set(true);
                a11.b().f11047T.a("UploadController is now fully initialized");
                a11.d().m();
                C0602o c0602o2 = a11.f10654I;
                A1.I(c0602o2);
                c0602o2.F();
                C0602o c0602o3 = a11.f10654I;
                A1.I(c0602o3);
                c0602o3.m();
                c0602o3.n();
                if (c0602o3.Y()) {
                    p021c4.D d9 = p021c4.E.f10826v0;
                    if (((Long) d9.a(null)).longValue() != 0) {
                        SQLiteDatabase sQLiteDatabaseJ0 = c0602o3.j0();
                        C0597l0 c0597l7 = (C0597l0) c0602o3.f10616G;
                        c0597l7.f11263T.getClass();
                        int iDelete = sQLiteDatabaseJ0.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(d9.a(null))});
                        if (iDelete > 0) {
                            p021c4.T t17 = c0597l7.f11258O;
                            C0597l0.k(t17);
                            t17.f11047T.b(Integer.valueOf(iDelete), "Deleted stale trigger uris. rowsDeleted");
                        }
                    }
                }
                if (a11.f10660O.f11186N.a() == 0) {
                    E1.I i18 = a11.f10660O.f11186N;
                    ((P3.b) a11.c()).getClass();
                    i18.b(System.currentTimeMillis());
                }
                a11.C();
                return;
            case 20:
                if (((p052g4.r) ((p052g4.h) this.f4520H)).f25372d) {
                    ((p052g4.m) this.f4521I).f25361J.l();
                    return;
                }
                try {
                    ((p052g4.m) this.f4521I).f25361J.k(((p052g4.m) this.f4521I).f25360I.then((p052g4.h) this.f4520H));
                    return;
                } catch (p052g4.g e10) {
                    if (e10.getCause() instanceof Exception) {
                        ((p052g4.m) this.f4521I).f25361J.j((Exception) e10.getCause());
                        return;
                    } else {
                        ((p052g4.m) this.f4521I).f25361J.j(e10);
                        return;
                    }
                } catch (Exception e11) {
                    ((p052g4.m) this.f4521I).f25361J.j(e11);
                    return;
                }
            case 21:
                Object obj2 = this.f4521I;
                try {
                    p052g4.h hVar = (p052g4.h) ((p052g4.m) obj2).f25360I.then((p052g4.h) this.f4520H);
                    if (hVar == null) {
                        ((p052g4.m) obj2).onFailure(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    p052g4.m mVar = (p052g4.m) obj2;
                    ExecutorC3006v executorC3006v = p052g4.j.f25347b;
                    hVar.c(executorC3006v, mVar);
                    hVar.b(executorC3006v, mVar);
                    p052g4.r rVar2 = (p052g4.r) hVar;
                    rVar2.f25370b.i(new p052g4.o(executorC3006v, (p052g4.c) mVar));
                    rVar2.o();
                    return;
                } catch (p052g4.g e12) {
                    if (e12.getCause() instanceof Exception) {
                        ((p052g4.m) obj2).f25361J.j((Exception) e12.getCause());
                        return;
                    } else {
                        ((p052g4.m) obj2).f25361J.j(e12);
                        return;
                    }
                } catch (Exception e13) {
                    ((p052g4.m) obj2).f25361J.j(e13);
                    return;
                }
            case 22:
                c();
                return;
            case 23:
                d();
                return;
            case 24:
                synchronized (((p052g4.o) this.f4521I).f25366I) {
                    try {
                        Object obj3 = ((p052g4.o) this.f4521I).f25367J;
                        if (((p052g4.f) obj3) != null) {
                            ((p052g4.f) obj3).onSuccess(((p052g4.h) this.f4520H).f());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            case 25:
                Object obj4 = this.f4520H;
                try {
                    ((p052g4.r) obj4).k(((Callable) this.f4521I).call());
                    return;
                } catch (Exception e14) {
                    ((p052g4.r) obj4).j(e14);
                    return;
                } catch (Throwable th2) {
                    ((p052g4.r) obj4).j(new RuntimeException(th2));
                    return;
                }
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                p052g4.i iVar = (p052g4.i) this.f4520H;
                Context context2 = (Context) this.f4521I;
                try {
                    iVar.b(Cw.Y0(context2));
                    return;
                } catch (RuntimeException e15) {
                    x0 x0VarC = x0.C(context2);
                    com.google.android.gms.internal.atv_ads_framework.W0 w0L = C2374a.l();
                    w0L.d();
                    C2374a.m((C2374a) w0L.f22292H);
                    C2374a c2374a = (C2374a) w0L.b();
                    C2376b c2376bA0 = Cw.A0((Context) x0VarC.f22391I);
                    c2376bA0.d();
                    C2378c.n((C2378c) c2376bA0.f22292H, c2374a);
                    x0VarC.H((C2378c) c2376bA0.b());
                    iVar.a(e15);
                    return;
                }
            case 27:
                Object obj5 = this.f4521I;
                Object obj6 = this.f4520H;
                Object obj7 = (Future) obj6;
                if (obj7 instanceof E4.a) {
                    ((E4.a) obj7).getClass();
                }
                try {
                    p190y4.k.E((Future) obj6);
                    p096m2.c cVar = (p096m2.c) obj5;
                    K0 k15 = (K0) cVar.f27211I;
                    k15.m();
                    cVar.D();
                    k15.f10915O = false;
                    k15.f10916P = 1;
                    p021c4.T t18 = ((C0597l0) k15.f10616G).f11258O;
                    C0597l0.k(t18);
                    t18.f11046S.b(((o1) cVar.f27210H).f11318G, "Successfully registered trigger URI");
                    k15.B();
                    return;
                } catch (ExecutionException e16) {
                    ((p096m2.c) obj5).v(e16.getCause());
                    return;
                } catch (Throwable th3) {
                    ((p096m2.c) obj5).v(th3);
                    return;
                }
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                AbstractC0463u abstractC0463u = (AbstractC0463u) this.f4520H;
                abstractC0463u.getClass();
                Math.max(2 * 0, 0L);
                abstractC0463u.getClass();
                throw null;
            default:
                ((p096m2.f) ((p054g6.b) this.f4521I)).c((p054g6.a) this.f4520H);
                return;
        }
    }

    public final String toString() {
        switch (this.f4519G) {
            case 27:
                p113o3.G gN = Cw.n(this);
                p096m2.c cVar = (p096m2.c) this.f4521I;
                C1093bD c1093bD = new C1093bD(18, (Object) null);
                ((C1093bD) gN.f27886f).f18027I = c1093bD;
                gN.f27886f = c1093bD;
                c1093bD.f18026H = cVar;
                return gN.toString();
            default:
                return super.toString();
        }
    }

    public V(A1 a8, Runnable runnable) {
        this.f4519G = 18;
        this.f4520H = a8;
        this.f4521I = runnable;
    }

    public /* synthetic */ V(Object obj, Object obj2, int i8) {
        this.f4519G = i8;
        this.f4520H = obj;
        this.f4521I = obj2;
    }
}
