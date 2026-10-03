package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzacr extends zzacv {
    private final int zzc;
    private final int zzd;

    public zzacr(byte[] bArr, int i8, int i9) {
        super(bArr);
        zzacw.zzm(i8, i8 + i9, bArr.length);
        this.zzc = i8;
        this.zzd = i9;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacv, com.google.ads.interactivemedia.v3.internal.zzacw
    public final byte zza(int i8) {
        zzacw.zzr(i8, this.zzd);
        return ((zzacv) this).zza[this.zzc + i8];
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacv, com.google.ads.interactivemedia.v3.internal.zzacw
    public final byte zzb(int i8) {
        return ((zzacv) this).zza[this.zzc + i8];
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacv
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacv, com.google.ads.interactivemedia.v3.internal.zzacw
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacv, com.google.ads.interactivemedia.v3.internal.zzacw
    public final void zze(byte[] bArr, int i8, int i9, int i10) {
        System.arraycopy(((zzacv) this).zza, this.zzc + i8, bArr, i9, i10);
    }
}
