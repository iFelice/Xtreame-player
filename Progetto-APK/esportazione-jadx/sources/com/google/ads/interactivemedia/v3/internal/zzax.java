package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzax extends zzady implements zzafc {
    private static final zzax zzb;
    private int zzd;
    private long zze = -1;
    private int zzf = 1000;
    private int zzg = 1000;

    static {
        zzax zzaxVar = new zzax();
        zzb = zzaxVar;
        zzady.zzaM(zzax.class, zzaxVar);
    }

    private zzax() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            zzaeb zzaebVar = zzbx.zza;
            return zzady.zzaJ(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", zzaebVar, "zzg", zzaebVar});
        }
        if (i9 == 3) {
            return new zzax();
        }
        zzav zzavVar = null;
        if (i9 == 4) {
            return new zzaw(zzavVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
