package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
abstract class zzzm {
    final String zzg;
    final Field zzh;
    final String zzi;

    public zzzm(String str, Field field) {
        this.zzg = str;
        this.zzh = field;
        this.zzi = field.getName();
    }

    public abstract void zza(zzacc zzaccVar, int i8, Object[] objArr);

    public abstract void zzb(zzacc zzaccVar, Object obj);

    public abstract void zzc(zzace zzaceVar, Object obj);
}
