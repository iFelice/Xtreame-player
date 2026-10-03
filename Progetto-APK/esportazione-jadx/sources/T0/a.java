package T0;

import N.C0260i;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Executor f6511G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC3172j f6512H;

    public a(ExecutorService executorService, C0260i c0260i) {
        this.f6511G = executorService;
        this.f6512H = c0260i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f6511G.execute(runnable);
    }
}
