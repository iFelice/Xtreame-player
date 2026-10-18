package p135r2;

import B0.C0041c;
import D0.U;
import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import p086l.RunnableC3036k;
import p143s2.d;

/* JADX INFO: loaded from: classes.dex */
public final class c extends Thread {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final boolean f29789M = r.f29844a;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final BlockingQueue f29790G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final BlockingQueue f29791H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final d f29792I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final U f29793J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile boolean f29794K = false;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final s f29795L;

    public c(PriorityBlockingQueue priorityBlockingQueue, PriorityBlockingQueue priorityBlockingQueue2, d dVar, U u7) {
        this.f29790G = priorityBlockingQueue;
        this.f29791H = priorityBlockingQueue2;
        this.f29792I = dVar;
        this.f29793J = u7;
        this.f29795L = new s(this, priorityBlockingQueue2, u7);
    }

    private void a() {
        k kVar = (k) this.f29790G.take();
        kVar.a("cache-queue-take");
        kVar.n(1);
        try {
            kVar.j();
            b bVarA = this.f29792I.a(kVar.f());
            if (bVarA == null) {
                kVar.a("cache-miss");
                if (!this.f29795L.a(kVar)) {
                    this.f29791H.put(kVar);
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (bVarA.f29785e < jCurrentTimeMillis) {
                    kVar.a("cache-hit-expired");
                    kVar.f29824R = bVarA;
                    if (!this.f29795L.a(kVar)) {
                        this.f29791H.put(kVar);
                    }
                } else {
                    kVar.a("cache-hit");
                    C0041c c0041cM = kVar.m(new i(bVarA.f29781a, bVarA.f29787g));
                    kVar.a("cache-hit-parsed");
                    if (!(((o) c0041cM.f916J) == null)) {
                        kVar.a("cache-parsing-failed");
                        d dVar = this.f29792I;
                        String strF = kVar.f();
                        synchronized (dVar) {
                            b bVarA2 = dVar.a(strF);
                            if (bVarA2 != null) {
                                bVarA2.f29786f = 0L;
                                bVarA2.f29785e = 0L;
                                dVar.f(strF, bVarA2);
                            }
                        }
                        kVar.f29824R = null;
                        if (!this.f29795L.a(kVar)) {
                            this.f29791H.put(kVar);
                        }
                    } else if (bVarA.f29786f < jCurrentTimeMillis) {
                        kVar.a("cache-hit-refresh-needed");
                        kVar.f29824R = bVarA;
                        c0041cM.f913G = true;
                        if (this.f29795L.a(kVar)) {
                            this.f29793J.J(kVar, c0041cM, null);
                        } else {
                            this.f29793J.J(kVar, c0041cM, new RunnableC3036k(14, this, kVar));
                        }
                    } else {
                        this.f29793J.J(kVar, c0041cM, null);
                    }
                }
            }
            kVar.n(2);
        } catch (Throwable th) {
            kVar.n(2);
            throw th;
        }
    }

    public final void b() {
        this.f29794K = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f29789M) {
            r.d("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f29792I.d();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f29794K) {
                    Thread.currentThread().interrupt();
                    return;
                }
                r.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
