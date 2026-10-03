package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzvb {
    public static zzuv zza(ExecutorService executorService) {
        if (executorService instanceof zzuv) {
            return (zzuv) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new zzva((ScheduledExecutorService) executorService) : new zzux(executorService);
    }

    public static Executor zzb() {
        return zzua.INSTANCE;
    }

    public static Executor zzc(Executor executor, zztg zztgVar) {
        executor.getClass();
        return executor == zzua.INSTANCE ? executor : new zzuw(executor, zztgVar);
    }
}
