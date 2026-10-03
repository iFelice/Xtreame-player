package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
final class zzafi {
    public static final /* synthetic */ int zza = 0;
    private static final zzafi zzb = new zzafi();
    private final ConcurrentMap zzd = new ConcurrentHashMap();
    private final zzafu zzc = new zzaet();

    private zzafi() {
    }

    public static zzafi zza() {
        return zzb;
    }

    public final zzaft zzb(Class cls) {
        zzaee.zzc(cls, "messageType");
        zzaft zzaftVarZza = (zzaft) this.zzd.get(cls);
        if (zzaftVarZza == null) {
            zzaftVarZza = this.zzc.zza(cls);
            zzaee.zzc(cls, "messageType");
            zzaft zzaftVar = (zzaft) this.zzd.putIfAbsent(cls, zzaftVarZza);
            if (zzaftVar != null) {
                return zzaftVar;
            }
        }
        return zzaftVarZza;
    }
}
