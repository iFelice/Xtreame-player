package com.google.android.gms.internal.ads;

import B0.C0042c0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1052aO implements InterfaceC2138vN, InterfaceC2086uN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2138vN f17887G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f17888H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public InterfaceC2086uN f17889I;

    public C1052aO(InterfaceC2138vN interfaceC2138vN, long j8) {
        this.f17887G = interfaceC2138vN;
        this.f17888H = j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long a(long j8) {
        InterfaceC2138vN interfaceC2138vN = this.f17887G;
        long j9 = this.f17888H;
        return interfaceC2138vN.a(j8 - j9) + j9;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
        this.f17887G.b(j8 - this.f17888H);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final /* bridge */ /* synthetic */ void c(VN vn) {
        InterfaceC2086uN interfaceC2086uN = this.f17889I;
        interfaceC2086uN.getClass();
        interfaceC2086uN.c(this);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void d(InterfaceC2086uN interfaceC2086uN, long j8) {
        this.f17889I = interfaceC2086uN;
        this.f17887G.d(this, j8 - this.f17888H);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void e(long j8) {
        this.f17887G.e(j8 - this.f17888H);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final void f(InterfaceC2138vN interfaceC2138vN) {
        InterfaceC2086uN interfaceC2086uN = this.f17889I;
        interfaceC2086uN.getClass();
        interfaceC2086uN.f(this);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long i(long j8, ZK zk) {
        long j9 = this.f17888H;
        return this.f17887G.i(j8 - j9, zk) + j9;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        C0042c0 c0042c0 = new C0042c0();
        c0042c0.f918b = ek.f12962b;
        c0042c0.f919c = ek.f12963c;
        c0042c0.f917a = ek.f12961a - this.f17888H;
        return this.f17887G.j(new EK(c0042c0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long k(InterfaceC2087uO[] interfaceC2087uOArr, boolean[] zArr, UN[] unArr, boolean[] zArr2, long j8) {
        UN[] unArr2 = new UN[unArr.length];
        int i8 = 0;
        while (true) {
            UN un = null;
            if (i8 >= unArr.length) {
                break;
            }
            ZN zn = (ZN) unArr[i8];
            if (zn != null) {
                un = zn.f17763a;
            }
            unArr2[i8] = un;
            i8++;
        }
        long j9 = this.f17888H;
        long jK = this.f17887G.k(interfaceC2087uOArr, zArr, unArr2, zArr2, j8 - j9);
        for (int i9 = 0; i9 < unArr.length; i9++) {
            UN un2 = unArr2[i9];
            if (un2 == null) {
                unArr[i9] = null;
            } else {
                UN un3 = unArr[i9];
                if (un3 == null || ((ZN) un3).f17763a != un2) {
                    unArr[i9] = new ZN(un2, j9);
                }
            }
        }
        return jK + j9;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void x() {
        this.f17887G.x();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        long jZzb = this.f17887G.zzb();
        if (jZzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzb + this.f17888H;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        long jZzc = this.f17887G.zzc();
        if (jZzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzc + this.f17888H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long zzd() {
        long jZzd = this.f17887G.zzd();
        if (jZzd == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return jZzd + this.f17888H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final C1104bO zzi() {
        return this.f17887G.zzi();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        return this.f17887G.zzp();
    }
}
