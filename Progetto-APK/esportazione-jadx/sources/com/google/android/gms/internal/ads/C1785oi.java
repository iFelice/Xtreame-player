package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1785oi implements InterfaceC0779Ij, G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Ov f20312G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2357zj f20313H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0854Nj f20314I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicBoolean f20315J = new AtomicBoolean();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AtomicBoolean f20316K = new AtomicBoolean();

    public C1785oi(Ov ov, C2357zj c2357zj, C0854Nj c0854Nj) {
        this.f20312G = ov;
        this.f20313H = c2357zj;
        this.f20314I = c0854Nj;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        if (this.f20312G.f15254e == 1 && f8.f13321j) {
            a();
        }
        if (f8.f13321j && this.f20316K.compareAndSet(false, true)) {
            C0854Nj c0854Nj = this.f20314I;
            synchronized (c0854Nj) {
                c0854Nj.Z0(new F2.G(7));
            }
        }
    }

    public final void a() {
        if (this.f20315J.compareAndSet(false, true)) {
            this.f20313H.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final synchronized void n() {
        if (this.f20312G.f15254e != 1) {
            a();
        }
    }
}
