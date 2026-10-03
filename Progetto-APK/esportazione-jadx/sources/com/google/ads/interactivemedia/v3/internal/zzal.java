package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzal extends zzady implements zzafc {
    private static final zzal zzb;
    private int zzd;
    private boolean zzf;
    private boolean zzg;
    private long zze = 100;
    private long zzh = 300;

    static {
        zzal zzalVar = new zzal();
        zzb = zzalVar;
        zzady.zzaM(zzal.class, zzalVar);
    }

    private zzal() {
    }

    public static zzal zzb() {
        return zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new zzal();
        }
        zzaj zzajVar = null;
        if (i9 == 4) {
            return new zzak(zzajVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
