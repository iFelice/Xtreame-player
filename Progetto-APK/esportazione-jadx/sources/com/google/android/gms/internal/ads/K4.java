package com.google.android.gms.internal.ads;

import D0.C0117g;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import java.io.File;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3099q;
import p094m0.C3134q;

/* JADX INFO: loaded from: classes.dex */
public final class K4 implements InterfaceC2270y, B, Ny, InterfaceC1445i3, E3, InterfaceC2112uy, InterfaceC1214dg, InterfaceC2144ve, p136r3.b, p152t3.b, InterfaceC1195dC, VB {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14300G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f14301H;

    public /* synthetic */ K4(int i8, Object obj) {
        this.f14300G = i8;
        this.f14301H = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2270y
    public final void a() {
        C1543k c1543k = (C1543k) this.f14301H;
        Surface surface = c1543k.f19554J0;
        if (surface != null) {
            C2218x c2218x = c1543k.f19577z0;
            Handler handler = (Handler) c2218x.f21779H;
            if (handler != null) {
                handler.post(new RunnableC2114v(c2218x, surface, SystemClock.elapsedRealtime()));
            }
            c1543k.f19557M0 = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2270y
    public final void b() {
        C1543k c1543k = (C1543k) this.f14301H;
        if (c1543k.f19554J0 != null) {
            c1543k.n0(0, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.B
    public final long c(long j8) {
        Q q7 = (Q) this.f14301H;
        return Math.max(0L, Math.min((j8 * ((long) q7.f15532e)) / 1000000, q7.f15537j - 1));
    }

    public final AtomicReference d(String str) {
        synchronized (this) {
            try {
                if (!((Map) this.f14301H).containsKey(str)) {
                    ((Map) this.f14301H).put(str, new AtomicReference());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (AtomicReference) ((Map) this.f14301H).get(str);
    }

    public final void e(AbstractC2118v3 abstractC2118v3, C2274y3 c2274y3) {
        abstractC2118v3.d("post-error");
        ((ExecutorC1807p3) ((Executor) this.f14301H)).f20417G.post(new K.a(abstractC2118v3, new C2222x3(c2274y3), null, 18, 0));
    }

    public final void f(AbstractC2118v3 abstractC2118v3, C2222x3 c2222x3, RunnableC0755Ha runnableC0755Ha) {
        synchronized (abstractC2118v3.f21433K) {
            abstractC2118v3.f21437O = true;
        }
        abstractC2118v3.d("post-response");
        ((ExecutorC1807p3) ((Executor) this.f14301H)).f20417G.post(new K.a(abstractC2118v3, c2222x3, runnableC0755Ha, 18, 0));
    }

    public final boolean g() {
        Object obj = ((K4) this.f14301H).f14301H;
        return ((C0117g) obj).f1935a && ((C0117g) obj).f1936b;
    }

    public final void h(int i8, boolean z7) {
        if (z7) {
            ((C3134q) this.f14301H).c(i8);
        }
    }

    @Override // com.google.android.gms.internal.ads.E3
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public final File mo6zza() {
        return (File) this.f14301H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2112uy
    public final void zzb(int i8, long j8, String str) {
        ((C1180cy) this.f14301H).d(i8, System.currentTimeMillis() - j8, null, null, str);
    }

    public K4(Handler handler) {
        this.f14300G = 10;
        this.f14301H = new ExecutorC1807p3(handler);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1445i3
    public final long zza() {
        switch (this.f14300G) {
            case 0:
                synchronized (K4.class) {
                    try {
                        NetworkCapabilities networkCapabilities = (NetworkCapabilities) this.f14301H;
                        if (networkCapabilities != null) {
                            if (networkCapabilities.hasTransport(4)) {
                                return 2L;
                            }
                            if (((NetworkCapabilities) this.f14301H).hasTransport(1)) {
                                return 1L;
                            }
                            if (((NetworkCapabilities) this.f14301H).hasTransport(0)) {
                                return 0L;
                            }
                        }
                        return -1L;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            default:
                return ((ByteBuffer) this.f14301H).capacity();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        switch (this.f14300G) {
            case 25:
                C0728Fd.f13368l.remove((D4.b) this.f14301H);
                break;
            default:
                ((AtomicInteger) ((p039f.H) this.f14301H).f24906b).set(1);
                break;
        }
    }

    public /* synthetic */ K4(Object obj, int i8) {
        this.f14300G = i8;
        this.f14301H = obj;
    }

    public K4(UUID uuid) {
        this.f14300G = 7;
        this.f14301H = uuid;
    }

    public K4(String[] strArr) {
        this.f14300G = 2;
        this.f14301H = strArr;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1445i3
    public final void zzb(MessageDigest[] messageDigestArr, long j8, int i8) {
        ByteBuffer byteBufferSlice;
        synchronized (((ByteBuffer) this.f14301H)) {
            int i9 = (int) j8;
            ((ByteBuffer) this.f14301H).position(i9);
            ((ByteBuffer) this.f14301H).limit(i9 + i8);
            byteBufferSlice = ((ByteBuffer) this.f14301H).slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            byteBufferSlice.position(0);
            messageDigest.update(byteBufferSlice);
        }
    }

    @Override // com.google.android.gms.internal.ads.VB
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public final InterfaceC1556kC mo5zza() {
        return new C2177wA((byte[]) this.f14301H);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1214dg
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public final void mo7zza() {
        switch (this.f14300G) {
            case 17:
                p083k3.l.f25980A.f25990j.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                p151t2.c cVar = (p151t2.c) this.f14301H;
                long j8 = cVar.f30271G;
                ArrayList arrayList = (ArrayList) cVar.f30274J;
                arrayList.add(Long.valueOf(jCurrentTimeMillis - j8));
                p113o3.I.k("LoadNewJavascriptEngine(onEngLoaded) latency is " + String.valueOf(arrayList.get(0)) + " ms.");
                p113o3.O.f27924l.postDelayed(new RunnableC2348za((C0785Ja) cVar.f30273I, (C0770Ia) cVar.f30275K, (C2244xa) cVar.f30272H, arrayList, j8, 0), (long) ((Integer) C3099q.f26624d.f26627c.a(Q7.f15786b)).intValue());
                break;
            default:
                ((AtomicBoolean) this.f14301H).set(false);
                break;
        }
    }

    public K4() {
        this.f14300G = 29;
        this.f14301H = new AtomicBoolean(false);
    }

    public K4(int i8) {
        this.f14300G = i8;
        if (i8 == 15) {
            this.f14301H = new HashMap();
            return;
        }
        if (i8 == 21) {
            this.f14301H = new C3134q(1);
        } else if (i8 != 23) {
            this.f14301H = Collections.emptyList();
        } else {
            this.f14301H = new WeakHashMap();
        }
    }

    public K4(ConnectivityManager connectivityManager) {
        this.f14300G = 0;
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            connectivityManager.registerDefaultNetworkCallback(new p082k2.h(this, 2));
        } catch (RuntimeException unused) {
            synchronized (K4.class) {
                this.f14301H = null;
            }
        }
    }

    public K4(ByteBuffer byteBuffer) {
        this.f14300G = 9;
        this.f14301H = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2112uy
    public final void zza(int i8, long j8) {
        ((C1180cy) this.f14301H).c(i8, System.currentTimeMillis() - j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2144ve, com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        switch (this.f14300G) {
            case 18:
                C0785Ja c0785Ja = (C0785Ja) this.f14301H;
                c0785Ja.getClass();
                if (((C2244xa) obj).f21879G.a0()) {
                    c0785Ja.f14162g = 1;
                }
                break;
            default:
                AbstractC1988se.f20910e.execute(new RunnableC0755Ha(0, this, (C2244xa) obj));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        switch (this.f14300G) {
            case 25:
                C0728Fd.f13368l.remove((D4.b) this.f14301H);
                break;
            default:
                ((AtomicInteger) ((p039f.H) this.f14301H).f24906b).set(-1);
                break;
        }
    }
}
