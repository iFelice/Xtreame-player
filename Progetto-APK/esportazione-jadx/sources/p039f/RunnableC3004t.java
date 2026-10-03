package p039f;

import A0.AbstractC0001a;
import A0.D;
import A0.Y;
import A0.g0;
import A0.h0;
import B0.B0;
import B0.C0071v;
import B0.C0072w;
import B0.L;
import B0.N;
import B0.O;
import B0.RunnableC0052h0;
import B0.U;
import B0.X;
import B0.v0;
import B0.z0;
import C0.C0077b;
import C0.s;
import D0.C0124n;
import G0.i;
import H0.n;
import O0.C0300y;
import O0.E;
import U0.C0338d;
import U0.C0352s;
import U0.t;
import U0.x;
import Z.b;
import Z.c;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Service;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import p016c.g;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.d0;
import p094m0.f0;
import p094m0.o0;
import p094m0.w0;
import p096m2.l;
import p117p0.A;
import p117p0.C;
import p117p0.C3167e;
import p117p0.C3171i;
import p117p0.F;
import p117p0.I;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p117p0.RunnableC3165c;
import p117p0.p;
import p190y4.h;
import z4.q0;

/* JADX INFO: renamed from: f.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3004t implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25108G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25109H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f25110I;

    public /* synthetic */ RunnableC3004t(int i8, Object obj, Object obj2) {
        this.f25108G = i8;
        this.f25109H = obj;
        this.f25110I = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x030e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0315  */
    /* JADX WARN: Code duplicated, block: B:130:0x0317  */
    /* JADX WARN: Code duplicated, block: B:132:0x031d  */
    /* JADX WARN: Code duplicated, block: B:133:0x0320  */
    /* JADX WARN: Code duplicated, block: B:134:0x0322  */
    /* JADX WARN: Code duplicated, block: B:135:0x0324  */
    /* JADX WARN: Code duplicated, block: B:136:0x0326  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object, p0.C] */
    /* JADX WARN: Type inference failed for: r2v47, types: [B0.z0] */
    /* JADX WARN: Type inference failed for: r6v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [int] */
    /* JADX WARN: Type inference failed for: r6v7 */
    @Override // java.lang.Runnable
    public final void run() {
        long j8;
        boolean z7;
        long j9;
        int i8 = 4;
        ?? r7 = 1;
        z = true;
        boolean z8 = true;
        r7 = 1;
        int i9 = 0;
        switch (this.f25108G) {
            case 0:
                ExecutorC3005u executorC3005u = (ExecutorC3005u) this.f25109H;
                Runnable runnable = (Runnable) this.f25110I;
                executorC3005u.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    executorC3005u.b();
                }
            case 1:
                ((g) this.f25109H).h((Typeface) this.f25110I);
                return;
            case 2:
            default:
                ((C0338d) ((l) this.f25109H).f27232I).f6731M.g((w0) this.f25110I);
                return;
            case 3:
                String str = (String) this.f25109H;
                Z.g gVar = (Z.g) this.f25110I;
                b bVar = c.f8208a;
                q0.h(gVar, "$violation");
                Log.e("FragmentStrictMode", "Policy violation with PENALTY_DEATH in " + str, gVar);
                throw gVar;
            case 4:
                Context context = (Context) this.f25109H;
                C3171i c3171i = (C3171i) this.f25110I;
                p102n0.c.f27312a = (AudioManager) context.getSystemService("audio");
                c3171i.f();
                return;
            case 5:
                C3167e c3167e = (C3167e) this.f25109H;
                Object objApply = ((h) this.f25110I).apply(c3167e.f28078e);
                c3167e.f28078e = objApply;
                RunnableC3165c runnableC3165c = new RunnableC3165c(c3167e, objApply, 1);
                I i10 = c3167e.f28075b;
                if (i10.f28043a.getLooper().getThread().isAlive()) {
                    i10.c(runnableC3165c);
                    return;
                }
                return;
            case 6:
                C c8 = (C) this.f25109H;
                Context context2 = (Context) this.f25110I;
                c8.getClass();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context2.registerReceiver(new G(c8), intentFilter);
                return;
            case 7:
                G g8 = (G) this.f25109H;
                Context context3 = (Context) this.f25110I;
                ?? r8 = (C) g8.f24904b;
                r8.getClass();
                ConnectivityManager connectivityManager = (ConnectivityManager) context3.getSystemService("connectivity");
                if (connectivityManager == null) {
                    r7 = 0;
                } else {
                    try {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            int type = activeNetworkInfo.getType();
                            if (type == 0) {
                                switch (activeNetworkInfo.getSubtype()) {
                                    case 1:
                                    case 2:
                                        i8 = 3;
                                        break;
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 14:
                                    case 15:
                                    case 17:
                                        break;
                                    case 13:
                                        i8 = 5;
                                        break;
                                    case 16:
                                    case 19:
                                    default:
                                        i8 = 6;
                                        break;
                                    case 18:
                                        i8 = 2;
                                        break;
                                    case 20:
                                        if (Build.VERSION.SDK_INT >= 29) {
                                            i8 = 9;
                                        } else {
                                            i8 = 0;
                                        }
                                        break;
                                }
                                r7 = i8;
                            } else if (type == 1) {
                                r7 = 2;
                            } else if (type == 4 || type == 5) {
                                switch (activeNetworkInfo.getSubtype()) {
                                    case 1:
                                    case 2:
                                        i8 = 3;
                                        break;
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 14:
                                    case 15:
                                    case 17:
                                        break;
                                    case 13:
                                        i8 = 5;
                                        break;
                                    case 16:
                                    case 19:
                                    default:
                                        i8 = 6;
                                        break;
                                    case 18:
                                        i8 = 2;
                                        break;
                                    case 20:
                                        if (Build.VERSION.SDK_INT >= 29) {
                                            i8 = 9;
                                        } else {
                                            i8 = 0;
                                        }
                                        break;
                                }
                                r7 = i8;
                            } else if (type != 6) {
                                r7 = type != 9 ? 8 : 7;
                            } else {
                                r7 = 5;
                            }
                        }
                    } catch (SecurityException unused) {
                        r7 = 0;
                    }
                }
                if (Build.VERSION.SDK_INT < 31 || r7 != 5) {
                    r8.g(r7);
                    return;
                }
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context3.getSystemService("phone");
                    telephonyManager.getClass();
                    A a8 = new A(r8, i9);
                    telephonyManager.registerTelephonyCallback((Executor) r8.f28024I, a8);
                    telephonyManager.unregisterTelephonyCallback(a8);
                    return;
                } catch (RuntimeException unused2) {
                    r8.g(5);
                    return;
                }
            case 8:
                ((AbstractC0001a) this.f25109H).f115d.d(o0.a((Exception) this.f25110I));
                return;
            case 9:
                D d6 = (D) this.f25109H;
                InterruptedException interruptedException = (InterruptedException) this.f25110I;
                d6.getClass();
                ((p046f6.c) d6.f38j).f(o0.a(interruptedException));
                return;
            case 10:
                D d8 = (D) this.f25109H;
                p pVar = (p) this.f25110I;
                d8.getClass();
                ((p046f6.c) d8.f38j).f(o0.a(pVar));
                return;
            case 11:
                D d9 = (D) this.f25109H;
                F f8 = (F) this.f25110I;
                d9.getClass();
                final int i11 = f8.f28039a;
                final p046f6.c cVar = (p046f6.c) d9.f38j;
                Executor executor = ((Y) cVar.f25223I).f103f;
                final int i12 = f8.f28040b;
                executor.execute(new Runnable() { // from class: A0.V
                    @Override // java.lang.Runnable
                    public final void run() {
                        U0.x xVar = (U0.x) ((Y) cVar.f25223I).f101d;
                        C3135s c3135sA = xVar.f6865j.a();
                        c3135sA.f27003u = i11;
                        c3135sA.f27004v = i12;
                        xVar.f6865j = c3135sA.a();
                        xVar.c();
                    }
                });
                return;
            case 12:
                p046f6.c cVar2 = (p046f6.c) this.f25109H;
                o0 o0Var = (o0) this.f25110I;
                Iterator it = ((x) ((Y) cVar2.f25223I).f101d).f6863h.iterator();
                while (it.hasNext()) {
                    C0352s c0352s = (C0352s) ((t) it.next());
                    c0352s.f6846O.execute(new RunnableC0052h0(c0352s, c0352s.f6845N, o0Var, i8));
                }
                return;
            case 13:
                h0 h0Var = (h0) this.f25109H;
                g0 g0Var = (g0) this.f25110I;
                h0Var.getClass();
                try {
                    g0Var.run();
                    return;
                } catch (Exception e8) {
                    h0Var.b(e8);
                    return;
                }
            case 14:
                ((U4.b) this.f25109H).getClass();
                throw null;
            case 15:
                ((C0071v) this.f25109H).getClass();
                throw null;
            case 16:
                O o4 = (O) this.f25109H;
                U u7 = (U) this.f25110I;
                int i13 = o4.f805m0 - u7.f830b;
                o4.f805m0 = i13;
                if (u7.f833e) {
                    o4.f806n0 = u7.f831c;
                    o4.f807o0 = true;
                }
                if (i13 == 0) {
                    f0 f0Var = ((v0) u7.f834f).f1092a;
                    if (!o4.f778N0.f1092a.q() && f0Var.q()) {
                        o4.f780O0 = -1;
                        o4.f782P0 = 0L;
                    }
                    if (!f0Var.q()) {
                        List listAsList = Arrays.asList(((B0) f0Var).f691h);
                        H1.i(listAsList.size() == o4.f788V.size());
                        for (int i14 = 0; i14 < listAsList.size(); i14++) {
                            ((N) o4.f788V.get(i14)).f752b = (f0) listAsList.get(i14);
                        }
                    }
                    if (o4.f807o0) {
                        if (((v0) u7.f834f).f1093b.equals(o4.f778N0.f1093b) && ((v0) u7.f834f).f1095d == o4.f778N0.f1110s) {
                            z8 = false;
                        }
                        if (z8) {
                            if (f0Var.q() || ((v0) u7.f834f).f1093b.b()) {
                                j9 = ((v0) u7.f834f).f1095d;
                            } else {
                                v0 v0Var = (v0) u7.f834f;
                                C0300y c0300y = v0Var.f1093b;
                                long j10 = v0Var.f1095d;
                                Object obj = c0300y.f5257a;
                                d0 d0Var = o4.f787U;
                                f0Var.h(obj, d0Var);
                                j9 = j10 + d0Var.f26829e;
                            }
                            z7 = z8;
                            j8 = j9;
                        } else {
                            j8 = -9223372036854775807L;
                            z7 = z8;
                        }
                    } else {
                        j8 = -9223372036854775807L;
                        z7 = false;
                    }
                    o4.f807o0 = false;
                    o4.a0((v0) u7.f834f, 1, z7, o4.f806n0, j8, -1, false);
                    return;
                }
                return;
            case 17:
                X x7 = (X) this.f25109H;
                ?? r9 = (z0) this.f25110I;
                int i15 = X.f845M0;
                x7.getClass();
                try {
                    synchronized (r9) {
                    }
                    try {
                        r9.f1151a.handleMessage(r9.f1153c, r9.f1154d);
                        return;
                    } finally {
                        r9.a(true);
                    }
                } catch (C0072w e9) {
                    p117p0.x.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e9);
                    throw new RuntimeException(e9);
                }
            case 18:
                ((C0.F) this.f25109H).f1256d.reportTrackChangeEvent((TrackChangeEvent) this.f25110I);
                return;
            case 19:
                ((C0.F) this.f25109H).f1256d.reportNetworkEvent((NetworkEvent) this.f25110I);
                return;
            case 20:
                ((C0.F) this.f25109H).f1256d.reportPlaybackErrorEvent((PlaybackErrorEvent) this.f25110I);
                return;
            case 21:
                ((C0.F) this.f25109H).f1256d.reportPlaybackMetrics((PlaybackMetrics) this.f25110I);
                return;
            case 22:
                ((C0.F) this.f25109H).f1256d.reportPlaybackStateEvent((PlaybackStateEvent) this.f25110I);
                return;
            case 23:
                C0124n c0124n = (C0124n) this.f25109H;
                String str2 = (String) this.f25110I;
                c0124n.getClass();
                String str3 = M.f28050a;
                C0.A a9 = (C0.A) ((L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT = a9.T();
                a9.U(c0077bT, 1012, new s(c0077bT, str2, 0));
                return;
            case 24:
                G0.h hVar = (G0.h) this.f25109H;
                C3136t c3136t = (C3136t) this.f25110I;
                i iVar = hVar.f3339J;
                if (iVar.f3354U == 0 || hVar.f3338I) {
                    return;
                }
                Looper looper = iVar.f3358Y;
                looper.getClass();
                hVar.f3337H = iVar.a(looper, hVar.f3336G, c3136t, false);
                iVar.f3352S.add(hVar);
                return;
            case 25:
                ((I0.b) ((I0.c) ((n) ((H0.t) this.f25109H).f3565I.f1868H).f3505H).f3806J.get(((H0.l) this.f25110I).f3477S)).d(true);
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                I0.b bVar2 = (I0.b) this.f25109H;
                Uri uri = (Uri) this.f25110I;
                bVar2.f3798O = false;
                bVar2.e(uri);
                return;
            case 27:
                ((InterfaceC3172j) this.f25109H).accept((E) this.f25110I);
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                O0.L l4 = (O0.L) this.f25109H;
                W0.F f9 = (W0.F) this.f25110I;
                Map map = O0.L.f5058x0;
                l4.E(f9);
                return;
        }
    }
}
