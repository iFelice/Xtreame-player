package Z3;

import Z5.AbstractC0459p;
import Z5.AbstractC0460q;
import android.app.job.JobParameters;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import b7.I0;
import b7.S0;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.AbstractC2658y;
import com.google.android.gms.internal.measurement.C2531b;
import com.google.android.gms.internal.measurement.C2663z;
import com.google.android.gms.internal.measurement.K0;
import com.google.android.gms.internal.measurement.U1;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.A1;
import p021c4.AbstractC0622y0;
import p021c4.BinderC0608r0;
import p021c4.C0574d1;
import p021c4.C0575e;
import p021c4.C0578f;
import p021c4.C0579f0;
import p021c4.C0584h;
import p021c4.C0591j0;
import p021c4.C0597l0;
import p021c4.C0602o;
import p021c4.C0611t;
import p021c4.C0613u;
import p021c4.C1;
import p021c4.E1;
import p021c4.EnumC0618w0;
import p021c4.F1;
import p021c4.I1;
import p021c4.InterfaceC0583g1;
import p021c4.J1;
import p021c4.ServiceConnectionC0564a0;
import p021c4.z1;
import p167v3.CallableC3196d;
import pe.hf.black20.util.Config;
import z4.q0;

/* JADX INFO: renamed from: Z3.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0439v implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8388G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f8389H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f8390I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f8391J;

    public RunnableC0439v(BinderC0608r0 binderC0608r0, C0613u c0613u, String str) {
        this.f8388G = 6;
        this.f8390I = c0613u;
        this.f8389H = str;
        this.f8391J = binderC0608r0;
    }

    private final void a() {
        JSONObject jSONObject;
        String str = (String) this.f8389H;
        if (TextUtils.isEmpty(str)) {
            Log.d("UserMessagingPlatform", "Error on action: empty action name");
            return;
        }
        String str2 = (String) this.f8390I;
        String lowerCase = str.toLowerCase();
        if (TextUtils.isEmpty(str2)) {
            jSONObject = new JSONObject();
        } else {
            try {
                jSONObject = new JSONObject(str2);
            } catch (JSONException unused) {
                Log.d("UserMessagingPlatform", "Action[" + lowerCase + "]: failed to parse args: " + str2);
                return;
            }
        }
        J[] jArr = (J[]) this.f8391J;
        Log.d("UserMessagingPlatform", "Action[" + lowerCase + "]: " + jSONObject.toString());
        for (J j8 : jArr) {
            FutureTask futureTask = new FutureTask(new CallableC3196d(j8, lowerCase, jSONObject, 12));
            j8.zza().execute(futureTask);
            try {
                if (((Boolean) futureTask.get()).booleanValue()) {
                    return;
                }
            } catch (InterruptedException e8) {
                Log.d("UserMessagingPlatform", "Thread interrupted for Action[" + lowerCase + "]: ", e8);
            } catch (ExecutionException e9) {
                Log.d("UserMessagingPlatform", p000a.r.g("Failed to run Action[", lowerCase, "]: "), e9.getCause());
            }
        }
    }

    private final void b() {
        g0 g0Var = (g0) this.f8389H;
        p004a3.i iVar = (p004a3.i) this.f8390I;
        F.d dVar = (F.d) this.f8391J;
        Objects.requireNonNull(iVar);
        g0Var.f8326b.post(new com.google.android.gms.internal.cast.X(iVar, 3));
        if (((p168v4.a) dVar.f2962I) != p168v4.a.f30719H) {
            C0434p c0434p = g0Var.f8329e;
            C0435q c0435q = (C0435q) c0434p.f8375c.get();
            if (c0435q == null) {
                Log.e("UserMessagingPlatform", "Failed to load and cache a form due to null consent form resources.");
                return;
            }
            C0422d c0422d = (C0422d) c0434p.f8373a.zza();
            c0422d.f8304b = c0435q;
            C0430l c0430l = (C0430l) ((X) c0422d.a().f26413J).zza();
            c0430l.f8365l = true;
            G.f8254a.post(new RunnableC0431m(0, c0434p, c0430l));
        }
    }

    private final void c() {
        ServiceConnectionC0564a0 serviceConnectionC0564a0 = (ServiceConnectionC0564a0) this.f8391J;
        String str = serviceConnectionC0564a0.f11117a;
        C0597l0 c0597l0 = serviceConnectionC0564a0.f11118b.f11124a;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.m();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            C2663z c2663z = (C2663z) ((com.google.android.gms.internal.measurement.B) this.f8389H);
            Parcel parcelJ0 = c2663z.j0();
            AbstractC2658y.c(parcelJ0, bundle);
            Parcel parcelV0 = c2663z.v0(1, parcelJ0);
            Bundle bundle2 = (Bundle) AbstractC2658y.a(parcelV0, Bundle.CREATOR);
            parcelV0.recycle();
            if (bundle2 == null) {
                p021c4.T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11039L.a("Install Referrer Service returned a null response");
            }
        } catch (Exception e8) {
            p021c4.T t8 = c0597l0.f11258O;
            C0597l0.k(t8);
            t8.f11039L.b(e8.getMessage(), "Exception occurred while retrieving the Install Referrer");
        }
        C0591j0 c0591j1 = c0597l0.f11259P;
        C0597l0.k(c0591j1);
        c0591j1.m();
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* JADX WARN: Code duplicated, block: B:31:0x014b  */
    /* JADX WARN: Code duplicated, block: B:65:0x028b  */
    private final void d() throws Throwable {
        String str;
        String str2;
        long j8;
        int i8;
        char c8;
        Cursor cursorQuery;
        C1 c1Q;
        BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f8389H;
        J1 j9 = (J1) this.f8390I;
        C0575e c0575e = (C0575e) this.f8391J;
        A1 a8 = binderC0608r0.f11346G;
        a8.i();
        String str3 = j9.f10876G;
        com.bumptech.glide.c.h(str3);
        C0584h c0584hC0 = a8.c0();
        p021c4.D d6 = p021c4.E.f10745Q0;
        Cursor cursor = null;
        if (c0584hC0.B(null, d6)) {
            U2.t(a8);
            C0602o c0602o = a8.f10654I;
            A1.I(c0602o);
            long j10 = c0575e.f11153G;
            if (((C0597l0) c0602o.f10616G).f11256M.B(null, d6)) {
                c0602o.m();
                c0602o.n();
                try {
                    try {
                        cursorQuery = c0602o.j0().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", "creation_timestamp", "associated_row_id", "last_upload_timestamp"}, "rowId=?", new String[]{String.valueOf(j10)}, null, null, null, "1");
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(1);
                                com.bumptech.glide.c.h(string);
                                i8 = 4;
                                c8 = 2;
                                str = "upload_type";
                                str2 = "creation_timestamp";
                                j8 = j10;
                                try {
                                    c1Q = c0602o.Q(string, j10, cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                                    cursorQuery.close();
                                } catch (SQLiteException e8) {
                                    e = e8;
                                    p021c4.T t7 = ((C0597l0) c0602o.f10616G).f11258O;
                                    C0597l0.k(t7);
                                    t7.f11039L.c(Long.valueOf(j8), e, "Error to querying MeasurementBatch from upload_queue. rowId");
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    c1Q = null;
                                }
                            } else {
                                str = "upload_type";
                                str2 = "creation_timestamp";
                                j8 = j10;
                                i8 = 4;
                                c8 = 2;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                c1Q = null;
                            }
                        } catch (SQLiteException e9) {
                            e = e9;
                            str = "upload_type";
                            str2 = "creation_timestamp";
                            j8 = j10;
                            i8 = 4;
                            c8 = 2;
                        }
                    } catch (SQLiteException e10) {
                        e = e10;
                        str = "upload_type";
                        str2 = "creation_timestamp";
                        j8 = j10;
                        i8 = 4;
                        c8 = 2;
                        cursorQuery = null;
                    } catch (Throwable th) {
                        th = th;
                        cursor = null;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                c1Q = null;
                str = "upload_type";
                str2 = "creation_timestamp";
                j8 = j10;
                i8 = 4;
                c8 = 2;
            }
            if (c1Q == null) {
                a8.b().f11042O.c(str3, Long.valueOf(j8), "[sgtm] Queued batch doesn't exist. appId, rowId");
                return;
            }
            HashMap map = a8.f10682k0;
            String str4 = c1Q.f10695c;
            int i9 = c0575e.f11154H;
            if (i9 != 1) {
                if (i9 == 3) {
                    z1 z1Var = (z1) map.get(str4);
                    if (z1Var == null) {
                        z1Var = new z1(a8);
                        map.put(str4, z1Var);
                    } else {
                        z1Var.f11421b++;
                        z1Var.f11422c = z1Var.a();
                    }
                    long j11 = z1Var.f11422c;
                    ((P3.b) a8.c()).getClass();
                    a8.b().f11047T.d(str3, str4, Long.valueOf((j11 - System.currentTimeMillis()) / 1000), "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds");
                }
                C0602o c0602o2 = a8.f10654I;
                A1.I(c0602o2);
                Long lValueOf = Long.valueOf(c0575e.f11153G);
                c0602o2.E(lValueOf);
                a8.b().f11047T.c(str3, lValueOf, "[sgtm] increased batch retry count after failed client upload. appId, rowId");
                return;
            }
            if (map.containsKey(str4)) {
                map.remove(str4);
            }
            C0602o c0602o3 = a8.f10654I;
            A1.I(c0602o3);
            Long lValueOf2 = Long.valueOf(j8);
            c0602o3.B(lValueOf2);
            a8.b().f11047T.c(str3, lValueOf2, "[sgtm] queued batch deleted after successful client upload. appId, rowId");
            long j12 = c0575e.f11155I;
            if (j12 > 0) {
                C0602o c0602o4 = a8.f10654I;
                A1.I(c0602o4);
                C0597l0 c0597l0 = (C0597l0) c0602o4.f10616G;
                if (c0597l0.f11256M.B(null, d6)) {
                    c0602o4.m();
                    c0602o4.n();
                    Long lValueOf3 = Long.valueOf(j12);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(str, (Integer) 1);
                    c0597l0.f11263T.getClass();
                    contentValues.put(str2, Long.valueOf(System.currentTimeMillis()));
                    try {
                        SQLiteDatabase sQLiteDatabaseJ0 = c0602o4.j0();
                        String[] strArr = new String[3];
                        strArr[0] = String.valueOf(j12);
                        strArr[1] = str3;
                        strArr[c8] = String.valueOf(i8);
                        if (sQLiteDatabaseJ0.update("upload_queue", contentValues, "rowid=? AND app_id=? AND upload_type=?", strArr) != 1) {
                            p021c4.T t8 = c0597l0.f11258O;
                            C0597l0.k(t8);
                            t8.f11042O.c(str3, lValueOf3, "Google Signal pending batch not updated. appId, rowId");
                        }
                    } catch (SQLiteException e11) {
                        p021c4.T t9 = ((C0597l0) c0602o4.f10616G).f11258O;
                        C0597l0.k(t9);
                        t9.f11039L.d(str3, Long.valueOf(j12), e11, "Failed to update google Signal pending batch. appid, rowId");
                        throw e11;
                    }
                }
                a8.b().f11047T.c(str3, Long.valueOf(j12), "[sgtm] queued Google Signal batch updated. appId, signalRowId");
                a8.V(str3);
            }
        }
    }

    private final void e() {
        K0 k8;
        C0611t c0611t;
        C0613u c0613u = (C0613u) this.f8389H;
        J1 j8 = (J1) this.f8390I;
        BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f8391J;
        binderC0608r0.getClass();
        boolean zEquals = "_cmp".equals(c0613u.f11371G);
        A1 a8 = binderC0608r0.f11346G;
        if (zEquals && (c0611t = c0613u.f11372H) != null) {
            Bundle bundle = c0611t.f11369G;
            if (bundle.size() != 0) {
                String string = bundle.getString("_cis");
                if ("referrer broadcast".equals(string) || "referrer API".equals(string)) {
                    a8.b().f11045R.b(c0613u.toString(), "Event has been filtered ");
                    c0613u = new C0613u("_cmpx", c0611t, c0613u.f11373I, c0613u.f11374J);
                }
            }
        }
        String str = c0613u.f11371G;
        if (!((Boolean) p021c4.E.f10808o1.a(null)).booleanValue()) {
            C0579f0 c0579f0 = a8.f10652G;
            A1.I(c0579f0);
            String str2 = j8.f10876G;
            if (TextUtils.isEmpty(str2) || (k8 = (K0) c0579f0.f11175N.get(str2)) == null || k8.q() == 0) {
                binderC0608r0.n2(c0613u, j8);
                return;
            }
            a8.b().f11047T.b(str2, "EES config found for");
        }
        C0579f0 c0579f1 = a8.f10652G;
        E1 e8 = a8.f10658M;
        A1.I(c0579f1);
        String str3 = j8.f10876G;
        com.google.android.gms.internal.measurement.E e9 = TextUtils.isEmpty(str3) ? null : (com.google.android.gms.internal.measurement.E) c0579f1.f11177P.b(str3);
        if (e9 == null) {
            a8.b().f11047T.b(j8.f10876G, "EES not loaded for");
            binderC0608r0.n2(c0613u, j8);
            return;
        }
        try {
            C1093bD c1093bD = e9.f22906c;
            A1.I(e8);
            HashMap mapT = E1.T(c0613u.f11372H.i(), true);
            String strE0 = Cw.E0(str, AbstractC0622y0.f11410c, AbstractC0622y0.f11408a);
            if (strE0 == null) {
                strE0 = str;
            }
            if (e9.b(new C2531b(strE0, c0613u.f11374J, mapT))) {
                if (!((C2531b) c1093bD.f18026H).equals((C2531b) c1093bD.f18028J)) {
                    a8.b().f11047T.b(str, "EES edited event");
                    A1.I(e8);
                    binderC0608r0.n2(E1.L((C2531b) c1093bD.f18026H), j8);
                } else {
                    binderC0608r0.n2(c0613u, j8);
                }
                if (!((List) c1093bD.f18027I).isEmpty()) {
                    for (C2531b c2531b : (List) c1093bD.f18027I) {
                        a8.b().f11047T.b(c2531b.f23086a, "EES logging created event");
                        A1.I(e8);
                        binderC0608r0.n2(E1.L(c2531b), j8);
                    }
                    return;
                }
                return;
            }
        } catch (com.google.android.gms.internal.measurement.O unused) {
            a8.b().f11039L.c(j8.f10877H, str, "EES error. appId, eventName");
        }
        a8.b().f11047T.b(str, "EES was not applied to event");
        binderC0608r0.n2(c0613u, j8);
    }

    private final void f() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = (AtomicReference) this.f8389H;
        synchronized (atomicReference2) {
            try {
                try {
                    C0574d1 c0574d1 = (C0574d1) this.f8391J;
                    C0597l0 c0597l0 = (C0597l0) c0574d1.f10616G;
                    p021c4.Z z7 = c0597l0.f11257N;
                    C0597l0.i(z7);
                    if (!z7.u().k(EnumC0618w0.ANALYTICS_STORAGE)) {
                        p021c4.T t7 = c0597l0.f11258O;
                        C0597l0.k(t7);
                        t7.f11044Q.a("Analytics storage consent denied; will not get app instance id");
                        p021c4.K0 k8 = ((C0597l0) c0574d1.f10616G).f11265V;
                        C0597l0.j(k8);
                        k8.f10913M.set(null);
                        p021c4.Z z8 = c0597l0.f11257N;
                        C0597l0.i(z8);
                        z8.f11091N.o(null);
                        atomicReference2.set(null);
                        atomicReference2.notify();
                        return;
                    }
                    p021c4.G g8 = c0574d1.f11146J;
                    if (g8 == null) {
                        p021c4.T t8 = c0597l0.f11258O;
                        C0597l0.k(t8);
                        t8.f11039L.a("Failed to get app instance id");
                        atomicReference2.notify();
                        return;
                    }
                    J1 j8 = (J1) this.f8390I;
                    com.bumptech.glide.c.h(j8);
                    atomicReference2.set(g8.w1(j8));
                    String str = (String) atomicReference2.get();
                    if (str != null) {
                        p021c4.K0 k9 = ((C0597l0) c0574d1.f10616G).f11265V;
                        C0597l0.j(k9);
                        k9.f10913M.set(str);
                        p021c4.Z z9 = c0597l0.f11257N;
                        C0597l0.i(z9);
                        z9.f11091N.o(str);
                    }
                    c0574d1.D();
                    atomicReference = (AtomicReference) this.f8389H;
                    atomicReference.notify();
                } catch (Throwable th) {
                    ((AtomicReference) this.f8389H).notify();
                    throw th;
                }
            } catch (RemoteException e8) {
                p021c4.T t9 = ((C0597l0) ((C0574d1) this.f8391J).f10616G).f11258O;
                C0597l0.k(t9);
                t9.f11039L.b(e8, "Failed to get app instance id");
                atomicReference = (AtomicReference) this.f8389H;
            }
        }
    }

    private final void g() {
        Object obj = this.f8391J;
        String strW1 = null;
        try {
            try {
                C0574d1 c0574d1 = (C0574d1) obj;
                C0597l0 c0597l0 = (C0597l0) c0574d1.f10616G;
                p021c4.Z z7 = c0597l0.f11257N;
                C0597l0.i(z7);
                boolean zK = z7.u().k(EnumC0618w0.ANALYTICS_STORAGE);
                p021c4.Z z8 = c0597l0.f11257N;
                p021c4.T t7 = c0597l0.f11258O;
                if (zK) {
                    p021c4.G g8 = c0574d1.f11146J;
                    if (g8 != null) {
                        J1 j8 = (J1) this.f8389H;
                        com.bumptech.glide.c.h(j8);
                        strW1 = g8.w1(j8);
                        if (strW1 != null) {
                            p021c4.K0 k8 = ((C0597l0) c0574d1.f10616G).f11265V;
                            C0597l0.j(k8);
                            k8.f10913M.set(strW1);
                            C0597l0.i(z8);
                            z8.f11091N.o(strW1);
                        }
                        c0574d1.D();
                        com.google.android.gms.internal.measurement.M m7 = (com.google.android.gms.internal.measurement.M) this.f8390I;
                        I1 i8 = ((C0597l0) ((C0574d1) obj).f10616G).f11261R;
                        C0597l0.i(i8);
                        i8.O(strW1, m7);
                        return;
                    }
                    C0597l0.k(t7);
                    t7.f11039L.a("Failed to get app instance id");
                } else {
                    C0597l0.k(t7);
                    t7.f11044Q.a("Analytics storage consent denied; will not get app instance id");
                    p021c4.K0 k9 = ((C0597l0) c0574d1.f10616G).f11265V;
                    C0597l0.j(k9);
                    k9.f10913M.set(null);
                    C0597l0.i(z8);
                    z8.f11091N.o(null);
                }
                I1 i9 = c0597l0.f11261R;
                C0597l0.i(i9);
                i9.O(null, (com.google.android.gms.internal.measurement.M) this.f8390I);
            } catch (RemoteException e8) {
                p021c4.T t8 = ((C0597l0) ((C0574d1) obj).f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Failed to get app instance id");
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.measurement.M m8 = (com.google.android.gms.internal.measurement.M) this.f8390I;
            I1 i10 = ((C0597l0) ((C0574d1) obj).f10616G).f11261R;
            C0597l0.i(i10);
            i10.O(null, m8);
            throw th;
        }
    }

    private void h() {
        try {
            ((CountDownLatch) this.f8389H).await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        p113o3.r.c(new p007a6.e());
        try {
            try {
                try {
                    Object obj = this.f8391J;
                    ((p007a6.f) obj).getClass();
                    ((p007a6.f) obj).getClass();
                    ((p007a6.f) obj).getClass();
                    throw null;
                } catch (Exception e8) {
                    ((p007a6.f) this.f8391J).n(e8);
                    ((p007a6.f) this.f8391J).getClass();
                    throw null;
                }
            } catch (Y5.C e9) {
                p007a6.f fVar = (p007a6.f) this.f8391J;
                p023c6.a aVar = p023c6.a.INTERNAL_ERROR;
                Y5.B b8 = e9.f8145G;
                Map map = p007a6.f.f8703d;
                fVar.p(0, aVar, b8);
                ((p007a6.f) this.f8391J).getClass();
                throw null;
            }
        } catch (Throwable unused2) {
            ((p007a6.f) this.f8391J).getClass();
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0690  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        RunnableC0439v runnableC0439v;
        Object obj;
        ArrayList arrayList;
        String str;
        String str2;
        String str3;
        ArrayList arrayList2;
        Object obj2 = "episode_run_time";
        Object obj3 = "youtube_trailer";
        Object obj4 = "backdrop_path";
        Object obj5 = "last_modified";
        String str4 = "ORT_PROFILE_ID";
        Object obj6 = "releaseDate";
        Object obj7 = "genre";
        switch (this.f8388G) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                c();
                throw null;
            case 3:
                d();
                return;
            case 4:
                BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f8391J;
                binderC0608r0.f11346G.i();
                C0578f c0578f = (C0578f) this.f8389H;
                Object objI = c0578f.f11162I.i();
                A1 a8 = binderC0608r0.f11346G;
                if (objI == null) {
                    a8.L(c0578f, (J1) this.f8390I);
                    return;
                } else {
                    a8.Q(c0578f, (J1) this.f8390I);
                    return;
                }
            case 5:
                e();
                return;
            case 6:
                BinderC0608r0 binderC0608r1 = (BinderC0608r0) this.f8391J;
                binderC0608r1.f11346G.i();
                binderC0608r1.f11346G.o((C0613u) this.f8390I, (String) this.f8389H);
                return;
            case 7:
                BinderC0608r0 binderC0608r2 = (BinderC0608r0) this.f8391J;
                binderC0608r2.f11346G.i();
                F1 f8 = (F1) this.f8389H;
                Object objI2 = f8.i();
                A1 a9 = binderC0608r2.f11346G;
                if (objI2 != null) {
                    a9.S(f8, (J1) this.f8390I);
                    return;
                } else {
                    a9.M(f8.f10840H, (J1) this.f8390I);
                    return;
                }
            case 8:
                C0574d1 c0574d1 = (C0574d1) this.f8389H;
                J1 j8 = (J1) this.f8390I;
                C0575e c0575e = (C0575e) this.f8391J;
                p021c4.G g8 = c0574d1.f11146J;
                if (g8 == null) {
                    p021c4.T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.a("[sgtm] Discarding data. Failed to update batch upload status.");
                    return;
                }
                try {
                    g8.A2(j8, c0575e);
                    c0574d1.D();
                    return;
                } catch (RemoteException e8) {
                    p021c4.T t8 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.c(Long.valueOf(c0575e.f11153G), e8, "[sgtm] Failed to update batch upload status, rowId, exception");
                    return;
                }
            case 9:
                f();
                return;
            case 10:
                g();
                return;
            case 11:
                U1 u7 = (U1) this.f8389H;
                p021c4.T t9 = (p021c4.T) this.f8390I;
                JobParameters jobParameters = (JobParameters) this.f8391J;
                t9.f11047T.a("AppMeasurementJobService processed last upload request.");
                ((InterfaceC0583g1) u7.f23010G).b(jobParameters);
                return;
            case 12:
                if (((View) this.f8390I) != null) {
                    ((p076j4.b) this.f8391J).getClass();
                    return;
                }
                return;
            case 13:
                ((W4.e) this.f8391J).getClass();
                return;
            case 14:
                ((Y5.E) this.f8391J).execute((Y5.D) this.f8389H);
                return;
            case 15:
                ((AbstractC0460q) this.f8391J).getClass();
                throw null;
            case 16:
                ((AbstractC0459p) this.f8391J).getClass();
                throw null;
            case 17:
                ((Z5.M) this.f8391J).getClass();
                throw null;
            case 18:
                h();
                return;
            case 19:
                ((p038e6.d) this.f8391J).getClass();
                throw null;
            case 20:
                Object obj8 = "director";
                Object obj9 = "rating";
                Object obj10 = "rating_5based";
                ArrayList[] arrayListArr = (ArrayList[]) this.f8389H;
                I0 i8 = (I0) this.f8391J;
                arrayListArr[0] = i8.f10037E0.o0("ASC", q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                int i9 = 0;
                while (i9 < ((ArrayList[]) this.f8389H)[0].size()) {
                    HashMap map = new HashMap();
                    map.put("num", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25462a);
                    map.put("name", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25463b);
                    map.put("series_id", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25464c);
                    map.put("cover", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25465d);
                    map.put("plot", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25466e);
                    map.put("cast", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25467f);
                    Object obj11 = obj8;
                    map.put(obj11, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25468g);
                    Object obj12 = obj7;
                    map.put(obj12, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25469h);
                    Object obj13 = obj6;
                    map.put(obj13, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25470i);
                    obj8 = obj11;
                    Object obj14 = obj5;
                    map.put(obj14, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25471j);
                    obj5 = obj14;
                    Object obj15 = obj9;
                    map.put(obj15, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25472k);
                    obj9 = obj15;
                    Object obj16 = obj10;
                    map.put(obj16, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25473l);
                    obj10 = obj16;
                    Object obj17 = obj4;
                    map.put(obj17, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25474m);
                    obj4 = obj17;
                    Object obj18 = obj3;
                    map.put(obj18, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25475n);
                    map.put(obj2, ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25476o);
                    map.put("category_id", ((h7.h) ((ArrayList[]) this.f8389H)[0].get(i9)).f25477p);
                    ((ArrayList) this.f8390I).add(map);
                    i9++;
                    obj3 = obj18;
                    obj7 = obj12;
                    obj6 = obj13;
                }
                if (i8.j() == null) {
                    return;
                }
                i8.j().runOnUiThread(new com.google.android.gms.internal.cast.X(this, 17));
                return;
            case 21:
                I0 i10 = (I0) this.f8391J;
                String str5 = "0";
                String str6 = "parent_id";
                String str7 = "category_name";
                if (i10.f10074p1.equals("search")) {
                    HashMap mapM = p000a.r.m("category_name", "SEARCH RESULT", "category_id", "0000000");
                    mapM.put("parent_id", "0");
                    i10.f10039G0.add(mapM);
                    i10.f10043K0 = a7.b.e(i10.l(), true, (String) this.f8389H, "NEW", "0", "0");
                    ((JSONArray[]) this.f8390I)[0] = new JSONArray();
                    ((JSONArray[]) this.f8390I)[0] = new JSONArray((Collection) i10.f10043K0);
                    runnableC0439v = this;
                } else if (i10.f10074p1.equals("all")) {
                    Context contextL = i10.l();
                    c7.d dVar = new c7.d(contextL);
                    c7.b bVar = new c7.b(contextL, 1);
                    c7.b bVar2 = new c7.b(contextL, 0);
                    SharedPreferences sharedPreferences = contextL.getSharedPreferences("pe.hf.black20", 0);
                    String str8 = "No";
                    if (Config.f29414b.equals("no") && !sharedPreferences.getString("filter_status", null).equals("No") && !sharedPreferences.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) && !sharedPreferences.getString("filter_status", null).equals("null")) {
                        str8 = "Yes";
                    }
                    new ArrayList().clear();
                    ArrayList arrayListN0 = dVar.n0();
                    ArrayList arrayList3 = new ArrayList();
                    int i11 = 0;
                    while (i11 < arrayListN0.size()) {
                        I0 i12 = i10;
                        int iK0 = dVar.k0("SERIES", ((h7.a) arrayListN0.get(i11)).f25421a);
                        c7.d dVar2 = dVar;
                        if (iK0 >= 1) {
                            str = str5;
                            ArrayList arrayList4 = arrayList3;
                            str3 = str6;
                            if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                                str2 = str7;
                                if (!bVar.N(((h7.a) arrayListN0.get(i11)).f25421a, "SERIES", q0.q().c(str4, HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes")) {
                                    if (!str8.equals("Yes")) {
                                        arrayList2 = arrayList4;
                                        str3 = str3;
                                        str2 = str2;
                                        HashMap map2 = new HashMap();
                                        map2.put("category_id", ((h7.a) arrayListN0.get(i11)).f25421a);
                                        map2.put(str2, ((h7.a) arrayListN0.get(i11)).f25422b + " (" + String.valueOf(iK0) + ")");
                                        map2.put(str3, ((h7.a) arrayListN0.get(i11)).f25423c);
                                        arrayList2.add(map2);
                                    } else if (bVar2.c0(((h7.a) arrayListN0.get(i11)).f25422b, "SERIES").equals("yes")) {
                                        HashMap map3 = new HashMap();
                                        map3.put("category_id", ((h7.a) arrayListN0.get(i11)).f25421a);
                                        str2 = str2;
                                        map3.put(str2, ((h7.a) arrayListN0.get(i11)).f25422b + " (" + String.valueOf(iK0) + ")");
                                        str3 = str3;
                                        map3.put(str3, ((h7.a) arrayListN0.get(i11)).f25423c);
                                        arrayList2 = arrayList4;
                                        arrayList2.add(map3);
                                    }
                                    arrayList = arrayList2;
                                }
                                arrayList = arrayList4;
                            } else {
                                bVar = bVar;
                                str2 = str7;
                                str3 = str3;
                                str4 = str4;
                                arrayList = arrayList4;
                                if (!str8.equals("Yes")) {
                                    HashMap map4 = new HashMap();
                                    map4.put("category_id", ((h7.a) arrayListN0.get(i11)).f25421a);
                                    map4.put(str2, ((h7.a) arrayListN0.get(i11)).f25422b + " (" + String.valueOf(iK0) + ")");
                                    map4.put(str3, ((h7.a) arrayListN0.get(i11)).f25423c);
                                    arrayList.add(map4);
                                } else if (bVar2.c0(((h7.a) arrayListN0.get(i11)).f25422b, "SERIES").equals("yes")) {
                                    HashMap map5 = new HashMap();
                                    map5.put("category_id", ((h7.a) arrayListN0.get(i11)).f25421a);
                                    map5.put(str2, ((h7.a) arrayListN0.get(i11)).f25422b + " (" + String.valueOf(iK0) + ")");
                                    map5.put(str3, ((h7.a) arrayListN0.get(i11)).f25423c);
                                    arrayList.add(map5);
                                }
                            }
                        } else {
                            str4 = str4;
                            arrayList = arrayList3;
                            bVar = bVar;
                            str = str5;
                            str2 = str7;
                            str3 = str6;
                        }
                        i11++;
                        arrayList3 = arrayList;
                        str6 = str3;
                        bVar = bVar;
                        i10 = i12;
                        str5 = str;
                        str4 = str4;
                        str7 = str2;
                        dVar = dVar2;
                    }
                    I0 i13 = i10;
                    ArrayList arrayList5 = arrayList3;
                    String str9 = str5;
                    String str10 = str7;
                    String str11 = str6;
                    if (arrayListN0.size() == 0) {
                        HashMap mapM2 = p000a.r.m("category_id", "0000000000000", str10, "NO SERIES FOUND! (0)");
                        mapM2.put(str11, str9);
                        arrayList5.add(mapM2);
                    }
                    i10 = i13;
                    i10.f10039G0 = arrayList5;
                    i10.f10040H0 = a7.b.e(i10.l(), true, "all", "NEW", "0", "0");
                    runnableC0439v = this;
                    ((JSONArray[]) runnableC0439v.f8390I)[0] = new JSONArray();
                    ((JSONArray[]) runnableC0439v.f8390I)[0] = new JSONArray((Collection) i10.f10040H0);
                } else {
                    String str12 = "ORT_PROFILE_ID";
                    runnableC0439v = this;
                    if (i10.f10074p1.equals("fav")) {
                        HashMap mapM3 = p000a.r.m("category_name", "FAVORITES", "category_id", "99999");
                        mapM3.put("parent_id", "0");
                        i10.f10039G0.add(mapM3);
                        i10.f10041I0 = a7.b.e(i10.l(), false, "all", "NEW", "99999", HttpUrl.FRAGMENT_ENCODE_SET);
                        ((JSONArray[]) runnableC0439v.f8390I)[0] = new JSONArray();
                        ((JSONArray[]) runnableC0439v.f8390I)[0] = new JSONArray((Collection) i10.f10041I0);
                    } else if (i10.f10074p1.equals("continue")) {
                        HashMap mapM4 = p000a.r.m("category_name", "CONTINUE WATCHING", "category_id", "99997");
                        mapM4.put("parent_id", "0");
                        i10.f10039G0.add(mapM4);
                        new ArrayList();
                        ArrayList arrayListE0 = i10.f10037E0.E0();
                        i10.f10044L0 = arrayListE0;
                        if (arrayListE0.size() > 0) {
                            int i14 = 0;
                            while (i14 < i10.f10044L0.size()) {
                                String str13 = str12;
                                if (q0.q().c(str13, HttpUrl.FRAGMENT_ENCODE_SET).equals(((h7.g) i10.f10044L0.get(i14)).f25460a.split("-")[0])) {
                                    if (((h7.g) i10.f10044L0.get(i14)).f25461b.contains(q0.q().c(str13, HttpUrl.FRAGMENT_ENCODE_SET) + "-")) {
                                        String strReplaceAll = ((h7.g) i10.f10044L0.get(i14)).f25461b.replaceAll(q0.q().c(str13, HttpUrl.FRAGMENT_ENCODE_SET) + "-", HttpUrl.FRAGMENT_ENCODE_SET);
                                        new ArrayList().clear();
                                        ArrayList arrayListD = a7.b.d(i10.l(), strReplaceAll);
                                        if (arrayListD.size() > 0) {
                                            HashMap map6 = new HashMap();
                                            map6.put("num", (String) ((HashMap) arrayListD.get(0)).get("num"));
                                            map6.put("name", (String) ((HashMap) arrayListD.get(0)).get("name"));
                                            map6.put("series_id", (String) ((HashMap) arrayListD.get(0)).get("series_id"));
                                            map6.put("cover", (String) ((HashMap) arrayListD.get(0)).get("cover"));
                                            map6.put("plot", (String) ((HashMap) arrayListD.get(0)).get("plot"));
                                            map6.put("cast", (String) ((HashMap) arrayListD.get(0)).get("cast"));
                                            map6.put("director", (String) ((HashMap) arrayListD.get(0)).get("director"));
                                            Object obj19 = obj7;
                                            map6.put(obj19, (String) ((HashMap) arrayListD.get(0)).get(obj19));
                                            obj7 = obj19;
                                            Object obj20 = obj6;
                                            map6.put(obj20, (String) ((HashMap) arrayListD.get(0)).get(obj20));
                                            obj6 = obj20;
                                            Object obj21 = obj5;
                                            map6.put(obj21, (String) ((HashMap) arrayListD.get(0)).get(obj21));
                                            obj5 = obj21;
                                            map6.put("rating", (String) ((HashMap) arrayListD.get(0)).get("rating"));
                                            map6.put("rating_5based", (String) ((HashMap) arrayListD.get(0)).get("rating_5based"));
                                            Object obj22 = obj4;
                                            map6.put(obj22, (String) ((HashMap) arrayListD.get(0)).get(obj22));
                                            obj4 = obj22;
                                            Object obj23 = obj3;
                                            map6.put(obj23, (String) ((HashMap) arrayListD.get(0)).get(obj23));
                                            obj3 = obj23;
                                            obj = obj2;
                                            map6.put(obj, (String) ((HashMap) arrayListD.get(0)).get(obj));
                                            map6.put("category_id", (String) ((HashMap) arrayListD.get(0)).get("category_id"));
                                            i10.f10042J0.add(map6);
                                        } else {
                                            obj = obj2;
                                        }
                                    } else {
                                        obj = obj2;
                                    }
                                } else {
                                    obj = obj2;
                                }
                                i14++;
                                obj2 = obj;
                                str12 = str13;
                            }
                        }
                        ((JSONArray[]) runnableC0439v.f8390I)[0] = new JSONArray();
                        ((JSONArray[]) runnableC0439v.f8390I)[0] = new JSONArray((Collection) i10.f10042J0);
                    }
                }
                if (i10.j() == null) {
                    return;
                }
                i10.j().runOnUiThread(new com.google.android.gms.internal.cast.X(runnableC0439v, 18));
                return;
            default:
                ArrayList[] arrayListArr2 = (ArrayList[]) this.f8389H;
                S0 s7 = (S0) this.f8391J;
                arrayListArr2[0] = s7.f10183E0.t0("ASC", q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                int i15 = 0;
                for (char c8 = 0; i15 < ((ArrayList[]) this.f8389H)[c8].size(); c8 = 0) {
                    HashMap map7 = new HashMap();
                    map7.put("num", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25483a);
                    map7.put("name", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25484b);
                    map7.put("stream_type", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25485c);
                    map7.put("stream_id", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25486d);
                    map7.put("stream_icon", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25487e);
                    map7.put("rating", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25488f);
                    map7.put("rating_5based", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25489g);
                    map7.put("added", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25490h);
                    map7.put("category_id", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25491i);
                    map7.put("container_extension", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25492j);
                    map7.put("custom_sid", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25493k);
                    map7.put("direct_source", ((h7.j) ((ArrayList[]) this.f8389H)[c8].get(i15)).f25494l);
                    ((ArrayList[]) this.f8390I)[c8].add(map7);
                    i15++;
                }
                if (s7.j() == null) {
                    return;
                }
                s7.j().runOnUiThread(new com.google.android.gms.internal.cast.X(this, 20));
                return;
        }
    }

    public final String toString() {
        switch (this.f8388G) {
            case 14:
                return ((Runnable) this.f8390I).toString() + "(scheduled in SynchronizationContext)";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ RunnableC0439v(Object obj, Object obj2, Object obj3, int i8) {
        this.f8388G = i8;
        this.f8389H = obj;
        this.f8390I = obj2;
        this.f8391J = obj3;
    }

    public /* synthetic */ RunnableC0439v(Object obj, Object obj2, Object obj3, int i8, int i9) {
        this.f8388G = i8;
        this.f8389H = obj2;
        this.f8390I = obj3;
        this.f8391J = obj;
    }
}
