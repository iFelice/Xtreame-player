package p000a;

import A0.C0025z;
import A0.Y;
import B0.C0039b;
import B0.C0071v;
import B0.L;
import B0.O;
import C0.A;
import C0.C0077b;
import C0.C0084i;
import D.d;
import D0.S;
import D1.C0140e;
import D1.C0156v;
import E1.C0167b;
import G0.h;
import P1.l;
import S0.e;
import S0.f;
import S0.r;
import U0.C0338d;
import U0.x;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.media3.ui.PlayerView;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.api.Service;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import p022c5.a;
import p027d2.i;
import p027d2.m;
import p027d2.n;
import p027d2.v;
import p034e2.y;
import p046f6.c;
import p086l.RunnableC3036k;
import p094m0.r0;
import p096m2.o;
import p096m2.q;
import p096m2.s;
import p112o2.j;
import p117p0.B;
import p117p0.G;
import p117p0.M;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8557G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f8558H;

    public /* synthetic */ b(Object obj, int i8) {
        this.f8557G = i8;
        this.f8558H = obj;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x005e A[Catch: all -> 0x0022, TryCatch #0 {, blocks: (B:6:0x0017, B:8:0x001b, B:15:0x0027, B:19:0x002e, B:25:0x003b, B:27:0x003f, B:29:0x0045, B:31:0x004f, B:33:0x0059, B:35:0x006a, B:34:0x005e, B:36:0x006c, B:38:0x0082, B:40:0x008a), top: B:48:0x0017 }] */
    private final void a() {
        String strJ0;
        TelephonyManager telephonyManager;
        B b8 = (B) this.f8558H;
        e eVar = (e) b8.f28018a.get();
        if (eVar != null) {
            int iC = b8.f28020c.c();
            f fVar = eVar.f6328a;
            synchronized (fVar) {
                int i8 = fVar.f6349n;
                if (i8 == 0 || fVar.f6340e) {
                    if (i8 != iC || fVar.f6350o == null) {
                        fVar.f6349n = iC;
                        if (iC != 1 && iC != 0 && iC != 8) {
                            if (fVar.f6350o == null) {
                                Context context = fVar.f6336a;
                                String str = M.f28050a;
                                if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                                    strJ0 = k.j0(Locale.getDefault().getCountry());
                                } else {
                                    String networkCountryIso = telephonyManager.getNetworkCountryIso();
                                    if (TextUtils.isEmpty(networkCountryIso)) {
                                        strJ0 = k.j0(Locale.getDefault().getCountry());
                                    } else {
                                        strJ0 = k.j0(networkCountryIso);
                                    }
                                }
                                fVar.f6350o = strJ0;
                            }
                            fVar.f6347l = fVar.a(iC);
                            ((G) fVar.f6339d).getClass();
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            fVar.b(fVar.f6342g > 0 ? (int) (jElapsedRealtime - fVar.f6343h) : 0, fVar.f6344i, fVar.f6347l);
                            fVar.f6343h = jElapsedRealtime;
                            fVar.f6344i = 0L;
                            fVar.f6346k = 0L;
                            fVar.f6345j = 0L;
                            r rVar = fVar.f6341f;
                            rVar.f6381b.clear();
                            rVar.f6383d = -1;
                            rVar.f6384e = 0;
                            rVar.f6385f = 0;
                        }
                    }
                }
            }
        }
    }

    private final void b() {
        K0.e eVar = (K0.e) this.f8558H;
        synchronized (eVar.f4329a) {
            try {
                if (eVar.f4341m) {
                    return;
                }
                long j8 = eVar.f4340l - 1;
                eVar.f4340l = j8;
                if (j8 > 0) {
                    return;
                }
                if (j8 < 0) {
                    eVar.b(new IllegalStateException());
                } else {
                    eVar.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void c() {
        l lVar = (l) this.f8558H;
        synchronized (lVar.f5813l) {
            lVar.f5808g = false;
            lVar.f5810i.d();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i8 = 8;
        int i9 = 6;
        int i10 = 1;
        switch (this.f8557G) {
            case 0:
                ((m) this.f8558H).invalidateOptionsMenu();
                return;
            case 1:
                l lVar = (l) this.f8558H;
                Runnable runnable = lVar.f8574H;
                if (runnable != null) {
                    runnable.run();
                    lVar.f8574H = null;
                    return;
                }
                return;
            case 2:
                n.a((n) this.f8558H);
                return;
            case 3:
            default:
                a aVar = (a) this.f8558H;
                boolean z7 = aVar.f11423G;
                if (z7) {
                    aVar.getClass();
                }
                aVar.f11423G = z7;
                return;
            case 4:
                Activity activity = (Activity) this.f8558H;
                if (activity.isFinishing()) {
                    return;
                }
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 28) {
                    Class cls = D.e.f1685a;
                    activity.recreate();
                    return;
                }
                Class cls2 = D.e.f1685a;
                boolean z8 = i11 == 26 || i11 == 27;
                Method method = D.e.f1690f;
                if ((!z8 || method != null) && (D.e.f1689e != null || D.e.f1688d != null)) {
                    try {
                        Object obj2 = D.e.f1687c.get(activity);
                        if (obj2 != null && (obj = D.e.f1686b.get(activity)) != null) {
                            Application application = activity.getApplication();
                            d dVar = new d(activity);
                            application.registerActivityLifecycleCallbacks(dVar);
                            Handler handler = D.e.f1691g;
                            handler.post(new RunnableC3036k(dVar, obj2, 2));
                            try {
                                if (i11 == 26 || i11 == 27) {
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new RunnableC3036k(application, dVar, 3));
                                return;
                            } catch (Throwable th) {
                                handler.post(new RunnableC3036k(application, dVar, 3));
                                throw th;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
            case 5:
                a();
                return;
            case 6:
                c cVar = (c) ((r0) this.f8558H);
                ((Y) cVar.f25223I).f103f.execute(new b(cVar, i8));
                return;
            case 7:
                A0.B b8 = (A0.B) this.f8558H;
                int[] iArr = A0.B.f4c0;
                b8.getClass();
                b8.f119G.f(new C0025z(b8, i9), true);
                return;
            case 8:
                ((Y) ((c) this.f8558H).f25223I).f101d.getClass();
                return;
            case 9:
                C0039b c0039b = (C0039b) this.f8558H;
                if (c0039b.f912c.f913G) {
                    c0039b.f910a.f743G.Z(3, false);
                    return;
                }
                return;
            case 10:
                ((U4.b) this.f8558H).getClass();
                return;
            case 11:
                ((C0071v) this.f8558H).getClass();
                throw null;
            case 12:
                O o4 = (O) this.f8558H;
                int i12 = O.f757Q0;
                o4.getClass();
                String str = M.f28050a;
                o4.f802j0.b(Integer.valueOf(p102n0.c.f(o4.f771K).generateAudioSessionId()));
                return;
            case 13:
                A0.O.I(((p039f.G) this.f8558H).f24904b);
                throw null;
            case 14:
                A a8 = (A) this.f8558H;
                C0077b c0077bP = a8.P();
                a8.U(c0077bP, 1028, new C0084i(c0077bP, i10));
                a8.f1231L.k();
                return;
            case 15:
                S s7 = (S) this.f8558H;
                if (s7.f1842l0 >= 300000) {
                    s7.f1854u.l();
                    s7.f1842l0 = 0L;
                    return;
                }
                return;
            case 16:
                h hVar = (h) this.f8558H;
                if (hVar.f3338I) {
                    return;
                }
                G0.l lVar2 = hVar.f3337H;
                if (lVar2 != null) {
                    lVar2.c(hVar.f3336G);
                }
                hVar.f3339J.f3352S.remove(hVar);
                hVar.f3338I = true;
                return;
            case 17:
                ((G0.d) this.f8558H).c(null);
                return;
            case 18:
                b();
                return;
            case 19:
                ((C0338d) this.f8558H).f6731M.F();
                return;
            case 20:
                ((x) this.f8558H).f6874s--;
                return;
            case 21:
                V0.k kVar = (V0.k) this.f8558H;
                Surface surface = kVar.f7072N;
                if (surface != null) {
                    Iterator it = kVar.f7065G.iterator();
                    while (it.hasNext()) {
                        ((L) it.next()).f743G.V(null);
                    }
                }
                SurfaceTexture surfaceTexture = kVar.f7071M;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                }
                kVar.f7071M = null;
                kVar.f7072N = null;
                return;
            case 22:
                C0140e c0140e = (C0140e) this.f8558H;
                int i13 = C0140e.f2139y0;
                c0140e.d(false);
                return;
            case 23:
                C0156v c0156v = (C0156v) this.f8558H;
                float[] fArr = C0156v.f2214n1;
                c0156v.s();
                return;
            case 24:
                ((PlayerView) this.f8558H).invalidate();
                return;
            case 25:
                ((C0167b) this.f8558H).f2714n = -1;
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                c();
                return;
            case 27:
                ConstraintTrackingWorker constraintTrackingWorker = (ConstraintTrackingWorker) this.f8558H;
                q0.h(constraintTrackingWorker, "this$0");
                if (constraintTrackingWorker.f9805N.f27864G instanceof p112o2.a) {
                    return;
                }
                String strB = constraintTrackingWorker.getInputData().b("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                n nVarD = n.d();
                q0.g(nVarD, "get()");
                if (strB == null || strB.length() == 0) {
                    nVarD.b(p127q2.a.f29573a, "No worker to delegate to.");
                    j jVar = constraintTrackingWorker.f9805N;
                    q0.g(jVar, "future");
                    jVar.j(new i());
                    return;
                }
                m mVarA = constraintTrackingWorker.getWorkerFactory().a(constraintTrackingWorker.getApplicationContext(), strB, constraintTrackingWorker.f9802K);
                constraintTrackingWorker.f9806O = mVarA;
                if (mVarA == null) {
                    nVarD.a(p127q2.a.f29573a, "No worker to delegate to.");
                    j jVar2 = constraintTrackingWorker.f9805N;
                    q0.g(jVar2, "future");
                    jVar2.j(new i());
                    return;
                }
                y yVarW = y.w(constraintTrackingWorker.getApplicationContext());
                s sVarU = yVarW.f24844c.u();
                String string = constraintTrackingWorker.getId().toString();
                q0.g(string, "id.toString()");
                q qVarH = sVarU.h(string);
                if (qVarH == null) {
                    j jVar3 = constraintTrackingWorker.f9805N;
                    q0.g(jVar3, "future");
                    String str2 = p127q2.a.f29573a;
                    jVar3.j(new i());
                    return;
                }
                o oVar = yVarW.f24851j;
                q0.g(oVar, "workManagerImpl.trackers");
                p066i2.c cVar2 = new p066i2.c(oVar, constraintTrackingWorker);
                cVar2.c(v.o(qVarH));
                String string2 = constraintTrackingWorker.getId().toString();
                q0.g(string2, "id.toString()");
                if (!cVar2.a(string2)) {
                    nVarD.a(p127q2.a.f29573a, "Constraints not met for delegate " + strB + ". Requesting retry.");
                    j jVar4 = constraintTrackingWorker.f9805N;
                    q0.g(jVar4, "future");
                    jVar4.j(new p027d2.j());
                    return;
                }
                nVarD.a(p127q2.a.f29573a, "Constraints met for delegate ".concat(strB));
                try {
                    m mVar = constraintTrackingWorker.f9806O;
                    q0.e(mVar);
                    D4.b bVarStartWork = mVar.startWork();
                    q0.g(bVarStartWork, "delegate!!.startWork()");
                    bVarStartWork.a(new U0.r(11, constraintTrackingWorker, bVarStartWork), constraintTrackingWorker.getBackgroundExecutor());
                    return;
                } catch (Throwable th2) {
                    String str3 = p127q2.a.f29573a;
                    String strG = r.g("Delegated worker ", strB, " threw exception in startWork.");
                    if (nVarD.f24643a <= 3) {
                        Log.d(str3, strG, th2);
                    }
                    synchronized (constraintTrackingWorker.f9803L) {
                        try {
                            if (!constraintTrackingWorker.f9804M) {
                                j jVar5 = constraintTrackingWorker.f9805N;
                                q0.g(jVar5, "future");
                                jVar5.j(new i());
                                return;
                            } else {
                                nVarD.a(str3, "Constraints were unmet, Retrying.");
                                j jVar6 = constraintTrackingWorker.f9805N;
                                q0.g(jVar6, "future");
                                jVar6.j(new p027d2.j());
                                return;
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                p004a3.l lVar3 = (p004a3.l) this.f8558H;
                lVar3.getClass();
                ((p012b3.j) lVar3.f8697d).a0(new p004a3.i(lVar3, i10));
                return;
        }
    }
}
