package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzbf extends zzady implements zzafc {
    private static final zzbf zzb;
    private int zzd;
    private int zze;
    private long zzf = -1;

    static {
        zzbf zzbfVar = new zzbf();
        zzb = zzbfVar;
        zzady.zzaM(zzbf.class, zzbfVar);
    }

    private zzbf() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", zzas.zza, "zzf"});
        }
        if (i9 == 3) {
            return new zzbf();
        }
        zzbd zzbdVar = null;
        if (i9 == 4) {
            return new zzbe(zzbdVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
