package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzcb extends zzady implements zzafc {
    private static final zzcb zzb;
    private int zzd;
    private long zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private zzacw zzg = zzacw.zzb;

    static {
        zzcb zzcbVar = new zzcb();
        zzb = zzcbVar;
        zzady.zzaM(zzcb.class, zzcbVar);
    }

    private zzcb() {
    }

    public static zzcb zzc() {
        return zzb;
    }

    public final long zza() {
        return this.zze;
    }

    public final boolean zzd() {
        return (this.zzd & 1) != 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new zzcb();
        }
        zzbz zzbzVar = null;
        if (i9 == 4) {
            return new zzca(zzbzVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
