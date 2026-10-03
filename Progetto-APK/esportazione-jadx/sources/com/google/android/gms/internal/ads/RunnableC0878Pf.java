package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.google.api.Service;
import dalvik.system.DexClassLoader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.BlockingQueue;
import okhttp3.HttpUrl;
import p021c4.C0621y;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Pf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0878Pf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15412G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f15413H;

    public /* synthetic */ RunnableC0878Pf(Object obj, int i8) {
        this.f15412G = i8;
        this.f15413H = obj;
    }

    private final void a() {
        synchronized (((C4) this.f15413H).f12579T) {
            if (((C4) this.f15413H).f12580U) {
                return;
            }
            ((C4) this.f15413H).f12580U = true;
            try {
                C4.h((C4) this.f15413H);
            } catch (Exception e8) {
                ((C4) this.f15413H).f12571L.b(2023, -1L, e8);
            }
            synchronized (((C4) this.f15413H).f12579T) {
                ((C4) this.f15413H).f12580U = false;
            }
        }
    }

    private final void b() {
        boolean zBooleanValue;
        if (((D4) this.f15413H).f12777b != null) {
            return;
        }
        synchronized (D4.f12773c) {
            if (((D4) this.f15413H).f12777b != null) {
                return;
            }
            boolean z7 = false;
            try {
                zBooleanValue = ((Boolean) Q7.f15917q2.l()).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    D4.f12774d = Gy.a(((D4) this.f15413H).f12776a.f16939a, "ADSHIELD");
                } catch (Throwable unused2) {
                }
            }
            z7 = zBooleanValue;
            ((D4) this.f15413H).f12777b = Boolean.valueOf(z7);
            D4.f12773c.open();
        }
    }

    private final void c() {
        synchronized (((N5) this.f15413H).f14882I) {
            N5 n7 = (N5) this.f15413H;
            if (n7.f14883J && n7.f14884K) {
                n7.f14883J = false;
                p120p3.h.b("App went background");
                Iterator it = ((N5) this.f15413H).f14885L.iterator();
                while (it.hasNext()) {
                    try {
                        ((O5) it.next()).a(false);
                    } catch (Exception e8) {
                        p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    }
                }
            } else {
                p120p3.h.b("App is still foreground");
            }
        }
    }

    private final void d() {
        C1294f8 c1294f8 = (C1294f8) this.f15413H;
        synchronized (c1294f8) {
            try {
                J2.t tVar = (J2.t) c1294f8.f18728J;
                if (tVar.f4125H) {
                    D5 d6 = (D5) tVar.f4126I;
                    byte[] bArr = (byte[]) c1294f8.f18727I;
                    B5 b8 = (B5) d6;
                    Parcel parcelJ0 = b8.j0();
                    parcelJ0.writeByteArray(bArr);
                    b8.O2(5, parcelJ0);
                    B5 b9 = (B5) ((D5) ((J2.t) c1294f8.f18728J).f4126I);
                    Parcel parcelJ1 = b9.j0();
                    parcelJ1.writeInt(0);
                    b9.O2(6, parcelJ1);
                    D5 d8 = (D5) ((J2.t) c1294f8.f18728J).f4126I;
                    int i8 = c1294f8.f18726H;
                    B5 b10 = (B5) d8;
                    Parcel parcelJ2 = b10.j0();
                    parcelJ2.writeInt(i8);
                    b10.O2(7, parcelJ2);
                    B5 b11 = (B5) ((D5) ((J2.t) c1294f8.f18728J).f4126I);
                    Parcel parcelJ3 = b11.j0();
                    parcelJ3.writeIntArray(null);
                    b11.O2(4, parcelJ3);
                    B5 b12 = (B5) ((D5) ((J2.t) c1294f8.f18728J).f4126I);
                    b12.O2(3, b12.j0());
                }
            } catch (RemoteException e8) {
                p120p3.h.c("Clearcut log failed", e8);
            }
        }
    }

    private final void e() {
        String str;
        LinkedHashMap linkedHashMap;
        C0848Nd c0848Nd = (C0848Nd) this.f15413H;
        while (true) {
            try {
                W7 w7 = (W7) ((BlockingQueue) c0848Nd.f14911a).take();
                V7 v7A = w7.a();
                switch (v7A.f16959G) {
                    case 0:
                        str = v7A.f16960H;
                        break;
                    default:
                        str = v7A.f16960H;
                        break;
                }
                if (!TextUtils.isEmpty(str)) {
                    LinkedHashMap linkedHashMap2 = (LinkedHashMap) c0848Nd.f14912b;
                    synchronized (w7.f17173c) {
                        p083k3.l.f25980A.f25987g.c();
                        linkedHashMap = w7.f17172b;
                    }
                    c0848Nd.c(c0848Nd.a(linkedHashMap2, linkedHashMap), v7A);
                }
            } catch (InterruptedException e8) {
                p120p3.h.h("CsiReporter:reporter interrupted", e8);
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f() throws Throwable {
        C1730nf c1730nf;
        String str;
        C1730nf c1730nf2;
        C1730nf c1730nf3;
        long j8;
        C1730nf c1730nf4;
        long j9;
        RunnableC0878Pf runnableC0878Pf = this;
        C1730nf c1730nf5 = (C1730nf) runnableC0878Pf.f15413H;
        String strU = C1730nf.u(c1730nf5.f20176K);
        try {
            J7 j10 = Q7.f15954v;
            C3099q c3099q = C3099q.f26624d;
            long jLongValue = ((Long) c3099q.f26627c.a(j10)).longValue() * 1000;
            long jIntValue = ((Integer) c3099q.f26627c.a(Q7.f15914q)).intValue();
            boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(Q7.f15639I1)).booleanValue();
            try {
                synchronized (c1730nf5) {
                    try {
                        p083k3.l.f25980A.f25990j.getClass();
                        if (System.currentTimeMillis() - c1730nf5.f20180O > jLongValue) {
                            throw new IOException("Timeout reached. Limit: " + jLongValue + " ms");
                        }
                        if (c1730nf5.f20177L) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!c1730nf5.f20178M) {
                            C1049aL c1049aL = c1730nf5.f20175J.f21535M;
                            if (c1049aL == null) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long jE = c1049aL.e();
                            if (jE > 0) {
                                long jD = c1730nf5.f20175J.f21535M.d();
                                if (jD != c1730nf5.f20181P) {
                                    boolean z7 = jD > 0;
                                    String str2 = c1730nf5.f20176K;
                                    if (zBooleanValue) {
                                        C2145vf c2145vf = c1730nf5.f20175J;
                                        j9 = (c2145vf.f21547Y == null || !c2145vf.f21547Y.f20758o) ? c2145vf.f21539Q : 0L;
                                    } else {
                                        j9 = -1;
                                    }
                                    str = strU;
                                    try {
                                        p120p3.d.f28202b.post(new RunnableC1264ef(c1730nf5, str2, strU, jD, jE, j9, zBooleanValue ? c1730nf5.f20175J.s() : -1L, zBooleanValue ? c1730nf5.f20175J.n() : -1L, z7, C2145vf.f21527a0.get(), C2145vf.f21528b0.get()));
                                        j8 = jD;
                                        C1730nf c1730nf6 = c1730nf5;
                                        c1730nf6.f20181P = j8;
                                        c1730nf4 = c1730nf6;
                                    } catch (Throwable th) {
                                        th = th;
                                        c1730nf = c1730nf5;
                                        try {
                                            throw th;
                                        } catch (Exception e8) {
                                            e = e8;
                                            p120p3.h.g("Failed to preload url " + c1730nf.f20176K + " Exception: " + e.getMessage());
                                            p083k3.l.f25980A.f25987g.h("VideoStreamExoPlayerCache.preload", e);
                                            c1730nf.j();
                                            c1730nf.m(c1730nf.f20176K, str, "error", C1730nf.v("error", e));
                                            c1730nf2 = c1730nf;
                                            p083k3.l.f25980A.f26005y.f18228G.remove(c1730nf2.f20179N);
                                        }
                                    }
                                } else {
                                    j8 = jD;
                                    c1730nf4 = c1730nf5;
                                    str = strU;
                                }
                                if (j8 >= jE) {
                                    p120p3.d.f28202b.post(new RunnableC1420hf(c1730nf4, c1730nf4.f20176K, str, jE, 0));
                                    c1730nf2 = c1730nf4;
                                } else if (c1730nf4.f20175J.f21539Q >= jIntValue && j8 > 0) {
                                    c1730nf3 = c1730nf4;
                                    c1730nf3 = c1730nf4;
                                    c1730nf2 = c1730nf4;
                                }
                            } else {
                                c3099q = c3099q;
                                c1730nf3 = c1730nf5;
                            }
                            c1730nf3 = c1730nf4;
                            c1730nf3 = c1730nf4;
                            c1730nf3 = c1730nf4;
                            p113o3.O.f27924l.postDelayed(new RunnableC0878Pf(c1730nf3, 15), ((Long) c3099q.f26627c.a(Q7.f15961w)).longValue());
                            return;
                        }
                        p083k3.l.f25980A.f26005y.f18228G.remove(c1730nf2.f20179N);
                    } catch (Throwable th2) {
                        th = th2;
                        c1730nf = c1730nf5;
                        str = strU;
                    }
                }
                c1730nf2 = c1730nf5;
                p083k3.l.f25980A.f26005y.f18228G.remove(c1730nf2.f20179N);
            } catch (Throwable th3) {
                th = th3;
                c1730nf = runnableC0878Pf;
            }
        } catch (Exception e9) {
            e = e9;
            c1730nf = c1730nf5;
            str = strU;
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i8 = 1;
        switch (this.f15412G) {
            case 0:
                C1689mq c1689mq = (C1689mq) this.f15413H;
                C0621y c0621y = p083k3.l.f25980A.f26002v;
                C2267xx c2267xx = c1689mq.f20002a;
                c0621y.getClass();
                C0621y.k(new RunnableC1585kq(c2267xx, i8));
                return;
            case 1:
                a();
                return;
            case 2:
                b();
                return;
            case 3:
                Z4 z7 = (Z4) this.f15413H;
                Handler handler = Z4.f17715S;
                z7.c();
                return;
            case 4:
                C1964s5 c1964s5 = (C1964s5) this.f15413H;
                try {
                    V4 v5 = c1964s5.f20860a;
                    DexClassLoader dexClassLoader = v5.f16941c;
                    byte[] bArr = v5.f16943e;
                    String str = c1964s5.f20861b;
                    v5.f16942d.getClass();
                    Class<?> clsLoadClass = dexClassLoader.loadClass(new String(M4.b(bArr, str), "UTF-8"));
                    if (clsLoadClass != null) {
                        V4 v7 = c1964s5.f20860a;
                        byte[] bArr2 = v7.f16943e;
                        String str2 = c1964s5.f20862c;
                        v7.f16942d.getClass();
                        c1964s5.f20863d = clsLoadClass.getMethod(new String(M4.b(bArr2, str2), "UTF-8"), c1964s5.f20864e);
                    }
                    break;
                } catch (L4 | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
                } finally {
                    c1964s5.f20865f.countDown();
                }
                return;
            case 5:
                ((H5) this.f15413H).c(3);
                return;
            case 6:
                c();
                return;
            case 7:
                C1950rs.p((C1950rs) this.f15413H);
                return;
            case 8:
                d();
                return;
            case 9:
                e();
                return;
            case 10:
                ((C1139c8) this.f15413H).d();
                return;
            case 11:
                J3.k kVar = (J3.k) this.f15413H;
                if (((C1706n6) kVar.f4153H) == null) {
                    return;
                }
                ((C1706n6) kVar.f4153H).disconnect();
                Binder.flushPendingCommands();
                return;
            case 12:
                ((AbstractC0699De) this.f15413H).x();
                return;
            case 13:
                C0744Ge c0744Ge = (C0744Ge) ((InterfaceC0684Ce) this.f15413H);
                if (c0744Ge.f13576N && c0744Ge.f13585W.getParent() != null) {
                    c0744Ge.f13570H.removeView(c0744Ge.f13585W);
                }
                AbstractC0699De abstractC0699De = c0744Ge.f13575M;
                if (abstractC0699De == null || c0744Ge.f13584V == null) {
                    return;
                }
                p083k3.l lVar = p083k3.l.f25980A;
                lVar.f25990j.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (abstractC0699De.getBitmap(c0744Ge.f13584V) != null) {
                    c0744Ge.f13586a0 = true;
                }
                lVar.f25990j.getClass();
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                if (p113o3.I.m()) {
                    p113o3.I.k("Spinner frame grab took " + jElapsedRealtime2 + "ms");
                }
                if (jElapsedRealtime2 > c0744Ge.f13574L) {
                    p120p3.h.g("Spinner frame grab crossed jank threshold! Suspending spinner.");
                    c0744Ge.f13579Q = false;
                    c0744Ge.f13584V = null;
                    W7 w7 = c0744Ge.f13572J;
                    if (w7 != null) {
                        w7.b("spinner_jank", Long.toString(jElapsedRealtime2));
                        return;
                    }
                    return;
                }
                return;
            case 14:
                p083k3.l.f25980A.f26005y.f18228G.remove((C1110bf) this.f15413H);
                return;
            case 15:
                f();
                return;
            case 16:
                InterfaceC0715Ef interfaceC0715Ef = ((AbstractC0990Xf) this.f15413H).f17457G;
                interfaceC0715Ef.F0();
                p105n3.k kVarB = interfaceC0715Ef.B();
                if (kVarB != null) {
                    kVarB.f27520R.removeView(kVarB.f27514L);
                    kVarB.E3(true);
                    return;
                }
                return;
            case 17:
                int i9 = AbstractC0990Xf.f17456l0;
                C0848Nd c0848NdC = p083k3.l.f25980A.f25987g.c();
                String str3 = (String) this.f15413H;
                if (((HashSet) c0848NdC.f14917g).contains(str3)) {
                    return;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("sdkVersion", (String) c0848NdC.f14916f);
                linkedHashMap.put("ue", str3);
                c0848NdC.c(c0848NdC.a((LinkedHashMap) c0848NdC.f14912b, linkedHashMap), null);
                return;
            case 18:
                super/*android.webkit.WebView*/.destroy();
                return;
            case 19:
                ((C2199wh) this.f15413H).f21726H.f21909d.a();
                return;
            case 20:
                ((C2199wh) this.f15413H).f21726H.f21909d.b();
                return;
            case 21:
                C0866Oh c0866Oh = (C0866Oh) this.f15413H;
                InterfaceC1968s9 interfaceC1968s9 = c0866Oh.f15186o.f15078d;
                if (interfaceC1968s9 == null) {
                    return;
                }
                try {
                    p090l3.J j8 = (p090l3.J) c0866Oh.f15188q.zzb();
                    R3.b bVar = new R3.b(c0866Oh.f15181j);
                    C1916r9 c1916r9 = (C1916r9) interfaceC1968s9;
                    Parcel parcelJ0 = c1916r9.j0();
                    A5.e(parcelJ0, j8);
                    A5.e(parcelJ0, bVar);
                    c1916r9.O2(1, parcelJ0);
                    return;
                } catch (RemoteException e8) {
                    p120p3.h.e("RemoteException when notifyAdLoad is called", e8);
                    return;
                }
            case 22:
                ((p048g0.a) this.f15413H).f25292a = false;
                return;
            case 23:
                ((InterfaceC1195dC) this.f15413H).zza(new C0679Bo(3));
                return;
            case 24:
                C0923Si c0923Si = (C0923Si) this.f15413H;
                AbstractC2987b.y0(c0923Si.f16501I);
                c0923Si.f16506N = true;
                return;
            case 25:
                C0979Wi c0979Wi = (C0979Wi) this.f15413H;
                synchronized (c0979Wi) {
                    try {
                        if (c0979Wi.f17301K.isDone()) {
                            return;
                        }
                        c0979Wi.f17301K.f(Boolean.TRUE);
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                ((C2201wj) this.f15413H).a1();
                return;
            case 27:
                ((InterfaceC0826Ll) this.f15413H).zzp();
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                ViewTreeObserverOnGlobalLayoutListenerC0912Rl viewTreeObserverOnGlobalLayoutListenerC0912Rl = (ViewTreeObserverOnGlobalLayoutListenerC0912Rl) this.f15413H;
                if (viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16343M == null) {
                    View view = new View(viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16340J.getContext());
                    viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16343M = view;
                    view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                }
                if (viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16340J != viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16343M.getParent()) {
                    viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16340J.addView(viewTreeObserverOnGlobalLayoutListenerC0912Rl.f16343M);
                    return;
                }
                return;
            default:
                ViewTreeObserverOnGlobalLayoutListenerC0752Gm viewTreeObserverOnGlobalLayoutListenerC0752Gm = (ViewTreeObserverOnGlobalLayoutListenerC0752Gm) this.f15413H;
                try {
                    viewTreeObserverOnGlobalLayoutListenerC0752Gm.getClass();
                    com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                    viewTreeObserverOnGlobalLayoutListenerC0752Gm.B3();
                    C0721El c0721El = viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13630I;
                    if (c0721El != null) {
                        c0721El.w();
                    }
                    viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13630I = null;
                    viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13628G = null;
                    viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13629H = null;
                    viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13631J = true;
                    return;
                } catch (RemoteException e9) {
                    p120p3.h.i("#007 Could not call remote method.", e9);
                    return;
                }
        }
    }
}
