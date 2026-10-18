package p021c4;

import com.bumptech.glide.c;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: c4.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0591j0 extends AbstractC0610s0 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final AtomicLong f11221Q = new AtomicLong(Long.MIN_VALUE);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C0588i0 f11222I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C0588i0 f11223J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final PriorityBlockingQueue f11224K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final LinkedBlockingQueue f11225L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C0582g0 f11226M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0582g0 f11227N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Object f11228O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Semaphore f11229P;

    public C0591j0(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11228O = new Object();
        this.f11229P = new Semaphore(2);
        this.f11224K = new PriorityBlockingQueue();
        this.f11225L = new LinkedBlockingQueue();
        this.f11226M = new C0582g0(this, "Thread death: Uncaught exception on worker thread");
        this.f11227N = new C0582g0(this, "Thread death: Uncaught exception on network thread");
    }

    public final void A(C0585h0 c0585h0) {
        synchronized (this.f11228O) {
            try {
                PriorityBlockingQueue priorityBlockingQueue = this.f11224K;
                priorityBlockingQueue.add(c0585h0);
                C0588i0 c0588i0 = this.f11222I;
                if (c0588i0 == null) {
                    C0588i0 c0588i1 = new C0588i0(this, "Measurement Worker", priorityBlockingQueue);
                    this.f11222I = c0588i1;
                    c0588i1.setUncaughtExceptionHandler(this.f11226M);
                    this.f11222I.start();
                } else {
                    c0588i0.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p018c1.d
    public final void m() {
        if (Thread.currentThread() != this.f11222I) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // p021c4.AbstractC0610s0
    public final boolean n() {
        return false;
    }

    public final void q() {
        if (Thread.currentThread() != this.f11223J) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final Object r(AtomicReference atomicReference, long j8, String str, Runnable runnable) {
        synchronized (atomicReference) {
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(runnable);
            try {
                atomicReference.wait(j8);
            } catch (InterruptedException unused) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.a("Interrupted waiting for ".concat(str));
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            T t8 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t8);
            t8.f11042O.a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final C0585h0 s(Callable callable) {
        o();
        C0585h0 c0585h0 = new C0585h0(this, callable, false);
        if (Thread.currentThread() == this.f11222I) {
            if (!this.f11224K.isEmpty()) {
                T t7 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.a("Callable skipped the worker queue.");
            }
            c0585h0.run();
        } else {
            A(c0585h0);
        }
        return c0585h0;
    }

    public final C0585h0 t(Callable callable) {
        o();
        C0585h0 c0585h0 = new C0585h0(this, callable, true);
        if (Thread.currentThread() == this.f11222I) {
            c0585h0.run();
        } else {
            A(c0585h0);
        }
        return c0585h0;
    }

    public final void u() {
        if (Thread.currentThread() == this.f11222I) {
            throw new IllegalStateException("Call not expected from worker thread");
        }
    }

    public final void w(V v5) {
        o();
        C0585h0 c0585h0 = new C0585h0(this, v5, false, "Task exception on network thread");
        synchronized (this.f11228O) {
            try {
                LinkedBlockingQueue linkedBlockingQueue = this.f11225L;
                linkedBlockingQueue.add(c0585h0);
                C0588i0 c0588i0 = this.f11223J;
                if (c0588i0 == null) {
                    C0588i0 c0588i1 = new C0588i0(this, "Measurement Network", linkedBlockingQueue);
                    this.f11223J = c0588i1;
                    c0588i1.setUncaughtExceptionHandler(this.f11227N);
                    this.f11223J.start();
                } else {
                    c0588i0.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void x(Runnable runnable) {
        o();
        c.h(runnable);
        A(new C0585h0(this, runnable, false, "Task exception on worker thread"));
    }

    public final void y(Runnable runnable) {
        o();
        A(new C0585h0(this, runnable, true, "Task exception on worker thread"));
    }

    public final boolean z() {
        return Thread.currentThread() == this.f11222I;
    }
}
