package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzafk implements zzaey {
    private final zzafb zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzafk(zzafb zzafbVar, String str, Object[] objArr) {
        this.zza = zzafbVar;
        this.zzb = str;
        this.zzc = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.zzd = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 1;
        int i10 = 13;
        while (true) {
            int i11 = i9 + 1;
            char cCharAt2 = str.charAt(i9);
            if (cCharAt2 < 55296) {
                this.zzd = i8 | (cCharAt2 << i10);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i10;
                i10 += 13;
                i9 = i11;
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaey
    public final zzafb zza() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaey
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaey
    public final int zzc() {
        int i8 = this.zzd;
        if ((i8 & 1) != 0) {
            return 1;
        }
        return (i8 & 4) == 4 ? 3 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
