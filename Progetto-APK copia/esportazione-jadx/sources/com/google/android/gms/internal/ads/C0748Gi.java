package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Gi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0748Gi implements p105n3.m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0734Fj f13624G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicBoolean f13625H = new AtomicBoolean(false);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicBoolean f13626I = new AtomicBoolean(false);

    public C0748Gi(C0734Fj c0734Fj) {
        this.f13624G = c0734Fj;
    }

    @Override // p105n3.m
    public final void O2() {
    }

    @Override // p105n3.m
    public final void Y() {
        AtomicBoolean atomicBoolean = this.f13626I;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        C0734Fj c0734Fj = this.f13624G;
        c0734Fj.getClass();
        c0734Fj.Z0(new F2.G(0));
    }

    @Override // p105n3.m
    public final void k3() {
    }

    @Override // p105n3.m
    public final void r1(int i8) {
        this.f13625H.set(true);
        AtomicBoolean atomicBoolean = this.f13626I;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        C0734Fj c0734Fj = this.f13624G;
        c0734Fj.getClass();
        c0734Fj.Z0(new F2.G(0));
    }

    @Override // p105n3.m
    public final void u3() {
    }

    @Override // p105n3.m
    public final void v0() {
        C0734Fj c0734Fj = this.f13624G;
        c0734Fj.getClass();
        c0734Fj.Z0(new F2.G(2));
    }
}
