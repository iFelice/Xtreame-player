package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzagj extends zzagh {
    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* bridge */ /* synthetic */ Object zza(Object obj) {
        zzady zzadyVar = (zzady) obj;
        zzagi zzagiVar = zzadyVar.zzc;
        if (zzagiVar != zzagi.zzc()) {
            return zzagiVar;
        }
        zzagi zzagiVarZzf = zzagi.zzf();
        zzadyVar.zzc = zzagiVarZzf;
        return zzagiVarZzf;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* synthetic */ Object zzb() {
        return zzagi.zzf();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* synthetic */ Object zzc(Object obj) {
        zzagi zzagiVar = (zzagi) obj;
        zzagiVar.zzh();
        return zzagiVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* bridge */ /* synthetic */ void zzd(Object obj, int i8, int i9) {
        ((zzagi) obj).zzj((i8 << 3) | 5, Integer.valueOf(i9));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* bridge */ /* synthetic */ void zze(Object obj, int i8, long j8) {
        ((zzagi) obj).zzj((i8 << 3) | 1, Long.valueOf(j8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* bridge */ /* synthetic */ void zzf(Object obj, int i8, Object obj2) {
        ((zzagi) obj).zzj((i8 << 3) | 3, (zzagi) obj2);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* bridge */ /* synthetic */ void zzg(Object obj, int i8, zzacw zzacwVar) {
        ((zzagi) obj).zzj((i8 << 3) | 2, zzacwVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* bridge */ /* synthetic */ void zzh(Object obj, int i8, long j8) {
        ((zzagi) obj).zzj(i8 << 3, Long.valueOf(j8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final void zzi(Object obj) {
        ((zzady) obj).zzc.zzh();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagh
    public final /* synthetic */ void zzj(Object obj, Object obj2) {
        ((zzady) obj).zzc = (zzagi) obj2;
    }
}
