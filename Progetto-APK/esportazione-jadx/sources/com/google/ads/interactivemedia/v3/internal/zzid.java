package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzid implements zzom {
    final /* synthetic */ zzie zza;

    public zzid(zzie zzieVar) {
        this.zza = zzieVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzom
    public final void zza(int i8, long j8) {
        this.zza.zzd.zzd(i8, System.currentTimeMillis() - j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzom
    public final void zzb(int i8, long j8, String str) {
        this.zza.zzd.zze(i8, System.currentTimeMillis() - j8, str);
    }
}
