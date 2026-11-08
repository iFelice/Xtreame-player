package B2;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ThreadFactory f1200G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1201H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final b f1202I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f1203J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AtomicInteger f1204K = new AtomicInteger();

    public a(ThreadFactory threadFactory, String str, b bVar, boolean z7) {
        this.f1200G = threadFactory;
        this.f1201H = str;
        this.f1202I = bVar;
        this.f1203J = z7;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f1200G.newThread(new RunnableC3036k(16, this, runnable));
        threadNewThread.setName("glide-" + this.f1201H + "-thread-" + this.f1204K.getAndIncrement());
        return threadNewThread;
    }
}
