package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzbi extends zzady implements zzafc {
    private static final zzbi zzb;
    private int zzd;
    private long zze = -1;
    private int zzf = 1000;

    static {
        zzbi zzbiVar = new zzbi();
        zzb = zzbiVar;
        zzady.zzaM(zzbi.class, zzbiVar);
    }

    private zzbi() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001", new Object[]{"zzd", "zze", "zzf", zzbx.zza});
        }
        if (i9 == 3) {
            return new zzbi();
        }
        zzbg zzbgVar = null;
        if (i9 == 4) {
            return new zzbh(zzbgVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
