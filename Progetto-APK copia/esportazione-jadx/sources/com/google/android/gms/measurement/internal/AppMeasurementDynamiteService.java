package com.google.android.gms.measurement.internal;

import K3.V;
import R3.a;
import R3.b;
import S3.g;
import Y.RunnableC0394f;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.C2592l0;
import com.google.android.gms.internal.measurement.J;
import com.google.android.gms.internal.measurement.M;
import com.google.android.gms.internal.measurement.P;
import com.google.android.gms.internal.measurement.S;
import com.google.android.gms.internal.measurement.U;
import com.google.android.gms.internal.measurement.W;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import p021c4.C0;
import p021c4.C0584h;
import p021c4.C0591j0;
import p021c4.C0597l0;
import p021c4.C0611t;
import p021c4.C0613u;
import p021c4.C0619x;
import p021c4.D;
import p021c4.D0;
import p021c4.D1;
import p021c4.E;
import p021c4.G0;
import p021c4.I1;
import p021c4.InterfaceC0624z0;
import p021c4.K0;
import p021c4.L;
import p021c4.N0;
import p021c4.Q;
import p021c4.Q0;
import p021c4.RunnableC0603o0;
import p021c4.S0;
import p021c4.T;
import p021c4.V0;
import p021c4.r1;
import p021c4.t1;
import p079k.RunnableC3015g;
import p096m2.l;
import p132r.f;
import p135r2.j;

/* JADX INFO: loaded from: classes.dex */
@DynamiteApi
public class AppMeasurementDynamiteService extends J {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public C0597l0 f24099G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final f f24100H;

    public static void $r8$lambda$W3cgi1t5N0SU6fYxM9Fsh5qQfPc(AppMeasurementDynamiteService appMeasurementDynamiteService, P p7) {
        try {
            p7.b();
        } catch (RemoteException e8) {
            C0597l0 c0597l0 = appMeasurementDynamiteService.f24099G;
            c.h(c0597l0);
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Failed to call IDynamiteUploadBatchesCallback");
        }
    }

    public AppMeasurementDynamiteService() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        this.f24099G = null;
        this.f24100H = new f(0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void beginAdUnitExposure(String str, long j8) {
        zzb();
        C0619x c0619x = this.f24099G.f11266W;
        C0597l0.h(c0619x);
        c0619x.n(str, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.s(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void clearMeasurementEnabled(long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.n();
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new V(11, k8, (Object) null));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void endAdUnitExposure(String str, long j8) {
        zzb();
        C0619x c0619x = this.f24099G.f11266W;
        C0597l0.h(c0619x);
        c0619x.o(j8, str);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void generateEventId(M m7) {
        zzb();
        I1 i8 = this.f24099G.f11261R;
        C0597l0.i(i8);
        long jY0 = i8.y0();
        zzb();
        I1 i9 = this.f24099G.f11261R;
        C0597l0.i(i9);
        i9.N(m7, jY0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getAppInstanceId(M m7) {
        zzb();
        C0591j0 c0591j0 = this.f24099G.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new RunnableC0603o0(this, m7, 0));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getCachedAppInstanceId(M m7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        j0((String) k8.f10913M.get(), m7);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getConditionalUserProperties(String str, String str2, M m7) {
        zzb();
        C0591j0 c0591j0 = this.f24099G.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new RunnableC3015g(this, m7, str, str2, 15));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getCurrentScreenClass(M m7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        V0 v5 = ((C0597l0) k8.f10616G).f11264U;
        C0597l0.j(v5);
        S0 s7 = v5.f11062I;
        j0(s7 != null ? s7.f11031b : null, m7);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getCurrentScreenName(M m7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        V0 v5 = ((C0597l0) k8.f10616G).f11264U;
        C0597l0.j(v5);
        S0 s7 = v5.f11062I;
        j0(s7 != null ? s7.f11030a : null, m7);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getGmpAppId(M m7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C0597l0 c0597l0 = (C0597l0) k8.f10616G;
        String strB1 = null;
        if (c0597l0.f11256M.B(null, E.f10814q1) || ((C0597l0) k8.f10616G).s() == null) {
            try {
                strB1 = Cw.b1(c0597l0.f11250G, ((C0597l0) k8.f10616G).f11268Y);
            } catch (IllegalStateException e8) {
                T t7 = ((C0597l0) k8.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.b(e8, "getGoogleAppId failed with exception");
            }
        } else {
            strB1 = ((C0597l0) k8.f10616G).s();
        }
        j0(strB1, m7);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getMaxUserProperties(String str, M m7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        c.e(str);
        ((C0597l0) k8.f10616G).getClass();
        zzb();
        I1 i8 = this.f24099G.f11261R;
        C0597l0.i(i8);
        i8.M(m7, 25);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getSessionId(M m7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new V(10, k8, m7));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getTestFlag(M m7, int i8) {
        zzb();
        int i9 = 3;
        if (i8 == 0) {
            I1 i10 = this.f24099G.f11261R;
            C0597l0.i(i10);
            K0 k8 = this.f24099G.f11265V;
            C0597l0.j(k8);
            AtomicReference atomicReference = new AtomicReference();
            C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
            C0597l0.k(c0591j0);
            i10.O((String) c0591j0.r(atomicReference, 15000L, "String test flag value", new C0(k8, atomicReference, i9)), m7);
            return;
        }
        int i11 = 4;
        if (i8 == 1) {
            I1 i12 = this.f24099G.f11261R;
            C0597l0.i(i12);
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            AtomicReference atomicReference2 = new AtomicReference();
            C0591j0 c0591j1 = ((C0597l0) k9.f10616G).f11259P;
            C0597l0.k(c0591j1);
            i12.N(m7, ((Long) c0591j1.r(atomicReference2, 15000L, "long test flag value", new C0(k9, atomicReference2, i11))).longValue());
            return;
        }
        int i13 = 2;
        if (i8 == 2) {
            I1 i14 = this.f24099G.f11261R;
            C0597l0.i(i14);
            K0 k10 = this.f24099G.f11265V;
            C0597l0.j(k10);
            AtomicReference atomicReference3 = new AtomicReference();
            C0591j0 c0591j2 = ((C0597l0) k10.f10616G).f11259P;
            C0597l0.k(c0591j2);
            double dDoubleValue = ((Double) c0591j2.r(atomicReference3, 15000L, "double test flag value", new C0(k10, atomicReference3, 6))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", dDoubleValue);
            try {
                m7.V0(bundle);
                return;
            } catch (RemoteException e8) {
                T t7 = ((C0597l0) i14.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.b(e8, "Error returning double value to wrapper");
                return;
            }
        }
        if (i8 == 3) {
            I1 i15 = this.f24099G.f11261R;
            C0597l0.i(i15);
            K0 k11 = this.f24099G.f11265V;
            C0597l0.j(k11);
            AtomicReference atomicReference4 = new AtomicReference();
            C0591j0 c0591j3 = ((C0597l0) k11.f10616G).f11259P;
            C0597l0.k(c0591j3);
            i15.M(m7, ((Integer) c0591j3.r(atomicReference4, 15000L, "int test flag value", new C0(k11, atomicReference4, 5))).intValue());
            return;
        }
        if (i8 != 4) {
            return;
        }
        I1 i16 = this.f24099G.f11261R;
        C0597l0.i(i16);
        K0 k12 = this.f24099G.f11265V;
        C0597l0.j(k12);
        AtomicReference atomicReference5 = new AtomicReference();
        C0591j0 c0591j4 = ((C0597l0) k12.f10616G).f11259P;
        C0597l0.k(c0591j4);
        i16.I(m7, ((Boolean) c0591j4.r(atomicReference5, 15000L, "boolean test flag value", new C0(k12, atomicReference5, i13))).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void getUserProperties(String str, String str2, boolean z7, M m7) {
        zzb();
        C0591j0 c0591j0 = this.f24099G.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new RunnableC0394f(this, m7, str, str2, z7));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void initForTests(Map map) {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void initialize(a aVar, com.google.android.gms.internal.measurement.V v5, long j8) {
        C0597l0 c0597l0 = this.f24099G;
        if (c0597l0 == null) {
            Context context = (Context) b.v0(aVar);
            c.h(context);
            this.f24099G = C0597l0.q(context, v5, Long.valueOf(j8));
        } else {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11042O.a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void isDataCollectionEnabled(M m7) {
        zzb();
        C0591j0 c0591j0 = this.f24099G.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new RunnableC0603o0(this, m7, 1));
    }

    public final void j0(String str, M m7) {
        zzb();
        I1 i8 = this.f24099G.f11261R;
        C0597l0.i(i8);
        i8.O(str, m7);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void logEvent(String str, String str2, Bundle bundle, boolean z7, boolean z8, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.x(str, str2, bundle, z7, z8, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void logEventAndBundle(String str, String str2, Bundle bundle, M m7, long j8) {
        zzb();
        c.e(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        C0613u c0613u = new C0613u(str2, new C0611t(bundle), "app", j8);
        C0591j0 c0591j0 = this.f24099G.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new RunnableC3015g(this, m7, c0613u, str, 11));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void logHealthData(int i8, String str, a aVar, a aVar2, a aVar3) {
        zzb();
        Object objV0 = aVar == null ? null : b.v0(aVar);
        Object objV1 = aVar2 == null ? null : b.v0(aVar2);
        Object objV2 = aVar3 != null ? b.v0(aVar3) : null;
        T t7 = this.f24099G.f11258O;
        C0597l0.k(t7);
        t7.y(i8, true, false, str, objV0, objV1, objV2);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityCreated(a aVar, Bundle bundle, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivityCreatedByScionActivityInfo(W.i(activity), bundle, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityCreatedByScionActivityInfo(W w7, Bundle bundle, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C2592l0 c2592l0 = k8.f10909I;
        if (c2592l0 != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
            c2592l0.a(w7, bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityDestroyed(a aVar, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivityDestroyedByScionActivityInfo(W.i(activity), j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityDestroyedByScionActivityInfo(W w7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C2592l0 c2592l0 = k8.f10909I;
        if (c2592l0 != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
            c2592l0.b(w7);
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityPaused(a aVar, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivityPausedByScionActivityInfo(W.i(activity), j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityPausedByScionActivityInfo(W w7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C2592l0 c2592l0 = k8.f10909I;
        if (c2592l0 != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
            c2592l0.c(w7);
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityResumed(a aVar, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivityResumedByScionActivityInfo(W.i(activity), j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityResumedByScionActivityInfo(W w7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C2592l0 c2592l0 = k8.f10909I;
        if (c2592l0 != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
            c2592l0.d(w7);
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivitySaveInstanceState(a aVar, M m7, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivitySaveInstanceStateByScionActivityInfo(W.i(activity), m7, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivitySaveInstanceStateByScionActivityInfo(W w7, M m7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C2592l0 c2592l0 = k8.f10909I;
        Bundle bundle = new Bundle();
        if (c2592l0 != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
            c2592l0.e(w7, bundle);
        }
        try {
            m7.V0(bundle);
        } catch (RemoteException e8) {
            T t7 = this.f24099G.f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(e8, "Error returning bundle value to wrapper");
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityStarted(a aVar, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivityStartedByScionActivityInfo(W.i(activity), j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityStartedByScionActivityInfo(W w7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        if (k8.f10909I != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityStopped(a aVar, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        onActivityStoppedByScionActivityInfo(W.i(activity), j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void onActivityStoppedByScionActivityInfo(W w7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        if (k8.f10909I != null) {
            K0 k9 = this.f24099G.f11265V;
            C0597l0.j(k9);
            k9.t();
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void performAction(Bundle bundle, M m7, long j8) {
        zzb();
        m7.V0(null);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void registerOnMeasurementEventListener(S s7) {
        Object d6;
        zzb();
        f fVar = this.f24100H;
        synchronized (fVar) {
            try {
                d6 = (InterfaceC0624z0) fVar.get(Integer.valueOf(s7.J()));
                if (d6 == null) {
                    d6 = new D1(this, s7);
                    fVar.put(Integer.valueOf(s7.J()), d6);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.n();
        if (k8.f10911K.add(d6)) {
            return;
        }
        T t7 = ((C0597l0) k8.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11042O.a("OnEventListener already registered");
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void resetAnalyticsData(long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.f10913M.set(null);
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new G0(k8, j8, 1));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void retrieveAndUploadBatches(P p7) {
        int i8;
        Q0 q7;
        zzb();
        C0584h c0584h = this.f24099G.f11256M;
        D d6 = E.f10749S0;
        if (c0584h.B(null, d6)) {
            K0 k8 = this.f24099G.f11265V;
            C0597l0.j(k8);
            V v5 = new V(this, p7, 5);
            C0597l0 c0597l0 = (C0597l0) k8.f10616G;
            if (c0597l0.f11256M.B(null, d6)) {
                k8.n();
                C0591j0 c0591j0 = c0597l0.f11259P;
                C0597l0.k(c0591j0);
                if (c0591j0.z()) {
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.a("Cannot retrieve and upload batches from analytics worker thread");
                    return;
                }
                C0591j0 c0591j1 = c0597l0.f11259P;
                C0597l0.k(c0591j1);
                if (Thread.currentThread() == c0591j1.f11223J) {
                    T t8 = c0597l0.f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.a("Cannot retrieve and upload batches from analytics network thread");
                    return;
                }
                if (g.d()) {
                    T t9 = c0597l0.f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.a("Cannot retrieve and upload batches from main thread");
                    return;
                }
                T t10 = c0597l0.f11258O;
                C0597l0.k(t10);
                t10.f11047T.a("[sgtm] Started client-side batch upload work.");
                boolean z7 = false;
                int size = 0;
                int i9 = 0;
                while (!z7) {
                    T t11 = c0597l0.f11258O;
                    C0597l0.k(t11);
                    t11.f11047T.a("[sgtm] Getting upload batches from service (FE)");
                    AtomicReference atomicReference = new AtomicReference();
                    C0591j0 c0591j2 = c0597l0.f11259P;
                    C0597l0.k(c0591j2);
                    c0591j2.r(atomicReference, 10000L, "[sgtm] Getting upload batches", new C0(k8, atomicReference, 1));
                    t1 t1Var = (t1) atomicReference.get();
                    if (t1Var == null) {
                        break;
                    }
                    List list = t1Var.f11370G;
                    if (list.isEmpty()) {
                        break;
                    }
                    T t12 = c0597l0.f11258O;
                    C0597l0.k(t12);
                    t12.f11047T.b(Integer.valueOf(list.size()), "[sgtm] Retrieved upload batches. count");
                    size += list.size();
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z7 = false;
                            break;
                        }
                        r1 r1Var = (r1) it.next();
                        try {
                            URL url = new URI(r1Var.f11351I).toURL();
                            AtomicReference atomicReference2 = new AtomicReference();
                            L lN = ((C0597l0) k8.f10616G).n();
                            lN.n();
                            c.h(lN.f10942M);
                            String str = lN.f10942M;
                            C0597l0 c0597l1 = (C0597l0) k8.f10616G;
                            T t13 = c0597l1.f11258O;
                            C0597l0.k(t13);
                            Q q8 = t13.f11047T;
                            i8 = size;
                            Long lValueOf = Long.valueOf(r1Var.f11349G);
                            q8.d(lValueOf, r1Var.f11351I, Integer.valueOf(r1Var.f11350H.length), "[sgtm] Uploading data from app. row_id, url, uncompressed size");
                            if (!TextUtils.isEmpty(r1Var.f11355M)) {
                                T t14 = c0597l1.f11258O;
                                C0597l0.k(t14);
                                t14.f11047T.c(lValueOf, r1Var.f11355M, "[sgtm] Uploading data from app. row_id");
                            }
                            HashMap map = new HashMap();
                            Bundle bundle = r1Var.f11352J;
                            for (String str2 : bundle.keySet()) {
                                String string = bundle.getString(str2);
                                if (!TextUtils.isEmpty(string)) {
                                    map.put(str2, string);
                                }
                            }
                            N0 n7 = c0597l1.f11267X;
                            C0597l0.k(n7);
                            byte[] bArr = r1Var.f11350H;
                            C1093bD c1093bD = new C1093bD(k8, atomicReference2, r1Var, 14);
                            n7.o();
                            c.h(url);
                            c.h(bArr);
                            C0591j0 c0591j3 = ((C0597l0) n7.f10616G).f11259P;
                            C0597l0.k(c0591j3);
                            c0591j3.w(new p021c4.V(n7, str, url, bArr, map, c1093bD));
                            try {
                                I1 i10 = c0597l1.f11261R;
                                C0597l0.i(i10);
                                C0597l0 c0597l2 = (C0597l0) i10.f10616G;
                                c0597l2.f11263T.getClass();
                                long jCurrentTimeMillis = System.currentTimeMillis() + 60000;
                                synchronized (atomicReference2) {
                                    for (long jCurrentTimeMillis2 = 60000; atomicReference2.get() == null && jCurrentTimeMillis2 > 0; jCurrentTimeMillis2 = jCurrentTimeMillis - System.currentTimeMillis()) {
                                        try {
                                            atomicReference2.wait(jCurrentTimeMillis2);
                                            c0597l2.f11263T.getClass();
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            } catch (InterruptedException unused) {
                                T t15 = ((C0597l0) k8.f10616G).f11258O;
                                C0597l0.k(t15);
                                t15.f11042O.a("[sgtm] Interrupted waiting for uploading batch");
                            }
                            q7 = atomicReference2.get() == null ? Q0.UNKNOWN : (Q0) atomicReference2.get();
                        } catch (MalformedURLException | URISyntaxException e8) {
                            i8 = size;
                            T t16 = ((C0597l0) k8.f10616G).f11258O;
                            C0597l0.k(t16);
                            t16.f11039L.d(r1Var.f11351I, Long.valueOf(r1Var.f11349G), e8, "[sgtm] Bad upload url for row_id");
                            q7 = Q0.FAILURE;
                        }
                        if (q7 != Q0.SUCCESS) {
                            size = i8;
                            if (q7 == Q0.BACKOFF) {
                                z7 = true;
                                break;
                            }
                        } else {
                            i9++;
                            size = i8;
                        }
                    }
                }
                T t17 = c0597l0.f11258O;
                C0597l0.k(t17);
                t17.f11047T.c(Integer.valueOf(size), Integer.valueOf(i9), "[sgtm] Completed client-side batch upload work. total, success");
                v5.run();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setConditionalUserProperty(Bundle bundle, long j8) {
        zzb();
        if (bundle == null) {
            T t7 = this.f24099G.f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Conditional user property must not be null");
        } else {
            K0 k8 = this.f24099G.f11265V;
            C0597l0.j(k8);
            k8.C(bundle, j8);
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setConsent(Bundle bundle, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.y(new j(k8, bundle, j8, 1, 0));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setConsentThirdParty(Bundle bundle, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.D(bundle, -20, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setCurrentScreen(a aVar, String str, String str2, long j8) {
        zzb();
        Activity activity = (Activity) b.v0(aVar);
        c.h(activity);
        setCurrentScreenByScionActivityInfo(W.i(activity), str, str2, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setCurrentScreenByScionActivityInfo(W w7, String str, String str2, long j8) {
        zzb();
        V0 v5 = this.f24099G.f11264U;
        C0597l0.j(v5);
        C0597l0 c0597l0 = (C0597l0) v5.f10616G;
        if (!c0597l0.f11256M.C()) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11044Q.a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        S0 s7 = v5.f11062I;
        if (s7 == null) {
            T t8 = c0597l0.f11258O;
            C0597l0.k(t8);
            t8.f11044Q.a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        ConcurrentHashMap concurrentHashMap = v5.f11065L;
        Integer numValueOf = Integer.valueOf(w7.f23025G);
        if (concurrentHashMap.get(numValueOf) == null) {
            T t9 = c0597l0.f11258O;
            C0597l0.k(t9);
            t9.f11044Q.a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = v5.u(w7.f23026H);
        }
        String str3 = s7.f11031b;
        String str4 = s7.f11030a;
        boolean zEquals = Objects.equals(str3, str2);
        boolean zEquals2 = Objects.equals(str4, str);
        if (zEquals && zEquals2) {
            T t10 = c0597l0.f11258O;
            C0597l0.k(t10);
            t10.f11044Q.a("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > c0597l0.f11256M.s(null, false))) {
            T t11 = c0597l0.f11258O;
            C0597l0.k(t11);
            t11.f11044Q.b(Integer.valueOf(str.length()), "Invalid screen name length in setCurrentScreen. Length");
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > c0597l0.f11256M.s(null, false))) {
            T t12 = c0597l0.f11258O;
            C0597l0.k(t12);
            t12.f11044Q.b(Integer.valueOf(str2.length()), "Invalid class name length in setCurrentScreen. Length");
            return;
        }
        T t13 = c0597l0.f11258O;
        C0597l0.k(t13);
        t13.f11047T.c(str == null ? "null" : str, str2, "Setting current screen to name, class");
        I1 i8 = c0597l0.f11261R;
        C0597l0.i(i8);
        S0 s8 = new S0(i8.y0(), str, str2);
        concurrentHashMap.put(numValueOf, s8);
        v5.q(w7.f23026H, s8, true);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setDataCollectionEnabled(boolean z7) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.n();
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new p017c0.a(9, k8, z7));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new D0(k8, bundle2, 0));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setEventInterceptor(S s7) {
        zzb();
        l lVar = new l(this, s7, 20);
        C0591j0 c0591j0 = this.f24099G.f11259P;
        C0597l0.k(c0591j0);
        if (!c0591j0.z()) {
            C0591j0 c0591j1 = this.f24099G.f11259P;
            C0597l0.k(c0591j1);
            c0591j1.x(new V(13, this, lVar));
            return;
        }
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.m();
        k8.n();
        l lVar2 = k8.f10910J;
        if (lVar != lVar2) {
            c.j("EventInterceptor already set.", lVar2 == null);
        }
        k8.f10910J = lVar;
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setInstanceIdProvider(U u7) {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setMeasurementEnabled(boolean z7, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        Boolean boolValueOf = Boolean.valueOf(z7);
        k8.n();
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new V(11, k8, boolValueOf));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setMinimumSessionDuration(long j8) {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setSessionTimeoutDuration(long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new G0(k8, j8, 0));
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setSgtmDebugInfo(Intent intent) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        Uri data = intent.getData();
        if (data == null) {
            T t7 = ((C0597l0) k8.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11045R.a("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals("1")) {
            C0597l0 c0597l0 = (C0597l0) k8.f10616G;
            T t8 = c0597l0.f11258O;
            C0597l0.k(t8);
            t8.f11045R.a("[sgtm] Preview Mode was not enabled.");
            c0597l0.f11256M.f11192I = null;
            return;
        }
        String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
        if (TextUtils.isEmpty(queryParameter2)) {
            return;
        }
        C0597l0 c0597l1 = (C0597l0) k8.f10616G;
        T t9 = c0597l1.f11258O;
        C0597l0.k(t9);
        t9.f11045R.b(queryParameter2, "[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ");
        c0597l1.f11256M.f11192I = queryParameter2;
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setUserId(String str, long j8) {
        zzb();
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        if (str != null && TextUtils.isEmpty(str)) {
            T t7 = ((C0597l0) k8.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.a("User ID must be non-empty or null");
        } else {
            C0591j0 c0591j0 = ((C0597l0) k8.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new V(k8, str, 8));
            k8.I(null, "_id", str, true, j8);
        }
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void setUserProperty(String str, String str2, a aVar, boolean z7, long j8) {
        zzb();
        Object objV0 = b.v0(aVar);
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.I(str, str2, objV0, z7, j8);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public void unregisterOnMeasurementEventListener(S s7) {
        Object d6;
        zzb();
        f fVar = this.f24100H;
        synchronized (fVar) {
            d6 = (InterfaceC0624z0) fVar.remove(Integer.valueOf(s7.J()));
        }
        if (d6 == null) {
            d6 = new D1(this, s7);
        }
        K0 k8 = this.f24099G.f11265V;
        C0597l0.j(k8);
        k8.n();
        if (k8.f10911K.remove(d6)) {
            return;
        }
        T t7 = ((C0597l0) k8.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11042O.a("OnEventListener had not been registered");
    }

    public final void zzb() {
        if (this.f24099G == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }
}
