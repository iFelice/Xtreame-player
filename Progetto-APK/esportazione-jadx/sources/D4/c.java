package D4;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ ThreadFactory f2394G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f2395H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AtomicLong f2396I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Boolean f2397J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Integer f2398K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f2399L;

    public c(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f2394G = threadFactory;
        this.f2395H = str;
        this.f2396I = atomicLong;
        this.f2397J = bool;
        this.f2398K = num;
        this.f2399L = uncaughtExceptionHandler;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f2394G.newThread(runnable);
        Objects.requireNonNull(threadNewThread);
        String str = this.f2395H;
        if (str != null) {
            AtomicLong atomicLong = this.f2396I;
            Objects.requireNonNull(atomicLong);
            threadNewThread.setName(String.format(Locale.ROOT, str, Long.valueOf(atomicLong.getAndIncrement())));
        }
        Boolean bool = this.f2397J;
        if (bool != null) {
            threadNewThread.setDaemon(bool.booleanValue());
        }
        Integer num = this.f2398K;
        if (num != null) {
            threadNewThread.setPriority(num.intValue());
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f2399L;
        if (uncaughtExceptionHandler != null) {
            threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
        return threadNewThread;
    }
}
