package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzadc extends zzadf {
    private final byte[] zzb;
    private final int zzc;
    private int zzd;

    public zzadc(byte[] bArr, int i8, int i9) {
        super(null);
        int length = bArr.length;
        if (((length - i9) | i9) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i9)));
        }
        this.zzb = bArr;
        this.zzd = 0;
        this.zzc = i9;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final int zza() {
        return this.zzc - this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzb(byte b8) throws zzadd {
        try {
            byte[] bArr = this.zzb;
            int i8 = this.zzd;
            this.zzd = i8 + 1;
            bArr[i8] = b8;
        } catch (IndexOutOfBoundsException e8) {
            throw new zzadd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e8);
        }
    }

    public final void zzc(byte[] bArr, int i8, int i9) {
        try {
            System.arraycopy(bArr, i8, this.zzb, this.zzd, i9);
            this.zzd += i9;
        } catch (IndexOutOfBoundsException e8) {
            throw new zzadd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), Integer.valueOf(i9)), e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzd(int i8, boolean z7) throws zzadd {
        zzt(i8 << 3);
        zzb(z7 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zze(int i8, zzacw zzacwVar) throws zzadd {
        zzt((i8 << 3) | 2);
        zzt(zzacwVar.zzd());
        zzacwVar.zzl(this);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzf(int i8, int i9) throws zzadd {
        zzt((i8 << 3) | 5);
        zzg(i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzg(int i8) throws zzadd {
        try {
            byte[] bArr = this.zzb;
            int i9 = this.zzd;
            bArr[i9] = (byte) (i8 & 255);
            bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
            bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
            this.zzd = i9 + 4;
            bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new zzadd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzh(int i8, long j8) throws zzadd {
        zzt((i8 << 3) | 1);
        zzi(j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzi(long j8) throws zzadd {
        try {
            byte[] bArr = this.zzb;
            int i8 = this.zzd;
            bArr[i8] = (byte) (((int) j8) & 255);
            bArr[i8 + 1] = (byte) (((int) (j8 >> 8)) & 255);
            bArr[i8 + 2] = (byte) (((int) (j8 >> 16)) & 255);
            bArr[i8 + 3] = (byte) (((int) (j8 >> 24)) & 255);
            bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
            bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
            bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
            this.zzd = i8 + 8;
            bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new zzadd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzj(int i8, int i9) throws zzadd {
        zzt(i8 << 3);
        zzk(i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzk(int i8) throws zzadd {
        if (i8 >= 0) {
            zzt(i8);
        } else {
            zzv(i8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzl(byte[] bArr, int i8, int i9) {
        zzc(bArr, 0, i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzm(int i8, zzafb zzafbVar, zzaft zzaftVar) throws zzadd {
        zzt((i8 << 3) | 2);
        zzt(((zzach) zzafbVar).zzat(zzaftVar));
        zzaftVar.zzj(zzafbVar, this.zza);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzn(int i8, zzafb zzafbVar) throws zzadd {
        zzt(11);
        zzs(2, i8);
        zzt(26);
        zzt(zzafbVar.zzax());
        zzafbVar.zzaR(this);
        zzt(12);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzo(int i8, zzacw zzacwVar) throws zzadd {
        zzt(11);
        zzs(2, i8);
        zze(3, zzacwVar);
        zzt(12);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzp(int i8, String str) throws zzadd {
        zzt((i8 << 3) | 2);
        zzq(str);
    }

    public final void zzq(String str) throws zzadd {
        int i8 = this.zzd;
        try {
            int iZzz = zzadf.zzz(str.length() * 3);
            int iZzz2 = zzadf.zzz(str.length());
            if (iZzz2 != iZzz) {
                zzt(zzagr.zzc(str));
                byte[] bArr = this.zzb;
                int i9 = this.zzd;
                this.zzd = zzagr.zzb(str, bArr, i9, this.zzc - i9);
                return;
            }
            int i10 = i8 + iZzz2;
            this.zzd = i10;
            int iZzb = zzagr.zzb(str, this.zzb, i10, this.zzc - i10);
            this.zzd = i8;
            zzt((iZzb - i8) - iZzz2);
            this.zzd = iZzb;
        } catch (zzagq e8) {
            this.zzd = i8;
            zzC(str, e8);
        } catch (IndexOutOfBoundsException e9) {
            throw new zzadd(e9);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzr(int i8, int i9) throws zzadd {
        zzt((i8 << 3) | i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzs(int i8, int i9) throws zzadd {
        zzt(i8 << 3);
        zzt(i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzt(int i8) throws zzadd {
        while ((i8 & (-128)) != 0) {
            try {
                byte[] bArr = this.zzb;
                int i9 = this.zzd;
                this.zzd = i9 + 1;
                bArr[i9] = (byte) ((i8 | 128) & 255);
                i8 >>>= 7;
            } catch (IndexOutOfBoundsException e8) {
                throw new zzadd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e8);
            }
        }
        byte[] bArr2 = this.zzb;
        int i10 = this.zzd;
        this.zzd = i10 + 1;
        bArr2[i10] = (byte) i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzu(int i8, long j8) throws zzadd {
        zzt(i8 << 3);
        zzv(j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzadf
    public final void zzv(long j8) throws zzadd {
        if (!zzadf.zzc || this.zzc - this.zzd < 10) {
            while ((j8 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzb;
                    int i8 = this.zzd;
                    this.zzd = i8 + 1;
                    bArr[i8] = (byte) ((((int) j8) | 128) & 255);
                    j8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new zzadd(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e8);
                }
            }
            byte[] bArr2 = this.zzb;
            int i9 = this.zzd;
            this.zzd = i9 + 1;
            bArr2[i9] = (byte) j8;
            return;
        }
        while (true) {
            int i10 = (int) j8;
            if ((j8 & (-128)) == 0) {
                byte[] bArr3 = this.zzb;
                int i11 = this.zzd;
                this.zzd = 1 + i11;
                zzago.zzn(bArr3, i11, (byte) i10);
                return;
            }
            byte[] bArr4 = this.zzb;
            int i12 = this.zzd;
            this.zzd = i12 + 1;
            zzago.zzn(bArr4, i12, (byte) ((i10 | 128) & 255));
            j8 >>>= 7;
        }
    }
}
