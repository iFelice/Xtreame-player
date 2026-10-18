package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzqx extends zzqr {
    final zzrf zza;
    final Object zzb;
    int zzc;

    public zzqx(zzrf zzrfVar, int i8) {
        this.zza = zzrfVar;
        this.zzb = zzrfVar.zzb[i8];
        this.zzc = i8;
    }

    private final void zza() {
        int i8 = this.zzc;
        if (i8 != -1) {
            zzrf zzrfVar = this.zza;
            if (i8 <= zzrfVar.zzc && zzqe.zza(this.zzb, zzrfVar.zzb[i8])) {
                return;
            }
        }
        zzrf zzrfVar2 = this.zza;
        Object obj = this.zzb;
        this.zzc = zzrfVar2.zzd(obj, zzrg.zzc(obj));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqr, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqr, java.util.Map.Entry
    public final Object getValue() {
        zza();
        int i8 = this.zzc;
        if (i8 == -1) {
            return null;
        }
        return this.zza.zza[i8];
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzqr, java.util.Map.Entry
    public final Object setValue(Object obj) {
        zza();
        int i8 = this.zzc;
        if (i8 == -1) {
            this.zza.zzh(this.zzb, obj, false);
            return null;
        }
        Object obj2 = this.zza.zza[i8];
        if (zzqe.zza(obj2, obj)) {
            return obj;
        }
        this.zza.zzv(this.zzc, obj, false);
        return obj2;
    }
}
