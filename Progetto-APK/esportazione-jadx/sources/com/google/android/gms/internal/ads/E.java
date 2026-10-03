package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class E implements Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f12918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f12919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f12920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f12921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f12922f;

    public E(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f12918b = iArr;
        this.f12919c = jArr;
        this.f12920d = jArr2;
        this.f12921e = jArr3;
        int length = iArr.length;
        this.f12917a = length;
        if (length <= 0) {
            this.f12922f = 0L;
        } else {
            int i8 = length - 1;
            this.f12922f = jArr2[i8] + jArr3[i8];
        }
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        long[] jArr = this.f12921e;
        int iK = Et.k(jArr, j8, true);
        long j9 = jArr[iK];
        long[] jArr2 = this.f12919c;
        Z z7 = new Z(j9, jArr2[iK]);
        if (j9 >= j8 || iK == this.f12917a - 1) {
            return new X(z7, z7);
        }
        int i8 = iK + 1;
        return new X(z7, new Z(jArr[i8], jArr2[i8]));
    }

    public final String toString() {
        String string = Arrays.toString(this.f12918b);
        String string2 = Arrays.toString(this.f12919c);
        String string3 = Arrays.toString(this.f12921e);
        String string4 = Arrays.toString(this.f12920d);
        StringBuilder sb = new StringBuilder("ChunkIndex(length=");
        sb.append(this.f12917a);
        sb.append(", sizes=");
        sb.append(string);
        sb.append(", offsets=");
        p148t.a.h(sb, string2, ", timeUs=", string3, ", durationsUs=");
        return p000a.r.j(sb, string4, ")");
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f12922f;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }
}
