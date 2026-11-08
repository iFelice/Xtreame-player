package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzm extends zzady implements zzafc {
    private static final zzm zzb;
    private int zzd;
    private int zze;
    private boolean zzh;
    private zzai zzj;
    private zzal zzk;
    private boolean zzf = true;
    private String zzg = "unknown_host";
    private boolean zzi = true;

    static {
        zzm zzmVar = new zzm();
        zzb = zzmVar;
        zzady.zzaM(zzm.class, zzmVar);
    }

    private zzm() {
    }

    public static zzl zza() {
        return (zzl) zzb.zzay();
    }

    public static /* synthetic */ void zzf(zzm zzmVar, zzai zzaiVar) {
        zzaiVar.getClass();
        zzmVar.zzj = zzaiVar;
        zzmVar.zzd |= 32;
    }

    public static /* synthetic */ void zzg(zzm zzmVar, boolean z7) {
        zzmVar.zzd |= 8;
        zzmVar.zzh = false;
    }

    public static /* synthetic */ void zzh(zzm zzmVar, boolean z7) {
        zzmVar.zzd |= 16;
        zzmVar.zzi = false;
    }

    public static /* synthetic */ void zzi(zzm zzmVar, String str) {
        zzmVar.zzd |= 4;
        zzmVar.zzg = "a.3.35.1";
    }

    public static /* synthetic */ void zzo(zzm zzmVar, int i8) {
        zzmVar.zze = 2;
        zzmVar.zzd |= 1;
    }

    public final zzai zzc() {
        zzai zzaiVar = this.zzj;
        return zzaiVar == null ? zzai.zzd() : zzaiVar;
    }

    public final zzal zzd() {
        zzal zzalVar = this.zzk;
        return zzalVar == null ? zzal.zzb() : zzalVar;
    }

    public final String zze() {
        return this.zzg;
    }

    public final boolean zzj() {
        return this.zzh;
    }

    public final boolean zzk() {
        return this.zzi;
    }

    public final boolean zzl() {
        return this.zzf;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဉ\u0005\u0007ဉ\u0006", new Object[]{"zzd", "zze", zzn.zza, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i9 == 3) {
            return new zzm();
        }
        zzk zzkVar = null;
        if (i9 == 4) {
            return new zzl(zzkVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int zzn() {
        int iZza = zzo.zza(this.zze);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }
}
