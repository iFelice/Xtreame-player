package p086l;

import C3.C0104d;
import C3.E;
import C3.F;
import D.e;
import D3.I;
import D4.b;
import H3.r;
import H3.x;
import K3.B;
import K3.N;
import K3.z;
import Y.S;
import Y.e0;
import android.app.Application;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Process;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import androidx.work.Worker;
import com.google.android.gms.common.internal.AbstractBinderC0625a;
import com.google.android.gms.common.internal.D;
import com.google.android.gms.common.internal.InterfaceC0638n;
import com.google.android.gms.common.internal.Y;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.C0738Fn;
import com.google.android.gms.internal.ads.C0941Tm;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.I4;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Zv;
import com.google.api.Service;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p027d2.g;
import p027d2.l;
import p027d2.n;
import p034e2.A;
import p043f3.i;
import p079k.m;
import p079k.o;
import p089l2.c;
import p090l3.C3099q;
import p090l3.G0;
import p090l3.I0;
import p090l3.c1;
import p096m2.f;
import p096m2.q;
import p104n2.s;
import p104n2.t;
import p104n2.u;
import p109o.d;
import p112o2.a;
import p112o2.j;
import p120p3.h;
import p135r2.k;
import p167v3.C3193a;

/* JADX INFO: renamed from: l.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3036k implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26273G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f26274H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f26275I;

    public /* synthetic */ RunnableC3036k(int i8, Object obj, Object obj2) {
        this.f26273G = i8;
        this.f26275I = obj;
        this.f26274H = obj2;
    }

    private void a() {
        q qVarC = ((c) this.f26275I).f26439G.f24847f.c((String) this.f26274H);
        if (qVarC == null || !qVarC.b()) {
            return;
        }
        synchronized (((c) this.f26275I).f26441I) {
            ((c) this.f26275I).f26444L.put(f.a(qVarC), qVarC);
            ((c) this.f26275I).f26445M.add(qVarC);
            Object obj = this.f26275I;
            ((c) obj).f26446N.c(((c) obj).f26445M);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v43, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v46, types: [e2.A] */
    @Override // java.lang.Runnable
    public final void run() {
        m mVar;
        Zv zv;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        InterfaceC0638n interfaceC0638n;
        Set set;
        InterfaceC0638n y7 = null;
        switch (this.f26273G) {
            case 0:
                C3042n c3042n = (C3042n) this.f26275I;
                o oVar = c3042n.f26297I;
                if (oVar != null && (mVar = oVar.f25825e) != null) {
                    mVar.m(oVar);
                }
                View view = (View) c3042n.f26302N;
                if (view != null && view.getWindowToken() != null) {
                    C3032i c3032i = (C3032i) this.f26274H;
                    if (c3032i.b()) {
                        c3042n.f26313Y = c3032i;
                    } else if (c3032i.f25894f != null) {
                        c3032i.d(0, 0, false, false);
                        c3042n.f26313Y = c3032i;
                    }
                }
                c3042n.f26315a0 = null;
                return;
            case 1:
                ((d) this.f26275I).f27585H.d();
                return;
            case 2:
                ((D.d) this.f26274H).f1679G = this.f26275I;
                return;
            case 3:
                ((Application) this.f26274H).unregisterActivityLifecycleCallbacks((D.d) this.f26275I);
                return;
            case 4:
                try {
                    Method method = e.f1688d;
                    Object obj = this.f26275I;
                    Object obj2 = this.f26274H;
                    if (method != null) {
                        method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        e.f1689e.invoke(obj2, obj, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e8) {
                    if (e8.getClass() == RuntimeException.class && e8.getMessage() != null && e8.getMessage().startsWith("Unable to stop")) {
                        throw e8;
                    }
                    return;
                } catch (Throwable th) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                    return;
                }
            case 5:
                S.a((ArrayList) this.f26274H, 4);
                return;
            case 6:
                ((e0) this.f26274H).c();
                return;
            case 7:
                Object obj3 = this.f26274H;
                try {
                    ((j) obj3).j(((Worker) this.f26275I).getForegroundInfo());
                    return;
                } catch (Throwable th2) {
                    ((j) obj3).k(th2);
                    return;
                }
            case 8:
                if (((A) this.f26275I).f24795W.f27864G instanceof a) {
                    return;
                }
                try {
                    ((b) this.f26274H).get();
                    n.d().a(A.f24778Y, "Starting work for " + ((A) this.f26275I).f24783K.f27244c);
                    Object obj4 = this.f26275I;
                    ((A) obj4).f24795W.l(((A) obj4).f24784L.startWork());
                    return;
                } catch (Throwable th3) {
                    ((A) this.f26275I).f24795W.k(th3);
                    return;
                }
            case 9:
                Object obj5 = this.f26274H;
                ?? r7 = this.f26275I;
                try {
                    try {
                        l lVar = (l) ((A) r7).f24795W.get();
                        if (lVar == null) {
                            n.d().b(A.f24778Y, ((A) r7).f24783K.f27244c + " returned a null result. Treating it as a failure.");
                        } else {
                            n.d().a(A.f24778Y, ((A) r7).f24783K.f27244c + " returned a " + lVar + ".");
                            ((A) r7).f24786N = lVar;
                        }
                        break;
                    } catch (InterruptedException e9) {
                        e = e9;
                        n.d().c(A.f24778Y, ((String) obj5) + " failed because it threw an exception/error", e);
                    } catch (CancellationException e10) {
                        n nVarD = n.d();
                        String str = A.f24778Y;
                        String str2 = ((String) obj5) + " was cancelled";
                        if (nVarD.f24643a <= 4) {
                            Log.i(str, str2, e10);
                        }
                    } catch (ExecutionException e11) {
                        e = e11;
                        n.d().c(A.f24778Y, ((String) obj5) + " failed because it threw an exception/error", e);
                    }
                    r7 = (A) r7;
                    r7.b();
                    return;
                } catch (Throwable th4) {
                    ((A) r7).b();
                    throw th4;
                }
            case 10:
                n nVarD2 = n.d();
                String str3 = p042f2.a.f25137d;
                StringBuilder sb = new StringBuilder("Scheduling work ");
                q qVar = (q) this.f26274H;
                sb.append(qVar.f27242a);
                nVarD2.a(str3, sb.toString());
                ((p042f2.a) this.f26275I).f25138a.c(qVar);
                return;
            case 11:
                a();
                return;
            case 12:
                try {
                    ((Runnable) this.f26275I).run();
                    synchronized (((p104n2.o) this.f26274H).f27454J) {
                        ((p104n2.o) this.f26274H).b();
                        break;
                    }
                    return;
                } catch (Throwable th5) {
                    synchronized (((p104n2.o) this.f26274H).f27454J) {
                        ((p104n2.o) this.f26274H).b();
                        throw th5;
                    }
                }
            case 13:
                if (((s) this.f26275I).f27463G.f27864G instanceof a) {
                    return;
                }
                try {
                    p027d2.f fVar = (p027d2.f) ((j) this.f26274H).get();
                    if (fVar == null) {
                        throw new IllegalStateException("Worker was marked important (" + ((s) this.f26275I).f27465I.f27244c + ") but did not provide ForegroundInfo");
                    }
                    n.d().a(s.f27462M, "Updating notification for " + ((s) this.f26275I).f27465I.f27244c);
                    Object obj6 = this.f26275I;
                    j jVar = ((s) obj6).f27463G;
                    g gVar = ((s) obj6).f27467K;
                    Context context = ((s) obj6).f27464H;
                    UUID id = ((s) obj6).f27466J.getId();
                    u uVar = (u) gVar;
                    uVar.getClass();
                    j jVar2 = new j();
                    ((p096m2.u) uVar.f27475a).m(new t(uVar, jVar2, id, fVar, context, 0));
                    jVar.l(jVar2);
                    return;
                } catch (Throwable th6) {
                    ((s) this.f26275I).f27463G.k(th6);
                    return;
                }
            case 14:
                try {
                    ((p135r2.c) this.f26275I).f29791H.put((k) this.f26274H);
                    return;
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            case 15:
                Process.setThreadPriority(10);
                ((Runnable) this.f26274H).run();
                return;
            case 16:
                B2.a aVar = (B2.a) this.f26275I;
                if (aVar.f1203J) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.f26274H).run();
                    return;
                } catch (Throwable th7) {
                    switch (((U1.f) aVar.f1202I).f6909G) {
                        case 20:
                            return;
                        case 21:
                            if (Log.isLoggable("GlideExecutor", 6)) {
                                Log.e("GlideExecutor", "Request threw uncaught throwable", th7);
                                return;
                            }
                            return;
                        default:
                            throw new RuntimeException("Request threw uncaught throwable", th7);
                    }
                }
            case 17:
                I0 i8 = (I0) this.f26274H;
                R3.a aVar2 = (R3.a) this.f26275I;
                i8.getClass();
                i8.f26483k.addView((View) R3.b.v0(aVar2));
                return;
            case 18:
                ((p105n3.k) ((p105n3.j) this.f26274H).f27508c).f27510H.getWindow().setBackgroundDrawable((Drawable) this.f26275I);
                return;
            case 19:
                C0738Fn c0738Fn = (C0738Fn) this.f26274H;
                Long l4 = (Long) this.f26275I;
                p083k3.l.f25980A.f25990j.getClass();
                p046f6.c.l(c0738Fn, "cld_r", SystemClock.elapsedRealtime() - l4.longValue());
                return;
            case 20:
                p167v3.j jVar3 = (p167v3.j) this.f26274H;
                C0941Tm[] c0941TmArr = (C0941Tm[]) this.f26275I;
                jVar3.getClass();
                C0941Tm c0941Tm = c0941TmArr[0];
                if (c0941Tm != null) {
                    jVar3.f30628L.b(Cw.N1(c0941Tm));
                    return;
                }
                return;
            case 21:
                C3193a c3193a = (C3193a) this.f26274H;
                String str4 = (String) this.f26275I;
                c3193a.getClass();
                Uri uriA = Uri.parse(str4);
                try {
                    boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.lb)).booleanValue();
                    WebView webView = c3193a.f30587b;
                    Context context2 = c3193a.f30586a;
                    uriA = (!zBooleanValue || (zv = c3193a.f30589d) == null) ? c3193a.f30588c.a(uriA, context2, webView, null) : zv.a(uriA, context2, webView, null);
                    break;
                } catch (I4 e12) {
                    h.c("Failed to append the click signal to URL: ", e12);
                    p083k3.l.f25980A.f25987g.i("TaggingLibraryJsInterface.recordClick", e12);
                }
                c3193a.f30594i.a(uriA.toString(), null);
                return;
            case 22:
                p043f3.d dVar = (p043f3.d) this.f26274H;
                G0 g8 = (G0) this.f26275I;
                dVar.getClass();
                try {
                    dVar.f25162b.q0(c1.a(dVar.f25161a, g8));
                    return;
                } catch (RemoteException e13) {
                    h.e("Failed to load ad.", e13);
                    return;
                }
            case 23:
                i iVar = (i) this.f26274H;
                try {
                    iVar.f25183G.b(((p043f3.f) this.f26275I).f25163a);
                    return;
                } catch (IllegalStateException e14) {
                    C0667Bc.a(iVar.getContext()).b("BaseAdView.loadAd", e14);
                    return;
                }
            case 24:
                x xVar = (x) this.f26274H;
                H3.d dVar2 = (H3.d) this.f26275I;
                H3.b bVar = x.f3735t;
                C0104d c0104d = dVar2.f3686J;
                boolean zE = H3.a.e(c0104d, xVar.f3738a);
                I i9 = xVar.f3740c;
                if (!zE) {
                    xVar.f3738a = c0104d;
                    i9.c();
                }
                double d6 = dVar2.f3683G;
                if (Double.isNaN(d6) || Math.abs(d6 - xVar.f3749l) <= 1.0E-7d) {
                    z7 = false;
                } else {
                    xVar.f3749l = d6;
                    z7 = true;
                }
                boolean z15 = xVar.f3746i;
                boolean z16 = dVar2.f3684H;
                if (z16 != z15) {
                    xVar.f3746i = z16;
                    z7 = true;
                }
                Double.isNaN(dVar2.f3689M);
                Object[] objArr = {Boolean.valueOf(z7), Boolean.valueOf(xVar.f3748k)};
                H3.b bVar2 = x.f3735t;
                bVar2.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", objArr);
                if (i9 != null && (z7 || xVar.f3748k)) {
                    i9.f();
                }
                int i10 = xVar.f3751n;
                int i11 = dVar2.f3685I;
                if (i11 != i10) {
                    xVar.f3751n = i11;
                    z8 = true;
                } else {
                    z8 = false;
                }
                bVar2.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z8), Boolean.valueOf(xVar.f3748k));
                if (i9 != null && (z8 || xVar.f3748k)) {
                    i9.a(xVar.f3751n);
                }
                int i12 = xVar.f3752o;
                int i13 = dVar2.f3687K;
                if (i13 != i12) {
                    xVar.f3752o = i13;
                    z9 = true;
                } else {
                    z9 = false;
                }
                bVar2.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z9), Boolean.valueOf(xVar.f3748k));
                if (i9 != null && (z9 || xVar.f3748k)) {
                    i9.e(xVar.f3752o);
                }
                C3.x xVar2 = xVar.f3750m;
                C3.x xVar3 = dVar2.f3688L;
                if (!H3.a.e(xVar2, xVar3)) {
                    xVar.f3750m = xVar3;
                }
                xVar.f3748k = false;
                return;
            case 25:
                x xVar4 = (x) this.f26274H;
                H3.c cVar = (H3.c) this.f26275I;
                H3.b bVar3 = x.f3735t;
                String str5 = cVar.f3682G;
                if (H3.a.e(str5, xVar4.f3745h)) {
                    z10 = false;
                } else {
                    xVar4.f3745h = str5;
                    z10 = true;
                }
                x.f3735t.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z10), Boolean.valueOf(xVar4.f3747j));
                I i14 = xVar4.f3740c;
                if (i14 != null && (z10 || xVar4.f3747j)) {
                    i14.d();
                }
                xVar4.f3747j = false;
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                F f8 = ((E) this.f26274H).f1440H;
                H3.d dVar3 = (H3.d) this.f26275I;
                H3.b bVar4 = F.f1441w;
                C0104d c0104d2 = dVar3.f3686J;
                boolean zE2 = H3.a.e(c0104d2, f8.f1452j);
                I i15 = f8.f1462t;
                if (!zE2) {
                    f8.f1452j = c0104d2;
                    i15.c();
                }
                double d8 = dVar3.f3683G;
                if (Double.isNaN(d8) || Math.abs(d8 - f8.f1454l) <= 1.0E-7d) {
                    z11 = false;
                } else {
                    f8.f1454l = d8;
                    z11 = true;
                }
                boolean z17 = f8.f1455m;
                boolean z18 = dVar3.f3684H;
                if (z18 != z17) {
                    f8.f1455m = z18;
                    z11 = true;
                }
                Object[] objArr2 = {Boolean.valueOf(z11), Boolean.valueOf(f8.f1445c)};
                H3.b bVar5 = F.f1441w;
                bVar5.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", objArr2);
                if (i15 != null && (z11 || f8.f1445c)) {
                    i15.f();
                }
                Double.isNaN(dVar3.f3689M);
                int i16 = f8.f1456n;
                int i17 = dVar3.f3685I;
                if (i17 != i16) {
                    f8.f1456n = i17;
                    z12 = true;
                } else {
                    z12 = false;
                }
                bVar5.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z12), Boolean.valueOf(f8.f1445c));
                if (i15 != null && (z12 || f8.f1445c)) {
                    i15.a(f8.f1456n);
                }
                int i18 = f8.f1457o;
                int i19 = dVar3.f3687K;
                if (i19 != i18) {
                    f8.f1457o = i19;
                    z13 = true;
                } else {
                    z13 = false;
                }
                bVar5.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z13), Boolean.valueOf(f8.f1445c));
                if (i15 != null && (z13 || f8.f1445c)) {
                    i15.e(f8.f1457o);
                }
                C3.x xVar5 = f8.f1458p;
                C3.x xVar6 = dVar3.f3688L;
                if (!H3.a.e(xVar5, xVar6)) {
                    f8.f1458p = xVar6;
                }
                f8.f1445c = false;
                return;
            case 27:
                F f9 = ((E) this.f26274H).f1440H;
                H3.c cVar2 = (H3.c) this.f26275I;
                H3.b bVar6 = F.f1441w;
                String str6 = cVar2.f3682G;
                if (H3.a.e(str6, f9.f1453k)) {
                    z14 = false;
                } else {
                    f9.f1453k = str6;
                    z14 = true;
                }
                F.f1441w.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z14), Boolean.valueOf(f9.f1446d));
                I i20 = f9.f1462t;
                if (i20 != null && (z14 || f9.f1446d)) {
                    i20.d();
                }
                f9.f1446d = false;
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                Object obj7 = this.f26275I;
                B b8 = (B) obj7;
                z zVar = (z) b8.f4478f.f4547P.get(b8.f4474b);
                if (zVar == null) {
                    return;
                }
                J3.b bVar7 = (J3.b) this.f26274H;
                if (bVar7.f4133H != 0) {
                    zVar.n(bVar7, null);
                    return;
                }
                b8.f4477e = true;
                if (b8.f4473a.requiresSignIn()) {
                    if (!b8.f4477e || (interfaceC0638n = b8.f4475c) == null) {
                        return;
                    }
                    b8.f4473a.getRemoteService(interfaceC0638n, b8.f4476d);
                    return;
                }
                try {
                    com.google.android.gms.common.api.e eVar = ((B) obj7).f4473a;
                    eVar.getRemoteService(null, eVar.getScopesForConnectionlessNonSignIn());
                    return;
                } catch (SecurityException e15) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e15);
                    b8.f4473a.disconnect("Failed to get service from broker.");
                    zVar.n(new J3.b(10), null);
                    return;
                }
            default:
                N n7 = (N) this.f26275I;
                p044f4.i iVar2 = (p044f4.i) this.f26274H;
                r rVar = N.f4501N;
                J3.b bVar8 = iVar2.f25214H;
                if (bVar8.f4133H == 0) {
                    D d9 = iVar2.f25215I;
                    com.bumptech.glide.c.h(d9);
                    J3.b bVar9 = d9.f11788I;
                    if (bVar9.f4133H != 0) {
                        Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(bVar9)), new Exception());
                        n7.f4508M.b(bVar9);
                        n7.f4507L.disconnect();
                        return;
                    }
                    B b9 = n7.f4508M;
                    IBinder iBinder = d9.f11787H;
                    if (iBinder != null) {
                        int i21 = AbstractBinderC0625a.f11837H;
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                        y7 = iInterfaceQueryLocalInterface instanceof InterfaceC0638n ? (InterfaceC0638n) iInterfaceQueryLocalInterface : new Y(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 3);
                    }
                    b9.getClass();
                    if (y7 == null || (set = n7.f4505J) == null) {
                        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                        b9.b(new J3.b(4));
                    } else {
                        b9.f4475c = y7;
                        b9.f4476d = set;
                        if (b9.f4477e) {
                            b9.f4473a.getRemoteService(y7, set);
                        }
                    }
                } else {
                    n7.f4508M.b(bVar8);
                }
                n7.f4507L.disconnect();
                return;
        }
    }

    public /* synthetic */ RunnableC3036k(Object obj, Object obj2, int i8) {
        this.f26273G = i8;
        this.f26274H = obj;
        this.f26275I = obj2;
    }

    public /* synthetic */ RunnableC3036k(Object obj, Object obj2, int i8, int i9) {
        this.f26273G = i8;
        this.f26274H = obj;
        this.f26275I = obj2;
    }
}
