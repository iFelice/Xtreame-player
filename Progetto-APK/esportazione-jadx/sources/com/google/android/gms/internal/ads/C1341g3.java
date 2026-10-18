package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import p094m0.C3125h;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1341g3 implements Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C3125h f18895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f18897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f18898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f18899e;

    public C1341g3(C3125h c3125h, int i8, long j8, long j9) {
        this.f18895a = c3125h;
        this.f18896b = i8;
        this.f18897c = j8;
        long j10 = (j9 - j8) / ((long) c3125h.f26865d);
        this.f18898d = j10;
        this.f18899e = c(j10);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        long j9 = this.f18896b;
        C3125h c3125h = this.f18895a;
        long j10 = (((long) c3125h.f26864c) * j8) / (j9 * 1000000);
        long j11 = this.f18898d;
        long jMax = Math.max(0L, Math.min(j10, j11 - 1));
        long j12 = ((long) c3125h.f26865d) * jMax;
        long jC = c(jMax);
        long j13 = this.f18897c;
        Z z7 = new Z(jC, j12 + j13);
        if (jC >= j8 || jMax == j11 - 1) {
            return new X(z7, z7);
        }
        long j14 = jMax + 1;
        return new X(z7, new Z(c(j14), (j14 * ((long) c3125h.f26865d)) + j13));
    }

    public final long c(long j8) {
        return Et.v(j8 * ((long) this.f18896b), 1000000L, this.f18895a.f26864c, RoundingMode.FLOOR);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f18899e;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }
}
