package com.google.ads.interactivemedia.v3.internal;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes.dex */
final class zzrs extends zzrm {
    final /* synthetic */ zzrt zza;

    public zzrs(zzrt zzrtVar) {
        this.zza = zzrtVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        return new AbstractMap.SimpleImmutableEntry(this.zza.zza.zzb.zzd.get(i8), this.zza.zza.zzc.get(i8));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zza.size();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return true;
    }
}
