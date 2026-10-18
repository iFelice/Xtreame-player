package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzuj {
    private final zzrm zza;

    public /* synthetic */ zzuj(boolean z7, zzrm zzrmVar, zzui zzuiVar) {
        this.zza = zzrmVar;
    }

    public final zzuu zza(Callable callable, Executor executor) {
        return new zztz(this.zza, false, executor, callable);
    }
}
