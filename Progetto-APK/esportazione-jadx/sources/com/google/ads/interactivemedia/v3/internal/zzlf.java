package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzlf extends zzady implements zzafc {
    private static final zzlf zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        zzlf zzlfVar = new zzlf();
        zzb = zzlfVar;
        zzady.zzaM(zzlf.class, zzlfVar);
    }

    private zzlf() {
    }

    public static zzle zzd() {
        return (zzle) zzb.zzay();
    }

    public static zzlf zzf() {
        return zzb;
    }

    public static zzlf zzg(zzacw zzacwVar) {
        return (zzlf) zzady.zzaC(zzb, zzacwVar);
    }

    public static zzlf zzh(zzacw zzacwVar, zzadk zzadkVar) {
        return (zzlf) zzady.zzaD(zzb, zzacwVar, zzadkVar);
    }

    public static /* synthetic */ void zzk(zzlf zzlfVar, String str) {
        str.getClass();
        zzlfVar.zzd |= 2;
        zzlfVar.zzf = str;
    }

    public static /* synthetic */ void zzl(zzlf zzlfVar, long j8) {
        zzlfVar.zzd |= 8;
        zzlfVar.zzh = j8;
    }

    public static /* synthetic */ void zzn(zzlf zzlfVar, long j8) {
        zzlfVar.zzd |= 4;
        zzlfVar.zzg = j8;
    }

    public static /* synthetic */ void zzo(zzlf zzlfVar, long j8) {
        zzlfVar.zzd |= 16;
        zzlfVar.zzi = j8;
    }

    public static /* synthetic */ void zzp(zzlf zzlfVar, String str) {
        str.getClass();
        zzlfVar.zzd |= 1;
        zzlfVar.zze = str;
    }

    public final long zza() {
        return this.zzh;
    }

    public final long zzb() {
        return this.zzg;
    }

    public final long zzc() {
        return this.zzi;
    }

    public final String zzi() {
        return this.zzf;
    }

    public final String zzj() {
        return this.zze;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i9 == 3) {
            return new zzlf();
        }
        zzld zzldVar = null;
        if (i9 == 4) {
            return new zzle(zzldVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
