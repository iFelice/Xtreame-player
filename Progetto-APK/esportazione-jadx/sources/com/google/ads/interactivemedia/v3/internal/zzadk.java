package com.google.ads.interactivemedia.v3.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzadk {
    static final zzadk zza = new zzadk(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzadk zzd;
    private final Map zze;

    public zzadk() {
        this.zze = new HashMap();
    }

    public static zzadk zza() {
        int i8 = zzafi.zza;
        return zza;
    }

    public static zzadk zzb() {
        zzadk zzadkVar = zzd;
        if (zzadkVar != null) {
            return zzadkVar;
        }
        synchronized (zzadk.class) {
            try {
                zzadk zzadkVar2 = zzd;
                if (zzadkVar2 != null) {
                    return zzadkVar2;
                }
                int i8 = zzafi.zza;
                zzadk zzadkVarZzb = zzads.zzb(zzadk.class);
                zzd = zzadkVarZzb;
                return zzadkVarZzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzadx zzc(zzafb zzafbVar, int i8) {
        return (zzadx) this.zze.get(new zzadj(zzafbVar, i8));
    }

    public zzadk(boolean z7) {
        this.zze = Collections.emptyMap();
    }
}
