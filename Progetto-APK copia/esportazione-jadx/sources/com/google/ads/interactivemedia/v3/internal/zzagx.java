package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzagx extends zzady implements zzafc {
    private static final zzagx zzb;
    private zzaec zzd = zzady.zzaF();

    static {
        zzagx zzagxVar = new zzagx();
        zzb = zzagxVar;
        zzady.zzaM(zzagx.class, zzagxVar);
    }

    private zzagx() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001ࠬ", new Object[]{"zzd", zzagy.zza});
        }
        if (i9 == 3) {
            return new zzagx();
        }
        zzagv zzagvVar = null;
        if (i9 == 4) {
            return new zzagw(zzagvVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
