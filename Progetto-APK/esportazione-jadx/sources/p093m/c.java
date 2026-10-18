package p093m;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26650G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicInteger f26651H = new AtomicInteger(1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f26652I;

    public c(String str) {
        this.f26652I = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f26651H;
        switch (this.f26650G) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("arch_disk_io_" + atomicInteger.getAndIncrement());
                return thread;
            default:
                return new Thread(runnable, "AdWorker(" + ((String) this.f26652I) + ") #" + atomicInteger.getAndIncrement());
        }
    }

    public c(e eVar) {
        this.f26652I = eVar;
    }
}
