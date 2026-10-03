package com.google.android.gms.internal.pal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.e3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2704e3 extends AbstractC2864y4 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f23787Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f23788R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f23789S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f23790T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f23791U;

    public C2704e3(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f23787Q = atomicReferenceFieldUpdater;
        this.f23788R = atomicReferenceFieldUpdater2;
        this.f23789S = atomicReferenceFieldUpdater3;
        this.f23790T = atomicReferenceFieldUpdater4;
        this.f23791U = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final C2736i3 E(AbstractFutureC2744j3 abstractFutureC2744j3) {
        return (C2736i3) this.f23789S.getAndSet(abstractFutureC2744j3, C2736i3.f23854c);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final void W(C2736i3 c2736i3, C2736i3 c2736i4) {
        this.f23788R.lazySet(c2736i3, c2736i4);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final void e0(C2736i3 c2736i3, Thread thread) {
        this.f23787Q.lazySet(c2736i3, thread);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final C2696d3 f(AbstractFutureC2744j3 abstractFutureC2744j3) {
        return (C2696d3) this.f23790T.getAndSet(abstractFutureC2744j3, C2696d3.f23776b);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final boolean l0(AbstractFutureC2744j3 abstractFutureC2744j3, Object obj, Object obj2) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.f23791U;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC2744j3, obj, obj2)) {
                return true;
            }
            if (atomicReferenceFieldUpdater.get(abstractFutureC2744j3) != obj && atomicReferenceFieldUpdater.get(abstractFutureC2744j3) != obj) {
                return false;
            }
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final boolean p0(AbstractFutureC2744j3 abstractFutureC2744j3, C2736i3 c2736i3, C2736i3 c2736i4) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.f23789S;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC2744j3, c2736i3, c2736i4)) {
                return true;
            }
            if (atomicReferenceFieldUpdater.get(abstractFutureC2744j3) != c2736i3 && atomicReferenceFieldUpdater.get(abstractFutureC2744j3) != c2736i3) {
                return false;
            }
        }
    }
}
