package p199z6;

import J6.C0205d;
import J6.InterfaceC0226z;
import J6.U;
import N6.d;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p185x6.e;
import p185x6.f;
import p185x6.h;
import p185x6.j;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f31928H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient e f31929I;

    public c(e eVar) {
        this(eVar, eVar != null ? eVar.getContext() : null);
    }

    @Override // p199z6.a
    public final void g() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        e eVar = this.f31929I;
        if (eVar != null && eVar != this) {
            j jVar = this.f31928H;
            q0.e(jVar);
            h hVarK = jVar.k(f.f31226G);
            q0.e(hVarK);
            d dVar = (d) eVar;
            do {
                atomicReferenceFieldUpdater = d.f4962N;
            } while (atomicReferenceFieldUpdater.get(dVar) == N6.e.f4968b);
            Object obj = atomicReferenceFieldUpdater.get(dVar);
            C0205d c0205d = obj instanceof C0205d ? (C0205d) obj : null;
            if (c0205d != null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0205d.f4231N;
                InterfaceC0226z interfaceC0226z = (InterfaceC0226z) atomicReferenceFieldUpdater2.get(c0205d);
                if (interfaceC0226z != null) {
                    interfaceC0226z.a();
                    atomicReferenceFieldUpdater2.set(c0205d, U.f4221a);
                }
            }
        }
        this.f31929I = b.f31927G;
    }

    @Override // p185x6.e
    public final j getContext() {
        j jVar = this.f31928H;
        q0.e(jVar);
        return jVar;
    }

    public c(e eVar, j jVar) {
        super(eVar);
        this.f31928H = jVar;
    }
}
