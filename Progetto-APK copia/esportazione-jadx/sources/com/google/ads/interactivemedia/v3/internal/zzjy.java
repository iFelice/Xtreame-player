package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzjy extends zzkx {
    public zzjy(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "9AapCvSXzV8coBAg7sVelaiXfAsx9AWmDDIfeprqYS1mc42o+3U7/Q/ITW6cj3Q0", "GaGK7jWkEusMCurSk2Iqvi/xAbfN6zA5X3MQPC18/40=", zzanVar, i8, 5);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        this.zzd.zzm(-1L);
        this.zzd.zzl(-1L);
        int[] iArr = (int[]) this.zze.invoke(null, this.zza.zzb());
        synchronized (this.zzd) {
            try {
                this.zzd.zzm(iArr[0]);
                this.zzd.zzl(iArr[1]);
                int i8 = iArr[2];
                if (i8 != Integer.MIN_VALUE) {
                    this.zzd.zzk(i8);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
