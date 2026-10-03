package N6;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4985a = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile = new n(8, false);

    public final boolean a(Object obj) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4985a;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            int iA = nVar.a(obj);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                n nVarC = nVar.c();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, nVar, nVarC) && atomicReferenceFieldUpdater.get(this) == nVar) {
                }
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4985a;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            if (nVar.b()) {
                return;
            }
            n nVarC = nVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, nVar, nVarC) && atomicReferenceFieldUpdater.get(this) == nVar) {
            }
        }
    }

    public final int c() {
        n nVar = (n) f4985a.get(this);
        nVar.getClass();
        long j8 = n.f4988f.get(nVar);
        return 1073741823 & (((int) ((j8 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j8)));
    }

    public final Object d() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4985a;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            Object objD = nVar.d();
            if (objD != n.f4989g) {
                return objD;
            }
            n nVarC = nVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, nVar, nVarC) && atomicReferenceFieldUpdater.get(this) == nVar) {
            }
        }
    }
}
