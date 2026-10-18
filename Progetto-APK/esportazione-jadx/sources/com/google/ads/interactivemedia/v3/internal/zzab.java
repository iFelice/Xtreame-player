package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzab extends zzady implements zzafc {
    private static final zzab zzb;
    private int zzd;
    private int zze = 2;

    static {
        zzab zzabVar = new zzab();
        zzb = zzabVar;
        zzady.zzaM(zzab.class, zzabVar);
    }

    private zzab() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b᠌\u0000", new Object[]{"zzd", "zze", zzac.zza});
        }
        if (i9 == 3) {
            return new zzab();
        }
        zzz zzzVar = null;
        if (i9 == 4) {
            return new zzaa(zzzVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
