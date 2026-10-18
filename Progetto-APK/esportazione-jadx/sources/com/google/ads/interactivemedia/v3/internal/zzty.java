package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
abstract class zzty extends zzus {
    private final Executor zza;
    final /* synthetic */ zztz zzb;

    public zzty(zztz zztzVar, Executor executor) {
        this.zzb = zztzVar;
        executor.getClass();
        this.zza = executor;
    }

    public abstract void zzc(Object obj);

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final void zzd(Throwable th) {
        this.zzb.zza = null;
        if (th instanceof ExecutionException) {
            this.zzb.zzd(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.zzb.cancel(false);
        } else {
            this.zzb.zzd(th);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final void zze(Object obj) {
        this.zzb.zza = null;
        zzc(obj);
    }

    public final void zzf() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e8) {
            this.zzb.zzd(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final boolean zzg() {
        return this.zzb.isDone();
    }
}
