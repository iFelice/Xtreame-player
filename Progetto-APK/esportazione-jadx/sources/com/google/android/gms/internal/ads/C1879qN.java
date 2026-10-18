package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1879qN implements InterfaceC2138vN, InterfaceC2086uN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2190wN f20575G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f20576H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AbstractC1257eN f20577I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public InterfaceC2138vN f20578J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC2086uN f20579K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f20580L = -9223372036854775807L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final CO f20581M;

    public C1879qN(C2190wN c2190wN, CO co, long j8) {
        this.f20575G = c2190wN;
        this.f20581M = co;
        this.f20576H = j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long a(long j8) {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.a(j8);
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        interfaceC2138vN.b(j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final /* bridge */ /* synthetic */ void c(VN vn) {
        InterfaceC2086uN interfaceC2086uN = this.f20579K;
        int i8 = Et.f13234a;
        interfaceC2086uN.c(this);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void d(InterfaceC2086uN interfaceC2086uN, long j8) {
        this.f20579K = interfaceC2086uN;
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        if (interfaceC2138vN != null) {
            long j9 = this.f20580L;
            if (j9 == -9223372036854775807L) {
                j9 = this.f20576H;
            }
            interfaceC2138vN.d(this, j9);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void e(long j8) {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        interfaceC2138vN.e(j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final void f(InterfaceC2138vN interfaceC2138vN) {
        InterfaceC2086uN interfaceC2086uN = this.f20579K;
        int i8 = Et.f13234a;
        interfaceC2086uN.f(this);
    }

    public final void g(C2190wN c2190wN) {
        long j8 = this.f20580L;
        if (j8 == -9223372036854775807L) {
            j8 = this.f20576H;
        }
        AbstractC1257eN abstractC1257eN = this.f20577I;
        abstractC1257eN.getClass();
        InterfaceC2138vN interfaceC2138vNB = abstractC1257eN.b(c2190wN, this.f20581M, j8);
        this.f20578J = interfaceC2138vNB;
        if (this.f20579K != null) {
            interfaceC2138vNB.d(this, j8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long i(long j8, ZK zk) {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.i(j8, zk);
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        return interfaceC2138vN != null && interfaceC2138vN.j(ek);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long k(InterfaceC2087uO[] interfaceC2087uOArr, boolean[] zArr, UN[] unArr, boolean[] zArr2, long j8) {
        long j9 = this.f20580L;
        long j10 = (j9 == -9223372036854775807L || j8 != this.f20576H) ? j8 : j9;
        this.f20580L = -9223372036854775807L;
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.k(interfaceC2087uOArr, zArr, unArr, zArr2, j10);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void x() {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        if (interfaceC2138vN != null) {
            interfaceC2138vN.x();
            return;
        }
        AbstractC1257eN abstractC1257eN = this.f20577I;
        if (abstractC1257eN != null) {
            abstractC1257eN.r();
        }
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.zzb();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long zzd() {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.zzd();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final C1104bO zzi() {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        int i8 = Et.f13234a;
        return interfaceC2138vN.zzi();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        InterfaceC2138vN interfaceC2138vN = this.f20578J;
        return interfaceC2138vN != null && interfaceC2138vN.zzp();
    }
}
