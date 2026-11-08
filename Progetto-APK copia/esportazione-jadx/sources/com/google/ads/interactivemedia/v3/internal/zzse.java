package com.google.ads.interactivemedia.v3.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzse extends zzrm {
    static final zzrm zza = new zzse(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    public zzse(Object[] objArr, int i8) {
        this.zzb = objArr;
        this.zzc = i8;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        zzqh.zza(i8, this.zzc, "index");
        Object obj = this.zzb[i8];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm, com.google.ads.interactivemedia.v3.internal.zzri
    public final int zza(Object[] objArr, int i8) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzb() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzc() {
        return 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final Object[] zzg() {
        return this.zzb;
    }
}
