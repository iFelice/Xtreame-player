package p027d2;

import com.google.protobuf.U2;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicInteger f24607G = new AtomicInteger(0);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f24608H;

    public a(boolean z7) {
        this.f24608H = z7;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        StringBuilder sbO = U2.o(this.f24608H ? "WM.task-" : "androidx.work-");
        sbO.append(this.f24607G.incrementAndGet());
        return new Thread(runnable, sbO.toString());
    }
}
