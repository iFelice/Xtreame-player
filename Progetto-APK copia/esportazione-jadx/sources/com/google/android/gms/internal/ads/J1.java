package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class J1 implements O1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Q f14104G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2218x f14105H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f14106I = -1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f14107J = -1;

    public J1(Q q7, C2218x c2218x) {
        this.f14104G = q7;
        this.f14105H = c2218x;
    }

    @Override // com.google.android.gms.internal.ads.O1
    public final long a(M m7) {
        long j8 = this.f14107J;
        if (j8 < 0) {
            return -1L;
        }
        this.f14107J = -1L;
        return -(j8 + 2);
    }

    @Override // com.google.android.gms.internal.ads.O1
    public final void b(long j8) {
        long[] jArr = (long[]) this.f14105H.f21779H;
        this.f14107J = jArr[Et.k(jArr, j8, true)];
    }

    @Override // com.google.android.gms.internal.ads.O1
    public final Y zze() {
        p113o3.r.M(this.f14106I != -1);
        return new P(this.f14104G, 0, this.f14106I);
    }
}
