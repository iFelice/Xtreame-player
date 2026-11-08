package J6;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class N extends N6.k implements InterfaceC0226z, G {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Q f4210d;

    @Override // J6.InterfaceC0226z
    public final void a() {
        Q qI = i();
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = Q.f4219G;
            Object obj = atomicReferenceFieldUpdater.get(qI);
            if (obj instanceof N) {
                if (obj != this) {
                    return;
                }
                A a8 = r.f4257j;
                while (!atomicReferenceFieldUpdater.compareAndSet(qI, obj, a8)) {
                    if (atomicReferenceFieldUpdater.get(qI) != obj) {
                    }
                }
                return;
            }
            if (!(obj instanceof G) || ((G) obj).c() == null) {
                return;
            }
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = N6.k.f4982a;
                Object obj2 = atomicReferenceFieldUpdater2.get(this);
                if (obj2 instanceof N6.r) {
                    N6.k kVar = ((N6.r) obj2).f4997a;
                    return;
                }
                if (obj2 == this) {
                    return;
                }
                q0.f(obj2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                N6.k kVar2 = (N6.k) obj2;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = N6.k.f4984c;
                N6.r rVar = (N6.r) atomicReferenceFieldUpdater3.get(kVar2);
                if (rVar == null) {
                    rVar = new N6.r(kVar2);
                    atomicReferenceFieldUpdater3.set(kVar2, rVar);
                }
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj2, rVar)) {
                        kVar2.e();
                        return;
                    }
                } while (atomicReferenceFieldUpdater2.get(this) == obj2);
            }
        }
    }

    @Override // J6.G
    public final T c() {
        return null;
    }

    public final Q i() {
        Q q7 = this.f4210d;
        if (q7 != null) {
            return q7;
        }
        q0.I("job");
        throw null;
    }

    @Override // J6.G
    public final boolean isActive() {
        return true;
    }

    public abstract boolean j();

    public abstract void k(Throwable th);

    @Override // N6.k
    public final String toString() {
        return getClass().getSimpleName() + '@' + r.i(this) + "[job@" + r.i(i()) + ']';
    }
}
