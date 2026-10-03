package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzbv extends zzady implements zzafc {
    private static final zzbv zzb;
    private int zzd;
    private zzacw zze;
    private zzacw zzf;
    private zzacw zzg;
    private zzacw zzh;

    static {
        zzbv zzbvVar = new zzbv();
        zzb = zzbvVar;
        zzady.zzaM(zzbv.class, zzbvVar);
    }

    private zzbv() {
        zzacw zzacwVar = zzacw.zzb;
        this.zze = zzacwVar;
        this.zzf = zzacwVar;
        this.zzg = zzacwVar;
        this.zzh = zzacwVar;
    }

    public static zzbu zza() {
        return (zzbu) zzb.zzay();
    }

    public static zzbv zzc(byte[] bArr, zzadk zzadkVar) {
        return (zzbv) zzady.zzaE(zzb, bArr, zzadkVar);
    }

    public static /* synthetic */ void zzh(zzbv zzbvVar, zzacw zzacwVar) {
        zzbvVar.zzd |= 1;
        zzbvVar.zze = zzacwVar;
    }

    public static /* synthetic */ void zzi(zzbv zzbvVar, zzacw zzacwVar) {
        zzbvVar.zzd |= 2;
        zzbvVar.zzf = zzacwVar;
    }

    public static /* synthetic */ void zzj(zzbv zzbvVar, zzacw zzacwVar) {
        zzbvVar.zzd |= 8;
        zzbvVar.zzh = zzacwVar;
    }

    public static /* synthetic */ void zzk(zzbv zzbvVar, zzacw zzacwVar) {
        zzbvVar.zzd |= 4;
        zzbvVar.zzg = zzacwVar;
    }

    public final zzacw zzd() {
        return this.zze;
    }

    public final zzacw zze() {
        return this.zzf;
    }

    public final zzacw zzf() {
        return this.zzh;
    }

    public final zzacw zzg() {
        return this.zzg;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new zzbv();
        }
        zzbt zzbtVar = null;
        if (i9 == 4) {
            return new zzbu(zzbtVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
