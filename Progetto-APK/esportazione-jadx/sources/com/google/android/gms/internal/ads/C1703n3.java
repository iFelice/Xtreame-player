package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.os.Process;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.n3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1703n3 extends Thread {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final boolean f20059M = B3.f12095a;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final BlockingQueue f20060G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final BlockingQueue f20061H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0022w f20062I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public volatile boolean f20063J = false;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C2246xc f20064K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final K4 f20065L;

    public C1703n3(PriorityBlockingQueue priorityBlockingQueue, PriorityBlockingQueue priorityBlockingQueue2, C0022w c0022w, K4 k8) {
        this.f20060G = priorityBlockingQueue;
        this.f20061H = priorityBlockingQueue2;
        this.f20062I = c0022w;
        this.f20065L = k8;
        this.f20064K = new C2246xc(this, priorityBlockingQueue2, k8);
    }

    public final void a() {
        AbstractC2118v3 abstractC2118v3 = (AbstractC2118v3) this.f20060G.take();
        abstractC2118v3.d("cache-queue-take");
        abstractC2118v3.i(1);
        try {
            abstractC2118v3.l();
            p135r2.b bVarA = this.f20062I.a(abstractC2118v3.b());
            if (bVarA == null) {
                abstractC2118v3.d("cache-miss");
                if (!this.f20064K.w(abstractC2118v3)) {
                    this.f20061H.put(abstractC2118v3);
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (bVarA.f29785e < jCurrentTimeMillis) {
                    abstractC2118v3.d("cache-hit-expired");
                    abstractC2118v3.f21438P = bVarA;
                    if (!this.f20064K.w(abstractC2118v3)) {
                        this.f20061H.put(abstractC2118v3);
                    }
                } else {
                    abstractC2118v3.d("cache-hit");
                    byte[] bArr = bVarA.f29781a;
                    Map map = bVarA.f29787g;
                    C2222x3 c2222x3A = abstractC2118v3.a(new C2066u3(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, bArr, map, C2066u3.a(map), false));
                    abstractC2118v3.d("cache-hit-parsed");
                    if (!(((C2274y3) c2222x3A.f21829J) == null)) {
                        abstractC2118v3.d("cache-parsing-failed");
                        C0022w c0022w = this.f20062I;
                        String strB = abstractC2118v3.b();
                        synchronized (c0022w) {
                            try {
                                p135r2.b bVarA2 = c0022w.a(strB);
                                if (bVarA2 != null) {
                                    bVarA2.f29786f = 0L;
                                    bVarA2.f29785e = 0L;
                                    c0022w.c(strB, bVarA2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        abstractC2118v3.f21438P = null;
                        if (!this.f20064K.w(abstractC2118v3)) {
                            this.f20061H.put(abstractC2118v3);
                        }
                    } else if (bVarA.f29786f < jCurrentTimeMillis) {
                        abstractC2118v3.d("cache-hit-refresh-needed");
                        abstractC2118v3.f21438P = bVarA;
                        c2222x3A.f21826G = true;
                        if (this.f20064K.w(abstractC2118v3)) {
                            this.f20065L.f(abstractC2118v3, c2222x3A, null);
                        } else {
                            this.f20065L.f(abstractC2118v3, c2222x3A, new RunnableC0755Ha(this, abstractC2118v3, 4));
                        }
                    } else {
                        this.f20065L.f(abstractC2118v3, c2222x3A, null);
                    }
                }
            }
            abstractC2118v3.i(2);
        } catch (Throwable th2) {
            abstractC2118v3.i(2);
            throw th2;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f20059M) {
            B3.c("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f20062I.b();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f20063J) {
                    Thread.currentThread().interrupt();
                    return;
                }
                B3.b("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
