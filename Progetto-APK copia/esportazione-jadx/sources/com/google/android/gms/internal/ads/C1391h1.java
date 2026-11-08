package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1391h1 implements InterfaceC1597l1, Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f19039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f19040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f19041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f19044f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f19045g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f19046h;

    public C1391h1(int i8, int i9, long j8, long j9) {
        long jMax;
        this.f19039a = j8;
        this.f19040b = j9;
        this.f19041c = i9 == -1 ? 1 : i9;
        this.f19043e = i8;
        if (j8 == -1) {
            this.f19042d = -1L;
            jMax = -9223372036854775807L;
        } else {
            long j10 = j8 - j9;
            this.f19042d = j10;
            jMax = (Math.max(0L, j10) * 8000000) / ((long) i8);
        }
        this.f19044f = jMax;
        this.f19045g = i8;
        this.f19046h = j8 == -1 ? -1L : j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long a(long j8) {
        return (Math.max(0L, j8 - this.f19040b) * 8000000) / ((long) this.f19043e);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        long j9 = this.f19040b;
        long j10 = this.f19042d;
        if (j10 == -1) {
            Z z7 = new Z(0L, j9);
            return new X(z7, z7);
        }
        int i8 = this.f19043e;
        long j11 = this.f19041c;
        long jMin = (((((long) i8) * j8) / 8000000) / j11) * j11;
        if (j10 != -1) {
            jMin = Math.min(jMin, j10 - j11);
        }
        long jMax = Math.max(jMin, 0L) + j9;
        long jMax2 = (Math.max(0L, jMax - j9) * 8000000) / ((long) i8);
        Z z8 = new Z(jMax2, jMax);
        if (j10 != -1 && jMax2 < j8) {
            long j12 = jMax + j11;
            if (j12 < this.f19039a) {
                return new X(z8, new Z((Math.max(0L, j12 - j9) * 8000000) / ((long) i8), j12));
            }
        }
        return new X(z8, z8);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f19044f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final int zzc() {
        return this.f19045g;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long zzd() {
        return this.f19046h;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return this.f19042d != -1;
    }
}
