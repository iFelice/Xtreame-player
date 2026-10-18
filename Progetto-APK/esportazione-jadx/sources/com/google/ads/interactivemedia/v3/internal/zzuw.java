package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
final class zzuw implements Executor {
    final /* synthetic */ Executor zza;
    final /* synthetic */ zztg zzb;

    public zzuw(Executor executor, zztg zztgVar) {
        this.zza = executor;
        this.zzb = zztgVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zza.execute(runnable);
        } catch (RejectedExecutionException e8) {
            this.zzb.zzd(e8);
        }
    }
}
