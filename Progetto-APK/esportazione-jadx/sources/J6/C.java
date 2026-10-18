package J6;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes2.dex */
public abstract class C extends D implements InterfaceC0223w {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4198L = AtomicReferenceFieldUpdater.newUpdater(C.class, Object.class, "_queue$volatile");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4199M = AtomicReferenceFieldUpdater.newUpdater(C.class, Object.class, "_delayed$volatile");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4200N = AtomicIntegerFieldUpdater.newUpdater(C.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;

    @Override // J6.AbstractC0214m
    public final void a0(p185x6.j jVar, Runnable runnable) {
        h0(runnable);
    }

    public void h0(Runnable runnable) {
        i0();
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4198L;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (f4200N.get(this) == 0) {
                if (obj == null) {
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == null);
                } else if (obj instanceof N6.n) {
                    N6.n nVar = (N6.n) obj;
                    int iA = nVar.a(runnable);
                    if (iA == 0) {
                        break;
                    }
                    if (iA == 1) {
                        N6.n nVarC = nVar.c();
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, nVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
                        }
                    } else if (iA != 2) {
                    }
                } else if (obj != r.f4250c) {
                    N6.n nVar2 = new N6.n(8, true);
                    nVar2.a((Runnable) obj);
                    nVar2.a(runnable);
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj, nVar2)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == obj);
                }
            }
            RunnableC0219s.f4258O.h0(runnable);
            return;
        }
        Thread threadE0 = e0();
        if (Thread.currentThread() != threadE0) {
            LockSupport.unpark(threadE0);
        }
    }

    public final void i0() {
    }

    public final boolean j0() {
        p162u6.i iVar = this.f4203K;
        if (iVar != null && !iVar.isEmpty()) {
            return false;
        }
        Object obj = f4198L.get(this);
        if (obj != null) {
            if (obj instanceof N6.n) {
                long j8 = N6.n.f4988f.get((N6.n) obj);
                if (((int) (1073741823 & j8)) != ((int) ((j8 & 1152921503533105152L) >> 30))) {
                    return false;
                }
            } else if (obj != r.f4250c) {
                return false;
            }
        }
        return true;
    }

    public final long k0() {
        Runnable runnable;
        if (g0()) {
            return 0L;
        }
        i0();
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4198L;
            Object obj = atomicReferenceFieldUpdater.get(this);
            runnable = null;
            if (obj == null) {
                break;
            }
            if (obj instanceof N6.n) {
                N6.n nVar = (N6.n) obj;
                Object objD = nVar.d();
                if (objD != N6.n.f4989g) {
                    runnable = (Runnable) objD;
                    break;
                }
                N6.n nVarC = nVar.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, nVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            } else {
                if (obj == r.f4250c) {
                    break;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        runnable = (Runnable) obj;
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj);
            }
        }
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        p162u6.i iVar = this.f4203K;
        if (((iVar == null || iVar.isEmpty()) ? Long.MAX_VALUE : 0L) == 0) {
            return 0L;
        }
        Object obj2 = f4198L.get(this);
        if (obj2 == null) {
        } else if (obj2 instanceof N6.n) {
            long j8 = N6.n.f4988f.get((N6.n) obj2);
            if (((int) (1073741823 & j8)) != ((int) ((j8 & 1152921503533105152L) >> 30))) {
                return 0L;
            }
        } else if (obj2 != r.f4250c) {
            return 0L;
        }
        return Long.MAX_VALUE;
    }

    @Override // J6.D
    public void shutdown() {
        Y.f4222a.set(null);
        f4200N.set(this, 1);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4198L;
            Object obj = atomicReferenceFieldUpdater.get(this);
            p120p3.e eVar = r.f4250c;
            if (obj == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, eVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
            } else if (obj instanceof N6.n) {
                ((N6.n) obj).b();
                break;
            } else {
                if (obj == eVar) {
                    break;
                }
                N6.n nVar = new N6.n(8, true);
                nVar.a((Runnable) obj);
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, nVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj);
            }
        }
        while (k0() <= 0) {
        }
        System.nanoTime();
    }
}
