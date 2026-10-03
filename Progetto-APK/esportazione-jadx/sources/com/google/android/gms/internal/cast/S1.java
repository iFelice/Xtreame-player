package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class S1 extends AtomicReference implements Runnable {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final L1 f22540I = new L1();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final L1 f22541J = new L1();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Callable f22542G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ T1 f22543H;

    public S1(T1 t7, Callable callable) {
        this.f22543H = t7;
        callable.getClass();
        this.f22542G = callable;
    }

    @Override // java.lang.Runnable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void run() {
        Object objCall;
        Thread threadCurrentThread = Thread.currentThread();
        if (compareAndSet(null, threadCurrentThread)) {
            T1 t7 = this.f22543H;
            boolean z7 = !t7.isDone();
            L1 l4 = f22540I;
            if (z7) {
                try {
                    objCall = this.f22542G.call();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(threadCurrentThread, l4)) {
                            c(threadCurrentThread);
                        }
                        boolean zW = F1.f22458L.w(t7, null, new C2519y1(th));
                        if (zW) {
                            return;
                        } else {
                            return;
                        }
                    } finally {
                        if (!compareAndSet(threadCurrentThread, l4)) {
                            c(threadCurrentThread);
                        }
                        t7.getClass();
                        if (F1.f22458L.w(t7, null, F1.f22459M)) {
                            F1.Q(t7);
                        }
                    }
                }
            } else {
                objCall = null;
            }
            if (!compareAndSet(threadCurrentThread, l4)) {
                c(threadCurrentThread);
            }
            if (z7) {
                t7.getClass();
                if (objCall == null) {
                    objCall = F1.f22459M;
                }
                if (F1.f22458L.w(t7, null, objCall)) {
                    F1.Q(t7);
                }
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        String strG;
        Runnable runnable = (Runnable) get();
        if (runnable == f22540I) {
            strG = "running=[DONE]";
        } else if (runnable instanceof K1) {
            strG = "running=[INTERRUPTED]";
        } else {
            strG = runnable instanceof Thread ? p000a.r.g("running=[RUNNING ON ", ((Thread) runnable).getName(), "]") : "running=[NOT STARTED YET]";
        }
        return com.google.protobuf.U2.l(strG, ", ", this.f22542G.toString());
    }

    public final void c(Thread thread) {
        Runnable runnable = (Runnable) get();
        K1 k8 = null;
        boolean z7 = false;
        int i8 = 0;
        while (true) {
            boolean z8 = runnable instanceof K1;
            L1 l4 = f22541J;
            if (!z8) {
                if (runnable != l4) {
                    break;
                }
            } else {
                k8 = (K1) runnable;
            }
            i8++;
            if (i8 <= 1000) {
                Thread.yield();
            } else if (runnable == l4 || compareAndSet(runnable, l4)) {
                z7 = Thread.interrupted() || z7;
                LockSupport.park(k8);
            }
            runnable = (Runnable) get();
        }
        if (z7) {
            thread.interrupt();
        }
    }
}
