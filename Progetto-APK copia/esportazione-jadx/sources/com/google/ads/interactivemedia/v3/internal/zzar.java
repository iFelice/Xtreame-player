package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzar extends zzady implements zzafc {
    private static final zzar zzb;
    private int zzd;
    private int zze;

    static {
        zzar zzarVar = new zzar();
        zzb = zzarVar;
        zzady.zzaM(zzar.class, zzarVar);
    }

    private zzar() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzau.zza});
        }
        if (i9 == 3) {
            return new zzar();
        }
        zzap zzapVar = null;
        if (i9 == 4) {
            return new zzaq(zzapVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
