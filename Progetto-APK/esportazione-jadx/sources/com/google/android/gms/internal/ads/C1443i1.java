package com.google.android.gms.internal.ads;

import android.util.Pair;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1443i1 implements InterfaceC1597l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f19219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f19220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19221c;

    public C1443i1(long j8, long[] jArr, long[] jArr2) {
        this.f19219a = jArr;
        this.f19220b = jArr2;
        this.f19221c = j8 == -9223372036854775807L ? Et.t(jArr2[jArr2.length - 1]) : j8;
    }

    public static C1443i1 c(long j8, S0 s7, long j9) {
        int length = s7.f16392K.length;
        int i8 = length + 1;
        long[] jArr = new long[i8];
        long[] jArr2 = new long[i8];
        jArr[0] = j8;
        long j10 = 0;
        jArr2[0] = 0;
        for (int i9 = 1; i9 <= length; i9++) {
            int i10 = i9 - 1;
            j8 += (long) (s7.f16390I + s7.f16392K[i10]);
            j10 += (long) (s7.f16391J + s7.f16393L[i10]);
            jArr[i9] = j8;
            jArr2[i9] = j10;
        }
        return new C1443i1(j9, jArr, jArr2);
    }

    public static Pair d(long j8, long[] jArr, long[] jArr2) {
        int iK = Et.k(jArr, j8, true);
        long j9 = jArr[iK];
        long j10 = jArr2[iK];
        int i8 = iK + 1;
        if (i8 == jArr.length) {
            return Pair.create(Long.valueOf(j9), Long.valueOf(j10));
        }
        long j11 = jArr[i8];
        return Pair.create(Long.valueOf(j8), Long.valueOf(((long) ((j11 == j9 ? 0.0d : (j8 - j9) / (j11 - j9)) * (jArr2[i8] - j10))) + j10));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long a(long j8) {
        return Et.t(((Long) d(j8, this.f19219a, this.f19220b).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        Pair pairD = d(Et.w(Math.max(0L, Math.min(j8, this.f19221c))), this.f19220b, this.f19219a);
        Z z7 = new Z(Et.t(((Long) pairD.first).longValue()), ((Long) pairD.second).longValue());
        return new X(z7, z7);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f19221c;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final int zzc() {
        return -2147483647;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long zzd() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }
}
