package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class D0 implements N {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f12736G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final N f12737H;

    public D0(long j8, N n7) {
        this.f12736G = j8;
        this.f12737H = n7;
    }

    @Override // com.google.android.gms.internal.ads.N
    public final void f() {
        this.f12737H.f();
    }

    @Override // com.google.android.gms.internal.ads.N
    public final void g(Y y7) {
        this.f12737H.g(new C0(this, y7, y7));
    }

    @Override // com.google.android.gms.internal.ads.N
    public final InterfaceC1234e0 h(int i8, int i9) {
        return this.f12737H.h(i8, i9);
    }
}
