package com.google.ads.interactivemedia.v3.internal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzqf implements Serializable {
    public static zzqf zzf() {
        return zzpv.zza;
    }

    public static zzqf zzg(Object obj) {
        return obj == null ? zzpv.zza : new zzqi(obj);
    }

    public static zzqf zzh(Object obj) {
        obj.getClass();
        return new zzqi(obj);
    }

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public abstract zzqf zza(zzpz zzpzVar);

    public abstract Object zzb();

    public abstract Object zzc(Object obj);

    public abstract Object zzd();

    public abstract boolean zze();
}
