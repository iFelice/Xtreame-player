package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
final class zzuh implements Runnable {
    final Future zza;
    final zzug zzb;

    public zzuh(Future future, zzug zzugVar) {
        this.zza = future;
        this.zzb = zzugVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable thZza;
        Object obj = this.zza;
        if ((obj instanceof zzvi) && (thZza = zzvj.zza((zzvi) obj)) != null) {
            this.zzb.zza(thZza);
            return;
        }
        try {
            this.zzb.zzb(zzuk.zzd(this.zza));
        } catch (ExecutionException e8) {
            this.zzb.zza(e8.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        zzqc zzqcVarZza = zzqd.zza(this);
        zzqcVarZza.zzb(this.zzb);
        return zzqcVarZza.toString();
    }
}
