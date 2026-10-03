package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class A1 extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22413g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22415i;

    public A1(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f22411e = atomicReferenceFieldUpdater;
        this.f22412f = atomicReferenceFieldUpdater2;
        this.f22413g = atomicReferenceFieldUpdater3;
        this.f22414h = atomicReferenceFieldUpdater4;
        this.f22415i = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final C2523z1 p(F1 f8) {
        return (C2523z1) this.f22414h.getAndSet(f8, C2523z1.f22856d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final E1 q(F1 f8) {
        return (E1) this.f22413g.getAndSet(f8, E1.f22441c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void t(E1 e8, E1 e9) {
        this.f22412f.lazySet(e8, e9);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void u(E1 e8, Thread thread) {
        this.f22411e.lazySet(e8, thread);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean v(F1 f8, C2523z1 c2523z1, C2523z1 c2523z2) {
        return Cw.h0(this.f22414h, f8, c2523z1, c2523z2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean w(F1 f8, Object obj, Object obj2) {
        return Cw.h0(this.f22415i, f8, obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean x(F1 f8, E1 e8, E1 e9) {
        return Cw.h0(this.f22413g, f8, e8, e9);
    }
}
