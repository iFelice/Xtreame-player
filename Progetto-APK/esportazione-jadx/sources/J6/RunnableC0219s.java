package J6;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: renamed from: J6.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC0219s extends C implements Runnable {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final RunnableC0219s f4258O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final long f4259P;
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    static {
        Long l4;
        RunnableC0219s runnableC0219s = new RunnableC0219s();
        f4258O = runnableC0219s;
        runnableC0219s.f0(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l4 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l4 = 1000L;
        }
        f4259P = timeUnit.toNanos(l4.longValue());
    }

    @Override // J6.D
    public final Thread e0() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setContextClassLoader(f4258O.getClass().getClassLoader());
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // J6.C
    public final void h0(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.h0(runnable);
    }

    public final synchronized void l0() {
        int i8 = debugStatus;
        if (i8 == 2 || i8 == 3) {
            debugStatus = 3;
            C.f4198L.set(this, null);
            C.f4199M.set(this, null);
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Y.f4222a.set(this);
        try {
            synchronized (this) {
                int i8 = debugStatus;
                if (i8 != 2 && i8 != 3) {
                    debugStatus = 1;
                    notifyAll();
                    long j8 = Long.MAX_VALUE;
                    while (true) {
                        Thread.interrupted();
                        long jK0 = k0();
                        if (jK0 == Long.MAX_VALUE) {
                            long jNanoTime = System.nanoTime();
                            if (j8 == Long.MAX_VALUE) {
                                j8 = f4259P + jNanoTime;
                            }
                            long j9 = j8 - jNanoTime;
                            if (j9 <= 0) {
                                _thread = null;
                                l0();
                                if (j0()) {
                                    return;
                                }
                                e0();
                                return;
                            }
                            if (jK0 > j9) {
                                jK0 = j9;
                            }
                        } else {
                            j8 = Long.MAX_VALUE;
                        }
                        if (jK0 > 0) {
                            int i9 = debugStatus;
                            if (i9 == 2 || i9 == 3) {
                                break;
                                break;
                            }
                            LockSupport.parkNanos(this, jK0);
                        }
                    }
                    _thread = null;
                    l0();
                    if (j0()) {
                        return;
                    }
                    e0();
                    return;
                }
                _thread = null;
                l0();
                if (j0()) {
                    return;
                }
                e0();
            }
        } catch (Throwable th) {
            _thread = null;
            l0();
            if (!j0()) {
                e0();
            }
            throw th;
        }
    }

    @Override // J6.C, J6.D
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        return "DefaultExecutor";
    }
}
