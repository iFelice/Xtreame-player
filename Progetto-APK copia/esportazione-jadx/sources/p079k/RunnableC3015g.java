package p079k;

import C3.k;
import C3.s;
import D3.AbstractC0165i;
import E1.F;
import F.d;
import H3.l;
import Y.Z;
import Y5.B;
import Y5.u;
import Z5.AbstractC0444a;
import Z5.AbstractC0463u;
import Z5.C0456m;
import Z5.EnumC0452i;
import Z5.b0;
import Z5.c0;
import Z5.d0;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.widget.C0484j;
import androidx.work.impl.background.systemalarm.ConstraintProxy$BatteryChargingProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$BatteryNotLowProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$NetworkStateProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$StorageNotLowProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import com.bumptech.glide.c;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.C0693Cn;
import com.google.android.gms.internal.ads.C0713Ed;
import com.google.android.gms.internal.ads.C1932ra;
import com.google.android.gms.internal.ads.C2050to;
import com.google.android.gms.internal.ads.C2351zd;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.cast.BinderC2430c;
import com.google.android.gms.internal.cast.C2422a;
import com.google.android.gms.internal.cast.C2423a0;
import com.google.android.gms.internal.cast.C2471m0;
import com.google.android.gms.internal.cast.C2475n0;
import com.google.android.gms.internal.cast.C2482p;
import com.google.android.gms.internal.cast.C2490r0;
import com.google.android.gms.internal.cast.C2494s0;
import com.google.android.gms.internal.cast.C2497t;
import com.google.android.gms.internal.cast.D0;
import com.google.android.gms.internal.cast.EnumC2435d0;
import com.google.android.gms.internal.cast.RunnableC2493s;
import com.google.android.gms.internal.cast.Y;
import com.google.android.gms.internal.cast.Z2;
import com.google.android.gms.internal.cast.a3;
import com.google.android.gms.internal.measurement.B2;
import com.google.android.gms.internal.measurement.C2569h1;
import com.google.android.gms.internal.measurement.C2581j1;
import com.google.android.gms.internal.measurement.C2587k1;
import com.google.android.gms.internal.measurement.C2593l1;
import com.google.android.gms.internal.measurement.M;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.protobuf.U2;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import p021c4.A1;
import p021c4.BinderC0608r0;
import p021c4.C0574d1;
import p021c4.C0597l0;
import p021c4.C0602o;
import p021c4.C0613u;
import p021c4.C1;
import p021c4.E;
import p021c4.E1;
import p021c4.G;
import p021c4.I1;
import p021c4.J1;
import p021c4.K;
import p021c4.K0;
import p021c4.T;
import p021c4.X0;
import p021c4.Y0;
import p021c4.r1;
import p021c4.s1;
import p021c4.t1;
import p021c4.x1;
import p027d2.e;
import p027d2.n;
import p039f.S;
import p043f3.f;
import p052g4.r;
import p096m2.q;
import p104n2.m;
import p104n2.t;
import p104n2.v;
import p112o2.j;
import p128q3.b;
import p148t.i;
import p167v3.C;

/* JADX INFO: renamed from: k.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3015g implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25772G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25773H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f25774I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f25775J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f25776K;

    public RunnableC3015g(K0 k8, AtomicReference atomicReference, String str, String str2) {
        this.f25772G = 12;
        this.f25773H = atomicReference;
        this.f25774I = str;
        this.f25775J = str2;
        this.f25776K = k8;
    }

    private void a() {
        Object obj = this.f25775J;
        Object obj2 = this.f25774I;
        Object obj3 = this.f25773H;
        try {
            boolean booleanExtra = ((Intent) obj3).getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
            boolean booleanExtra2 = ((Intent) obj3).getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
            boolean booleanExtra3 = ((Intent) obj3).getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
            boolean booleanExtra4 = ((Intent) obj3).getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
            n.d().a(ConstraintProxyUpdateReceiver.f9786a, "Updating proxies: (BatteryNotLowProxy (" + booleanExtra + "), BatteryChargingProxy (" + booleanExtra2 + "), StorageNotLowProxy (" + booleanExtra3 + "), NetworkStateProxy (" + booleanExtra4 + "), ");
            m.a((Context) obj2, ConstraintProxy$BatteryNotLowProxy.class, booleanExtra);
            m.a((Context) obj2, ConstraintProxy$BatteryChargingProxy.class, booleanExtra2);
            m.a((Context) obj2, ConstraintProxy$StorageNotLowProxy.class, booleanExtra3);
            m.a((Context) obj2, ConstraintProxy$NetworkStateProxy.class, booleanExtra4);
        } finally {
            ((BroadcastReceiver.PendingResult) obj).finish();
        }
    }

    private final void b() {
        C0574d1 c0574d1 = (C0574d1) this.f25773H;
        AtomicReference atomicReference = (AtomicReference) this.f25774I;
        J1 j8 = (J1) this.f25775J;
        Bundle bundle = (Bundle) this.f25776K;
        synchronized (atomicReference) {
            try {
                G g8 = c0574d1.f11146J;
                if (g8 == null) {
                    T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.a("Failed to request trigger URIs; not connected to service");
                } else {
                    c.h(j8);
                    g8.I2(j8, bundle, new X0(atomicReference));
                    c0574d1.D();
                }
            } catch (RemoteException e8) {
                T t8 = ((C0597l0) c0574d1.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "Failed to request trigger URIs; remote exception");
                atomicReference.notifyAll();
            }
        }
    }

    private final void c() {
        C0574d1 c0574d1 = (C0574d1) this.f25773H;
        AtomicReference atomicReference = (AtomicReference) this.f25774I;
        J1 j8 = (J1) this.f25775J;
        s1 s1Var = (s1) this.f25776K;
        synchronized (atomicReference) {
            try {
                G g8 = c0574d1.f11146J;
                if (g8 == null) {
                    T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.a("[sgtm] Failed to get upload batches; not connected to service");
                } else {
                    c.h(j8);
                    g8.T2(j8, s1Var, new Y0(c0574d1, atomicReference));
                    c0574d1.D();
                }
            } catch (RemoteException e8) {
                T t8 = ((C0597l0) c0574d1.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11039L.b(e8, "[sgtm] Failed to get upload batches; remote exception");
                atomicReference.notifyAll();
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        int i8;
        r rVarJ;
        t1 t1Var;
        Iterator it;
        r1 r1Var;
        s sVar = null;
        byte[] bArrM0 = null;
        sVar = null;
        switch (this.f25772G) {
            case 0:
                h hVar = (h) this.f25773H;
                if (hVar != null) {
                    S s7 = (S) this.f25776K;
                    ((i) s7.f24988H).f25805g0 = true;
                    hVar.f25778b.c(false);
                    ((i) s7.f24988H).f25805g0 = false;
                }
                MenuItem menuItem = (MenuItem) this.f25774I;
                if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                    ((o) this.f25775J).q(menuItem, null, 4);
                    return;
                }
                return;
            case 1:
                Z z7 = (Z) this.f25773H;
                View view = (View) this.f25774I;
                Rect rect = (Rect) this.f25775J;
                z7.getClass();
                Z.g(rect, view);
                return;
            case 2:
                a();
                return;
            case 3:
                Object obj = this.f25775J;
                UUID uuid = (UUID) this.f25773H;
                String string = uuid.toString();
                n nVarD = n.d();
                String str = v.f27478c;
                StringBuilder sb = new StringBuilder("Updating progress for ");
                sb.append(uuid);
                sb.append(" (");
                Object obj2 = this.f25774I;
                sb.append((e) obj2);
                sb.append(")");
                nVarD.a(str, sb.toString());
                Object obj3 = this.f25776K;
                v vVar = (v) obj3;
                vVar.f27479a.c();
                try {
                    q qVarH = ((v) obj3).f27479a.u().h(string);
                    if (qVarH == null) {
                        throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    if (qVarH.f27243b == 2) {
                        ((v) obj3).f27479a.t().p(new p096m2.m(string, (e) obj2));
                    } else {
                        n.d().g(str, "Ignoring setProgressAsync(...). WorkSpec (" + string + ") is not in a RUNNING state.");
                    }
                    ((j) obj).j(null);
                    ((v) obj3).f27479a.n();
                    return;
                } catch (Throwable th) {
                    try {
                        n.d().c(v.f27478c, "Error updating Worker progress", th);
                        ((j) obj).k(th);
                    } finally {
                        vVar.f27479a.j();
                    }
                }
                break;
            case 4:
                Context context = (Context) this.f25773H;
                try {
                    new C1932ra(context, (String) this.f25774I).c(((f) this.f25775J).f25163a, (b) this.f25776K);
                    return;
                } catch (IllegalStateException e8) {
                    C0667Bc.a(context).b("InterstitialAd.load", e8);
                    return;
                }
            case 5:
                C c8 = (C) this.f25773H;
                C0693Cn c0693Cn = (C0693Cn) this.f25774I;
                ArrayDeque arrayDeque = (ArrayDeque) this.f25775J;
                ArrayDeque arrayDeque2 = (ArrayDeque) this.f25776K;
                c8.f(c0693Cn, arrayDeque, "to");
                c8.f(c0693Cn, arrayDeque2, "of");
                return;
            case 6:
                Context context2 = (Context) this.f25773H;
                try {
                    new C2351zd(context2, (String) this.f25774I).b(((f) this.f25775J).f25163a, (C2050to) this.f25776K);
                    return;
                } catch (IllegalStateException e9) {
                    C0667Bc.a(context2).b("RewardedAd.load", e9);
                    return;
                }
            case 7:
                Context context3 = (Context) this.f25773H;
                try {
                    new C0713Ed(context3, (String) this.f25774I).b(((f) this.f25775J).f25163a, (C2050to) this.f25776K);
                    return;
                } catch (IllegalStateException e10) {
                    C0667Bc.a(context3).b("RewardedInterstitialAd.load", e10);
                    return;
                }
            case 8:
                C2482p c2482p = (C2482p) this.f25773H;
                F f8 = (F) this.f25774I;
                F f9 = (F) this.f25775J;
                i iVar = (i) this.f25776K;
                C2497t c2497t = c2482p.f22766a;
                c2497t.getClass();
                Set set = c2497t.f22793b;
                boolean zIsEmpty = new HashSet(set).isEmpty();
                H3.b bVar = C2497t.f22791i;
                if (zIsEmpty) {
                    bVar.b("No need to prepare transfer without any callback", new Object[0]);
                    iVar.a(null);
                    return;
                }
                if (f8.f2637k != 1) {
                    bVar.b("No need to prepare transfer when transferring from local", new Object[0]);
                    iVar.a(null);
                    return;
                }
                E3.j jVarA = c2497t.a();
                if (jVarA == null || !jVarA.g()) {
                    bVar.b("No need to prepare transfer when there is no media session", new Object[0]);
                    iVar.a(null);
                    return;
                }
                bVar.b("Prepare route transfer for changing endpoint", new Object[0]);
                if (f9.f2637k == 0) {
                    D0.a(EnumC2435d0.CAST_TRANSFER_TO_LOCAL_USED);
                    i8 = 1;
                } else {
                    i8 = CastDevice.i(f9.f2644r) == null ? 3 : 2;
                }
                c2497t.f22796e = i8;
                c2497t.f22798g = iVar;
                bVar.b("notify transferring with type = %d", Integer.valueOf(i8));
                for (AbstractC0165i abstractC0165i : new HashSet(set)) {
                    int i9 = c2497t.f22796e;
                    Y y7 = (Y) abstractC0165i;
                    int i10 = y7.f22561a;
                    Object obj4 = y7.f22562b;
                    switch (i10) {
                        case 0:
                            C2423a0.f22616j.b("onTransferring with type = %d", Integer.valueOf(i9));
                            C2423a0 c2423a0 = (C2423a0) obj4;
                            c2423a0.f22625i = true;
                            c2423a0.c();
                            C2490r0 c2490r0B = c2423a0.f22619c.b(c2423a0.f22623g);
                            C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
                            c2471m0M.d();
                            C2475n0.v((C2475n0) c2471m0M.f22745H, i9);
                            c2490r0B.f((C2475n0) c2471m0M.b());
                            c2423a0.f22617a.a((C2494s0) c2490r0B.b(), 230);
                            break;
                        default:
                            d dVar = new d(10, 0);
                            p109o.j jVar = (p109o.j) obj4;
                            dVar.f2963J = Boolean.valueOf(((BinderC2430c) jVar.f27593H).f22658I == 2);
                            p109o.j.c(jVar, new a3(dVar));
                            Z2 z2D = jVar.d();
                            C2422a c2422a = new C2422a(new C0484j(i9, 13));
                            c2422a.f22615c = z2D.f22607h;
                            z2D.f22602c.add(c2422a);
                            break;
                    }
                }
                c2497t.f22799h = null;
                c.d("Must be called from the main thread.");
                if (jVarA.t()) {
                    jVarA.f2908g = new p052g4.i();
                    E3.j.f2901k.b("create SessionState with cached mediaInfo and mediaStatus", new Object[0]);
                    MediaInfo mediaInfoC = jVarA.c();
                    C3.r rVarD = jVarA.d();
                    if (mediaInfoC != null && rVarD != null) {
                        Boolean bool = Boolean.TRUE;
                        long jA = jVarA.a();
                        C3.n nVar = rVarD.f1591b0;
                        double d6 = rVarD.f1573J;
                        if (Double.compare(d6, 2.0d) > 0 || Double.compare(d6, 0.5d) < 0) {
                            throw new IllegalArgumentException("playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX");
                        }
                        sVar = new s(new k(mediaInfoC, nVar, bool, jA, d6, rVarD.f1580Q, rVarD.f1584U, null, null, null, null, 0L), null);
                    }
                    if (sVar != null) {
                        jVarA.f2908g.b(sVar);
                    } else {
                        jVarA.f2908g.a(new l());
                    }
                    rVarJ = jVarA.f2908g.f25345a;
                } else {
                    rVarJ = Cw.j(new l());
                }
                com.google.android.gms.internal.cast.r rVar = new com.google.android.gms.internal.cast.r(c2497t);
                rVarJ.getClass();
                p052g4.q qVar = p052g4.j.f25346a;
                rVarJ.c(qVar, rVar);
                rVarJ.b(qVar, new com.google.android.gms.internal.cast.r(c2497t));
                X3.d dVar2 = c2497t.f22794c;
                c.h(dVar2);
                RunnableC2493s runnableC2493s = c2497t.f22795d;
                c.h(runnableC2493s);
                dVar2.postDelayed(runnableC2493s, 10000L);
                return;
            case 9:
                BinderC0608r0 binderC0608r0 = (BinderC0608r0) this.f25773H;
                String str2 = (String) this.f25774I;
                s1 s1Var = (s1) this.f25775J;
                K k8 = (K) this.f25776K;
                A1 a8 = binderC0608r0.f11346G;
                a8.i();
                if (a8.c0().B(null, E.f10745Q0)) {
                    U2.t(a8);
                    C0602o c0602o = a8.f10654I;
                    A1.I(c0602o);
                    List listT = c0602o.t(str2, s1Var, ((Integer) E.f10714B.a(null)).intValue());
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = listT.iterator();
                    while (it2.hasNext()) {
                        C1 c9 = (C1) it2.next();
                        boolean zY = a8.Y(str2, c9.f10695c);
                        long j8 = c9.f10693a;
                        if (zY) {
                            int i11 = c9.f10700h;
                            try {
                                if (i11 <= 0) {
                                    it = it2;
                                } else {
                                    int iIntValue = ((Integer) E.f10833z.a(null)).intValue();
                                    long j9 = c9.f10699g;
                                    if (i11 > iIntValue) {
                                        it = it2;
                                    } else {
                                        it = it2;
                                        long jMin = Math.min(((Long) E.f10829x.a(null)).longValue() * (1 << (i11 - 1)), ((Long) E.f10831y.a(null)).longValue());
                                        ((P3.b) a8.c()).getClass();
                                        if (System.currentTimeMillis() >= jMin + j9) {
                                        }
                                        it2 = it;
                                    }
                                    a8.b().f11047T.d(str2, Long.valueOf(j8), Long.valueOf(j9), "[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis");
                                    it2 = it;
                                }
                                C2569h1 c2569h1 = (C2569h1) E1.O(C2581j1.r(), r1Var.f11350H);
                                for (int i12 = 0; i12 < ((C2581j1) c2569h1.f23247H).q(); i12++) {
                                    C2587k1 c2587k1 = (C2587k1) ((C2581j1) c2569h1.f23247H).t(i12).g();
                                    ((P3.b) a8.c()).getClass();
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    c2587k1.g();
                                    C2593l1.E1((C2593l1) c2587k1.f23247H, jCurrentTimeMillis);
                                    c2569h1.g();
                                    C2581j1.A((C2581j1) c2569h1.f23247H, i12, (C2593l1) c2587k1.e());
                                }
                                r1Var.f11350H = ((C2581j1) c2569h1.e()).c();
                                if (Log.isLoggable(a8.b().x(), 2)) {
                                    E1 e11 = a8.f10658M;
                                    A1.I(e11);
                                    r1Var.f11355M = e11.P((C2581j1) c2569h1.e());
                                }
                                arrayList.add(r1Var);
                            } catch (B2 unused) {
                                a8.b().f11042O.b(str2, "Failed to parse queued batch. appId");
                            }
                            Bundle bundle = new Bundle();
                            for (Map.Entry entry : c9.f10696d.entrySet()) {
                                bundle.putString((String) entry.getKey(), (String) entry.getValue());
                            }
                            r1Var = new r1(c9.f10693a, c9.f10694b.c(), c9.f10695c, bundle, c9.f10697e.f11028G, c9.f10698f, HttpUrl.FRAGMENT_ENCODE_SET);
                            it2 = it;
                        } else {
                            a8.b().f11047T.d(str2, Long.valueOf(j8), c9.f10695c, "[sgtm] batch skipped due to destination in backoff. appId, rowId, url");
                        }
                    }
                    t1Var = new t1(arrayList);
                } else {
                    t1Var = new t1(Collections.emptyList());
                }
                try {
                    k8.B1(t1Var);
                    a8.b().f11047T.c(str2, Integer.valueOf(t1Var.f11370G.size()), "[sgtm] Sending queued upload batches to client. appId, count");
                    return;
                } catch (RemoteException e12) {
                    a8.b().f11039L.c(str2, e12, "[sgtm] Failed to return upload batches for app");
                    return;
                }
            case 10:
                BinderC0608r0 binderC0608r1 = (BinderC0608r0) this.f25773H;
                Bundle bundle2 = (Bundle) this.f25774I;
                String str3 = (String) this.f25775J;
                J1 j10 = (J1) this.f25776K;
                A1 a9 = binderC0608r1.f11346G;
                boolean zB = a9.c0().B(null, E.f10775d1);
                boolean zB2 = a9.c0().B(null, E.f10781f1);
                boolean zIsEmpty2 = bundle2.isEmpty();
                A1 a10 = binderC0608r1.f11346G;
                if (zIsEmpty2 && zB) {
                    C0602o c0602o2 = a10.f10654I;
                    A1.I(c0602o2);
                    c0602o2.m();
                    c0602o2.n();
                    try {
                        c0602o2.j0().execSQL("delete from default_event_params where app_id=?", new String[]{str3});
                        return;
                    } catch (SQLiteException e13) {
                        T t7 = ((C0597l0) c0602o2.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.b(e13, "Error clearing default event params");
                        return;
                    }
                }
                C0602o c0602o3 = a9.f10654I;
                A1.I(c0602o3);
                c0602o3.m();
                c0602o3.n();
                E0.n nVar2 = new E0.n((C0597l0) c0602o3.f10616G, HttpUrl.FRAGMENT_ENCODE_SET, str3, "dep", 0L, 0L, bundle2);
                E1 e14 = c0602o3.f11343H.f10658M;
                A1.I(e14);
                byte[] bArrC = e14.N(nVar2).c();
                C0597l0 c0597l0 = (C0597l0) c0602o3.f10616G;
                T t8 = c0597l0.f11258O;
                C0597l0.k(t8);
                t8.f11047T.c(str3, Integer.valueOf(bArrC.length), "Saving default event parameters, appId, data size");
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str3);
                contentValues.put("parameters", bArrC);
                try {
                    if (c0602o3.j0().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                        T t9 = c0597l0.f11258O;
                        C0597l0.k(t9);
                        t9.f11039L.b(T.t(str3), "Failed to insert default event parameters (got -1). appId");
                    }
                } catch (SQLiteException e15) {
                    T t10 = ((C0597l0) c0602o3.f10616G).f11258O;
                    C0597l0.k(t10);
                    t10.f11039L.c(T.t(str3), e15, "Error storing default event parameters. appId");
                }
                C0602o c0602o4 = a10.f10654I;
                A1.I(c0602o4);
                long j11 = j10.f10907l0;
                C0597l0 c0597l1 = (C0597l0) c0602o4.f10616G;
                if (!c0597l1.f11256M.B(null, E.f10781f1)) {
                    c0597l1.f11263T.getClass();
                    if (System.currentTimeMillis() > 15000 + j11) {
                        return;
                    }
                }
                try {
                    if (c0602o4.f0("select count(*) from raw_events where app_id=? and timestamp >= ? and name not like '!_%' escape '!' limit 1;", new String[]{str3, String.valueOf(j11)}, 0L) <= 0 && c0602o4.f0("select count(*) from raw_events where app_id=? and timestamp >= ? and name like '!_%' escape '!' limit 1;", new String[]{str3, String.valueOf(j11)}, 0L) > 0) {
                        if (zB2) {
                            C0602o c0602o5 = a10.f10654I;
                            A1.I(c0602o5);
                            c0602o5.x(str3, Long.valueOf(j11), null, bundle2);
                            return;
                        } else {
                            C0602o c0602o6 = a10.f10654I;
                            A1.I(c0602o6);
                            c0602o6.x(str3, null, null, bundle2);
                            return;
                        }
                    }
                    return;
                } catch (SQLiteException e16) {
                    T t11 = ((C0597l0) c0602o4.f10616G).f11258O;
                    C0597l0.k(t11);
                    t11.f11039L.b(e16, "Error checking backfill conditions");
                    return;
                }
            case 11:
                C0574d1 c0574d1R = ((AppMeasurementDynamiteService) this.f25776K).f24099G.r();
                M m7 = (M) this.f25773H;
                C0613u c0613u = (C0613u) this.f25774I;
                String str4 = (String) this.f25775J;
                c0574d1R.m();
                c0574d1R.n();
                C0597l0 c0597l2 = (C0597l0) c0574d1R.f10616G;
                I1 i13 = c0597l2.f11261R;
                C0597l0.i(i13);
                if (J3.f.f4145b.c(((C0597l0) i13.f10616G).f11250G, 12451000) == 0) {
                    c0574d1R.E(new RunnableC3015g(c0574d1R, c0613u, str4, m7, 16));
                    return;
                }
                T t12 = c0597l2.f11258O;
                C0597l0.k(t12);
                t12.f11042O.a("Not bundling data. Service unavailable or out of date");
                I1 i14 = c0597l2.f11261R;
                C0597l0.i(i14);
                i14.L(m7, new byte[0]);
                return;
            case 12:
                String str5 = (String) this.f25774I;
                String str6 = (String) this.f25775J;
                C0574d1 c0574d1R2 = ((C0597l0) ((K0) this.f25776K).f10616G).r();
                AtomicReference atomicReference = (AtomicReference) this.f25773H;
                c0574d1R2.m();
                c0574d1R2.n();
                c0574d1R2.E(new t(c0574d1R2, atomicReference, str5, str6, c0574d1R2.B(false)));
                return;
            case 13:
                b();
                return;
            case 14:
                c();
                return;
            case 15:
                C0574d1 c0574d1R3 = ((AppMeasurementDynamiteService) this.f25776K).f24099G.r();
                M m8 = (M) this.f25773H;
                String str7 = (String) this.f25774I;
                String str8 = (String) this.f25775J;
                c0574d1R3.m();
                c0574d1R3.n();
                c0574d1R3.E(new t(c0574d1R3, str7, str8, c0574d1R3.B(false), m8, 5));
                return;
            case 16:
                Object obj5 = this.f25775J;
                Object obj6 = this.f25776K;
                try {
                    try {
                        C0574d1 c0574d1 = (C0574d1) obj6;
                        G g8 = c0574d1.f11146J;
                        if (g8 != null) {
                            bArrM0 = g8.m0((C0613u) this.f25773H, (String) this.f25774I);
                            c0574d1.D();
                            I1 i15 = ((C0597l0) ((C0574d1) obj6).f10616G).f11261R;
                            C0597l0.i(i15);
                            i15.L((M) obj5, bArrM0);
                            return;
                        }
                        C0597l0 c0597l3 = (C0597l0) c0574d1.f10616G;
                        T t13 = c0597l3.f11258O;
                        C0597l0.k(t13);
                        t13.f11039L.a("Discarding data. Failed to send event to service to bundle");
                        I1 i16 = c0597l3.f11261R;
                        C0597l0.i(i16);
                        i16.L((M) obj5, null);
                        return;
                    } catch (RemoteException e17) {
                        T t14 = ((C0597l0) ((C0574d1) obj6).f10616G).f11258O;
                        C0597l0.k(t14);
                        t14.f11039L.b(e17, "Failed to send event to the service to bundle");
                    }
                } catch (Throwable th2) {
                    I1 i17 = ((C0597l0) ((C0574d1) obj6).f10616G).f11261R;
                    C0597l0.i(i17);
                    i17.L((M) obj5, null);
                    throw th2;
                }
                break;
            case 17:
                A1 a11 = ((x1) this.f25776K).f11406G;
                I1 i1F = a11.f();
                ((P3.b) a11.c()).getClass();
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                String str9 = (String) this.f25773H;
                C0613u c0613uR = i1F.r((String) this.f25774I, (Bundle) this.f25775J, "auto", jCurrentTimeMillis2, false);
                c.h(c0613uR);
                a11.o(c0613uR, str9);
                return;
            case 18:
                ((AbstractC0444a) this.f25776K).l((B) this.f25773H, (EnumC0452i) this.f25774I, (u) this.f25775J);
                return;
            case 19:
                ((AbstractC0463u) this.f25776K).getClass();
                throw null;
            case 20:
                Z5.K k9 = (Z5.K) this.f25776K;
                k9.f8432a = true;
                k9.getClass();
                throw null;
            case 21:
                synchronized (((d0) this.f25776K)) {
                    try {
                        if (((b0) this.f25773H).f8445a == 0) {
                            try {
                                c0 c0Var = (c0) this.f25774I;
                                Object obj7 = this.f25775J;
                                int i18 = ((C0456m) c0Var).f8462G;
                                switch (i18) {
                                    case 6:
                                        Executor executor = (Executor) obj7;
                                        switch (i18) {
                                            case 6:
                                                ((ExecutorService) executor).shutdown();
                                                break;
                                            default:
                                                ((ExecutorService) executor).shutdown();
                                                break;
                                        }
                                        break;
                                    case 7:
                                        ((ScheduledExecutorService) obj7).shutdown();
                                        break;
                                    default:
                                        Executor executor2 = (Executor) obj7;
                                        switch (i18) {
                                            case 6:
                                                ((ExecutorService) executor2).shutdown();
                                                break;
                                            default:
                                                ((ExecutorService) executor2).shutdown();
                                                break;
                                        }
                                        break;
                                }
                                ((d0) this.f25776K).f8452a.remove((c0) this.f25774I);
                                if (((d0) this.f25776K).f8452a.isEmpty()) {
                                    ((d0) this.f25776K).f8454c.shutdown();
                                    ((d0) this.f25776K).f8454c = null;
                                }
                            } catch (Throwable th3) {
                                ((d0) this.f25776K).f8452a.remove((c0) this.f25774I);
                                if (((d0) this.f25776K).f8452a.isEmpty()) {
                                    ((d0) this.f25776K).f8454c.shutdown();
                                    ((d0) this.f25776K).f8454c = null;
                                }
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                return;
            default:
                t tVar = (t) this.f25776K;
                ((TextView) tVar.f27472J).setText("0 ms");
                ((LinearLayout) this.f25773H).removeAllViews();
                ((TextView) tVar.f27473K).setText("0 Mbps");
                ((LinearLayout) this.f25774I).removeAllViews();
                ((TextView) tVar.f27470H).setText("0 Mbps");
                ((LinearLayout) this.f25775J).removeAllViews();
                return;
        }
    }

    public /* synthetic */ RunnableC3015g(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f25772G = i8;
        this.f25776K = obj;
        this.f25773H = obj2;
        this.f25774I = obj3;
        this.f25775J = obj4;
    }

    public /* synthetic */ RunnableC3015g(Object obj, Object obj2, Object obj3, Object obj4, int i8, int i9) {
        this.f25772G = i8;
        this.f25773H = obj;
        this.f25774I = obj2;
        this.f25775J = obj3;
        this.f25776K = obj4;
    }
}
