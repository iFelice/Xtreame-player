package com.google.android.gms.internal.ads;

import W0.C0374g;
import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p039f.AbstractC2987b;
import p090l3.C3093n;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class C4 implements E4 {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static C4 f12565X;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f12566G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Kq f12567H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Dy f12568I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Fy f12569J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C3093n f12570K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1180cy f12571L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Executor f12572M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final K4 f12573N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C1085b5 f12575P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final C0374g f12576Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final K4 f12577R;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public volatile boolean f12580U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public volatile boolean f12581V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f12582W;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public volatile long f12578S = 0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Object f12579T = new Object();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final CountDownLatch f12574O = new CountDownLatch(1);

    public C4(Context context, C1180cy c1180cy, Kq kq, Dy dy, Fy fy, C3093n c3093n, ExecutorService executorService, C2272y1 c2272y1, int i8, C1085b5 c1085b5, C0374g c0374g, K4 k8) {
        this.f12581V = false;
        this.f12566G = context;
        this.f12571L = c1180cy;
        this.f12567H = kq;
        this.f12568I = dy;
        this.f12569J = fy;
        this.f12570K = c3093n;
        this.f12572M = executorService;
        this.f12582W = i8;
        this.f12575P = c1085b5;
        this.f12576Q = c0374g;
        this.f12577R = k8;
        this.f12581V = false;
        this.f12573N = new K4(13, c2272y1);
    }

    public static synchronized C4 f(String str, Context context, boolean z7, boolean z8) {
        return g(str, context, Executors.newCachedThreadPool(), z7, z8);
    }

    public static synchronized C4 g(String str, Context context, ExecutorService executorService, boolean z7, boolean z8) {
        try {
            if (f12565X == null) {
                byte b8 = (byte) (((byte) (0 | 1)) | 2);
                if (str == null) {
                    throw new NullPointerException("Null clientVersion");
                }
                byte b9 = (byte) (b8 | 1);
                if (b9 != 3) {
                    StringBuilder sb = new StringBuilder();
                    if ((b9 & 1) == 0) {
                        sb.append(" shouldGetAdvertisingId");
                    }
                    if ((b9 & 2) == 0) {
                        sb.append(" isGooglePlayServicesAvailable");
                    }
                    throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
                }
                C1283ey c1283ey = new C1283ey(str, z7, true);
                C1180cy c1180cyA = C1180cy.a(context, executorService, z8);
                J7 j8 = Q7.f15816e3;
                C3099q c3099q = C3099q.f26624d;
                K4 k8 = ((Boolean) c3099q.f26627c.a(j8)).booleanValue() ? new K4((ConnectivityManager) context.getSystemService("connectivity")) : null;
                C1085b5 c1085b5A = ((Boolean) c3099q.f26627c.a(Q7.f15825f3)).booleanValue() ? C1085b5.a(context, executorService) : null;
                C0374g c0374g = ((Boolean) c3099q.f26627c.a(Q7.f15972x2)).booleanValue() ? new C0374g() : null;
                K4 k9 = ((Boolean) c3099q.f26627c.a(Q7.f15980y2)).booleanValue() ? new K4(14) : null;
                C3093n c3093nC = C3093n.c(context, executorService, c1180cyA, c1283ey);
                R4 r7 = new R4(context, 0);
                Z4 z9 = new Z4(context, r7);
                C3093n c3093n = new C3093n();
                c3093n.f26609a = c1283ey;
                c3093n.f26610b = c3093nC;
                c3093n.f26611c = z9;
                c3093n.f26612d = r7;
                c3093n.f26613e = k8;
                c3093n.f26614f = c1085b5A;
                c3093n.f26615g = c0374g;
                c3093n.f26616h = k9;
                int iH = U2.m.h(context, c1180cyA);
                C2272y1 c2272y1 = new C2272y1();
                C4 c8 = new C4(context, c1180cyA, new Kq(context, iH), new Dy(context, iH, new K4(c1180cyA, 12), ((Boolean) c3099q.f26627c.a(Q7.f15842h2)).booleanValue()), new Fy(context, c3093n, c1180cyA, c2272y1), c3093n, executorService, c2272y1, iH, c1085b5A, c0374g, k9);
                f12565X = c8;
                c8.i();
                f12565X.j();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f12565X;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d0 A[Catch: all -> 0x0098, AH -> 0x009b, TryCatch #0 {AH -> 0x009b, blocks: (B:6:0x001d, B:8:0x002b, B:12:0x0031, B:13:0x003f, B:15:0x004d, B:17:0x005b, B:20:0x0068, B:32:0x009e, B:36:0x00b7, B:42:0x00d0, B:43:0x00dd, B:45:0x00e3, B:47:0x00eb, B:48:0x00ee, B:39:0x00c1, B:40:0x00c8, B:23:0x006f, B:25:0x0085, B:49:0x00f8, B:50:0x0105, B:51:0x0112), top: B:58:0x001d, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f8 A[Catch: all -> 0x0098, AH -> 0x009b, TryCatch #0 {AH -> 0x009b, blocks: (B:6:0x001d, B:8:0x002b, B:12:0x0031, B:13:0x003f, B:15:0x004d, B:17:0x005b, B:20:0x0068, B:32:0x009e, B:36:0x00b7, B:42:0x00d0, B:43:0x00dd, B:45:0x00e3, B:47:0x00eb, B:48:0x00ee, B:39:0x00c1, B:40:0x00c8, B:23:0x006f, B:25:0x0085, B:49:0x00f8, B:50:0x0105, B:51:0x0112), top: B:58:0x001d, outer: #1 }] */
    public static void h(C4 c8) {
        String strI;
        String strH;
        int length;
        boolean zC;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Yu yuK = c8.k();
        if (yuK != null) {
            strI = ((C2224x5) yuK.f17669H).I();
            strH = ((C2224x5) yuK.f17669H).H();
        } else {
            strI = null;
            strH = null;
        }
        try {
            try {
                Cy cyA0 = AbstractC2987b.a0(c8.f12566G, c8.f12582W, strI, strH, c8.f12571L);
                byte[] bArr = cyA0.f12734H;
                if (bArr == null || (length = bArr.length) == 0) {
                    c8.f12571L.c(5009, System.currentTimeMillis() - jCurrentTimeMillis);
                } else {
                    try {
                        VG vgY = XG.y(0, bArr, length);
                        C1509jH c1509jH = C1509jH.f19448b;
                        UH uh = UH.f16822c;
                        C2120v5 c2120v5A = C2120v5.A(vgY, C1509jH.f19449c);
                        if (c2120v5A.B().I().isEmpty() || c2120v5A.B().H().isEmpty() || c2120v5A.C().b().length == 0) {
                            c8.f12571L.c(5010, System.currentTimeMillis() - jCurrentTimeMillis);
                        } else {
                            Yu yuK2 = c8.k();
                            if (yuK2 != null) {
                                C2224x5 c2224x5 = (C2224x5) yuK2.f17669H;
                                if (c2120v5A.B().I().equals(c2224x5.I()) && c2120v5A.B().H().equals(c2224x5.H())) {
                                    c8.f12571L.c(5010, System.currentTimeMillis() - jCurrentTimeMillis);
                                }
                            }
                            K4 k8 = c8.f12573N;
                            int i8 = cyA0.f12735I;
                            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15824f2)).booleanValue()) {
                                zC = c8.f12567H.c(c2120v5A, k8);
                            } else if (i8 == 3) {
                                zC = c8.f12568I.a(c2120v5A);
                            } else if (i8 == 4) {
                                zC = c8.f12568I.b(c2120v5A, k8);
                            } else {
                                c8.f12571L.c(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                            if (zC) {
                                Yu yuK3 = c8.k();
                                if (yuK3 != null) {
                                    if (c8.f12569J.c(yuK3)) {
                                        c8.f12581V = true;
                                    }
                                    c8.f12578S = System.currentTimeMillis() / 1000;
                                }
                            } else {
                                c8.f12571L.c(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                        }
                    } catch (NullPointerException unused) {
                        c8.f12571L.c(2030, System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
            } catch (AH e8) {
                c8.f12571L.b(4002, System.currentTimeMillis() - jCurrentTimeMillis, e8);
            }
        } finally {
            c8.f12574O.countDown();
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void a(View view) {
        ((Z4) this.f12570K.f26611c).a(view);
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void b(StackTraceElement[] stackTraceElementArr) {
        K4 k8 = this.f12577R;
        if (k8 != null) {
            k8.f14301H = new ArrayList(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String c(Context context) {
        String strO;
        C1085b5 c1085b5 = this.f12575P;
        if (c1085b5 != null && c1085b5.f18016d) {
            c1085b5.f18014b = System.currentTimeMillis();
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
            C0374g c0374g = this.f12576Q;
            c0374g.f7413b = c0374g.f7412a;
            c0374g.f7412a = SystemClock.uptimeMillis();
        }
        j();
        C2246xc c2246xcA = this.f12569J.a();
        if (c2246xcA == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (c2246xcA) {
            HashMap mapA = ((C3093n) c2246xcA.f21884J).a();
            mapA.put("f", "q");
            mapA.put("ctx", context);
            mapA.put("aid", null);
            strO = C2246xc.O(c2246xcA.P(mapA));
        }
        this.f12571L.d(5001, System.currentTimeMillis() - jCurrentTimeMillis, null, strO, null);
        return strO;
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String d(Context context, String str, View view, Activity activity) {
        String strO;
        C1085b5 c1085b5 = this.f12575P;
        if (c1085b5 != null && c1085b5.f18016d) {
            c1085b5.f18014b = System.currentTimeMillis();
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
            C0374g c0374g = this.f12576Q;
            c0374g.f7419h = c0374g.f7418g;
            c0374g.f7418g = SystemClock.uptimeMillis();
        }
        j();
        C2246xc c2246xcA = this.f12569J.a();
        if (c2246xcA == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (c2246xcA) {
            C3093n c3093n = (C3093n) c2246xcA.f21884J;
            Z4 z7 = (Z4) c3093n.f26611c;
            HashMap mapB = c3093n.b();
            if (z7.f17727R <= -2) {
                WeakReference weakReference = z7.f17723N;
                if ((weakReference != null ? (View) weakReference.get() : null) == null) {
                    z7.f17727R = -3L;
                }
            }
            mapB.put("lts", Long.valueOf(z7.f17727R));
            mapB.put("f", "c");
            mapB.put("ctx", context);
            mapB.put("cs", str);
            mapB.put("aid", null);
            mapB.put("view", view);
            mapB.put("act", activity);
            strO = C2246xc.O(c2246xcA.P(mapB));
        }
        this.f12571L.d(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT, System.currentTimeMillis() - jCurrentTimeMillis, null, strO, null);
        return strO;
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String e(Context context, String str, View view) {
        return d(context, str, view, null);
    }

    public final synchronized void i() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Yu yuK = k();
        if (yuK == null) {
            this.f12571L.c(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.f12569J.c(yuK)) {
            this.f12581V = true;
            this.f12574O.countDown();
        }
    }

    public final void j() {
        int i8;
        if (this.f12580U) {
            return;
        }
        synchronized (this.f12579T) {
            try {
                if (!this.f12580U) {
                    if ((System.currentTimeMillis() / 1000) - this.f12578S < 3600) {
                        return;
                    }
                    Yu yuB = this.f12569J.b();
                    if ((yuB == null || ((C2224x5) yuB.f17669H).B() - (System.currentTimeMillis() / 1000) < 3600) && ((i8 = this.f12582W - 1) == 2 || i8 == 4 || i8 == 5 || i8 == 6 || i8 == 7)) {
                        this.f12572M.execute(new RunnableC0878Pf(this, 1));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Yu k() {
        int i8 = this.f12582W - 1;
        Yu yu = null;
        if (!(i8 == 2 || i8 == 4 || i8 == 5 || i8 == 6 || i8 == 7)) {
            return null;
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15824f2)).booleanValue()) {
            Kq kq = this.f12567H;
            C2224x5 c2224x5D = kq.d(1);
            if (c2224x5D == null) {
                return null;
            }
            String strI = c2224x5D.I();
            File fileH = Q3.b.H(strI, "pcam.jar", kq.g());
            if (!fileH.exists()) {
                fileH = Q3.b.H(strI, "pcam", kq.g());
            }
            return new Yu(c2224x5D, fileH, Q3.b.H(strI, "pcbc", kq.g()), Q3.b.H(strI, "pcopt", kq.g()));
        }
        Dy dy = this.f12568I;
        dy.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (Dy.f12910f) {
            try {
                C2224x5 c2224x5F = dy.f(1);
                if (c2224x5F == null) {
                    dy.e(4022, jCurrentTimeMillis);
                } else {
                    File fileC = dy.c(c2224x5F.I());
                    File file = new File(fileC, "pcam.jar");
                    if (!file.exists()) {
                        file = new File(fileC, "pcam");
                    }
                    File file2 = new File(fileC, "pcbc");
                    File file3 = new File(fileC, "pcopt");
                    dy.e(5016, jCurrentTimeMillis);
                    yu = new Yu(c2224x5F, file, file2, file3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return yu;
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final String zzh(Context context, View view, Activity activity) {
        String strO;
        C1085b5 c1085b5 = this.f12575P;
        if (c1085b5 != null && c1085b5.f18016d) {
            c1085b5.f18014b = System.currentTimeMillis();
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15972x2)).booleanValue()) {
            this.f12576Q.c(context, view);
        }
        j();
        C2246xc c2246xcA = this.f12569J.a();
        if (c2246xcA == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (c2246xcA) {
            C3093n c3093n = (C3093n) c2246xcA.f21884J;
            K4 k8 = (K4) c3093n.f26616h;
            HashMap mapB = c3093n.b();
            if (k8 != null) {
                List list = (List) k8.f14301H;
                k8.f14301H = Collections.emptyList();
                mapB.put("vst", list);
            }
            mapB.put("f", "v");
            mapB.put("ctx", context);
            mapB.put("aid", null);
            mapB.put("view", view);
            mapB.put("act", activity);
            strO = C2246xc.O(c2246xcA.P(mapB));
        }
        this.f12571L.d(5002, System.currentTimeMillis() - jCurrentTimeMillis, null, strO, null);
        return strO;
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void zzk(MotionEvent motionEvent) {
        C2246xc c2246xcA = this.f12569J.a();
        if (c2246xcA != null) {
            try {
                c2246xcA.B(motionEvent);
            } catch (Ey e8) {
                this.f12571L.b(e8.f13255G, -1L, e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.E4
    public final void zzl(int i8, int i9, int i10) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.jb)).booleanValue() || (displayMetrics = this.f12566G.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f8 = i8;
        float f9 = displayMetrics.density;
        float f10 = i9;
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 0, f8 * f9, f10 * f9, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain);
        motionEventObtain.recycle();
        float f11 = displayMetrics.density;
        MotionEvent motionEventObtain2 = MotionEvent.obtain(0L, 0L, 2, f8 * f11, f10 * f11, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain2);
        motionEventObtain2.recycle();
        float f12 = displayMetrics.density;
        MotionEvent motionEventObtain3 = MotionEvent.obtain(0L, i10, 1, f8 * f12, f10 * f12, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain3);
        motionEventObtain3.recycle();
    }
}
