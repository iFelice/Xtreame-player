package com.google.ads.interactivemedia.v3.internal;

import java.util.Iterator;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzsp extends zzrr {
    final transient Object zza;

    public zzsp(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzrx(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return r.g("[", this.zza.toString(), "]");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zza(Object[] objArr, int i8) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri
    public final zzrm zzd() {
        int i8 = zzrm.zzd;
        Object[] objArr = {this.zza};
        zzsc.zzb(objArr, 1);
        return zzrm.zzj(objArr, 1);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri
    /* JADX INFO: renamed from: zze */
    public final zzss iterator() {
        return new zzrx(this.zza);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return false;
    }
}
