package com.google.android.gms.internal.ads;

import W0.C0374g;

/* JADX INFO: loaded from: classes.dex */
public final class A implements Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final B f11910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f11911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f11912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f11913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f11914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f11915f;

    public A(B b8, long j8, long j9, long j10, long j11, long j12) {
        this.f11910a = b8;
        this.f11911b = j8;
        this.f11912c = j9;
        this.f11913d = j10;
        this.f11914e = j11;
        this.f11915f = j12;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        Z z7 = new Z(j8, C0374g.b(this.f11910a.c(j8), 0L, this.f11912c, this.f11913d, this.f11914e, this.f11915f));
        return new X(z7, z7);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f11911b;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }
}
