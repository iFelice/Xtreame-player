package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class B0 implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final M f12082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f12083b;

    public B0(M m7, long j8) {
        this.f12082a = m7;
        p113o3.r.J(m7.zzf() >= j8);
        this.f12083b = j8;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final boolean b(byte[] bArr, int i8, int i9, boolean z7) {
        return this.f12082a.b(bArr, 0, i9, z7);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final int c(int i8, byte[] bArr, int i9) {
        return this.f12082a.c(i8, bArr, i9);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final boolean d(byte[] bArr, int i8, int i9, boolean z7) {
        return this.f12082a.d(bArr, 0, i9, z7);
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        return this.f12082a.e(bArr, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void g(int i8, byte[] bArr, int i9) {
        this.f12082a.g(i8, bArr, i9);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void h(int i8, byte[] bArr, int i9) {
        this.f12082a.h(i8, bArr, i9);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void q(int i8) {
        this.f12082a.q(i8);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final int zzc() {
        return this.f12082a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.M
    public final long zzd() {
        return this.f12082a.zzd() - this.f12083b;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final long zze() {
        return this.f12082a.zze() - this.f12083b;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final long zzf() {
        return this.f12082a.zzf() - this.f12083b;
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void zzg(int i8) {
        this.f12082a.zzg(i8);
    }

    @Override // com.google.android.gms.internal.ads.M
    public final void zzj() {
        this.f12082a.zzj();
    }
}
