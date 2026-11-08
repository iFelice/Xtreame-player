package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2282yB extends Q3.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f22004g;

    public C2282yB(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f22000c = atomicReferenceFieldUpdater;
        this.f22001d = atomicReferenceFieldUpdater2;
        this.f22002e = atomicReferenceFieldUpdater3;
        this.f22003f = atomicReferenceFieldUpdater4;
        this.f22004g = atomicReferenceFieldUpdater5;
    }

    @Override // Q3.b
    public final C2230xB B(GB gb) {
        return (C2230xB) this.f22003f.getAndSet(gb, C2230xB.f21851d);
    }

    @Override // Q3.b
    public final FB F(GB gb) {
        return (FB) this.f22002e.getAndSet(gb, FB.f13328c);
    }

    @Override // Q3.b
    public final void M(FB fb, FB fb2) {
        this.f22001d.lazySet(fb, fb2);
    }

    @Override // Q3.b
    public final void P(FB fb, Thread thread) {
        this.f22000c.lazySet(fb, thread);
    }

    @Override // Q3.b
    public final boolean T(GB gb, C2230xB c2230xB, C2230xB c2230xB2) {
        return Cw.s0(this.f22003f, gb, c2230xB, c2230xB2);
    }

    @Override // Q3.b
    public final boolean W(GB gb, Object obj, Object obj2) {
        return Cw.s0(this.f22004g, gb, obj, obj2);
    }

    @Override // Q3.b
    public final boolean Z(GB gb, FB fb, FB fb2) {
        return Cw.s0(this.f22002e, gb, fb, fb2);
    }
}
