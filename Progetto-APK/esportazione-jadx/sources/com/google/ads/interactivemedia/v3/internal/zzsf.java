package com.google.ads.interactivemedia.v3.internal;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzsf extends zzrm {
    final /* synthetic */ zzsg zza;

    public zzsf(zzsg zzsgVar) {
        this.zza = zzsgVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        zzqh.zza(i8, this.zza.zzc, "index");
        int i9 = i8 + i8;
        Object obj = this.zza.zzb[i9];
        Objects.requireNonNull(obj);
        Object obj2 = this.zza.zzb[i9 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return true;
    }
}
