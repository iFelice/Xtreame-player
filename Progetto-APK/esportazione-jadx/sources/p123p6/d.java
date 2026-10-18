package p123p6;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p070i6.a;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ConcurrentLinkedQueue f28236G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f28237H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ScheduledExecutorService f28238I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ScheduledFuture f28239J;

    public d(long j8, TimeUnit timeUnit, ThreadFactory threadFactory) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
        ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
        long nanos = timeUnit != null ? timeUnit.toNanos(j8) : 0L;
        this.f28236G = new ConcurrentLinkedQueue();
        this.f28237H = new a(0);
        if (timeUnit != null) {
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, f.f28242c);
            scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
        } else {
            scheduledExecutorServiceNewScheduledThreadPool = null;
            scheduledFutureScheduleWithFixedDelay = null;
        }
        this.f28238I = scheduledExecutorServiceNewScheduledThreadPool;
        this.f28239J = scheduledFutureScheduleWithFixedDelay;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConcurrentLinkedQueue<e> concurrentLinkedQueue = this.f28236G;
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        long jNanoTime = System.nanoTime();
        for (e eVar : concurrentLinkedQueue) {
            if (eVar.f28240I > jNanoTime) {
                return;
            }
            if (concurrentLinkedQueue.remove(eVar)) {
                a aVar = this.f28237H;
                switch (aVar.f25579G) {
                    case 0:
                        if (aVar.b(eVar)) {
                            eVar.a();
                        }
                        break;
                    default:
                        if (aVar.b(eVar)) {
                            eVar.a();
                        }
                        break;
                }
            }
        }
    }
}
