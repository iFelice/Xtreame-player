package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzvg extends zzus {
    final /* synthetic */ zzvh zza;
    private final Callable zzb;

    public zzvg(zzvh zzvhVar, Callable callable) {
        this.zza = zzvhVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final Object zza() {
        return this.zzb.call();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final void zze(Object obj) {
        this.zza.zzc(obj);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
