package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzml {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    public zzml(String str, Object obj, int i8) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i8;
    }

    public static zzml zza(String str, long j8) {
        return new zzml(str, Long.valueOf(j8), 2);
    }

    public static zzml zzb(String str, boolean z7) {
        return new zzml(str, Boolean.valueOf(z7), 1);
    }

    public final Object zzc() {
        zzmq zzmqVarZza = zzms.zza();
        if (zzmqVarZza != null) {
            return this.zzc + (-1) != 0 ? zzmqVarZza.zzb(this.zza, ((Long) this.zzb).longValue()) : zzmqVarZza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
        }
        if (zzms.zzb() != null) {
            zzms.zzb().zza();
        }
        return this.zzb;
    }
}
