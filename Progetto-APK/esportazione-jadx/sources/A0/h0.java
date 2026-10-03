package A0;

import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p039f.RunnableC3004t;
import p094m0.o0;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Future f151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0014n f152d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f155g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f149a = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f153e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f154f = new ArrayDeque();

    public h0(ExecutorService executorService, C0014n c0014n) {
        this.f150b = executorService;
        this.f151c = executorService.submit(new d0());
        this.f152d = c0014n;
    }

    public final void a() throws InterruptedException {
        synchronized (this.f153e) {
            this.f155g = true;
            this.f154f.clear();
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f150b.submit(new e0(this, false, new C0004d(6, this, countDownLatch)));
        countDownLatch.await();
    }

    public final void b(Exception exc) {
        synchronized (this.f153e) {
            try {
                if (this.f155g) {
                    return;
                }
                this.f155g = true;
                this.f152d.d(o0.a(exc));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(g0 g0Var) {
        if (d()) {
            try {
                g0Var.run();
                return;
            } catch (Exception e8) {
                b(e8);
                return;
            }
        }
        try {
            this.f150b.submit(new RunnableC3004t(13, this, g0Var)).get(500L, TimeUnit.MILLISECONDS);
        } catch (RuntimeException | ExecutionException | TimeoutException e9) {
            b(e9);
        }
    }

    public final boolean d() throws InterruptedException {
        try {
            return Thread.currentThread() == ((Thread) this.f151c.get(500L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e8) {
            throw e8;
        } catch (Exception e9) {
            b(e9);
            return false;
        }
    }

    public final void e(C0017q c0017q) {
        H1.i(!d());
        synchronized (this.f153e) {
            this.f155g = true;
            this.f154f.clear();
        }
        this.f150b.submit(new e0(this, false, c0017q));
        if (this.f149a) {
            this.f150b.shutdown();
            if (this.f150b.awaitTermination(500L, TimeUnit.MILLISECONDS)) {
                return;
            }
            this.f152d.d(new o0("Release timed out. OpenGL resources may not be cleaned up properly."));
        }
    }

    public final void f(g0 g0Var, boolean z7) {
        synchronized (this.f153e) {
            if (this.f155g && z7) {
                return;
            }
            try {
                this.f150b.submit(new e0(this, z7, g0Var));
                e = null;
            } catch (RejectedExecutionException e8) {
                e = e8;
            }
            if (e != null) {
                b(e);
            }
        }
    }

    public final void g(g0 g0Var) {
        synchronized (this.f153e) {
            try {
                if (this.f155g) {
                    return;
                }
                this.f154f.add(g0Var);
                f(new f0(), true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        try {
            H1.i(d());
        } catch (InterruptedException e8) {
            Thread.currentThread().interrupt();
            b(e8);
        }
    }
}
