package N6;

import J6.AbstractC0214m;
import J6.AbstractC0220t;
import J6.InterfaceC0223w;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends AbstractC0214m implements InterfaceC0223w {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4975N = AtomicIntegerFieldUpdater.newUpdater(h.class, "runningWorkers$volatile");

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC0214m f4976I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f4977J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f4978K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final l f4979L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Object f4980M;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* JADX WARN: Multi-variable type inference failed */
    public h(AbstractC0214m abstractC0214m, int i8, String str) {
        if ((abstractC0214m instanceof InterfaceC0223w ? (InterfaceC0223w) abstractC0214m : null) == null) {
            int i9 = AbstractC0220t.f4260a;
        }
        this.f4976I = abstractC0214m;
        this.f4977J = i8;
        this.f4978K = str;
        this.f4979L = new l();
        this.f4980M = new Object();
    }

    @Override // J6.AbstractC0214m
    public final void a0(p185x6.j jVar, Runnable runnable) {
        this.f4979L.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4975N;
        if (atomicIntegerFieldUpdater.get(this) < this.f4977J) {
            synchronized (this.f4980M) {
                if (atomicIntegerFieldUpdater.get(this) >= this.f4977J) {
                    return;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
                Runnable runnableD0 = d0();
                if (runnableD0 == null) {
                    return;
                }
                this.f4976I.a0(this, new p123p6.m(1, this, runnableD0));
            }
        }
    }

    public final Runnable d0() {
        while (true) {
            Runnable runnable = (Runnable) this.f4979L.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f4980M) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4975N;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f4979L.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        String str = this.f4978K;
        if (str != null) {
            return str;
        }
        return this.f4976I + ".limitedParallelism(" + this.f4977J + ')';
    }
}
