package com.google.ads.interactivemedia.v3.internal;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zznz extends zznv {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final long zzd;
    private final long zze;

    public /* synthetic */ zznz(String str, boolean z7, boolean z8, boolean z9, long j8, boolean z10, long j9, zzny zznyVar) {
        this.zza = str;
        this.zzb = z7;
        this.zzc = z8;
        this.zzd = j8;
        this.zze = j9;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zznv) {
            zznv zznvVar = (zznv) obj;
            if (this.zza.equals(zznvVar.zzd()) && this.zzb == zznvVar.zzh() && this.zzc == zznvVar.zzg()) {
                zznvVar.zzf();
                if (this.zzd == zznvVar.zzb()) {
                    zznvVar.zze();
                    if (this.zze == zznvVar.zza()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ (true != this.zzb ? 1237 : 1231)) * 1000003) ^ (true != this.zzc ? 1237 : 1231)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.zzd)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.zze);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdShield2Options{clientVersion=");
        sb.append(this.zza);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(this.zzb);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(this.zzc);
        sb.append(", enableQuerySignalsTimeout=false, querySignalsTimeoutMs=");
        sb.append(this.zzd);
        sb.append(", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds=");
        return r.i(sb, this.zze, "}");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final long zzb() {
        return this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final String zzd() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final boolean zze() {
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final boolean zzg() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zznv
    public final boolean zzh() {
        return this.zzb;
    }
}
