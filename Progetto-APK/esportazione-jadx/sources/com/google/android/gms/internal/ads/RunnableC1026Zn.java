package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Zn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1026Zn implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17799G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f17800H;

    public /* synthetic */ RunnableC1026Zn(int i8, Object obj) {
        this.f17799G = i8;
        this.f17800H = obj;
    }

    private final void a() {
        C1690mr c1690mr = (C1690mr) this.f17800H;
        synchronized (c1690mr) {
            ((P3.b) c1690mr.f20004a).getClass();
            c1690mr.f20011h = SystemClock.elapsedRealtime() - c1690mr.f20012i;
        }
    }

    private final void b() {
        BinderC1071as binderC1071as = (BinderC1071as) this.f17800H;
        synchronized (binderC1071as) {
            binderC1071as.A3(3, "Signal collection timeout.");
        }
    }

    private final void c() {
        C1854pz c1854pz = (C1854pz) this.f17800H;
        if (c1854pz.f20517j != null) {
            c1854pz.f20510c.d("Unbind from service.", new Object[0]);
            Context context = c1854pz.f20509b;
            ServiceConnectionC1802oz serviceConnectionC1802oz = c1854pz.f20516i;
            serviceConnectionC1802oz.getClass();
            context.unbindService(serviceConnectionC1802oz);
            c1854pz.f20513f = false;
            c1854pz.f20517j = null;
            c1854pz.f20516i = null;
            synchronized (c1854pz.f20512e) {
                c1854pz.f20512e.clear();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        D4.b bVar;
        int i8 = 0;
        switch (this.f17799G) {
            case 0:
                String str = p083k3.l.f25980A.f25987g.d().y().f18944e;
                boolean zIsEmpty = TextUtils.isEmpty(str);
                C2040te c2040te = (C2040te) this.f17800H;
                if (zIsEmpty) {
                    c2040te.c(new Exception());
                    return;
                } else {
                    c2040te.b(str);
                    return;
                }
            case 1:
                ((Qo) this.f17800H).a();
                return;
            case 2:
                ((To) this.f17800H).a();
                return;
            case 3:
                ((C2103up) this.f17800H).b();
                return;
            case 4:
                ((C2207wp) this.f17800H).b();
                return;
            case 5:
                a();
                return;
            case 6:
                Dr dr = (Dr) this.f17800H;
                C2105ur c2105ur = dr.f12887d;
                C2105ur.c(dr.f12884a, dr.f12885b, dr.f12886c);
                return;
            case 7:
                ((C1433hs) ((p004a3.b) ((C1950rs) ((Yu) this.f17800H).f17673L).f20798J).f8651I).n();
                return;
            case 8:
                b();
                return;
            case 9:
                boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.J9)).booleanValue();
                Throwable th = (Throwable) this.f17800H;
                if (zBooleanValue) {
                    p083k3.l.f25980A.f25987g.j("TopicsSignalUnsampled.fetchTopicsSignal", th);
                    return;
                } else {
                    p083k3.l.f25980A.f25987g.h("TopicsSignal.fetchTopicsSignal", th);
                    return;
                }
            case 10:
                C1126bv c1126bv = (C1126bv) this.f17800H;
                c1126bv.getClass();
                c1126bv.f18126J.y(p113o3.r.H(6, null, null));
                return;
            case 11:
                ((C1433hs) this.f17800H).n();
                return;
            case 12:
                Dv dv = (Dv) this.f17800H;
                dv.getClass();
                dv.f12900J.y(p113o3.r.H(6, null, null));
                return;
            case 13:
                Jv jv = (Jv) this.f17800H;
                jv.getClass();
                jv.f14242J.y(p113o3.r.H(6, null, null));
                return;
            case 14:
                ((Gv) this.f17800H).n();
                return;
            case 15:
                ((Vx) this.f17800H).f17138e.l();
                return;
            case 16:
                p052g4.i iVar = (p052g4.i) this.f17800H;
                Jy jy = new Jy();
                Log.d("GASS", "Clearcut logging disabled");
                iVar.b(new Gy(jy));
                return;
            case 17:
                c();
                return;
            case 18:
                ServiceConnectionC1802oz serviceConnectionC1802oz = (ServiceConnectionC1802oz) this.f17800H;
                serviceConnectionC1802oz.f20361a.f20510c.d("unlinkToDeath", new Object[0]);
                C1854pz c1854pz = serviceConnectionC1802oz.f20361a;
                IInterface iInterface = c1854pz.f20517j;
                iInterface.getClass();
                iInterface.asBinder().unlinkToDeath(c1854pz.f20515h, 0);
                c1854pz.f20517j = null;
                c1854pz.f20513f = false;
                return;
            case 19:
                C1919rC c1919rC = (C1919rC) this.f17800H;
                if (c1919rC == null || (bVar = c1919rC.f20690N) == null) {
                    return;
                }
                this.f17800H = null;
                if (bVar.isDone()) {
                    c1919rC.l(bVar);
                    return;
                }
                try {
                    ScheduledFuture scheduledFuture = c1919rC.f20691O;
                    c1919rC.f20691O = null;
                    String str2 = "Timed out";
                    if (scheduledFuture != null) {
                        try {
                            long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                            if (jAbs > 10) {
                                str2 = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                            }
                        } catch (Throwable th2) {
                            c1919rC.g(new C1868qC(str2));
                            throw th2;
                        }
                    }
                    c1919rC.g(new C1868qC(str2 + ": " + bVar.toString()));
                    bVar.cancel(true);
                    return;
                } catch (Throwable th3) {
                    bVar.cancel(true);
                    throw th3;
                }
            case 20:
                try {
                    BK.G((UK) this.f17800H);
                    return;
                } catch (C1512jK e8) {
                    Zo.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e8);
                    throw new RuntimeException(e8);
                }
            case 21:
                C2032tL c2032tL = (C2032tL) this.f17800H;
                c2032tL.i(c2032tL.d(), 1028, new C1301fF(25, i8));
                c2032tL.f21061L.q();
                return;
            case 22:
                C1618lM c1618lM = (C1618lM) this.f17800H;
                if (c1618lM.f19756V >= 300000) {
                    c1618lM.f19771l.f20167a.f20270J0 = true;
                    c1618lM.f19756V = 0L;
                    return;
                }
                return;
            case 23:
                GM gm = (GM) this.f17800H;
                synchronized (gm.f13522a) {
                    try {
                        if (gm.f13534m) {
                            return;
                        }
                        long j8 = gm.f13533l - 1;
                        gm.f13533l = j8;
                        if (j8 > 0) {
                            return;
                        }
                        if (j8 >= 0) {
                            gm.a();
                            return;
                        }
                        IllegalStateException illegalStateException = new IllegalStateException();
                        synchronized (gm.f13522a) {
                            gm.f13535n = illegalStateException;
                            break;
                        }
                        return;
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
            case 24:
                ((ExecutorService) this.f17800H).shutdown();
                return;
            case 25:
                KN kn = (KN) ((HO) this.f17800H);
                TN[] tnArr = kn.f14352W;
                int length = tnArr.length;
                while (i8 < length) {
                    TN tn = tnArr[i8];
                    tn.o(true);
                    if (tn.f16631A != null) {
                        tn.f16631A = null;
                        tn.f16637f = null;
                    }
                    i8++;
                }
                C1093bD c1093bD = kn.f14345P;
                if (((L) c1093bD.f18026H) != null) {
                    c1093bD.f18026H = null;
                }
                c1093bD.f18027I = null;
                return;
            default:
                C1337g c1337g = (C1337g) this.f17800H;
                int i9 = c1337g.f18868k - 1;
                c1337g.f18868k = i9;
                if (i9 > 0) {
                    return;
                }
                if (i9 < 0) {
                    throw new IllegalStateException(String.valueOf(i9));
                }
                c1337g.f18860c.a();
                return;
        }
    }

    public /* synthetic */ RunnableC1026Zn(Object obj, int i8) {
        this.f17799G = i8;
        this.f17800H = obj;
    }
}
