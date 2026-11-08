package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1413hN implements InterfaceC2138vN, InterfaceC2086uN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2138vN f19085G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public InterfaceC2086uN f19086H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C1361gN[] f19087I = new C1361gN[0];

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f19088J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f19089K;

    public C1413hN(C1879qN c1879qN, long j8) {
        this.f19085G = c1879qN;
        this.f19089K = j8;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long a(long j8) {
        this.f19088J = -9223372036854775807L;
        boolean z7 = false;
        for (C1361gN c1361gN : this.f19087I) {
            if (c1361gN != null) {
                c1361gN.f18937b = false;
            }
        }
        long jA = this.f19085G.a(j8);
        if (jA == j8) {
            z7 = true;
        } else if (jA >= 0) {
            long j9 = this.f19089K;
            if (j9 == Long.MIN_VALUE || jA <= j9) {
                z7 = true;
            }
        }
        p113o3.r.M(z7);
        return jA;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
        this.f19085G.b(j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final /* bridge */ /* synthetic */ void c(VN vn) {
        InterfaceC2086uN interfaceC2086uN = this.f19086H;
        interfaceC2086uN.getClass();
        interfaceC2086uN.c(this);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void d(InterfaceC2086uN interfaceC2086uN, long j8) {
        this.f19086H = interfaceC2086uN;
        this.f19085G.d(this, j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void e(long j8) {
        this.f19085G.e(j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final void f(InterfaceC2138vN interfaceC2138vN) {
        InterfaceC2086uN interfaceC2086uN = this.f19086H;
        interfaceC2086uN.getClass();
        interfaceC2086uN.f(this);
    }

    public final boolean g() {
        return this.f19088J != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long i(long j8, ZK zk) {
        if (j8 == 0) {
            return 0L;
        }
        long jMax = Math.max(0L, Math.min(zk.f17761a, j8));
        long j9 = this.f19089K;
        long j10 = j9 == Long.MIN_VALUE ? Long.MAX_VALUE : j9 - j8;
        long j11 = zk.f17762b;
        long jMax2 = Math.max(0L, Math.min(j11, j10));
        if (jMax != zk.f17761a || jMax2 != j11) {
            zk = new ZK(jMax, jMax2);
        }
        return this.f19085G.i(j8, zk);
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        return this.f19085G.j(ek);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005c  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long k(InterfaceC2087uO[] interfaceC2087uOArr, boolean[] zArr, UN[] unArr, boolean[] zArr2, long j8) {
        int length = unArr.length;
        this.f19087I = new C1361gN[length];
        UN[] unArr2 = new UN[length];
        int i8 = 0;
        while (true) {
            UN un = null;
            if (i8 >= unArr.length) {
                break;
            }
            C1361gN[] c1361gNArr = this.f19087I;
            C1361gN c1361gN = (C1361gN) unArr[i8];
            c1361gNArr[i8] = c1361gN;
            if (c1361gN != null) {
                un = c1361gN.f18936a;
            }
            unArr2[i8] = un;
            i8++;
        }
        long jK = this.f19085G.k(interfaceC2087uOArr, zArr, unArr2, zArr2, j8);
        long j9 = (g() && j8 == 0) ? 0L : j8;
        this.f19088J = -9223372036854775807L;
        boolean z7 = true;
        if (jK != j9) {
            if (jK >= 0) {
                long j10 = this.f19089K;
                if (j10 != Long.MIN_VALUE && jK > j10) {
                    z7 = false;
                }
            } else {
                z7 = false;
            }
        }
        p113o3.r.M(z7);
        for (int i9 = 0; i9 < unArr.length; i9++) {
            UN un2 = unArr2[i9];
            if (un2 == null) {
                this.f19087I[i9] = null;
            } else {
                C1361gN[] c1361gNArr2 = this.f19087I;
                C1361gN c1361gN2 = c1361gNArr2[i9];
                if (c1361gN2 == null || c1361gN2.f18936a != un2) {
                    c1361gNArr2[i9] = new C1361gN(this, un2);
                }
            }
            unArr[i9] = this.f19087I[i9];
        }
        return jK;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void x() {
        this.f19085G.x();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        long jZzb = this.f19085G.zzb();
        if (jZzb != Long.MIN_VALUE) {
            long j8 = this.f19089K;
            if (j8 == Long.MIN_VALUE || jZzb < j8) {
                return jZzb;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        long jZzc = this.f19085G.zzc();
        if (jZzc != Long.MIN_VALUE) {
            long j8 = this.f19089K;
            if (j8 == Long.MIN_VALUE || jZzc < j8) {
                return jZzc;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long zzd() {
        if (g()) {
            long j8 = this.f19088J;
            this.f19088J = -9223372036854775807L;
            long jZzd = zzd();
            return jZzd != -9223372036854775807L ? jZzd : j8;
        }
        long jZzd2 = this.f19085G.zzd();
        if (jZzd2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        p113o3.r.M(jZzd2 >= 0);
        long j9 = this.f19089K;
        p113o3.r.M(j9 == Long.MIN_VALUE || jZzd2 <= j9);
        return jZzd2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final C1104bO zzi() {
        return this.f19085G.zzi();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        return this.f19085G.zzp();
    }
}
