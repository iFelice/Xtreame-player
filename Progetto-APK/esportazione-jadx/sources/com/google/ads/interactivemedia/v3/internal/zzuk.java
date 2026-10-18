package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class zzuk extends zzum {
    @SafeVarargs
    public static zzuj zza(zzuu... zzuuVarArr) {
        return new zzuj(false, zzrm.zzl(zzuuVarArr), null);
    }

    public static zzuu zzb(Object obj) {
        return obj == null ? zzun.zza : new zzun(obj);
    }

    public static zzuu zzc(zzuu zzuuVar, zzpz zzpzVar, Executor executor) {
        zztn zztnVar = new zztn(zzuuVar, zzpzVar);
        zzuuVar.zzo(zztnVar, zzvb.zzc(executor, zztnVar));
        return zztnVar;
    }

    public static Object zzd(Future future) {
        Object obj;
        boolean z7 = false;
        if (!future.isDone()) {
            throw new IllegalStateException(zzqm.zzb("Future was expected to be done: %s", future));
        }
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z7 = true;
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static void zze(zzuu zzuuVar, zzug zzugVar, Executor executor) {
        zzuuVar.zzo(new zzuh(zzuuVar, zzugVar), executor);
    }

    public static zzuu zzf(zzuu zzuuVar, zzgn zzgnVar, Executor executor) {
        int i8 = zzto.zze;
        executor.getClass();
        zztm zztmVar = new zztm(zzuuVar, zzgnVar);
        zzuuVar.zzo(zztmVar, zzvb.zzc(executor, zztmVar));
        return zztmVar;
    }
}
