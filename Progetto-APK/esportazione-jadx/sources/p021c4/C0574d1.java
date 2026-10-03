package p021c4;

import E1.N;
import J3.f;
import P3.a;
import P3.b;
import Y.RunnableC0394f;
import Z3.RunnableC0439v;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import p046f6.c;

/* JADX INFO: renamed from: c4.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0574d1 extends B {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ServiceConnectionC0571c1 f11145I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public G f11146J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile Boolean f11147K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C0565a1 f11148L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ScheduledExecutorService f11149M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final c f11150N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final ArrayList f11151O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C0565a1 f11152P;

    public C0574d1(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11151O = new ArrayList();
        this.f11150N = new c(c0597l0.f11263T);
        this.f11145I = new ServiceConnectionC0571c1(this);
        this.f11148L = new C0565a1(this, c0597l0, 0);
        this.f11152P = new C0565a1(this, c0597l0, 1);
    }

    public static void G(C0574d1 c0574d1, ComponentName componentName) {
        c0574d1.m();
        if (c0574d1.f11146J != null) {
            c0574d1.f11146J = null;
            T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.b(componentName, "Disconnected from device MeasurementService");
            c0574d1.m();
            c0574d1.q();
        }
    }

    public final boolean A() {
        m();
        n();
        if (this.f11147K == null) {
            m();
            n();
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            Z z7 = c0597l0.f11257N;
            C0597l0.i(z7);
            z7.m();
            boolean z8 = false;
            Boolean boolValueOf = !z7.s().contains("use_service") ? null : Boolean.valueOf(z7.s().getBoolean("use_service", false));
            boolean z9 = true;
            if (boolValueOf == null || !boolValueOf.booleanValue()) {
                L lN = ((C0597l0) this.f10616G).n();
                lN.n();
                if (lN.f10948S == 1) {
                    z8 = true;
                } else {
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11047T.a("Checking service availability");
                    I1 i8 = c0597l0.f11261R;
                    C0597l0.i(i8);
                    int iC = f.f4145b.c(((C0597l0) i8.f10616G).f11250G, 12451000);
                    if (iC == 0) {
                        T t8 = c0597l0.f11258O;
                        C0597l0.k(t8);
                        t8.f11047T.a("Service available");
                    } else if (iC != 1) {
                        if (iC == 2) {
                            T t9 = c0597l0.f11258O;
                            C0597l0.k(t9);
                            t9.f11046S.a("Service container out of date");
                            I1 i9 = c0597l0.f11261R;
                            C0597l0.i(i9);
                            if (i9.v0() >= 17443) {
                                z8 = boolValueOf == null;
                            }
                        } else if (iC == 3) {
                            T t10 = c0597l0.f11258O;
                            C0597l0.k(t10);
                            t10.f11042O.a("Service disabled");
                        } else if (iC == 9) {
                            T t11 = c0597l0.f11258O;
                            C0597l0.k(t11);
                            t11.f11042O.a("Service invalid");
                        } else if (iC != 18) {
                            T t12 = c0597l0.f11258O;
                            C0597l0.k(t12);
                            t12.f11042O.b(Integer.valueOf(iC), "Unexpected service status");
                        } else {
                            T t13 = c0597l0.f11258O;
                            C0597l0.k(t13);
                            t13.f11042O.a("Service updating");
                        }
                        z9 = false;
                    } else {
                        T t14 = c0597l0.f11258O;
                        C0597l0.k(t14);
                        t14.f11047T.a("Service missing");
                    }
                    z8 = true;
                }
                if (!z8 && c0597l0.f11256M.p()) {
                    T t15 = c0597l0.f11258O;
                    C0597l0.k(t15);
                    t15.f11039L.a("No way to upload. Consider using the full version of Analytics");
                } else if (z9) {
                    Z z10 = c0597l0.f11257N;
                    C0597l0.i(z10);
                    z10.m();
                    SharedPreferences.Editor editorEdit = z10.s().edit();
                    editorEdit.putBoolean("use_service", z8);
                    editorEdit.apply();
                }
                z9 = z8;
            }
            this.f11147K = Boolean.valueOf(z9);
        }
        return this.f11147K.booleanValue();
    }

    public final J1 B(boolean z7) {
        long jAbs;
        Pair pair;
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.getClass();
        L lN = ((C0597l0) this.f10616G).n();
        String strL = null;
        if (z7) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            C0597l0 c0597l1 = (C0597l0) t7.f10616G;
            Z z8 = c0597l1.f11257N;
            C0597l0.i(z8);
            if (z8.f11089L != null) {
                Z z9 = c0597l1.f11257N;
                C0597l0.i(z9);
                p151t2.c cVar = z9.f11089L;
                Z z10 = (Z) cVar.f30272H;
                z10.m();
                z10.m();
                long j8 = ((Z) cVar.f30272H).s().getLong((String) cVar.f30273I, 0L);
                if (j8 == 0) {
                    cVar.e();
                    jAbs = 0;
                } else {
                    ((C0597l0) z10.f10616G).f11263T.getClass();
                    jAbs = Math.abs(j8 - System.currentTimeMillis());
                }
                long j9 = cVar.f30271G;
                if (jAbs < j9) {
                    pair = null;
                } else if (jAbs > j9 + j9) {
                    cVar.e();
                    pair = null;
                } else {
                    String string = z10.s().getString((String) cVar.f30275K, null);
                    long j10 = z10.s().getLong((String) cVar.f30274J, 0L);
                    cVar.e();
                    pair = (string == null || j10 <= 0) ? Z.f11085g0 : new Pair(string, Long.valueOf(j10));
                }
                if (pair != null && pair != Z.f11085g0) {
                    strL = U2.l(String.valueOf(pair.second), ":", (String) pair.first);
                }
            }
        }
        return lN.r(strL);
    }

    public final void C() {
        m();
        T t7 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t7);
        ArrayList arrayList = this.f11151O;
        t7.f11047T.b(Integer.valueOf(arrayList.size()), "Processing queued up service tasks");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e8) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Task exception while flushing queue");
            }
        }
        arrayList.clear();
        this.f11152P.a();
    }

    public final void D() {
        m();
        c cVar = this.f11150N;
        ((b) ((a) cVar.f25223I)).getClass();
        cVar.f25222H = SystemClock.elapsedRealtime();
        ((C0597l0) this.f10616G).getClass();
        this.f11148L.c(((Long) E.f10760Y.a(null)).longValue());
    }

    public final void E(Runnable runnable) {
        m();
        if (x()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.f11151O;
        long size = arrayList.size();
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.getClass();
        if (size >= 1000) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Discarding data. Max runnable queue size reached");
        } else {
            arrayList.add(runnable);
            this.f11152P.c(60000L);
            q();
        }
    }

    public final void F() {
        ((C0597l0) this.f10616G).getClass();
    }

    @Override // p021c4.B
    public final boolean p() {
        return false;
    }

    public final void q() {
        m();
        n();
        if (x()) {
            return;
        }
        if (A()) {
            this.f11145I.a();
            return;
        }
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        if (c0597l0.f11256M.p()) {
            return;
        }
        List<ResolveInfo> listQueryIntentServices = c0597l0.f11250G.getPackageManager().queryIntentServices(new Intent().setClassName(c0597l0.f11250G, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(c0597l0.f11250G, "com.google.android.gms.measurement.AppMeasurementService"));
        ServiceConnectionC0571c1 serviceConnectionC0571c1 = this.f11145I;
        C0574d1 c0574d1 = serviceConnectionC0571c1.f11136c;
        c0574d1.m();
        Context context = ((C0597l0) c0574d1.f10616G).f11250G;
        O3.a aVarA = O3.a.a();
        synchronized (serviceConnectionC0571c1) {
            try {
                if (serviceConnectionC0571c1.f11134a) {
                    T t8 = ((C0597l0) serviceConnectionC0571c1.f11136c.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11047T.a("Connection attempt already in progress");
                    return;
                }
                C0574d1 c0574d2 = serviceConnectionC0571c1.f11136c;
                T t9 = ((C0597l0) c0574d2.f10616G).f11258O;
                C0597l0.k(t9);
                t9.f11047T.a("Using local app measurement service");
                serviceConnectionC0571c1.f11134a = true;
                aVarA.c(context, context.getClass().getName(), intent, c0574d2.f11145I, 129, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r() {
        m();
        n();
        ServiceConnectionC0571c1 serviceConnectionC0571c1 = this.f11145I;
        if (serviceConnectionC0571c1.f11135b != null && (serviceConnectionC0571c1.f11135b.isConnected() || serviceConnectionC0571c1.f11135b.isConnecting())) {
            serviceConnectionC0571c1.f11135b.disconnect();
        }
        serviceConnectionC0571c1.f11135b = null;
        try {
            O3.a.a().b(((C0597l0) this.f10616G).f11250G, serviceConnectionC0571c1);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f11146J = null;
    }

    public final void s(AtomicReference atomicReference) {
        m();
        n();
        E(new RunnableC0439v(this, atomicReference, B(false), 9, 0));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0106  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a6  */
    public final void t(G g8, M3.a aVar, J1 j8) {
        J1 j9;
        String str;
        long j10;
        long jElapsedRealtime;
        long j11;
        C0597l0 c0597l0;
        m();
        n();
        F();
        C0597l0 c0597l1 = (C0597l0) this.f10616G;
        c0597l1.getClass();
        J1 j12 = j8;
        int i8 = 0;
        int size = 100;
        for (int i9 = 100; i8 < 1001 && size == i9; i9 = 100) {
            C0597l0 c0597l2 = (C0597l0) this.f10616G;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayListR = c0597l2.o().r();
            if (arrayListR != null) {
                arrayList.addAll(arrayListR);
                size = arrayListR.size();
            } else {
                size = 0;
            }
            if (aVar != 0 && size < i9) {
                arrayList.add(new M(aVar, j12.f10878I, j12.f10885P));
            }
            D d6 = E.f10755V0;
            C0584h c0584h = c0597l1.f11256M;
            String str2 = null;
            boolean zB = c0584h.B(null, d6);
            int size2 = arrayList.size();
            int i10 = 0;
            while (i10 < size2) {
                M m7 = (M) arrayList.get(i10);
                M3.a aVar2 = m7.f10954a;
                D d8 = E.f10802m1;
                if (c0584h.B(str2, d8)) {
                    String str3 = m7.f10955b;
                    if (TextUtils.isEmpty(str3)) {
                        j9 = j12;
                    } else {
                        j9 = new J1(j12.f10876G, j12.f10877H, str3, m7.f10956c, j12.f10879J, j12.f10880K, j12.f10881L, j12.f10882M, j12.f10883N, j12.f10884O, j12.f10886Q, j12.f10887R, j12.f10888S, j12.f10889T, j12.f10890U, j12.f10891V, j12.f10892W, j12.f10893X, j12.f10894Y, j12.f10895Z, j12.f10896a0, j12.f10897b0, j12.f10898c0, j12.f10899d0, j12.f10900e0, j12.f10901f0, j12.f10902g0, j12.f10903h0, j12.f10904i0, j12.f10905j0, j12.f10906k0, j12.f10907l0, j12.f10908m0);
                    }
                } else {
                    j9 = j12;
                }
                if (aVar2 instanceof C0613u) {
                    if (zB) {
                        try {
                            C0597l0 c0597l3 = (C0597l0) this.f10616G;
                            c0597l3.f11263T.getClass();
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            try {
                                c0597l3.f11263T.getClass();
                                j11 = jCurrentTimeMillis;
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                            } catch (RemoteException e8) {
                                e = e8;
                                jElapsedRealtime = 0;
                                j10 = jCurrentTimeMillis;
                                T t7 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t7);
                                t7.f11039L.b(e, "Failed to send event to the service");
                                if (zB && j10 != 0) {
                                    c0597l0 = (C0597l0) this.f10616G;
                                    if (C1093bD.f18024K == null) {
                                        C1093bD.f18024K = new C1093bD(c0597l0.f11250G, c0597l0);
                                    }
                                    C1093bD c1093bD = C1093bD.f18024K;
                                    c0597l0.f11263T.getClass();
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    c0597l0.f11263T.getClass();
                                    c1093bD.o(13, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime), j10, jCurrentTimeMillis2);
                                }
                                str = null;
                                i10++;
                                j12 = j9;
                                str2 = str;
                                arrayList = arrayList;
                                size = size;
                            }
                        } catch (RemoteException e9) {
                            e = e9;
                            j10 = 0;
                            jElapsedRealtime = 0;
                        }
                    } else {
                        j11 = 0;
                        jElapsedRealtime = 0;
                    }
                    try {
                        g8.X0((C0613u) aVar2, j9);
                        if (zB) {
                            T t8 = c0597l1.f11258O;
                            C0597l0.k(t8);
                            t8.f11047T.a("Logging telemetry for logEvent from database");
                            C0597l0 c0597l4 = (C0597l0) this.f10616G;
                            if (C1093bD.f18024K == null) {
                                C1093bD.f18024K = new C1093bD(c0597l4.f11250G, c0597l4);
                            }
                            C1093bD c1093bD2 = C1093bD.f18024K;
                            c0597l4.f11263T.getClass();
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            c0597l4.f11263T.getClass();
                            c1093bD2.o(0, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime), j11, jCurrentTimeMillis3);
                        }
                    } catch (RemoteException e10) {
                        e = e10;
                        j10 = j11;
                        T t9 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t9);
                        t9.f11039L.b(e, "Failed to send event to the service");
                        if (zB) {
                            c0597l0 = (C0597l0) this.f10616G;
                            if (C1093bD.f18024K == null) {
                                C1093bD.f18024K = new C1093bD(c0597l0.f11250G, c0597l0);
                            }
                            C1093bD c1093bD3 = C1093bD.f18024K;
                            c0597l0.f11263T.getClass();
                            long jCurrentTimeMillis4 = System.currentTimeMillis();
                            c0597l0.f11263T.getClass();
                            c1093bD3.o(13, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime), j10, jCurrentTimeMillis4);
                        }
                    }
                } else if (aVar2 instanceof F1) {
                    try {
                        g8.b0((F1) aVar2, j9);
                    } catch (RemoteException e11) {
                        T t10 = ((C0597l0) this.f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11039L.b(e11, "Failed to send user property to the service");
                    }
                } else {
                    if (aVar2 instanceof C0578f) {
                        try {
                            g8.o2((C0578f) aVar2, j9);
                        } catch (RemoteException e12) {
                            T t11 = ((C0597l0) this.f10616G).f11258O;
                            C0597l0.k(t11);
                            t11.f11039L.b(e12, "Failed to send conditional user property to the service");
                        }
                    } else {
                        C0597l0 c0597l5 = (C0597l0) this.f10616G;
                        str = null;
                        if (c0597l5.f11256M.B(null, d8) && (aVar2 instanceof C0611t)) {
                            try {
                                g8.b1(((C0611t) aVar2).i(), j9);
                            } catch (RemoteException e13) {
                                T t12 = ((C0597l0) this.f10616G).f11258O;
                                C0597l0.k(t12);
                                t12.f11039L.b(e13, "Failed to send default event parameters to the service");
                            }
                        } else {
                            T t13 = c0597l5.f11258O;
                            C0597l0.k(t13);
                            t13.f11039L.a("Discarding data. Unrecognized parcel type.");
                        }
                    }
                    i10++;
                    j12 = j9;
                    str2 = str;
                    arrayList = arrayList;
                    size = size;
                }
                str = null;
                i10++;
                j12 = j9;
                str2 = str;
                arrayList = arrayList;
                size = size;
            }
            i8++;
        }
    }

    public final void u(C0578f c0578f) {
        boolean zU;
        m();
        n();
        ((C0597l0) this.f10616G).getClass();
        N nO = ((C0597l0) this.f10616G).o();
        C0597l0 c0597l0 = (C0597l0) nO.f10616G;
        I1 i8 = c0597l0.f11261R;
        C0597l0.i(i8);
        i8.getClass();
        byte[] bArrO0 = I1.o0(c0578f);
        if (bArrO0.length > 131072) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11040M.a("Conditional user property too long for local database. Sending directly to service");
            zU = false;
        } else {
            zU = nO.u(2, bArrO0);
        }
        E(new N(this, B(true), zU, new C0578f(c0578f), 3));
    }

    public final void w(Bundle bundle) {
        boolean z7;
        m();
        n();
        C0611t c0611t = new C0611t(bundle);
        F();
        if (((C0597l0) this.f10616G).f11256M.B(null, E.f10802m1)) {
            N nO = ((C0597l0) this.f10616G).o();
            C0597l0 c0597l0 = (C0597l0) nO.f10616G;
            I1 i8 = c0597l0.f11261R;
            C0597l0.i(i8);
            i8.getClass();
            byte[] bArrO0 = I1.o0(c0611t);
            T t7 = c0597l0.f11258O;
            if (bArrO0 == null) {
                C0597l0.k(t7);
                t7.f11040M.a("Null default event parameters; not writing to database");
            } else if (bArrO0.length > 131072) {
                C0597l0.k(t7);
                t7.f11040M.a("Default event parameters too long for local database. Sending directly to service");
            } else {
                z7 = nO.u(4, bArrO0);
            }
        }
        E(new RunnableC0394f(this, B(false), z7, c0611t, bundle));
    }

    public final boolean x() {
        m();
        n();
        return this.f11146J != null;
    }

    public final boolean y() {
        m();
        n();
        if (!A()) {
            return true;
        }
        I1 i8 = ((C0597l0) this.f10616G).f11261R;
        C0597l0.i(i8);
        return i8.v0() >= ((Integer) E.f10731J0.a(null)).intValue();
    }

    public final boolean z() {
        m();
        n();
        if (!A()) {
            return true;
        }
        I1 i8 = ((C0597l0) this.f10616G).f11261R;
        C0597l0.i(i8);
        return i8.v0() >= 241200;
    }
}
