package p039f;

import U0.r;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import z4.q0;

/* JADX INFO: renamed from: f.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC3005u implements Executor {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f25112H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Runnable f25113I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25111G = 0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f25114J = new Object();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ArrayDeque f25115K = new ArrayDeque();

    public ExecutorC3005u(ExecutorC3006v executorC3006v) {
        this.f25112H = executorC3006v;
    }

    private void a(Runnable runnable) {
        synchronized (this.f25114J) {
            try {
                this.f25115K.add(new RunnableC3004t(0, this, runnable));
                if (this.f25113I == null) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c() {
        synchronized (this.f25114J) {
            try {
                Runnable runnable = (Runnable) this.f25115K.poll();
                this.f25113I = runnable;
                if (runnable != null) {
                    this.f25112H.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        switch (this.f25111G) {
            case 0:
                c();
                return;
            default:
                synchronized (this.f25114J) {
                    Object objPoll = this.f25115K.poll();
                    Runnable runnable = (Runnable) objPoll;
                    this.f25113I = runnable;
                    if (objPoll != null) {
                        this.f25112H.execute(runnable);
                    }
                    break;
                }
                return;
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f25111G) {
            case 0:
                a(runnable);
                return;
            default:
                q0.h(runnable, "command");
                synchronized (this.f25114J) {
                    this.f25115K.offer(new r(7, runnable, this));
                    if (this.f25113I == null) {
                        b();
                    }
                    break;
                }
                return;
        }
    }
}
