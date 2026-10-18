package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzbo extends zzady implements zzafc {
    private static final zzbo zzb;
    private int zzd;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private long zzl = -1;

    static {
        zzbo zzboVar = new zzbo();
        zzb = zzboVar;
        zzady.zzaM(zzbo.class, zzboVar);
    }

    private zzbo() {
    }

    public static zzbn zza() {
        return (zzbn) zzb.zzay();
    }

    public static /* synthetic */ void zzc(zzbo zzboVar, long j8) {
        zzboVar.zzd |= 32;
        zzboVar.zzj = j8;
    }

    public static /* synthetic */ void zzd(zzbo zzboVar, long j8) {
        zzboVar.zzd |= 4;
        zzboVar.zzg = j8;
    }

    public static /* synthetic */ void zze(zzbo zzboVar, long j8) {
        zzboVar.zzd |= 1;
        zzboVar.zze = j8;
    }

    public static /* synthetic */ void zzf(zzbo zzboVar, long j8) {
        zzboVar.zzd |= 8;
        zzboVar.zzh = j8;
    }

    public static /* synthetic */ void zzg(zzbo zzboVar, long j8) {
        zzboVar.zzd |= 16;
        zzboVar.zzi = j8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i9 == 3) {
            return new zzbo();
        }
        zzbm zzbmVar = null;
        if (i9 == 4) {
            return new zzbn(zzbmVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
