package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzzu implements zzwk {
    private final zzaca zza;
    private final boolean zzb;
    private final zzwd zzc;
    private final zzvv zzd;

    public zzzu(Object obj, zzaca zzacaVar, boolean z7, Class cls) {
        zzwd zzwdVar = obj instanceof zzwd ? (zzwd) obj : null;
        this.zzc = zzwdVar;
        zzvv zzvvVar = obj instanceof zzvv ? (zzvv) obj : null;
        this.zzd = zzvvVar;
        boolean z8 = true;
        if (zzwdVar == null && zzvvVar == null) {
            z8 = false;
        }
        zzwn.zza(z8);
        this.zza = zzacaVar;
        this.zzb = z7;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        if (this.zza.equals(zzacaVar) || (this.zzb && this.zza.zzd() == zzacaVar.zzc())) {
            return new zzzv(this.zzc, this.zzd, zzvrVar, zzacaVar, this, true);
        }
        return null;
    }
}
