package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzhu implements zzom {
    final /* synthetic */ zznt zza;

    public zzhu(zznt zzntVar) {
        this.zza = zzntVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzom
    public final void zza(int i8, long j8) {
        this.zza.zzd(i8, System.currentTimeMillis() - j8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzom
    public final void zzb(int i8, long j8, String str) {
        this.zza.zze(i8, System.currentTimeMillis() - j8, str);
    }
}
