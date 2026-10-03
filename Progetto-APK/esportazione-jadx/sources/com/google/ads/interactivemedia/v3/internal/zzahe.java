package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzahe extends zzady implements zzafc {
    private static final zzahe zzb;
    private int zzd;
    private Object zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private zzagx zzl;
    private int zzm;
    private int zzn;
    private zzahk zzo;
    private int zzp;
    private int zze = 0;
    private zzaec zzj = zzady.zzaF();
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        zzahe zzaheVar = new zzahe();
        zzb = zzaheVar;
        zzady.zzaM(zzahe.class, zzaheVar);
    }

    private zzahe() {
    }

    public static zzahd zzc() {
        return (zzahd) zzb.zzay();
    }

    public static /* synthetic */ void zze(zzahe zzaheVar, int i8) {
        zzaheVar.zzd |= 8;
        zzaheVar.zzp = i8;
    }

    public static /* synthetic */ void zzf(zzahe zzaheVar, zzahb zzahbVar) {
        zzahbVar.getClass();
        zzaheVar.zzf = zzahbVar;
        zzaheVar.zze = 7;
    }

    public static /* synthetic */ void zzg(zzahe zzaheVar, zzahk zzahkVar) {
        zzahkVar.getClass();
        zzaheVar.zzo = zzahkVar;
        zzaheVar.zzd |= 4;
    }

    public static /* synthetic */ void zzh(zzahe zzaheVar, int i8) {
        zzaheVar.zzd |= 2;
        zzaheVar.zzm = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u000b\u0001\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001\u0002\u0002\u0002\u0003\u0002\u0004'\u0005Ȉ\u0006ဉ\u0000\u0007<\u0000\bင\u0001\t\f\nဉ\u0002\u000bင\u0003", new Object[]{"zzf", "zze", "zzd", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzahb.class, "zzm", "zzn", "zzo", "zzp"});
        }
        if (i9 == 3) {
            return new zzahe();
        }
        zzahc zzahcVar = null;
        if (i9 == 4) {
            return new zzahd(zzahcVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
