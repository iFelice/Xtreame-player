package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class NB extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f14892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicIntegerFieldUpdater f14893f;

    public NB(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.f14892e = atomicReferenceFieldUpdater;
        this.f14893f = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final int o(PB pb) {
        return this.f14893f.decrementAndGet(pb);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void s(PB pb, Set set) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.f14892e;
            if (atomicReferenceFieldUpdater.compareAndSet(pb, null, set)) {
                return;
            }
            if (atomicReferenceFieldUpdater.get(pb) != null && atomicReferenceFieldUpdater.get(pb) != null) {
                return;
            }
        }
    }
}
