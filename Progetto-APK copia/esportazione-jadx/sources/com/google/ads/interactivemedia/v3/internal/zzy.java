package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzy extends zzady implements zzafc {
    private static final zzy zzb;
    private int zzd;
    private zzab zze;
    private zzaf zzf;

    static {
        zzy zzyVar = new zzy();
        zzb = zzyVar;
        zzady.zzaM(zzy.class, zzyVar);
    }

    private zzy() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new zzy();
        }
        zzw zzwVar = null;
        if (i9 == 4) {
            return new zzx(zzwVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
