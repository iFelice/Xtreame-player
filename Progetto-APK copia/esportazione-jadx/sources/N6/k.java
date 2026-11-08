package N6;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4982a = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4983b = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_prev$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4984c = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public final boolean d(k kVar, int i8) {
        while (true) {
            k kVarE = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4983b;
            if (kVarE == null) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                while (true) {
                    kVarE = (k) obj;
                    if (!kVarE.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(kVarE);
                }
            }
            if (kVarE instanceof i) {
                return (((i) kVarE).f4981d & i8) == 0 && kVarE.d(kVar, i8);
            }
            atomicReferenceFieldUpdater.set(kVar, kVarE);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4982a;
            atomicReferenceFieldUpdater2.set(kVar, this);
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(kVarE, this, kVar)) {
                    kVar.f(this);
                    return true;
                }
            } while (atomicReferenceFieldUpdater2.get(kVarE) == this);
        }
    }

    public final k e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object obj;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4983b;
            k kVar = (k) atomicReferenceFieldUpdater2.get(this);
            k kVar2 = kVar;
            while (true) {
                k kVar3 = null;
                while (true) {
                    atomicReferenceFieldUpdater = f4982a;
                    obj = atomicReferenceFieldUpdater.get(kVar2);
                    if (obj == this) {
                        if (kVar == kVar2) {
                            return kVar2;
                        }
                        while (!atomicReferenceFieldUpdater2.compareAndSet(this, kVar, kVar2)) {
                            if (atomicReferenceFieldUpdater2.get(this) != kVar) {
                                break;
                            }
                        }
                        return kVar2;
                    }
                    if (h()) {
                        return null;
                    }
                    if (!(obj instanceof r)) {
                        q0.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                        kVar3 = kVar2;
                        kVar2 = (k) obj;
                    } else {
                        if (kVar3 != null) {
                            break;
                        }
                        kVar2 = (k) atomicReferenceFieldUpdater2.get(kVar2);
                    }
                }
                k kVar4 = ((r) obj).f4997a;
                while (!atomicReferenceFieldUpdater.compareAndSet(kVar3, kVar2, kVar4)) {
                    if (atomicReferenceFieldUpdater.get(kVar3) != kVar2) {
                        break;
                    }
                }
                kVar2 = kVar3;
            }
        }
    }

    public final void f(k kVar) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4983b;
            k kVar2 = (k) atomicReferenceFieldUpdater.get(kVar);
            if (f4982a.get(this) != kVar) {
                return;
            }
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(kVar, kVar2, this)) {
                    if (h()) {
                        kVar.e();
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(kVar) == kVar2);
        }
    }

    public final k g() {
        k kVar;
        Object obj = f4982a.get(this);
        r rVar = obj instanceof r ? (r) obj : null;
        if (rVar != null && (kVar = rVar.f4997a) != null) {
            return kVar;
        }
        q0.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (k) obj;
    }

    public boolean h() {
        return f4982a.get(this) instanceof r;
    }

    public String toString() {
        return new j(this) + '@' + J6.r.i(this);
    }
}
