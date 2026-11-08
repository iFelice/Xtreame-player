package p135r2;

import B0.C0041c;
import D0.U;
import K.a;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import p096m2.u;
import p143s2.d;

/* JADX INFO: loaded from: classes.dex */
public final class g extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final BlockingQueue f29799G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final u f29800H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final d f29801I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final U f29802J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile boolean f29803K = false;

    public g(PriorityBlockingQueue priorityBlockingQueue, u uVar, d dVar, U u7) {
        this.f29799G = priorityBlockingQueue;
        this.f29800H = uVar;
        this.f29801I = dVar;
        this.f29802J = u7;
    }

    private void a() {
        k kVar = (k) this.f29799G.take();
        U u7 = this.f29802J;
        SystemClock.elapsedRealtime();
        kVar.n(3);
        try {
            try {
                try {
                    kVar.a("network-queue-take");
                    kVar.j();
                    TrafficStats.setThreadStatsTag(kVar.f29816J);
                    i iVarM = this.f29800H.M(kVar);
                    kVar.a("network-http-complete");
                    if (iVarM.f29808e && kVar.i()) {
                        kVar.c("not-modified");
                        kVar.k();
                    } else {
                        C0041c c0041cM = kVar.m(iVarM);
                        kVar.a("network-parse-complete");
                        if (kVar.f29821O && ((b) c0041cM.f915I) != null) {
                            this.f29801I.f(kVar.f(), (b) c0041cM.f915I);
                            kVar.a("network-cache-written");
                        }
                        synchronized (kVar.f29817K) {
                            kVar.f29822P = true;
                        }
                        u7.J(kVar, c0041cM, null);
                        kVar.l(c0041cM);
                    }
                } catch (Exception e8) {
                    Log.e("Volley", r.a("Unhandled exception %s", e8.toString()), e8);
                    o oVar = new o(e8);
                    SystemClock.elapsedRealtime();
                    u7.getClass();
                    kVar.a("post-error");
                    ((Executor) u7.f1868H).execute(new a(kVar, new C0041c(oVar), null, 7, 0));
                    kVar.k();
                }
            } catch (o e9) {
                SystemClock.elapsedRealtime();
                u7.getClass();
                kVar.a("post-error");
                ((Executor) u7.f1868H).execute(new a(kVar, new C0041c(e9), null, 7, 0));
                kVar.k();
            }
            kVar.n(4);
        } catch (Throwable th) {
            kVar.n(4);
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
                if (this.f29803K) {
                    Thread.currentThread().interrupt();
                    return;
                }
                r.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
