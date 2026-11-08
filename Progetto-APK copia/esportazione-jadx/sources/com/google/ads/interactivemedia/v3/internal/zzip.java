package com.google.ads.interactivemedia.v3.internal;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzip extends zzgk {
    public long zza;
    public long zzb;

    public zzip() {
        this.zza = -1L;
        this.zzb = -1L;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzgk
    public final HashMap zzb() {
        HashMap map = new HashMap();
        map.put(0, Long.valueOf(this.zza));
        map.put(1, Long.valueOf(this.zzb));
        return map;
    }

    public zzip(String str) {
        this.zza = -1L;
        this.zzb = -1L;
        HashMap mapZza = zzgk.zza(str);
        if (mapZza != null) {
            this.zza = ((Long) mapZza.get(0)).longValue();
            this.zzb = ((Long) mapZza.get(1)).longValue();
        }
    }
}
