package p123p6;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
import p054g6.d;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f28256a;

    static {
        Executors.newScheduledThreadPool(0).shutdown();
        f28256a = new i(Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), "RxSingleScheduler", true);
    }

    public k() {
        AtomicReference atomicReference = new AtomicReference();
        boolean z7 = j.f28252a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, f28256a);
        if (j.f28252a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            j.f28255d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        atomicReference.lazySet(scheduledExecutorServiceNewScheduledThreadPool);
    }
}
