package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzka extends zzkx {
    private final long zzh;

    public zzka(zzjj zzjjVar, String str, String str2, zzan zzanVar, long j8, int i8, int i9) {
        super(zzjjVar, "M15xBiwjCN96Wfw63Rr/fs0Y0GhtAeawHW/RMMdlzRuKFoPsxc8VRKvehmju67Mq", "pi9ztiAbRuPTirdH6Q55wZRVdhOPRi3ZtgfWyCi26hI=", zzanVar, i8, 25);
        this.zzh = j8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        long jLongValue = ((Long) this.zze.invoke(null, new Object[0])).longValue();
        synchronized (this.zzd) {
            try {
                this.zzd.zzt(jLongValue);
                long j8 = this.zzh;
                if (j8 != 0) {
                    this.zzd.zzT(jLongValue - j8);
                    this.zzd.zzU(this.zzh);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
