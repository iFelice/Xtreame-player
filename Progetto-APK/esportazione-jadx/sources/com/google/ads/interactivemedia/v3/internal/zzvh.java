package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzvh extends zzub implements RunnableFuture {
    private volatile zzus zza;

    public zzvh(Callable callable) {
        this.zza = new zzvg(this, callable);
    }

    public static zzvh zzs(Runnable runnable, Object obj) {
        return new zzvh(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzus zzusVar = this.zza;
        if (zzusVar != null) {
            zzusVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final String zza() {
        zzus zzusVar = this.zza;
        return zzusVar != null ? r.g("task=[", zzusVar.toString(), "]") : super.zza();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final void zzb() {
        zzus zzusVar;
        if (zzr() && (zzusVar = this.zza) != null) {
            zzusVar.zzh();
        }
        this.zza = null;
    }
}
