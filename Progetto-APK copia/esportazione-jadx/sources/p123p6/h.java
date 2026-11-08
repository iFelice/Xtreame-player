package p123p6;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import p054g6.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ScheduledExecutorService f28247G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile boolean f28248H;

    public h(ThreadFactory threadFactory) {
        boolean z7 = j.f28252a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (j.f28252a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            j.f28255d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.f28247G = scheduledExecutorServiceNewScheduledThreadPool;
    }

    @Override // p070i6.b
    public final void a() {
        if (this.f28248H) {
            return;
        }
        this.f28248H = true;
        this.f28247G.shutdownNow();
    }
}
