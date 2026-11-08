package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzadh extends zzacj implements RandomAccess, zzaed {
    private double[] zza;
    private int zzb;

    static {
        new zzadh(new double[0], 0, false);
    }

    public zzadh() {
        this(new double[10], 0, true);
    }

    private final String zzg(int i8) {
        return U2.j("Index:", i8, ", Size:", this.zzb);
    }

    private final void zzh(int i8) {
        if (i8 < 0 || i8 >= this.zzb) {
            throw new IndexOutOfBoundsException(zzg(i8));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i8, Object obj) {
        int i9;
        double dDoubleValue = ((Double) obj).doubleValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.zzb)) {
            throw new IndexOutOfBoundsException(zzg(i8));
        }
        int i10 = i8 + 1;
        double[] dArr = this.zza;
        if (i9 < dArr.length) {
            System.arraycopy(dArr, i8, dArr, i10, i9 - i8);
        } else {
            double[] dArr2 = new double[O.v(i9, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i8);
            System.arraycopy(this.zza, i8, dArr2, i10, this.zzb - i8);
            this.zza = dArr2;
        }
        this.zza[i8] = dDoubleValue;
        this.zzb++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaee.zzb;
        collection.getClass();
        if (!(collection instanceof zzadh)) {
            return super.addAll(collection);
        }
        zzadh zzadhVar = (zzadh) collection;
        int i8 = zzadhVar.zzb;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.zzb;
        if (d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        double[] dArr = this.zza;
        if (i10 > dArr.length) {
            this.zza = Arrays.copyOf(dArr, i10);
        }
        System.arraycopy(zzadhVar.zza, 0, this.zza, this.zzb, zzadhVar.zzb);
        this.zzb = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzadh)) {
            return super.equals(obj);
        }
        zzadh zzadhVar = (zzadh) obj;
        if (this.zzb != zzadhVar.zzb) {
            return false;
        }
        double[] dArr = zzadhVar.zza;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            if (Double.doubleToLongBits(this.zza[i8]) != Double.doubleToLongBits(dArr[i8])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        zzh(i8);
        return Double.valueOf(this.zza[i8]);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.zzb; i9++) {
            long jDoubleToLongBits = Double.doubleToLongBits(this.zza[i9]);
            byte[] bArr = zzaee.zzb;
            i8 = (i8 * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
        }
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i8 = this.zzb;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.zza[i9] == dDoubleValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        zzh(i8);
        double[] dArr = this.zza;
        double d6 = dArr[i8];
        int i9 = this.zzb;
        if (i8 < i9 - 1) {
            System.arraycopy(dArr, i8 + 1, dArr, i8, (i9 - i8) - 1);
        }
        this.zzb--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d6);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.zza;
        System.arraycopy(dArr, i9, dArr, i8, this.zzb - i9);
        this.zzb -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        zza();
        zzh(i8);
        double[] dArr = this.zza;
        double d6 = dArr[i8];
        dArr[i8] = dDoubleValue;
        return Double.valueOf(d6);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaed
    public final /* bridge */ /* synthetic */ zzaed zzd(int i8) {
        if (i8 >= this.zzb) {
            return new zzadh(Arrays.copyOf(this.zza, i8), this.zzb, true);
        }
        throw new IllegalArgumentException();
    }

    public final double zze(int i8) {
        zzh(i8);
        return this.zza[i8];
    }

    public final void zzf(double d6) {
        zza();
        int i8 = this.zzb;
        double[] dArr = this.zza;
        if (i8 == dArr.length) {
            double[] dArr2 = new double[O.v(i8, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i8);
            this.zza = dArr2;
        }
        double[] dArr3 = this.zza;
        int i9 = this.zzb;
        this.zzb = i9 + 1;
        dArr3[i9] = d6;
    }

    private zzadh(double[] dArr, int i8, boolean z7) {
        super(z7);
        this.zza = dArr;
        this.zzb = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzf(((Double) obj).doubleValue());
        return true;
    }
}
