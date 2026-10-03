package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzkd extends zzkx {
    private final zzjk zzh;

    public zzkd(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9, zzjk zzjkVar) {
        super(zzjjVar, "MYxgDIrh+gy86kN1XY6ylXIPeNjoW1IMoZZuWIGwGNUEplJDYFOwysCZ/m/vn5Hd", "SSWkXiA6wy65+39wH1IAu/x4WRBY+euODs95Kr/RwrI=", zzanVar, i8, 85);
        this.zzh = zzjkVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        long[] jArr = (long[]) this.zze.invoke(null, Long.valueOf(this.zzh.zzd()), Long.valueOf(this.zzh.zzh()), Long.valueOf(this.zzh.zzb()), Long.valueOf(this.zzh.zzf()));
        synchronized (this.zzd) {
            this.zzd.zzv(jArr[0]);
            this.zzd.zzu(jArr[1]);
        }
    }
}
