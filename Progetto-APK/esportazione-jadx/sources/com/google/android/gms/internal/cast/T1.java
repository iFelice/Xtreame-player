package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class T1 extends H1 implements RunnableFuture {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile S1 f22545N;

    public T1(Callable callable) {
        this.f22545N = new S1(this, callable);
    }

    @Override // com.google.android.gms.internal.cast.F1
    public final String N() {
        S1 s7 = this.f22545N;
        return s7 != null ? p000a.r.g("task=[", s7.toString(), "]") : super.N();
    }

    @Override // com.google.android.gms.internal.cast.F1
    public final void O() {
        S1 s7;
        Object obj = this.f22460G;
        if ((obj instanceof C2515x1) && ((C2515x1) obj).f22819a && (s7 = this.f22545N) != null) {
            L1 l4 = S1.f22541J;
            L1 l8 = S1.f22540I;
            Runnable runnable = (Runnable) s7.get();
            if (runnable instanceof Thread) {
                K1 k8 = new K1(s7);
                k8.setExclusiveOwnerThread(Thread.currentThread());
                if (s7.compareAndSet(runnable, k8)) {
                    try {
                        Thread thread = (Thread) runnable;
                        thread.interrupt();
                        if (((Runnable) s7.getAndSet(l8)) == l4) {
                            LockSupport.unpark(thread);
                        }
                    } catch (Throwable th) {
                        if (((Runnable) s7.getAndSet(l8)) == l4) {
                            LockSupport.unpark((Thread) runnable);
                        }
                        throw th;
                    }
                }
            }
        }
        this.f22545N = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        S1 s7 = this.f22545N;
        if (s7 != null) {
            s7.run();
        }
        this.f22545N = null;
    }
}
