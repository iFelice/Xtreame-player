package p104n2;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class o implements Executor {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f27452H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Runnable f27453I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayDeque f27451G = new ArrayDeque();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f27454J = new Object();

    public o(ExecutorService executorService) {
        this.f27452H = executorService;
    }

    public final boolean a() {
        boolean z7;
        synchronized (this.f27454J) {
            z7 = !this.f27451G.isEmpty();
        }
        return z7;
    }

    public final void b() {
        Runnable runnable = (Runnable) this.f27451G.poll();
        this.f27453I = runnable;
        if (runnable != null) {
            this.f27452H.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f27454J) {
            try {
                this.f27451G.add(new RunnableC3036k(this, runnable, 12));
                if (this.f27453I == null) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
