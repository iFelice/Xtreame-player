package y2;

import java.util.concurrent.ThreadFactory;
import p086l.RunnableC3036k;

/* JADX INFO: renamed from: y2.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC3229a implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f31272G;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThreadFactoryC3229a() {
        this(1);
        this.f31272G = 1;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f31272G) {
            case 0:
                return new Thread(new RunnableC3036k(15, this, runnable), "glide-active-resources");
            default:
                return new p171w0.j(this, runnable);
        }
    }

    public /* synthetic */ ThreadFactoryC3229a(int i8) {
        this.f31272G = i8;
    }
}
