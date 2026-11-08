package com.google.ads.interactivemedia.v3.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzsi extends zzrm {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    public zzsi(Object[] objArr, int i8, int i9) {
        this.zza = objArr;
        this.zzb = i8;
        this.zzc = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        zzqh.zza(i8, this.zzc, "index");
        Object obj = this.zza[i8 + i8 + this.zzb];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return true;
    }
}
