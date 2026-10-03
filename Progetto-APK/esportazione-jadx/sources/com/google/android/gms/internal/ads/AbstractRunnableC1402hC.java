package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractRunnableC1402hC extends AtomicReference implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final RunnableC2171w4 f19061G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final RunnableC2171w4 f19062H;

    static {
        int i8 = 5;
        int i9 = 0;
        f19061G = new RunnableC2171w4(i8, i9);
        f19062H = new RunnableC2171w4(i8, i9);
    }

    public abstract Object a();

    public abstract String b();

    public final void c(Thread thread) {
        Runnable runnable = (Runnable) get();
        RunnableC1350gC runnableC1350gC = null;
        boolean z7 = false;
        int i8 = 0;
        while (true) {
            boolean z8 = runnable instanceof RunnableC1350gC;
            RunnableC2171w4 runnableC2171w4 = f19062H;
            if (!z8) {
                if (runnable != runnableC2171w4) {
                    break;
                }
            } else {
                runnableC1350gC = (RunnableC1350gC) runnable;
            }
            i8++;
            if (i8 <= 1000) {
                Thread.yield();
            } else if (runnable == runnableC2171w4 || compareAndSet(runnable, runnableC2171w4)) {
                z7 = Thread.interrupted() || z7;
                LockSupport.park(runnableC1350gC);
            }
            runnable = (Runnable) get();
        }
        if (z7) {
            thread.interrupt();
        }
    }

    public abstract void d(Throwable th);

    public abstract void e(Object obj);

    public abstract boolean f();

    public final void g() {
        RunnableC2171w4 runnableC2171w4 = f19062H;
        RunnableC2171w4 runnableC2171w5 = f19061G;
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            RunnableC1350gC runnableC1350gC = new RunnableC1350gC(this);
            runnableC1350gC.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, runnableC1350gC)) {
                try {
                    ((Thread) runnable).interrupt();
                    if (((Runnable) getAndSet(runnableC2171w5)) == runnableC2171w4) {
                    }
                } finally {
                    if (((Runnable) getAndSet(runnableC2171w5)) == runnableC2171w4) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        Object objA = null;
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z7 = !f();
            RunnableC2171w4 runnableC2171w4 = f19061G;
            if (z7) {
                try {
                    objA = a();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(threadCurrentThread, runnableC2171w4)) {
                            c(threadCurrentThread);
                        }
                        d(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(threadCurrentThread, runnableC2171w4)) {
                            c(threadCurrentThread);
                        }
                        e(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(threadCurrentThread, runnableC2171w4)) {
                c(threadCurrentThread);
            }
            if (z7) {
                e(objA);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String strG;
        Runnable runnable = (Runnable) get();
        if (runnable == f19061G) {
            strG = "running=[DONE]";
        } else if (runnable instanceof RunnableC1350gC) {
            strG = "running=[INTERRUPTED]";
        } else {
            strG = runnable instanceof Thread ? p000a.r.g("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]";
        }
        return com.google.protobuf.U2.l(strG, ", ", b());
    }
}
