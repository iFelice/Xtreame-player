package com.google.ads.interactivemedia.v3.internal;

import A0.O;

/* JADX INFO: loaded from: classes.dex */
final class zzaau implements zzwk {
    final /* synthetic */ Class zza;
    final /* synthetic */ zzwj zzb;

    public zzaau(Class cls, zzwj zzwjVar) {
        this.zza = cls;
        this.zzb = zzwjVar;
    }

    public final String toString() {
        return O.C("Factory[type=", this.zza.getName(), ",adapter=", this.zzb.toString(), "]");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        if (zzacaVar.zzc() == this.zza) {
            return this.zzb;
        }
        return null;
    }
}
