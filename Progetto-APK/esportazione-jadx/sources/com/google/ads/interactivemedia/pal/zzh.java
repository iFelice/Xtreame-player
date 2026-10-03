package com.google.ads.interactivemedia.pal;

import com.google.android.gms.internal.pal.A0;

/* JADX INFO: loaded from: classes.dex */
final class zzh extends zzv {
    private A0 zza;
    private A0 zzb;
    private A0 zzc;
    private A0 zzd;
    private A0 zze;
    private int zzf;
    private byte zzg;

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzv zza(int i8) {
        this.zzf = i8;
        this.zzg = (byte) 1;
        return this;
    }

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzv zzb(A0 a8) {
        this.zzc = a8;
        return this;
    }

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzv zzc(A0 a8) {
        this.zza = a8;
        return this;
    }

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzv zzd(A0 a8) {
        this.zzb = a8;
        return this;
    }

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzv zze(A0 a8) {
        this.zze = a8;
        return this;
    }

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzv zzf(A0 a8) {
        this.zzd = a8;
        return this;
    }

    @Override // com.google.ads.interactivemedia.pal.zzv
    public final zzw zzg() {
        A0 a8;
        A0 a9;
        A0 a10;
        A0 a11;
        A0 a12;
        if (this.zzg == 1 && (a8 = this.zza) != null && (a9 = this.zzb) != null && (a10 = this.zzc) != null && (a11 = this.zzd) != null && (a12 = this.zze) != null) {
            return new zzj(a8, a9, a10, a11, a12, this.zzf, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" nonceLoaderInitTime");
        }
        if (this.zzb == null) {
            sb.append(" nonceRequestTime");
        }
        if (this.zzc == null) {
            sb.append(" nonceLoadedTime");
        }
        if (this.zzd == null) {
            sb.append(" resourceFetchStartTime");
        }
        if (this.zze == null) {
            sb.append(" resourceFetchEndTime");
        }
        if (this.zzg == 0) {
            sb.append(" nonceLength");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
