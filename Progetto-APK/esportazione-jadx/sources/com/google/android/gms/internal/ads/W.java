package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class W implements Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f17141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f17142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17144d;

    public W(long j8, long[] jArr, long[] jArr2) {
        int length = jArr.length;
        int length2 = jArr2.length;
        p113o3.r.J(length == length2);
        boolean z7 = length2 > 0;
        this.f17144d = z7;
        if (!z7 || jArr2[0] <= 0) {
            this.f17141a = jArr;
            this.f17142b = jArr2;
        } else {
            int i8 = length2 + 1;
            long[] jArr3 = new long[i8];
            this.f17141a = jArr3;
            long[] jArr4 = new long[i8];
            this.f17142b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        }
        this.f17143c = j8;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        if (!this.f17144d) {
            Z z7 = Z.f17700c;
            return new X(z7, z7);
        }
        long[] jArr = this.f17142b;
        int iK = Et.k(jArr, j8, true);
        long j9 = jArr[iK];
        long[] jArr2 = this.f17141a;
        Z z8 = new Z(j9, jArr2[iK]);
        if (j9 == j8 || iK == jArr.length - 1) {
            return new X(z8, z8);
        }
        int i8 = iK + 1;
        return new X(z8, new Z(jArr[i8], jArr2[i8]));
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f17143c;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return this.f17144d;
    }
}
