package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzaar implements zzwk {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Class clsZzc = zzacaVar.zzc();
        if (!Enum.class.isAssignableFrom(clsZzc) || clsZzc == Enum.class) {
            return null;
        }
        if (!clsZzc.isEnum()) {
            clsZzc = clsZzc.getSuperclass();
        }
        return new zzabg(clsZzc);
    }
}
