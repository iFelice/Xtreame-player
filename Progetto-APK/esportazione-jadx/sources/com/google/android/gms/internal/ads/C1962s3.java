package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.s3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1962s3 extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final BlockingQueue f20855G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC1910r3 f20856H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0022w f20857I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public volatile boolean f20858J = false;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final K4 f20859K;

    public C1962s3(PriorityBlockingQueue priorityBlockingQueue, InterfaceC1910r3 interfaceC1910r3, C0022w c0022w, K4 k8) {
        this.f20855G = priorityBlockingQueue;
        this.f20856H = interfaceC1910r3;
        this.f20857I = c0022w;
        this.f20859K = k8;
    }

    public final void a() {
        K4 k8 = this.f20859K;
        AbstractC2118v3 abstractC2118v3 = (AbstractC2118v3) this.f20855G.take();
        SystemClock.elapsedRealtime();
        abstractC2118v3.i(3);
        try {
            try {
                abstractC2118v3.d("network-queue-take");
                abstractC2118v3.l();
                TrafficStats.setThreadStatsTag(abstractC2118v3.f21432J);
                C2066u3 c2066u3C = this.f20856H.c(abstractC2118v3);
                abstractC2118v3.d("network-http-complete");
                if (c2066u3C.f21198e && abstractC2118v3.k()) {
                    abstractC2118v3.f("not-modified");
                    abstractC2118v3.g();
                } else {
                    C2222x3 c2222x3A = abstractC2118v3.a(c2066u3C);
                    abstractC2118v3.d("network-parse-complete");
                    if (((p135r2.b) c2222x3A.f21828I) != null) {
                        this.f20857I.c(abstractC2118v3.b(), (p135r2.b) c2222x3A.f21828I);
                        abstractC2118v3.d("network-cache-written");
                    }
                    synchronized (abstractC2118v3.f21433K) {
                        abstractC2118v3.f21437O = true;
                    }
                    k8.f(abstractC2118v3, c2222x3A, null);
                    abstractC2118v3.h(c2222x3A);
                }
            } catch (C2274y3 e8) {
                SystemClock.elapsedRealtime();
                k8.e(abstractC2118v3, e8);
                abstractC2118v3.g();
            } catch (Exception e9) {
                Log.e("Volley", B3.d("Unhandled exception %s", e9.toString()), e9);
                C2274y3 c2274y3 = new C2274y3(e9);
                SystemClock.elapsedRealtime();
                k8.e(abstractC2118v3, c2274y3);
                abstractC2118v3.g();
            }
            abstractC2118v3.i(4);
        } catch (Throwable th) {
            abstractC2118v3.i(4);
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f20858J) {
                    Thread.currentThread().interrupt();
                    return;
                }
                B3.b("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
