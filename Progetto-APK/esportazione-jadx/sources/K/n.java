package K;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final class n implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f4302G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4303H;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new m(runnable, this.f4302G, this.f4303H);
    }
}
