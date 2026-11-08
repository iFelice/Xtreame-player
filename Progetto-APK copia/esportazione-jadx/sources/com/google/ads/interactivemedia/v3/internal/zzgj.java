package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzgj {
    private final byte[] zza = new byte[256];
    private int zzb;
    private int zzc;

    public zzgj(byte[] bArr) {
        for (int i8 = 0; i8 < 256; i8++) {
            this.zza[i8] = (byte) i8;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < 256; i10++) {
            byte[] bArr2 = this.zza;
            byte b8 = bArr2[i10];
            i9 = (i9 + b8 + bArr[i10 % bArr.length]) & 255;
            bArr2[i10] = bArr2[i9];
            bArr2[i9] = b8;
        }
        this.zzb = 0;
        this.zzc = 0;
    }

    public final void zza(byte[] bArr) {
        int i8 = this.zzb;
        int i9 = this.zzc;
        for (int i10 = 0; i10 < 256; i10++) {
            byte[] bArr2 = this.zza;
            i8 = (i8 + 1) & 255;
            byte b8 = bArr2[i8];
            i9 = (i9 + b8) & 255;
            bArr2[i8] = bArr2[i9];
            bArr2[i9] = b8;
            bArr[i10] = (byte) (bArr2[(bArr2[i8] + b8) & 255] ^ bArr[i10]);
        }
        this.zzb = i8;
        this.zzc = i9;
    }
}
