package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzabz {
    public static final boolean zza;
    public static final zzwk zzb;
    public static final zzwk zzc;
    public static final zzwk zzd;

    static {
        boolean z7;
        zzwk zzwkVar;
        try {
            Class.forName("java.sql.Date");
            z7 = true;
        } catch (ClassNotFoundException unused) {
            z7 = false;
        }
        zza = z7;
        if (z7) {
            zzb = zzabs.zza;
            zzc = zzabv.zza;
            zzwkVar = zzaby.zza;
        } else {
            zzwkVar = null;
            zzb = null;
            zzc = null;
        }
        zzd = zzwkVar;
    }
}
