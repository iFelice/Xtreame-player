package N4;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Executor {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Logger f4946L = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Executor f4947G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayDeque f4948H = new ArrayDeque();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4949I = 1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f4950J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final d f4951K = new d(this, 0);

    public e(Executor executor) {
        com.bumptech.glide.c.h(executor);
        this.f4947G = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        com.bumptech.glide.c.h(runnable);
        synchronized (this.f4948H) {
            int i8 = this.f4949I;
            if (i8 != 4 && i8 != 3) {
                long j8 = this.f4950J;
                d dVar = new d(this, runnable);
                this.f4948H.add(dVar);
                this.f4949I = 2;
                try {
                    this.f4947G.execute(this.f4951K);
                    if (this.f4949I != 2) {
                        return;
                    }
                    synchronized (this.f4948H) {
                        try {
                            if (this.f4950J == j8 && this.f4949I == 2) {
                                this.f4949I = 3;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e8) {
                    synchronized (this.f4948H) {
                        try {
                            int i9 = this.f4949I;
                            boolean z7 = true;
                            if ((i9 != 1 && i9 != 2) || !this.f4948H.removeLastOccurrence(dVar)) {
                                z7 = false;
                            }
                            if (!(e8 instanceof RejectedExecutionException) || z7) {
                                throw e8;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                }
            }
            this.f4948H.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f4947G + "}";
    }
}
