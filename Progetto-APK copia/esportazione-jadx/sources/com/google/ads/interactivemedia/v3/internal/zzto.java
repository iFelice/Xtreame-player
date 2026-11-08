package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import okhttp3.HttpUrl;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
abstract class zzto extends zzub implements Runnable {
    public static final /* synthetic */ int zze = 0;
    zzuu zza;
    Object zzd;

    public zzto(zzuu zzuuVar, Object obj) {
        this.zza = zzuuVar;
        this.zzd = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzuu zzuuVar = this.zza;
        Object obj = this.zzd;
        if ((isCancelled() | (zzuuVar == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (zzuuVar.isCancelled()) {
            zzq(zzuuVar);
            return;
        }
        try {
            try {
                Object objZzs = zzs(obj, zzuk.zzd(zzuuVar));
                this.zzd = null;
                zzt(objZzs);
            } catch (Throwable th) {
                try {
                    zzvc.zza(th);
                    zzd(th);
                } finally {
                    this.zzd = null;
                }
            }
        } catch (Error e8) {
            zzd(e8);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e9) {
            zzd(e9.getCause());
        } catch (Exception e10) {
            zzd(e10);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final String zza() {
        zzuu zzuuVar = this.zza;
        Object obj = this.zzd;
        String strZza = super.zza();
        String strG = zzuuVar != null ? r.g("inputFuture=[", zzuuVar.toString(), "], ") : HttpUrl.FRAGMENT_ENCODE_SET;
        if (obj != null) {
            return O.B(strG, "function=[", obj.toString(), "]");
        }
        if (strZza != null) {
            return strG.concat(strZza);
        }
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final void zzb() {
        zzuu zzuuVar = this.zza;
        if ((zzuuVar != null) & isCancelled()) {
            zzuuVar.cancel(zzr());
        }
        this.zza = null;
        this.zzd = null;
    }

    public abstract Object zzs(Object obj, Object obj2);

    public abstract void zzt(Object obj);
}
