package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzpu implements zzwk {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Class clsZzc = zzacaVar.zzc();
        zzps zzpsVar = (zzps) clsZzc.getAnnotation(zzps.class);
        if (zzpsVar == null || clsZzc == zzpsVar.zza()) {
            return null;
        }
        return zzvrVar.zza(zzaca.zza(zzpsVar.zza()));
    }
}
