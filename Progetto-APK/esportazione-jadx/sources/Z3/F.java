package Z3;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class F implements Executor {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ThreadPoolExecutor f8252H;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicInteger f8251G = new AtomicInteger(1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public WeakReference f8253I = new WeakReference(null);

    public F() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: Z3.E
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                F f8 = this.f8250G;
                Thread thread = new Thread(runnable, p000a.r.f("Google consent worker #", f8.f8251G.getAndIncrement()));
                f8.f8253I = new WeakReference(thread);
                return thread;
            }
        });
        this.f8252H = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f8253I.get()) {
            runnable.run();
        } else {
            this.f8252H.execute(runnable);
        }
    }
}
