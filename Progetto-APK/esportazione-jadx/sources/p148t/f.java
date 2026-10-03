package p148t;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class f extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f30144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f30145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f30146g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f30147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f30148i;

    public f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f30144e = atomicReferenceFieldUpdater;
        this.f30145f = atomicReferenceFieldUpdater2;
        this.f30146g = atomicReferenceFieldUpdater3;
        this.f30147h = atomicReferenceFieldUpdater4;
        this.f30148i = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean b(h hVar, e eVar, e eVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f30147h;
            if (atomicReferenceFieldUpdater.compareAndSet(hVar, eVar, eVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(hVar) == eVar);
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean c(h hVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f30148i;
            if (atomicReferenceFieldUpdater.compareAndSet(hVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(hVar) == obj);
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean d(h hVar, g gVar, g gVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f30146g;
            if (atomicReferenceFieldUpdater.compareAndSet(hVar, gVar, gVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(hVar) == gVar);
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void j(g gVar, g gVar2) {
        this.f30145f.lazySet(gVar, gVar2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void k(g gVar, Thread thread) {
        this.f30144e.lazySet(gVar, thread);
    }
}
