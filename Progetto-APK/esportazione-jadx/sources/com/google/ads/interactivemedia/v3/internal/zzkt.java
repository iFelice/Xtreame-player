package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzkt extends zzkx {
    public zzkt(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "iqw1jb5uFDu8jvuuY6uNfAjY5o2LozUGP4WKP3BQ+5fDBl4gigS2RHiIvtVCz+/e", "2I0CavnGPzUxRZCQiafKVAR/gSlvtJBuZFxtMNrOWv4=", zzanVar, i8, 48);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        this.zzd.zzag(3);
        boolean zBooleanValue = ((Boolean) this.zze.invoke(null, this.zza.zzb())).booleanValue();
        synchronized (this.zzd) {
            try {
                if (zBooleanValue) {
                    this.zzd.zzag(2);
                } else {
                    this.zzd.zzag(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
