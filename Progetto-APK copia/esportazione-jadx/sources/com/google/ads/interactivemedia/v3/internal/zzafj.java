package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzafj extends zzacj implements RandomAccess {
    private static final zzafj zza = new zzafj(new Object[0], 0, false);
    private Object[] zzb;
    private int zzc;

    public zzafj() {
        this(new Object[10], 0, true);
    }

    public static zzafj zze() {
        return zza;
    }

    private final String zzf(int i8) {
        return U2.j("Index:", i8, ", Size:", this.zzc);
    }

    private final void zzg(int i8) {
        if (i8 < 0 || i8 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzf(i8));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        zza();
        if (i8 < 0 || i8 > (i9 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzf(i8));
        }
        int i10 = i8 + 1;
        Object[] objArr = this.zzb;
        if (i9 < objArr.length) {
            System.arraycopy(objArr, i8, objArr, i10, i9 - i8);
        } else {
            Object[] objArr2 = new Object[O.v(i9, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i8);
            System.arraycopy(this.zzb, i8, objArr2, i10, this.zzc - i8);
            this.zzb = objArr2;
        }
        this.zzb[i8] = obj;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        zzg(i8);
        return this.zzb[i8];
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        zza();
        zzg(i8);
        Object[] objArr = this.zzb;
        Object obj = objArr[i8];
        int i9 = this.zzc;
        if (i8 < i9 - 1) {
            System.arraycopy(objArr, i8 + 1, objArr, i8, (i9 - i8) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        zza();
        zzg(i8);
        Object[] objArr = this.zzb;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaed
    public final /* bridge */ /* synthetic */ zzaed zzd(int i8) {
        if (i8 >= this.zzc) {
            return new zzafj(Arrays.copyOf(this.zzb, i8), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzafj(Object[] objArr, int i8, boolean z7) {
        super(z7);
        this.zzb = objArr;
        this.zzc = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zza();
        int i8 = this.zzc;
        Object[] objArr = this.zzb;
        if (i8 == objArr.length) {
            this.zzb = Arrays.copyOf(objArr, ((i8 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.zzb;
        int i9 = this.zzc;
        this.zzc = i9 + 1;
        objArr2[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
