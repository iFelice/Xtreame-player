package com.google.ads.interactivemedia.v3.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzsk extends zzrr {
    static final zzsk zza;
    private static final Object[] zzd;
    final transient Object[] zzb;
    final transient Object[] zzc;
    private final transient int zze;
    private final transient int zzf;
    private final transient int zzg;

    static {
        Object[] objArr = new Object[0];
        zzd = objArr;
        zza = new zzsk(objArr, 0, objArr, 0, 0);
    }

    public zzsk(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        this.zzb = objArr;
        this.zze = i8;
        this.zzc = objArr2;
        this.zzf = i9;
        this.zzg = i10;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.zzc;
            if (objArr.length != 0) {
                int iZzc = zzrg.zzc(obj);
                while (true) {
                    int i8 = iZzc & this.zzf;
                    Object obj2 = objArr[i8];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iZzc = i8 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zze;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzg;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zza(Object[] objArr, int i8) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzg);
        return this.zzg;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzb() {
        return this.zzg;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzc() {
        return 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri
    /* JADX INFO: renamed from: zze */
    public final zzss iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final Object[] zzg() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr
    public final boolean zzi() {
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr
    public final zzrm zzk() {
        return zzrm.zzj(this.zzb, this.zzg);
    }
}
