package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzko extends zzkx {
    private final boolean zzh;

    public zzko(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "8Ypoat4hJmb20CWBS2vm1Bwj5rMbit3AiLM5WASq9kLQGiCpUdBOaxuIoDBxCVKn", "vUHFjnocTkwTSea4TN+zEmhwStt81G8dz02qs1gtO4U=", zzanVar, i8, 61);
        this.zzh = zzjjVar.zzs();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        long jLongValue = ((Long) this.zze.invoke(null, this.zza.zzb(), Boolean.valueOf(this.zzh))).longValue();
        synchronized (this.zzd) {
            this.zzd.zzE(jLongValue);
        }
    }
}
