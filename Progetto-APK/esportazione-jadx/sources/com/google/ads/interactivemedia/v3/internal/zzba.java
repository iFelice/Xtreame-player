package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzba extends zzady implements zzafc {
    private static final zzba zzb;
    private int zzd;
    private long zze = -1;

    static {
        zzba zzbaVar = new zzba();
        zzb = zzbaVar;
        zzady.zzaM(zzba.class, zzbaVar);
    }

    private zzba() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i9 == 3) {
            return new zzba();
        }
        zzay zzayVar = null;
        if (i9 == 4) {
            return new zzaz(zzayVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
