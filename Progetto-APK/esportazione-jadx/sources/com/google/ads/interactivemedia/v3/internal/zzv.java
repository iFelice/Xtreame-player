package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzv extends zzady implements zzafc {
    private static final zzv zzb;
    private int zzd;
    private long zzf;
    private long zzj;
    private long zzk;
    private long zzm;
    private int zzq;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzl = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzn = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzo = HttpUrl.FRAGMENT_ENCODE_SET;
    private zzaed zzp = zzady.zzaG();

    static {
        zzv zzvVar = new zzv();
        zzb = zzvVar;
        zzady.zzaM(zzv.class, zzvVar);
    }

    private zzv() {
    }

    public static zzq zza() {
        return (zzq) zzb.zzay();
    }

    public static /* synthetic */ void zzc(zzv zzvVar, String str) {
        str.getClass();
        zzvVar.zzd |= 1;
        zzvVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzv zzvVar, String str) {
        zzvVar.zzd |= 16;
        zzvVar.zzi = str;
    }

    public static /* synthetic */ void zze(zzv zzvVar, String str) {
        zzvVar.zzd |= 1024;
        zzvVar.zzo = str;
    }

    public static /* synthetic */ void zzf(zzv zzvVar, String str) {
        str.getClass();
        zzvVar.zzd |= 8;
        zzvVar.zzh = str;
    }

    public static /* synthetic */ void zzg(zzv zzvVar, long j8) {
        zzvVar.zzd |= 2;
        zzvVar.zzf = j8;
    }

    public static /* synthetic */ void zzh(zzv zzvVar, String str) {
        str.getClass();
        zzvVar.zzd |= 4;
        zzvVar.zzg = str;
    }

    public static /* synthetic */ void zzi(zzv zzvVar, int i8) {
        zzvVar.zzq = i8 - 1;
        zzvVar.zzd |= 2048;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\r᠌\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", zzt.class, "zzq", zzu.zza});
        }
        if (i9 == 3) {
            return new zzv();
        }
        zzp zzpVar = null;
        if (i9 == 4) {
            return new zzq(zzpVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
