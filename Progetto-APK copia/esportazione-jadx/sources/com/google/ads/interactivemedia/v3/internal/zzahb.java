package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzahb extends zzady implements zzafc {
    private static final zzahb zzb;
    private int zzg;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        zzahb zzahbVar = new zzahb();
        zzb = zzahbVar;
        zzady.zzaM(zzahb.class, zzahbVar);
    }

    private zzahb() {
    }

    public static zzaha zzc() {
        return (zzaha) zzb.zzay();
    }

    public static /* synthetic */ void zze(zzahb zzahbVar, String str) {
        str.getClass();
        zzahbVar.zzd = str;
    }

    public static /* synthetic */ void zzf(zzahb zzahbVar, String str) {
        str.getClass();
        zzahbVar.zze = str;
    }

    public static /* synthetic */ void zzg(zzahb zzahbVar, String str) {
        str.getClass();
        zzahbVar.zzf = str;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f\u0005Ȉ", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new zzahb();
        }
        zzagz zzagzVar = null;
        if (i9 == 4) {
            return new zzaha(zzagzVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
