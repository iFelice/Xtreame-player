package com.google.ads.interactivemedia.v3.internal;

import A0.O;

/* JADX INFO: loaded from: classes.dex */
class zzacv extends zzacu {
    protected final byte[] zza;

    public zzacv(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzacw) || zzd() != ((zzacw) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzacv)) {
            return obj.equals(this);
        }
        zzacv zzacvVar = (zzacv) obj;
        int iZzn = zzn();
        int iZzn2 = zzacvVar.zzn();
        if (iZzn == 0 || iZzn2 == 0 || iZzn == iZzn2) {
            return zzg(zzacvVar, 0, zzd());
        }
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public byte zza(int i8) {
        return this.zza[i8];
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public byte zzb(int i8) {
        return this.zza[i8];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public void zze(byte[] bArr, int i8, int i9, int i10) {
        System.arraycopy(this.zza, i8, bArr, i9, i10);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacu
    public final boolean zzg(zzacw zzacwVar, int i8, int i9) {
        if (i9 > zzacwVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + i9 + zzd());
        }
        int i10 = i8 + i9;
        if (i10 > zzacwVar.zzd()) {
            int iZzd = zzacwVar.zzd();
            StringBuilder sbD = O.D("Ran off end of other: ", i8, ", ", i9, ", ");
            sbD.append(iZzd);
            throw new IllegalArgumentException(sbD.toString());
        }
        if (!(zzacwVar instanceof zzacv)) {
            return zzacwVar.zzj(i8, i10).equals(zzj(0, i9));
        }
        zzacv zzacvVar = (zzacv) zzacwVar;
        byte[] bArr = this.zza;
        byte[] bArr2 = zzacvVar.zza;
        int iZzc = zzc() + i9;
        int iZzc2 = zzc();
        int iZzc3 = zzacvVar.zzc() + i8;
        while (iZzc2 < iZzc) {
            if (bArr[iZzc2] != bArr2[iZzc3]) {
                return false;
            }
            iZzc2++;
            iZzc3++;
        }
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final int zzi(int i8, int i9, int i10) {
        return zzaee.zzb(i8, this.zza, zzc() + i9, i10);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final zzacw zzj(int i8, int i9) {
        int iZzm = zzacw.zzm(i8, i9, zzd());
        return iZzm == 0 ? zzacw.zzb : new zzacr(this.zza, zzc() + i8, iZzm);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final zzada zzk() {
        return zzada.zzE(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final void zzl(zzaco zzacoVar) {
        ((zzadc) zzacoVar).zzc(this.zza, zzc(), zzd());
    }
}
