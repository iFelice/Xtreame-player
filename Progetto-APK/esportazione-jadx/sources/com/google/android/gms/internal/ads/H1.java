package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class H1 implements Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ I1 f13678a;

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        I1 i8 = this.f13678a;
        BigInteger bigIntegerValueOf = BigInteger.valueOf((((long) i8.f13837J.f28175e) * j8) / 1000000);
        long j9 = i8.f13836I;
        long j10 = i8.f13835H;
        Z z7 = new Z(j8, Math.max(j10, Math.min((bigIntegerValueOf.multiply(BigInteger.valueOf(j9 - j10)).divide(BigInteger.valueOf(i8.f13839L)).longValue() + j10) - 30000, j9 - 1)));
        return new X(z7, z7);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        I1 i8 = this.f13678a;
        p118p1.j jVar = i8.f13837J;
        return (i8.f13839L * 1000000) / ((long) jVar.f28175e);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }
}
