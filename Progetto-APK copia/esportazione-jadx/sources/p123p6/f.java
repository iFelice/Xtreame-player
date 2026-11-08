package p123p6;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p054g6.d;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f28241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f28242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TimeUnit f28243d = TimeUnit.SECONDS;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f28244e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f28245a;

    static {
        new e(new i("RxCachedThreadSchedulerShutdown")).a();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        i iVar = new i(iMax, "RxCachedThreadScheduler", false);
        f28241b = iVar;
        f28242c = new i(iMax, "RxCachedWorkerPoolEvictor", false);
        d dVar = new d(0L, null, iVar);
        f28244e = dVar;
        dVar.f28237H.a();
        ScheduledFuture scheduledFuture = dVar.f28239J;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = dVar.f28238I;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public f() {
        AtomicReference atomicReference;
        d dVar = f28244e;
        this.f28245a = new AtomicReference(dVar);
        d dVar2 = new d(60L, f28243d, f28241b);
        do {
            atomicReference = this.f28245a;
            if (atomicReference.compareAndSet(dVar, dVar2)) {
                return;
            }
        } while (atomicReference.get() == dVar);
        dVar2.f28237H.a();
        ScheduledFuture scheduledFuture = dVar2.f28239J;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = dVar2.f28238I;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }
}
