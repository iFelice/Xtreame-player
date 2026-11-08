package J6;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: renamed from: J6.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0207f extends N {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f4236f;

    public C0207f(Object obj, int i8) {
        this.f4235e = i8;
        this.f4236f = obj;
    }

    @Override // J6.N
    public final boolean j() {
        switch (this.f4235e) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // J6.N
    public final void k(Throwable th) {
        int i8 = this.f4235e;
        Object obj = this.f4236f;
        switch (i8) {
            case 0:
                C0205d c0205d = (C0205d) obj;
                Q qI = i();
                c0205d.getClass();
                CancellationException cancellationExceptionL = qI.l();
                if (c0205d.n()) {
                    p185x6.e eVar = c0205d.f4232J;
                    q0.f(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
                    N6.d dVar = (N6.d) eVar;
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = N6.d.f4962N;
                        Object obj2 = atomicReferenceFieldUpdater.get(dVar);
                        p120p3.e eVar2 = N6.e.f4968b;
                        if (q0.c(obj2, eVar2)) {
                            while (!atomicReferenceFieldUpdater.compareAndSet(dVar, eVar2, cancellationExceptionL)) {
                                if (atomicReferenceFieldUpdater.get(dVar) != eVar2) {
                                }
                            }
                            break;
                        } else if (obj2 instanceof Throwable) {
                            break;
                        } else {
                            while (true) {
                                if (!atomicReferenceFieldUpdater.compareAndSet(dVar, obj2, null)) {
                                    if (atomicReferenceFieldUpdater.get(dVar) != obj2) {
                                    }
                                }
                            }
                        }
                    }
                }
                c0205d.i(cancellationExceptionL);
                if (!c0205d.n()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0205d.f4231N;
                    InterfaceC0226z interfaceC0226z = (InterfaceC0226z) atomicReferenceFieldUpdater2.get(c0205d);
                    if (interfaceC0226z != null) {
                        interfaceC0226z.a();
                        atomicReferenceFieldUpdater2.set(c0205d, U.f4221a);
                        break;
                    }
                }
                break;
            default:
                ((C6.l) obj).invoke(th);
                break;
        }
    }
}
