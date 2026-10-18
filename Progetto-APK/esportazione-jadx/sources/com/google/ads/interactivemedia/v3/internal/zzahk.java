package com.google.ads.interactivemedia.v3.internal;

import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class zzahk extends zzady implements zzafc {
    private static final zzahk zzb;
    private int zzd;
    private zzahh zze;
    private zzahh zzf;
    private zzahh zzg;
    private zzahh zzh;
    private zzahh zzi;
    private zzahh zzj;
    private zzahh zzk;
    private zzahh zzl;
    private zzahh zzm;
    private zzahh zzn;
    private zzahh zzo;
    private zzahh zzp;
    private zzahh zzq;
    private zzahh zzr;
    private zzahh zzs;
    private zzahh zzt;
    private zzahh zzu;
    private zzahh zzv;
    private zzahh zzw;
    private zzahh zzx;

    static {
        zzahk zzahkVar = new zzahk();
        zzb = zzahkVar;
        zzady.zzaM(zzahk.class, zzahkVar);
    }

    private zzahk() {
    }

    public static zzahj zzd() {
        return (zzahj) zzb.zzay();
    }

    public static /* synthetic */ void zzf(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zze = zzahhVar;
        zzahkVar.zzd |= 1;
    }

    public static /* synthetic */ void zzg(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzh = zzahhVar;
        zzahkVar.zzd |= 8;
    }

    public static /* synthetic */ void zzh(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzg = zzahhVar;
        zzahkVar.zzd |= 4;
    }

    public static /* synthetic */ void zzi(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzw = zzahhVar;
        zzahkVar.zzd |= 262144;
    }

    public static /* synthetic */ void zzj(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzp = zzahhVar;
        zzahkVar.zzd |= 2048;
    }

    public static /* synthetic */ void zzk(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzj = zzahhVar;
        zzahkVar.zzd |= 32;
    }

    public static /* synthetic */ void zzl(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzm = zzahhVar;
        zzahkVar.zzd |= 256;
    }

    public static /* synthetic */ void zzn(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzl = zzahhVar;
        zzahkVar.zzd |= 128;
    }

    public static /* synthetic */ void zzo(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzx = zzahhVar;
        zzahkVar.zzd |= 524288;
    }

    public static /* synthetic */ void zzp(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzk = zzahhVar;
        zzahkVar.zzd |= 64;
    }

    public static /* synthetic */ void zzq(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzn = zzahhVar;
        zzahkVar.zzd |= IMediaList.Event.ItemAdded;
    }

    public static /* synthetic */ void zzr(zzahk zzahkVar, zzahh zzahhVar) {
        zzahhVar.getClass();
        zzahkVar.zzi = zzahhVar;
        zzahkVar.zzd |= 16;
    }

    public final zzahh zzc() {
        zzahh zzahhVar = this.zzp;
        return zzahhVar == null ? zzahh.zze() : zzahhVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0014\u0000\u0001\u0001\u0014\u0014\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဉ\b\nဉ\t\u000bဉ\n\fဉ\u000b\rဉ\f\u000eဉ\r\u000fဉ\u000e\u0010ဉ\u000f\u0011ဉ\u0010\u0012ဉ\u0011\u0013ဉ\u0012\u0014ဉ\u0013", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx"});
        }
        if (i9 == 3) {
            return new zzahk();
        }
        zzahi zzahiVar = null;
        if (i9 == 4) {
            return new zzahj(zzahiVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
