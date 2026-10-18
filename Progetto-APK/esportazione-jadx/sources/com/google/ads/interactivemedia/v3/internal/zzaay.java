package com.google.ads.interactivemedia.v3.internal;

import A0.O;

/* JADX INFO: loaded from: classes.dex */
final class zzaay implements zzwk {
    final /* synthetic */ Class zza;
    final /* synthetic */ zzwj zzb;

    public zzaay(Class cls, zzwj zzwjVar) {
        this.zza = cls;
        this.zzb = zzwjVar;
    }

    public final String toString() {
        return O.C("Factory[typeHierarchy=", this.zza.getName(), ",adapter=", this.zzb.toString(), "]");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Class cls = this.zza;
        Class<?> clsZzc = zzacaVar.zzc();
        if (cls.isAssignableFrom(clsZzc)) {
            return new zzaax(this, clsZzc);
        }
        return null;
    }
}
