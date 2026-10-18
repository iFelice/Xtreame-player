package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzhy implements Runnable {
    final /* synthetic */ zzhz zza;

    public zzhy(zzhz zzhzVar) {
        this.zza = zzhzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        if (this.zza.zzb != null) {
            return;
        }
        synchronized (zzhz.zzc) {
            if (this.zza.zzb != null) {
                return;
            }
            boolean z7 = false;
            try {
                zBooleanValue = ((Boolean) zzmj.zzi.zzc()).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    zzhz.zza = zzpj.zzb(this.zza.zze.zza, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z7 = zBooleanValue;
            this.zza.zzb = Boolean.valueOf(z7);
            zzhz.zzc.open();
        }
    }
}
