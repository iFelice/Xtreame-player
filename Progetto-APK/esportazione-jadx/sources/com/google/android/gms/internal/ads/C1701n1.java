package com.google.android.gms.internal.ads;

import W0.C0369b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1701n1 implements InterfaceC1597l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f20043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f20045c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f20046d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f20047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f20048f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long[] f20049g;

    public C1701n1(long j8, int i8, long j9, int i9, long j10, long[] jArr) {
        this.f20043a = j8;
        this.f20044b = i8;
        this.f20045c = j9;
        this.f20046d = i9;
        this.f20047e = j10;
        this.f20049g = jArr;
        this.f20048f = j10 != -1 ? j8 + j10 : -1L;
    }

    public static C1701n1 c(p103n1.h hVar, long j8) {
        long[] jArr;
        long jA = hVar.a();
        if (jA == -9223372036854775807L) {
            return null;
        }
        C0369b c0369b = hVar.f27417f;
        long j9 = hVar.f27413b;
        return (j9 == -1 || (jArr = hVar.f27416e) == null) ? new C1701n1(j8, c0369b.f7375c, jA, c0369b.f7378f, -1L, null) : new C1701n1(j8, c0369b.f7375c, jA, c0369b.f7378f, j9, jArr);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long a(long j8) {
        if (!zzh()) {
            return 0L;
        }
        long j9 = j8 - this.f20043a;
        if (j9 <= this.f20044b) {
            return 0L;
        }
        long[] jArr = this.f20049g;
        p113o3.r.x(jArr);
        double d6 = (j9 * 256.0d) / this.f20047e;
        int iK = Et.k(jArr, (long) d6, true);
        long j10 = this.f20045c;
        long j11 = (((long) iK) * j10) / 100;
        long j12 = jArr[iK];
        int i8 = iK + 1;
        long j13 = (j10 * ((long) i8)) / 100;
        long j14 = iK == 99 ? 256L : jArr[i8];
        return Math.round((j12 == j14 ? 0.0d : (d6 - j12) / (j14 - j12)) * (j13 - j11)) + j11;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        boolean zZzh = zzh();
        int i8 = this.f20044b;
        long j9 = this.f20043a;
        if (!zZzh) {
            Z z7 = new Z(0L, j9 + ((long) i8));
            return new X(z7, z7);
        }
        long j10 = this.f20045c;
        long jMax = Math.max(0L, Math.min(j8, j10));
        double d6 = (jMax * 100.0d) / j10;
        double d8 = 0.0d;
        if (d6 > 0.0d) {
            if (d6 >= 100.0d) {
                d8 = 256.0d;
            } else {
                int i9 = (int) d6;
                long[] jArr = this.f20049g;
                p113o3.r.x(jArr);
                double d9 = jArr[i9];
                d8 = (((i9 == 99 ? 256.0d : jArr[i9 + 1]) - d9) * (d6 - ((double) i9))) + d9;
            }
        }
        long j11 = this.f20047e;
        Z z8 = new Z(jMax, Math.max(i8, Math.min(Math.round((d8 / 256.0d) * j11), j11 - 1)) + j9);
        return new X(z8, z8);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f20045c;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final int zzc() {
        return this.f20046d;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long zzd() {
        return this.f20048f;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return this.f20049g != null;
    }
}
