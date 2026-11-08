package p021c4;

import B.f;
import E1.N;
import I1.d;
import J3.v;
import K3.V;
import P3.b;
import P3.e;
import S3.g;
import Z3.C0433o;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.PN;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.C2592l0;
import com.google.android.gms.internal.measurement.EnumC2528a2;
import com.google.android.gms.internal.measurement.EnumC2534b2;
import com.google.android.gms.internal.measurement.S;
import com.google.android.gms.internal.measurement.W;
import com.google.android.gms.internal.measurement.Y1;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import p096m2.l;
import p117p0.C;
import z4.J;
import z4.L;
import z4.d0;
import z4.i0;
import z4.r0;

/* JADX INFO: loaded from: classes.dex */
public final class K0 extends B {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C2592l0 f10909I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public l f10910J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final CopyOnWriteArraySet f10911K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f10912L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AtomicReference f10913M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Object f10914N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f10915O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f10916P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public F0 f10917Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public F0 f10918R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public PriorityQueue f10919S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f10920T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public C0620x0 f10921U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final AtomicLong f10922V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public long f10923W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final C0594k0 f10924X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f10925Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public F0 f10926Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Y1 f10927a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public F0 f10928b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final C0433o f10929c0;

    public K0(C0597l0 c0597l0) {
        super(c0597l0);
        this.f10911K = new CopyOnWriteArraySet();
        this.f10914N = new Object();
        this.f10915O = false;
        this.f10916P = 1;
        this.f10925Y = true;
        this.f10929c0 = new C0433o(this, 7);
        this.f10913M = new AtomicReference();
        this.f10921U = C0620x0.f11403c;
        this.f10923W = -1L;
        this.f10922V = new AtomicLong(0L);
        this.f10924X = new C0594k0(c0597l0);
    }

    public static void q(K0 k8, C0620x0 c0620x0, long j8, boolean z7, boolean z8) {
        k8.m();
        k8.n();
        C0597l0 c0597l0 = (C0597l0) k8.f10616G;
        Z z9 = c0597l0.f11257N;
        C0597l0.i(z9);
        C0620x0 c0620x0U = z9.u();
        long j9 = k8.f10923W;
        int i8 = c0620x0.f11405b;
        T t7 = c0597l0.f11258O;
        if (j8 <= j9 && C0620x0.l(c0620x0U.f11405b, i8)) {
            C0597l0.k(t7);
            t7.f11045R.b(c0620x0, "Dropped out-of-date consent setting, proposed settings");
            return;
        }
        Z z10 = c0597l0.f11257N;
        C0597l0.i(z10);
        z10.m();
        if (!C0620x0.l(i8, z10.s().getInt("consent_source", 100))) {
            C0597l0.k(t7);
            t7.f11045R.b(Integer.valueOf(i8), "Lower precedence consent source ignored, proposed source");
            return;
        }
        C0597l0 c0597l1 = (C0597l0) k8.f10616G;
        SharedPreferences.Editor editorEdit = z10.s().edit();
        editorEdit.putString("consent_settings", c0620x0.j());
        editorEdit.putInt("consent_source", i8);
        editorEdit.apply();
        C0597l0.k(t7);
        t7.f11047T.b(c0620x0, "Setting storage consent(FE)");
        k8.f10923W = j8;
        int i9 = 0;
        if (c0597l1.r().z()) {
            C0574d1 c0574d1R = c0597l1.r();
            c0574d1R.m();
            c0574d1R.n();
            c0574d1R.E(new W0(c0574d1R, i9));
        } else {
            C0574d1 c0574d1R2 = c0597l1.r();
            c0574d1R2.m();
            c0574d1R2.n();
            if (c0574d1R2.y()) {
                c0574d1R2.E(new Z0(c0574d1R2, c0574d1R2.B(false), 4));
            }
        }
        if (z8) {
            c0597l1.r().s(new AtomicReference());
        }
    }

    public final void A(String str, String str2, long j8, Bundle bundle, boolean z7, boolean z8, boolean z9, String str3) {
        boolean z10;
        T t7;
        Z z11;
        Z z12;
        boolean zB;
        C0595k1 c0595k1;
        V0 v5;
        String str4;
        long j9;
        long j10;
        boolean zU;
        boolean z13;
        Bundle[] bundleArr;
        String str5 = str;
        c.e(str);
        c.h(bundle);
        m();
        n();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (!c0597l0.f()) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11046S.a("Event not sent since app measurement is disabled");
            return;
        }
        List list = ((C0597l0) this.f10616G).n().f10946Q;
        if (list != null && !list.contains(str2)) {
            T t9 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t9);
            t9.f11046S.c(str2, str5, "Dropping non-safelisted event. event name, origin");
            return;
        }
        if (!this.f10912L) {
            this.f10912L = true;
            try {
                try {
                    (!c0597l0.f11254K ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, ((C0597l0) this.f10616G).f11250G.getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, ((C0597l0) this.f10616G).f11250G);
                } catch (Exception e8) {
                    T t10 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t10);
                    t10.f11042O.b(e8, "Failed to invoke Tag Manager's initialize() method");
                }
            } catch (ClassNotFoundException unused) {
                T t11 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t11);
                t11.f11045R.a("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
            C0597l0 c0597l1 = (C0597l0) this.f10616G;
            c0597l1.getClass();
            String string = bundle.getString("gclid");
            c0597l1.f11263T.getClass();
            J(System.currentTimeMillis(), string, "auto", "_lgclid");
        }
        C0597l0 c0597l2 = (C0597l0) this.f10616G;
        c0597l2.getClass();
        I1 i8 = c0597l2.f11261R;
        Z z14 = c0597l2.f11257N;
        if (z7 && (!I1.f10869P[0].equals(str2))) {
            C0597l0.i(i8);
            C0597l0.i(z14);
            i8.D(bundle, z14.f11109f0.u());
        }
        C0433o c0433o = this.f10929c0;
        O o4 = c0597l2.f11262S;
        T t12 = c0597l2.f11258O;
        if (!z9 && !"_iap".equals(str2)) {
            C0597l0 c0597l3 = (C0597l0) this.f10616G;
            I1 i9 = c0597l3.f11261R;
            C0597l0.i(i9);
            int i10 = 2;
            if (i9.b0("event", str2)) {
                if (i9.Y("event", AbstractC0622y0.f11408a, AbstractC0622y0.f11409b, str2)) {
                    ((C0597l0) i9.f10616G).getClass();
                    if (i9.X(40, "event", str2)) {
                        i10 = 0;
                    }
                } else {
                    i10 = 13;
                }
            }
            if (i10 != 0) {
                C0597l0.k(t12);
                t12.f11041N.b(o4.d(str2), "Invalid public event name. Event will not be logged (FE)");
                I1 i11 = c0597l3.f11261R;
                C0597l0.i(i11);
                i11.getClass();
                I1.G(c0433o, null, i10, "_ev", I1.w(40, str2, true), str2 != null ? str2.length() : 0);
                return;
            }
        }
        C0597l0 c0597l4 = (C0597l0) this.f10616G;
        V0 v7 = c0597l4.f11264U;
        C0597l0.j(v7);
        S0 s0T = v7.t(false);
        if (s0T != null && !bundle.containsKey("_sc")) {
            s0T.f11033d = true;
        }
        I1.C(s0T, bundle, z7 && !z9);
        boolean zEquals = "am".equals(str5);
        boolean zH0 = I1.h0(str2);
        if (!z7 || this.f10910J == null || zH0) {
            z10 = zEquals;
        } else {
            if (!zEquals) {
                C0597l0.k(t12);
                t12.f11046S.c(o4.d(str2), o4.b(bundle), "Passing event to registered event handler (FE)");
                c.h(this.f10910J);
                l lVar = this.f10910J;
                lVar.getClass();
                try {
                    ((S) lVar.f27231H).U0(j8, bundle, str, str2);
                    return;
                } catch (RemoteException e9) {
                    C0597l0 c0597l5 = ((AppMeasurementDynamiteService) lVar.f27232I).f24099G;
                    if (c0597l5 != null) {
                        T t13 = c0597l5.f11258O;
                        C0597l0.k(t13);
                        t13.f11042O.b(e9, "Event interceptor threw exception");
                        return;
                    }
                    return;
                }
            }
            z10 = true;
        }
        C0597l0 c0597l6 = (C0597l0) this.f10616G;
        if (c0597l6.g()) {
            C0597l0.i(i8);
            int iR0 = i8.r0(str2);
            if (iR0 != 0) {
                C0597l0.k(t12);
                t12.f11041N.b(o4.d(str2), "Invalid event name. Event will not be logged (FE)");
                String strW = I1.w(40, str2, true);
                int length = str2 != null ? str2.length() : 0;
                I1 i12 = c0597l6.f11261R;
                C0597l0.i(i12);
                i12.getClass();
                I1.G(c0433o, str3, iR0, "_ev", strW, length);
                return;
            }
            String str6 = "_o";
            Bundle bundleQ = i8.q(str2, bundle, Collections.unmodifiableList(Arrays.asList("_o", "_sn", "_sc", "_si")), z9);
            c.h(bundleQ);
            V0 v8 = c0597l4.f11264U;
            C0597l0.j(v8);
            S0 s0T2 = v8.t(false);
            boolean z15 = z10;
            C0595k1 c0595k2 = c0597l4.f11260Q;
            if (s0T2 == null || !"_ae".equals(str2)) {
                t7 = t12;
                z11 = z14;
            } else {
                C0597l0.j(c0595k2);
                PN pn = c0595k2.f11243L;
                ((C0597l0) ((C0595k1) pn.f15387d).f10616G).f11263T.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                t7 = t12;
                z11 = z14;
                long j11 = jElapsedRealtime - pn.f15385b;
                pn.f15385b = jElapsedRealtime;
                if (j11 > 0) {
                    i8.A(bundleQ, j11);
                }
            }
            if (!"auto".equals(str5) && "_ssr".equals(str2)) {
                String string2 = bundleQ.getString("_ffr");
                int i13 = e.f5914a;
                String strTrim = (string2 == null || string2.trim().isEmpty()) ? null : string2.trim();
                C0597l0 c0597l7 = (C0597l0) i8.f10616G;
                Z z16 = c0597l7.f11257N;
                C0597l0.i(z16);
                if (Objects.equals(strTrim, z16.f11106c0.n())) {
                    T t14 = c0597l7.f11258O;
                    C0597l0.k(t14);
                    t14.f11046S.a("Not logging duplicate session_start_with_rollout event");
                    return;
                } else {
                    Z z17 = c0597l7.f11257N;
                    C0597l0.i(z17);
                    z17.f11106c0.o(strTrim);
                }
            } else if ("_ae".equals(str2)) {
                Z z18 = ((C0597l0) i8.f10616G).f11257N;
                C0597l0.i(z18);
                String strN = z18.f11106c0.n();
                if (!TextUtils.isEmpty(strN)) {
                    bundleQ.putString("_ffr", strN);
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleQ);
            if (c0597l2.f11256M.B(null, E.f10769b1)) {
                C0597l0.j(c0595k2);
                c0595k2.m();
                zB = c0595k2.f11241J;
                z12 = z11;
            } else {
                C0597l0.i(z11);
                z12 = z11;
                zB = z12.f11103Z.b();
            }
            C0597l0.i(z12);
            long jA = z12.f11100W.a();
            b bVar = c0597l2.f11263T;
            if (jA > 0) {
                v5 = v8;
                str4 = "_ae";
                j10 = j8;
                if (z12.x(j10) && zB) {
                    C0597l0.k(t7);
                    T t15 = t7;
                    t15.f11047T.a("Current session is expired, remove the session number, ID, and engagement time");
                    bVar.getClass();
                    c0595k1 = c0595k2;
                    t7 = t15;
                    J(System.currentTimeMillis(), null, "auto", "_sid");
                    bVar.getClass();
                    J(System.currentTimeMillis(), null, "auto", "_sno");
                    bVar.getClass();
                    J(System.currentTimeMillis(), null, "auto", "_se");
                    j9 = 0;
                    z12.f11101X.b(0L);
                } else {
                    c0595k1 = c0595k2;
                    j9 = 0;
                }
            } else {
                c0595k1 = c0595k2;
                v5 = v8;
                str4 = "_ae";
                j9 = 0;
                j10 = j8;
            }
            if (bundleQ.getLong("extend_session", j9) == 1) {
                C0597l0.k(t7);
                t7.f11047T.a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                C0595k1 c0595k3 = c0597l6.f11260Q;
                C0597l0.j(c0595k3);
                c0595k3.f11242K.C(j10, true);
            }
            ArrayList arrayList2 = new ArrayList(bundleQ.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            for (int i14 = 0; i14 < size; i14++) {
                String str7 = (String) arrayList2.get(i14);
                if (str7 != null) {
                    C0597l0.i(i8);
                    Object obj = bundleQ.get(str7);
                    if (obj instanceof Bundle) {
                        bundleArr = new Bundle[]{(Bundle) obj};
                    } else if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList3 = (ArrayList) obj;
                        bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                    } else {
                        bundleArr = null;
                    }
                    if (bundleArr != null) {
                        bundleQ.putParcelableArray(str7, bundleArr);
                    }
                }
            }
            int i15 = 0;
            while (i15 < arrayList.size()) {
                Bundle bundleA0 = (Bundle) arrayList.get(i15);
                String str8 = i15 != 0 ? "_ep" : str2;
                bundleA0.putString(str6, str5);
                I1 i16 = i8;
                if (z8) {
                    bundleA0 = i16.A0(bundleA0);
                }
                Bundle bundle2 = bundleA0;
                String str9 = str6;
                C0613u c0613u = new C0613u(str8, new C0611t(bundle2), str, j8);
                C0574d1 c0574d1R = c0597l4.r();
                c0574d1R.getClass();
                c0574d1R.m();
                c0574d1R.n();
                c0574d1R.F();
                N nO = ((C0597l0) c0574d1R.f10616G).o();
                nO.getClass();
                Parcel parcelObtain = Parcel.obtain();
                v.a(c0613u, parcelObtain, 0);
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                if (bArrMarshall.length > 131072) {
                    T t16 = ((C0597l0) nO.f10616G).f11258O;
                    C0597l0.k(t16);
                    t16.f11040M.a("Event is too long for local database. Sending event directly to service");
                    z13 = true;
                    zU = false;
                } else {
                    zU = nO.u(0, bArrMarshall);
                    z13 = true;
                }
                c0574d1R.E(new N(c0574d1R, c0574d1R.B(z13), zU, c0613u, 2));
                if (!z15) {
                    Iterator it = this.f10911K.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC0624z0) it.next()).a(j8, new Bundle(bundle2), str, str2);
                    }
                }
                i15++;
                str5 = str;
                str6 = str9;
                i8 = i16;
            }
            C0597l0.j(v5);
            if (v5.t(false) == null || !str4.equals(str2)) {
                return;
            }
            C0597l0.j(c0595k1);
            bVar.getClass();
            c0595k1.f11243L.b(SystemClock.elapsedRealtime(), true, true);
        }
    }

    public final void B() {
        o1 o1Var;
        m();
        this.f10920T = false;
        if (M().isEmpty() || this.f10915O || (o1Var = (o1) M().poll()) == null) {
            return;
        }
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i8 = c0597l0.f11261R;
        C0597l0.i(i8);
        if (i8.f10873L == null) {
            i8.f10873L = d.b(((C0597l0) i8.f10616G).f11250G);
        }
        d dVar = i8.f10873L;
        if (dVar != null) {
            this.f10915O = true;
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            Q q7 = t7.f11047T;
            String str = o1Var.f11318G;
            q7.b(str, "Registering trigger URI");
            D4.b bVarF = dVar.f(Uri.parse(str));
            if (bVarF != null) {
                bVarF.a(new V(bVarF, new p096m2.c(this, o1Var, 20), 27), new p119p2.b(this, 2));
            } else {
                this.f10915O = false;
                M().add(o1Var);
            }
        }
    }

    public final void C(Bundle bundle, long j8) {
        c.h(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11042O.a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Cw.F(bundle2, "app_id", String.class, null);
        Cw.F(bundle2, "origin", String.class, null);
        Cw.F(bundle2, "name", String.class, null);
        Cw.F(bundle2, "value", Object.class, null);
        Cw.F(bundle2, "trigger_event_name", String.class, null);
        Cw.F(bundle2, "trigger_timeout", Long.class, 0L);
        Cw.F(bundle2, "timed_out_event_name", String.class, null);
        Cw.F(bundle2, "timed_out_event_params", Bundle.class, null);
        Cw.F(bundle2, "triggered_event_name", String.class, null);
        Cw.F(bundle2, "triggered_event_params", Bundle.class, null);
        Cw.F(bundle2, "time_to_live", Long.class, 0L);
        Cw.F(bundle2, "expired_event_name", String.class, null);
        Cw.F(bundle2, "expired_event_params", Bundle.class, null);
        c.e(bundle2.getString("name"));
        c.e(bundle2.getString("origin"));
        c.h(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j8);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i8 = c0597l0.f11261R;
        C0597l0.i(i8);
        int iU0 = i8.u0(string);
        O o4 = c0597l0.f11262S;
        T t8 = c0597l0.f11258O;
        if (iU0 != 0) {
            C0597l0.k(t8);
            t8.f11039L.b(o4.f(string), "Invalid conditional user property name");
            return;
        }
        I1 i9 = c0597l0.f11261R;
        C0597l0.i(i9);
        if (i9.q0(obj, string) != 0) {
            C0597l0.k(t8);
            t8.f11039L.c(o4.f(string), obj, "Invalid conditional user property value");
            return;
        }
        Object objT = i9.t(obj, string);
        if (objT == null) {
            C0597l0.k(t8);
            t8.f11039L.c(o4.f(string), obj, "Unable to normalize conditional user property value");
            return;
        }
        Cw.K0(bundle2, objT);
        long j9 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j9 > 15552000000L || j9 < 1)) {
            C0597l0.k(t8);
            t8.f11039L.c(o4.f(string), Long.valueOf(j9), "Invalid conditional user property timeout");
            return;
        }
        long j10 = bundle2.getLong("time_to_live");
        if (j10 <= 15552000000L && j10 >= 1) {
            C0591j0 c0591j0 = c0597l0.f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new D0(this, bundle2, 1));
        } else {
            C0597l0.k(t8);
            t8.f11039L.c(o4.f(string), Long.valueOf(j10), "Invalid conditional user property time to live");
        }
    }

    public final void D(Bundle bundle, int i8, long j8) {
        Object obj;
        EnumC0614u0 enumC0614u0;
        String string;
        n();
        C0620x0 c0620x0 = C0620x0.f11403c;
        EnumC0618w0[] enumC0618w0Arr = EnumC0616v0.STORAGE.f11388G;
        int length = enumC0618w0Arr.length;
        int i9 = 0;
        while (true) {
            obj = null;
            if (i9 >= length) {
                break;
            }
            String str = enumC0618w0Arr[i9].f11399G;
            if (bundle.containsKey(str) && (string = bundle.getString(str)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i9++;
        }
        if (obj != null) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11044Q.b(obj, "Ignoring invalid consent setting");
            T t8 = c0597l0.f11258O;
            C0597l0.k(t8);
            t8.f11044Q.a("Valid consent values are 'granted', 'denied'");
        }
        C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
        C0597l0.k(c0591j0);
        boolean z7 = c0591j0.z();
        C0620x0 c0620x0D = C0620x0.d(i8, bundle);
        Iterator it = c0620x0D.f11404a.values().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            enumC0614u0 = EnumC0614u0.UNINITIALIZED;
            if (!zHasNext) {
                break;
            } else if (((EnumC0614u0) it.next()) != enumC0614u0) {
                G(c0620x0D, z7);
                break;
            }
        }
        C0606q c0606qA = C0606q.a(i8, bundle);
        Iterator it2 = c0606qA.f11338e.values().iterator();
        while (it2.hasNext()) {
            if (((EnumC0614u0) it2.next()) != enumC0614u0) {
                E(c0606qA, z7);
                break;
            }
        }
        Boolean boolD = C0606q.d(bundle);
        if (boolD != null) {
            String str2 = i8 == -30 ? "tcf" : "app";
            if (z7) {
                J(j8, boolD.toString(), str2, "allow_personalized_ads");
            } else {
                I(str2, "allow_personalized_ads", boolD.toString(), false, j8);
            }
        }
    }

    public final void E(C0606q c0606q, boolean z7) {
        V v5 = new V(12, this, c0606q);
        if (z7) {
            m();
            v5.run();
        } else {
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(v5);
        }
    }

    public final void F(C0620x0 c0620x0) {
        m();
        boolean z7 = (c0620x0.k(EnumC0618w0.ANALYTICS_STORAGE) && c0620x0.k(EnumC0618w0.AD_STORAGE)) || ((C0597l0) this.f10616G).r().y();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.m();
        if (z7 != c0597l0.f11278i0) {
            C0591j0 c0591j1 = c0597l0.f11259P;
            C0597l0.k(c0591j1);
            c0591j1.m();
            c0597l0.f11278i0 = z7;
            Z z8 = ((C0597l0) this.f10616G).f11257N;
            C0597l0.i(z8);
            z8.m();
            Boolean boolValueOf = z8.s().contains("measurement_enabled_from_api") ? Boolean.valueOf(z8.s().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z7 || boolValueOf == null || boolValueOf.booleanValue()) {
                K(Boolean.valueOf(z7), false);
            }
        }
    }

    public final void G(C0620x0 c0620x0, boolean z7) {
        boolean z8;
        C0620x0 c0620x1;
        boolean z9;
        boolean z10;
        n();
        int i8 = c0620x0.f11405b;
        if (i8 != -10) {
            EnumC0614u0 enumC0614u0 = (EnumC0614u0) c0620x0.f11404a.get(EnumC0618w0.AD_STORAGE);
            if (enumC0614u0 == null) {
                enumC0614u0 = EnumC0614u0.UNINITIALIZED;
            }
            EnumC0614u0 enumC0614u1 = EnumC0614u0.UNINITIALIZED;
            if (enumC0614u0 == enumC0614u1) {
                EnumC0614u0 enumC0614u2 = (EnumC0614u0) c0620x0.f11404a.get(EnumC0618w0.ANALYTICS_STORAGE);
                if (enumC0614u2 == null) {
                    enumC0614u2 = enumC0614u1;
                }
                if (enumC0614u2 == enumC0614u1) {
                    T t7 = ((C0597l0) this.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11044Q.a("Ignoring empty consent settings");
                    return;
                }
            }
        }
        synchronized (this.f10914N) {
            try {
                z8 = false;
                if (C0620x0.l(i8, this.f10921U.f11405b)) {
                    C0620x0 c0620x2 = this.f10921U;
                    EnumMap enumMap = c0620x0.f11404a;
                    EnumC0618w0[] enumC0618w0Arr = (EnumC0618w0[]) enumMap.keySet().toArray(new EnumC0618w0[0]);
                    int length = enumC0618w0Arr.length;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= length) {
                            z9 = false;
                            break;
                        }
                        EnumC0618w0 enumC0618w0 = enumC0618w0Arr[i9];
                        EnumC0614u0 enumC0614u3 = (EnumC0614u0) enumMap.get(enumC0618w0);
                        EnumC0614u0 enumC0614u4 = (EnumC0614u0) c0620x2.f11404a.get(enumC0618w0);
                        EnumC0614u0 enumC0614u5 = EnumC0614u0.DENIED;
                        if (enumC0614u3 == enumC0614u5 && enumC0614u4 != enumC0614u5) {
                            z9 = true;
                            break;
                        }
                        i9++;
                    }
                    EnumC0618w0 enumC0618w1 = EnumC0618w0.ANALYTICS_STORAGE;
                    if (c0620x0.k(enumC0618w1) && !this.f10921U.k(enumC0618w1)) {
                        z8 = true;
                    }
                    C0620x0 c0620x0G = c0620x0.g(this.f10921U);
                    this.f10921U = c0620x0G;
                    c0620x1 = c0620x0G;
                    z10 = z8;
                    z8 = true;
                } else {
                    c0620x1 = c0620x0;
                    z9 = false;
                    z10 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z8) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11045R.b(c0620x1, "Ignoring lower-priority consent settings, proposed settings");
            return;
        }
        long andIncrement = this.f10922V.getAndIncrement();
        if (z9) {
            this.f10913M.set(null);
            I0 i10 = new I0(this, c0620x1, andIncrement, z10, 0);
            if (z7) {
                m();
                i10.run();
                return;
            } else {
                C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
                C0597l0.k(c0591j0);
                c0591j0.y(i10);
                return;
            }
        }
        I0 i11 = new I0(this, c0620x1, andIncrement, z10, 1);
        if (z7) {
            m();
            i11.run();
        } else if (i8 == 30 || i8 == -10) {
            C0591j0 c0591j1 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j1);
            c0591j1.y(i11);
        } else {
            C0591j0 c0591j2 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j2);
            c0591j2.x(i11);
        }
    }

    public final void H(String str, String str2, String str3, boolean z7) {
        ((C0597l0) this.f10616G).f11263T.getClass();
        I(str, str2, str3, z7, System.currentTimeMillis());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0028  */
    public final void I(String str, String str2, Object obj, boolean z7, long j8) {
        int iU0;
        int length;
        if (z7) {
            I1 i8 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i8);
            iU0 = i8.u0(str2);
        } else {
            I1 i9 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i9);
            if (!i9.b0("user property", str2)) {
                iU0 = 6;
            } else if (i9.Y("user property", AbstractC0622y0.f11416i, null, str2)) {
                ((C0597l0) i9.f10616G).getClass();
                if (i9.X(24, "user property", str2)) {
                    iU0 = 0;
                } else {
                    iU0 = 6;
                }
            } else {
                iU0 = 15;
            }
        }
        C0433o c0433o = this.f10929c0;
        if (iU0 != 0) {
            I1 i10 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i10);
            i10.getClass();
            String strW = I1.w(24, str2, true);
            length = str2 != null ? str2.length() : 0;
            I1 i11 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i11);
            i11.getClass();
            I1.G(c0433o, null, iU0, "_ev", strW, length);
            return;
        }
        String str3 = str == null ? "app" : str;
        if (obj == null) {
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new RunnableC0601n0(this, str3, str2, null, j8, 1));
            return;
        }
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        I1 i12 = c0597l0.f11261R;
        C0597l0.i(i12);
        int iQ0 = i12.q0(obj, str2);
        I1 i13 = c0597l0.f11261R;
        if (iQ0 == 0) {
            C0597l0.i(i13);
            Object objT = i13.t(obj, str2);
            if (objT != null) {
                C0591j0 c0591j1 = ((C0597l0) this.f10616G).f11259P;
                C0597l0.k(c0591j1);
                c0591j1.x(new RunnableC0601n0(this, str3, str2, objT, j8, 1));
                return;
            }
            return;
        }
        C0597l0.i(i13);
        i13.getClass();
        String strW2 = I1.w(24, str2, true);
        length = ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0;
        I1 i14 = ((C0597l0) this.f10616G).f11261R;
        C0597l0.i(i14);
        i14.getClass();
        I1.G(c0433o, null, iQ0, "_ev", strW2, length);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0055  */
    public final void J(long j8, Object obj, String str, String str2) {
        boolean zU;
        c.e(str);
        c.e(str2);
        m();
        n();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    long j9 = true != "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 0L : 1L;
                    C0597l0 c0597l0 = (C0597l0) this.f10616G;
                    Long lValueOf = Long.valueOf(j9);
                    Z z7 = c0597l0.f11257N;
                    C0597l0.i(z7);
                    z7.f11097T.o(j9 == 1 ? "true" : "false");
                    obj = lValueOf;
                } else if (obj == null) {
                    Z z8 = ((C0597l0) this.f10616G).f11257N;
                    C0597l0.i(z8);
                    z8.f11097T.o("unset");
                }
                str2 = "_npa";
            } else if (obj == null) {
                Z z9 = ((C0597l0) this.f10616G).f11257N;
                C0597l0.i(z9);
                z9.f11097T.o("unset");
                str2 = "_npa";
            }
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.c("non_personalized_ads(_npa)", obj, "Setting user property(FE)");
        }
        Object obj2 = obj;
        String str4 = str2;
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        if (!c0597l1.f()) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11047T.a("User property not set since app measurement is disabled");
            return;
        }
        if (c0597l1.g()) {
            C0597l0 c0597l2 = (C0597l0) this.f10616G;
            F1 f8 = new F1(j8, obj2, str4, str);
            C0574d1 c0574d1R = c0597l2.r();
            c0574d1R.m();
            c0574d1R.n();
            c0574d1R.F();
            N nO = ((C0597l0) c0574d1R.f10616G).o();
            nO.getClass();
            Parcel parcelObtain = Parcel.obtain();
            v.b(f8, parcelObtain);
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            if (bArrMarshall.length > 131072) {
                T t9 = ((C0597l0) nO.f10616G).f11258O;
                C0597l0.k(t9);
                t9.f11040M.a("User property too long for local database. Sending directly to service");
                zU = false;
            } else {
                zU = nO.u(1, bArrMarshall);
            }
            c0574d1R.E(new N(c0574d1R, c0574d1R.B(true), zU, f8));
        }
    }

    public final void K(Boolean bool, boolean z7) {
        m();
        n();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11046S.b(bool, "Setting app measurement enabled (FE)");
        Z z8 = c0597l0.f11257N;
        C0597l0.i(z8);
        z8.m();
        SharedPreferences.Editor editorEdit = z8.s().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
        if (z7) {
            z8.m();
            SharedPreferences.Editor editorEdit2 = z8.s().edit();
            if (bool != null) {
                editorEdit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit2.remove("measurement_enabled_from_api");
            }
            editorEdit2.apply();
        }
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        C0591j0 c0591j0 = c0597l1.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.m();
        if (c0597l1.f11278i0 || !(bool == null || bool.booleanValue())) {
            L();
        }
    }

    public final void L() {
        m();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        String strN = z7.f11097T.n();
        if (strN != null) {
            boolean zEquals = "unset".equals(strN);
            b bVar = c0597l0.f11263T;
            if (zEquals) {
                bVar.getClass();
                J(System.currentTimeMillis(), null, "app", "_npa");
            } else {
                Long lValueOf = Long.valueOf(true != "true".equals(strN) ? 0L : 1L);
                bVar.getClass();
                J(System.currentTimeMillis(), lValueOf, "app", "_npa");
            }
        }
        boolean zF = ((C0597l0) this.f10616G).f();
        T t7 = c0597l0.f11258O;
        if (!zF || !this.f10925Y) {
            C0597l0.k(t7);
            t7.f11046S.a("Updating Scion state (FE)");
            C0574d1 c0574d1R = ((C0597l0) this.f10616G).r();
            c0574d1R.m();
            c0574d1R.n();
            c0574d1R.E(new Z0(c0574d1R, c0574d1R.B(true), 3));
            return;
        }
        C0597l0.k(t7);
        t7.f11046S.a("Recording app launch after enabling measurement for the first time (FE)");
        r();
        C0595k1 c0595k1 = ((C0597l0) this.f10616G).f11260Q;
        C0597l0.j(c0595k1);
        c0595k1.f11242K.A();
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new E0(this, 2));
    }

    public final PriorityQueue M() {
        if (this.f10919S == null) {
            this.f10919S = J0.p(Comparator.comparing(new B0(), new f(6)));
        }
        return this.f10919S;
    }

    @Override // p021c4.B
    public final boolean p() {
        return false;
    }

    public final void r() {
        m();
        n();
        if (((C0597l0) this.f10616G).g()) {
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            C0584h c0584h = c0597l0.f11256M;
            ((C0597l0) c0584h.f10616G).getClass();
            Boolean boolZ = c0584h.z("google_analytics_deferred_deep_link_enabled");
            int i8 = 0;
            if (boolZ != null && boolZ.booleanValue()) {
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11046S.a("Deferred Deep Link feature enabled.");
                C0591j0 c0591j0 = c0597l0.f11259P;
                C0597l0.k(c0591j0);
                c0591j0.x(new E0(this, i8));
            }
            C0574d1 c0574d1R = ((C0597l0) this.f10616G).r();
            c0574d1R.m();
            c0574d1R.n();
            J1 j1B = c0574d1R.B(true);
            c0574d1R.F();
            ((C0597l0) c0574d1R.f10616G).f11256M.B(null, E.f10802m1);
            ((C0597l0) c0574d1R.f10616G).o().u(3, new byte[0]);
            c0574d1R.E(new Z0(c0574d1R, j1B));
            this.f10925Y = false;
            Z z7 = c0597l0.f11257N;
            C0597l0.i(z7);
            z7.m();
            String string = z7.s().getString("previous_os_version", null);
            ((C0597l0) z7.f10616G).m().o();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = z7.s().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            c0597l0.m().o();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            y("auto", "_ou", bundle);
        }
    }

    public final void s(String str, String str2, Bundle bundle) {
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.f11263T.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        c.e(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new D0(this, bundle2, 2));
    }

    public final void t() {
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (!(c0597l0.f11250G.getApplicationContext() instanceof Application) || this.f10909I == null) {
            return;
        }
        ((Application) c0597l0.f11250G.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f10909I);
    }

    public final void u() {
        C2578i4.b();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (c0597l0.f11256M.B(null, E.f10759X0)) {
            C0591j0 c0591j0 = c0597l0.f11259P;
            C0597l0.k(c0591j0);
            boolean z7 = c0591j0.z();
            T t7 = c0597l0.f11258O;
            if (z7) {
                C0597l0.k(t7);
                t7.f11039L.a("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (g.d()) {
                C0597l0.k(t7);
                t7.f11039L.a("Cannot get trigger URIs from main thread");
                return;
            }
            n();
            C0597l0.k(t7);
            t7.f11047T.a("Getting trigger URIs (FE)");
            AtomicReference atomicReference = new AtomicReference();
            C0597l0.k(c0591j0);
            c0591j0.r(atomicReference, 10000L, "get trigger URIs", new C0(this, atomicReference, 0));
            List list = (List) atomicReference.get();
            if (list == null) {
                C0597l0.k(t7);
                t7.f11039L.a("Timed out waiting for get trigger URIs");
            } else {
                C0597l0.k(c0591j0);
                c0591j0.x(new V(this, list, 9));
            }
        }
    }

    public final void w() {
        Object obj;
        Object obj2;
        String str;
        l1 l1Var;
        l1 l1Var2;
        int i8;
        K0 k8;
        EnumC2534b2 enumC2534b2;
        r0 r0Var;
        m();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11046S.a("Handle tcf update.");
        Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        SharedPreferences sharedPreferencesQ = z7.q();
        HashMap map = new HashMap();
        D d6 = E.f10796k1;
        if (((Boolean) d6.a(null)).booleanValue()) {
            d0 d0Var = n1.f11301a;
            EnumC2528a2 enumC2528a2 = EnumC2528a2.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
            m1 m1Var = m1.f11290G;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(enumC2528a2, m1Var);
            obj = "PurposeDiagnostics";
            EnumC2528a2 enumC2528a3 = EnumC2528a2.IAB_TCF_PURPOSE_SELECT_BASIC_ADS;
            m1 m1Var2 = m1.f11291H;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry2 = new AbstractMap.SimpleImmutableEntry(enumC2528a3, m1Var2);
            EnumC2528a2 enumC2528a4 = EnumC2528a2.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry3 = new AbstractMap.SimpleImmutableEntry(enumC2528a4, m1Var);
            EnumC2528a2 enumC2528a5 = EnumC2528a2.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry4 = new AbstractMap.SimpleImmutableEntry(enumC2528a5, m1Var);
            EnumC2528a2 enumC2528a6 = EnumC2528a2.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
            List listAsList = Arrays.asList(simpleImmutableEntry, simpleImmutableEntry2, simpleImmutableEntry3, simpleImmutableEntry4, new AbstractMap.SimpleImmutableEntry(enumC2528a6, m1Var2), new AbstractMap.SimpleImmutableEntry(EnumC2528a2.IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS, m1Var2), new AbstractMap.SimpleImmutableEntry(EnumC2528a2.IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS, m1Var2));
            C c8 = new C(listAsList instanceof Collection ? listAsList.size() : 4, 4);
            c8.e(listAsList);
            i0 i0VarA = c8.a();
            int i9 = L.f31811I;
            r0 r0Var2 = new r0("CH");
            char[] cArr = new char[5];
            int iA = n1.a(sharedPreferencesQ, "IABTCF_CmpSdkID");
            int iA2 = n1.a(sharedPreferencesQ, "IABTCF_PolicyVersion");
            int iA3 = n1.a(sharedPreferencesQ, "IABTCF_gdprApplies");
            int iA4 = n1.a(sharedPreferencesQ, "IABTCF_PurposeOneTreatment");
            int iA5 = n1.a(sharedPreferencesQ, "IABTCF_EnableAdvertiserConsentMode");
            String strB = n1.b(sharedPreferencesQ, "IABTCF_PublisherCC");
            C cA = J.a();
            AbstractC1349gB it = i0VarA.keySet().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                enumC2534b2 = EnumC2534b2.PURPOSE_RESTRICTION_UNDEFINED;
                r0Var = r0Var2;
                if (!zHasNext) {
                    break;
                }
                EnumC2528a2 enumC2528a7 = (EnumC2528a2) it.next();
                AbstractC1349gB abstractC1349gB = it;
                i0 i0Var = i0VarA;
                String strB2 = n1.b(sharedPreferencesQ, "IABTCF_PublisherRestrictions" + enumC2528a7.zza());
                if (!TextUtils.isEmpty(strB2) && strB2.length() >= 755) {
                    int iDigit = Character.digit(strB2.charAt(754), 10);
                    EnumC2534b2 enumC2534b3 = EnumC2534b2.PURPOSE_RESTRICTION_NOT_ALLOWED;
                    if (iDigit < 0 || iDigit > EnumC2534b2.values().length || iDigit == 0) {
                        enumC2534b2 = enumC2534b3;
                    } else if (iDigit == 1) {
                        enumC2534b2 = EnumC2534b2.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                    } else if (iDigit == 2) {
                        enumC2534b2 = EnumC2534b2.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST;
                    }
                }
                cA.d(enumC2528a7, enumC2534b2);
                it = abstractC1349gB;
                r0Var2 = r0Var;
                i0VarA = i0Var;
            }
            i0 i0Var2 = i0VarA;
            i0 i0VarA2 = cA.a();
            String strB3 = n1.b(sharedPreferencesQ, "IABTCF_PurposeConsents");
            String strB4 = n1.b(sharedPreferencesQ, "IABTCF_VendorConsents");
            boolean z8 = !TextUtils.isEmpty(strB4) && strB4.length() >= 755 && strB4.charAt(754) == '1';
            String strB5 = n1.b(sharedPreferencesQ, "IABTCF_PurposeLegitimateInterests");
            String strB6 = n1.b(sharedPreferencesQ, "IABTCF_VendorLegitimateInterests");
            boolean z9 = !TextUtils.isEmpty(strB6) && strB6.length() >= 755 && strB6.charAt(754) == '1';
            cArr[0] = '2';
            EnumC2534b2 enumC2534b4 = (EnumC2534b2) i0VarA2.get(enumC2528a2);
            EnumC2534b2 enumC2534b5 = (EnumC2534b2) i0VarA2.get(enumC2528a4);
            EnumC2534b2 enumC2534b6 = (EnumC2534b2) i0VarA2.get(enumC2528a5);
            EnumC2534b2 enumC2534b7 = (EnumC2534b2) i0VarA2.get(enumC2528a6);
            C cA2 = J.a();
            obj2 = "Version";
            cA2.d(obj2, "2");
            cA2.d("VendorConsent", true != z8 ? "0" : "1");
            cA2.d("VendorLegitimateInterest", true != z9 ? "0" : "1");
            cA2.d("gdprApplies", iA3 != 1 ? "0" : "1");
            cA2.d("EnableAdvertiserConsentMode", iA5 != 1 ? "0" : "1");
            cA2.d("PolicyVersion", String.valueOf(iA2));
            cA2.d("CmpSdkID", String.valueOf(iA));
            cA2.d("PurposeOneTreatment", iA4 != 1 ? "0" : "1");
            cA2.d("PublisherCC", strB);
            cA2.d("PublisherRestrictions1", String.valueOf(enumC2534b4 != null ? enumC2534b4.zza() : enumC2534b2.zza()));
            cA2.d("PublisherRestrictions3", String.valueOf(enumC2534b5 != null ? enumC2534b5.zza() : enumC2534b2.zza()));
            cA2.d("PublisherRestrictions4", String.valueOf(enumC2534b6 != null ? enumC2534b6.zza() : enumC2534b2.zza()));
            cA2.d("PublisherRestrictions7", String.valueOf(enumC2534b7 != null ? enumC2534b7.zza() : enumC2534b2.zza()));
            String strF = n1.f(enumC2528a2, strB3, strB5);
            String strF2 = n1.f(enumC2528a4, strB3, strB5);
            String strF3 = n1.f(enumC2528a5, strB3, strB5);
            String strF4 = n1.f(enumC2528a6, strB3, strB5);
            Cw.e("Purpose1", strF);
            boolean z10 = z8;
            Cw.e("Purpose3", strF2);
            Cw.e("Purpose4", strF3);
            Cw.e("Purpose7", strF4);
            cA2.e(i0.e(4, new Object[]{"Purpose1", strF, "Purpose3", strF2, "Purpose4", strF3, "Purpose7", strF4}, null).entrySet());
            cA2.e(i0.e(5, new Object[]{"AuthorizePurpose1", true != n1.c(enumC2528a2, i0Var2, i0VarA2, r0Var, cArr, iA, iA5, iA3, iA2, iA4, strB, strB3, strB5, z10, z9) ? "0" : "1", "AuthorizePurpose3", true != n1.c(enumC2528a4, i0Var2, i0VarA2, r0Var, cArr, iA, iA5, iA3, iA2, iA4, strB, strB3, strB5, z10, z9) ? "0" : "1", "AuthorizePurpose4", true != n1.c(enumC2528a5, i0Var2, i0VarA2, r0Var, cArr, iA, iA5, iA3, iA2, iA4, strB, strB3, strB5, z10, z9) ? "0" : "1", "AuthorizePurpose7", true != n1.c(enumC2528a6, i0Var2, i0VarA2, r0Var, cArr, iA, iA5, iA3, iA2, iA4, strB, strB3, strB5, z10, z9) ? "0" : "1", obj, new String(cArr)}, null).entrySet());
            l1Var = new l1(cA2.a());
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            obj = "PurposeDiagnostics";
            obj2 = "Version";
            String strB7 = n1.b(sharedPreferencesQ, "IABTCF_VendorConsents");
            str = HttpUrl.FRAGMENT_ENCODE_SET;
            if (!str.equals(strB7) && strB7.length() > 754) {
                map.put("GoogleConsent", String.valueOf(strB7.charAt(754)));
            }
            int iA6 = n1.a(sharedPreferencesQ, "IABTCF_gdprApplies");
            if (iA6 != -1) {
                map.put("gdprApplies", String.valueOf(iA6));
            }
            int iA7 = n1.a(sharedPreferencesQ, "IABTCF_EnableAdvertiserConsentMode");
            if (iA7 != -1) {
                map.put("EnableAdvertiserConsentMode", String.valueOf(iA7));
            }
            int iA8 = n1.a(sharedPreferencesQ, "IABTCF_PolicyVersion");
            if (iA8 != -1) {
                map.put("PolicyVersion", String.valueOf(iA8));
            }
            String strB8 = n1.b(sharedPreferencesQ, "IABTCF_PurposeConsents");
            if (!str.equals(strB8)) {
                map.put("PurposeConsents", strB8);
            }
            int iA9 = n1.a(sharedPreferencesQ, "IABTCF_CmpSdkID");
            if (iA9 != -1) {
                map.put("CmpSdkID", String.valueOf(iA9));
            }
            l1Var = new l1(map);
        }
        T t8 = 
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0472: IGET (r1v2 't8' c4.T) = (r22v0 ?? I:??[OBJECT, ARRAY]) A[DECLARE_VAR] (LINE:1139) c4.l0.O c4.T in method: c4.K0.w():void, file: classes.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
            	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
            	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
            	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
            	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r22v0 ??
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            */
        /*
            Method dump skipped, instruction units count: 1494
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p021c4.K0.w():void");
    }

    public final void x(String str, String str2, Bundle bundle, boolean z7, boolean z8, long j8) {
        String strU;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (!Objects.equals(str2, "screen_view")) {
            boolean z9 = !z8 || this.f10910J == null || I1.h0(str2);
            String str3 = str == null ? "app" : str;
            Bundle bundle3 = new Bundle(bundle2);
            for (String str4 : bundle3.keySet()) {
                Object obj = bundle3.get(str4);
                if (obj instanceof Bundle) {
                    bundle3.putBundle(str4, new Bundle((Bundle) obj));
                } else if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i8 = 0; i8 < parcelableArr.length; i8++) {
                        Parcelable parcelable = parcelableArr[i8];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i8] = new Bundle((Bundle) parcelable);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        Object obj2 = list.get(i9);
                        if (obj2 instanceof Bundle) {
                            list.set(i9, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new H0(this, str3, str2, j8, bundle3, z8, z9, z7));
            return;
        }
        V0 v5 = ((C0597l0) this.f10616G).f11264U;
        C0597l0.j(v5);
        synchronized (v5.f11071R) {
            try {
                if (!v5.f11070Q) {
                    T t7 = ((C0597l0) v5.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11044Q.a("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String string = bundle2.getString("screen_name");
                if (string != null && (string.length() <= 0 || string.length() > ((C0597l0) v5.f10616G).f11256M.s(null, false))) {
                    T t8 = ((C0597l0) v5.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11044Q.b(Integer.valueOf(string.length()), "Invalid screen name length for screen view. Length");
                    return;
                }
                String string2 = bundle2.getString("screen_class");
                if (string2 != null && (string2.length() <= 0 || string2.length() > ((C0597l0) v5.f10616G).f11256M.s(null, false))) {
                    T t9 = ((C0597l0) v5.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11044Q.b(Integer.valueOf(string2.length()), "Invalid screen class length for screen view. Length");
                    return;
                }
                if (string2 == null) {
                    W w7 = v5.f11066M;
                    strU = w7 != null ? v5.u(w7.f23026H) : "Activity";
                } else {
                    strU = string2;
                }
                S0 s7 = v5.f11062I;
                if (v5.f11067N && s7 != null) {
                    v5.f11067N = false;
                    boolean zEquals = Objects.equals(s7.f11031b, strU);
                    boolean zEquals2 = Objects.equals(s7.f11030a, string);
                    if (zEquals && zEquals2) {
                        T t10 = ((C0597l0) v5.f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11044Q.a("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                C0597l0 c0597l0 = (C0597l0) v5.f10616G;
                T t11 = c0597l0.f11258O;
                C0597l0.k(t11);
                t11.f11047T.c(string == null ? "null" : string, strU == null ? "null" : strU, "Logging screen view with name, class");
                S0 s8 = v5.f11062I == null ? v5.f11063J : v5.f11062I;
                I1 i10 = c0597l0.f11261R;
                C0597l0.i(i10);
                S0 s9 = new S0(string, strU, i10.y0(), true, j8);
                v5.f11062I = s9;
                v5.f11063J = s8;
                v5.f11068O = s9;
                c0597l0.f11263T.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                C0591j0 c0591j1 = c0597l0.f11259P;
                C0597l0.k(c0591j1);
                c0591j1.x(new RunnableC0601n0(v5, bundle2, s9, s8, jElapsedRealtime, 2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y(String str, String str2, Bundle bundle) {
        m();
        ((C0597l0) this.f10616G).f11263T.getClass();
        z(System.currentTimeMillis(), bundle, str, str2);
    }

    public final void z(long j8, Bundle bundle, String str, String str2) {
        m();
        A(str, str2, j8, bundle, true, this.f10910J == null || I1.h0(str2), true, null);
    }
}
