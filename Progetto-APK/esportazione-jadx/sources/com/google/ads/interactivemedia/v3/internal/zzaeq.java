package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzaeq extends zzacj implements RandomAccess, zzaed {
    private long[] zza;
    private int zzb;

    static {
        new zzaeq(new long[0], 0, false);
    }

    public zzaeq() {
        this(new long[10], 0, true);
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
        long jLongValue = ((Long) obj).longValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.zzb)) {
            throw new IndexOutOfBoundsException(zzg(i8));
        }
        int i10 = i8 + 1;
        long[] jArr = this.zza;
        if (i9 < jArr.length) {
            System.arraycopy(jArr, i8, jArr, i10, i9 - i8);
        } else {
            long[] jArr2 = new long[O.v(i9, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            System.arraycopy(this.zza, i8, jArr2, i10, this.zzb - i8);
            this.zza = jArr2;
        }
        this.zza[i8] = jLongValue;
        this.zzb++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaee.zzb;
        collection.getClass();
        if (!(collection instanceof zzaeq)) {
            return super.addAll(collection);
        }
        zzaeq zzaeqVar = (zzaeq) collection;
        int i8 = zzaeqVar.zzb;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.zzb;
        if (d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        long[] jArr = this.zza;
        if (i10 > jArr.length) {
            this.zza = Arrays.copyOf(jArr, i10);
        }
        System.arraycopy(zzaeqVar.zza, 0, this.zza, this.zzb, zzaeqVar.zzb);
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
        if (!(obj instanceof zzaeq)) {
            return super.equals(obj);
        }
        zzaeq zzaeqVar = (zzaeq) obj;
        if (this.zzb != zzaeqVar.zzb) {
            return false;
        }
        long[] jArr = zzaeqVar.zza;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            if (this.zza[i8] != jArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        zzh(i8);
        return Long.valueOf(this.zza[i8]);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.zzb; i9++) {
            long j8 = this.zza[i9];
            byte[] bArr = zzaee.zzb;
            i8 = (i8 * 31) + ((int) (j8 ^ (j8 >>> 32)));
        }
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i8 = this.zzb;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.zza[i9] == jLongValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        zzh(i8);
        long[] jArr = this.zza;
        long j8 = jArr[i8];
        int i9 = this.zzb;
        if (i8 < i9 - 1) {
            System.arraycopy(jArr, i8 + 1, jArr, i8, (i9 - i8) - 1);
        }
        this.zzb--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zza;
        System.arraycopy(jArr, i9, jArr, i8, this.zzb - i9);
        this.zzb -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zza();
        zzh(i8);
        long[] jArr = this.zza;
        long j8 = jArr[i8];
        jArr[i8] = jLongValue;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaed
    public final /* bridge */ /* synthetic */ zzaed zzd(int i8) {
        if (i8 >= this.zzb) {
            return new zzaeq(Arrays.copyOf(this.zza, i8), this.zzb, true);
        }
        throw new IllegalArgumentException();
    }

    public final long zze(int i8) {
        zzh(i8);
        return this.zza[i8];
    }

    public final void zzf(long j8) {
        zza();
        int i8 = this.zzb;
        long[] jArr = this.zza;
        if (i8 == jArr.length) {
            long[] jArr2 = new long[O.v(i8, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            this.zza = jArr2;
        }
        long[] jArr3 = this.zza;
        int i9 = this.zzb;
        this.zzb = i9 + 1;
        jArr3[i9] = j8;
    }

    private zzaeq(long[] jArr, int i8, boolean z7) {
        super(z7);
        this.zza = jArr;
        this.zzb = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzf(((Long) obj).longValue());
        return true;
    }
}
