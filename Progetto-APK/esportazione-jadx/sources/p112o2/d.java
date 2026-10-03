package p112o2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class d extends k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f27850G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f27851H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f27852I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f27853J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f27854K;

    public d(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f27850G = atomicReferenceFieldUpdater;
        this.f27851H = atomicReferenceFieldUpdater2;
        this.f27852I = atomicReferenceFieldUpdater3;
        this.f27853J = atomicReferenceFieldUpdater4;
        this.f27854K = atomicReferenceFieldUpdater5;
    }

    @Override // p190y4.k
    public final void b0(g gVar, g gVar2) {
        this.f27851H.lazySet(gVar, gVar2);
    }

    @Override // p190y4.k
    public final void c0(g gVar, Thread thread) {
        this.f27850G.lazySet(gVar, thread);
    }

    @Override // p190y4.k
    public final boolean k(h hVar, c cVar, c cVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f27853J;
            if (atomicReferenceFieldUpdater.compareAndSet(hVar, cVar, cVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(hVar) == cVar);
        return false;
    }

    @Override // p190y4.k
    public final boolean l(h hVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f27854K;
            if (atomicReferenceFieldUpdater.compareAndSet(hVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(hVar) == obj);
        return false;
    }

    @Override // p190y4.k
    public final boolean m(h hVar, g gVar, g gVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f27852I;
            if (atomicReferenceFieldUpdater.compareAndSet(hVar, gVar, gVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(hVar) == gVar);
        return false;
    }
}
