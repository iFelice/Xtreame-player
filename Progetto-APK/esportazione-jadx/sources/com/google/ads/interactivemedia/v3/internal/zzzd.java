package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzzd implements zzwk {
    private final zzxl zza;

    public zzzd(zzxl zzxlVar, boolean z7) {
        this.zza = zzxlVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Type typeZzd = zzacaVar.zzd();
        Class clsZzc = zzacaVar.zzc();
        if (!Map.class.isAssignableFrom(clsZzc)) {
            return null;
        }
        Type[] typeArrZzh = zzwr.zzh(typeZzd, clsZzc);
        Type type = typeArrZzh[0];
        return new zzzc(this, zzvrVar, typeArrZzh[0], (type == Boolean.TYPE || type == Boolean.class) ? zzabh.zzf : zzvrVar.zza(zzaca.zzb(type)), typeArrZzh[1], zzvrVar.zza(zzaca.zzb(typeArrZzh[1])), this.zza.zza(zzacaVar));
    }
}
