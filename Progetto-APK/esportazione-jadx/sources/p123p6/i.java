package p123p6;

import S3.d;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import p000a.r;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends AtomicLong implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f28249G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f28250H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f28251I;

    public i(String str) {
        this(5, str, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f28249G + '-' + incrementAndGet();
        Thread dVar = this.f28251I ? new d(runnable, str) : new Thread(runnable, str);
        dVar.setPriority(this.f28250H);
        dVar.setDaemon(true);
        return dVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return r.j(new StringBuilder("RxThreadFactory["), this.f28249G, "]");
    }

    public i(int i8, String str, boolean z7) {
        this.f28249G = str;
        this.f28250H = i8;
        this.f28251I = z7;
    }
}
