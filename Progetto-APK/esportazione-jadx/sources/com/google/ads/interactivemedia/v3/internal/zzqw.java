package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzqw extends zzqr {
    final Object zza;
    int zzb;
    final /* synthetic */ zzrf zzc;

    public zzqw(zzrf zzrfVar, int i8) {
        this.zzc = zzrfVar;
        this.zza = zzrfVar.zza[i8];
        this.zzb = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqr, java.util.Map.Entry
    public final Object getKey() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqr, java.util.Map.Entry
    public final Object getValue() {
        zza();
        int i8 = this.zzb;
        if (i8 == -1) {
            return null;
        }
        return this.zzc.zzb[i8];
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqr, java.util.Map.Entry
    public final Object setValue(Object obj) {
        zza();
        int i8 = this.zzb;
        if (i8 == -1) {
            this.zzc.zzg(this.zza, obj, false);
            return null;
        }
        Object obj2 = this.zzc.zzb[i8];
        if (zzqe.zza(obj2, obj)) {
            return obj;
        }
        this.zzc.zzw(this.zzb, obj, false);
        return obj2;
    }

    public final void zza() {
        int i8 = this.zzb;
        if (i8 != -1) {
            zzrf zzrfVar = this.zzc;
            if (i8 <= zzrfVar.zzc && zzqe.zza(zzrfVar.zza[i8], this.zza)) {
                return;
            }
        }
        zzrf zzrfVar2 = this.zzc;
        Object obj = this.zza;
        this.zzb = zzrfVar2.zzc(obj, zzrg.zzc(obj));
    }
}
