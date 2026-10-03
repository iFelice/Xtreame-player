package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzacn extends zzacj implements RandomAccess, zzaed {
    private boolean[] zza;
    private int zzb;

    static {
        new zzacn(new boolean[0], 0, false);
    }

    public zzacn() {
        this(new boolean[10], 0, true);
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
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.zzb)) {
            throw new IndexOutOfBoundsException(zzg(i8));
        }
        int i10 = i8 + 1;
        boolean[] zArr = this.zza;
        if (i9 < zArr.length) {
            System.arraycopy(zArr, i8, zArr, i10, i9 - i8);
        } else {
            boolean[] zArr2 = new boolean[O.v(i9, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i8);
            System.arraycopy(this.zza, i8, zArr2, i10, this.zzb - i8);
            this.zza = zArr2;
        }
        this.zza[i8] = zBooleanValue;
        this.zzb++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaee.zzb;
        collection.getClass();
        if (!(collection instanceof zzacn)) {
            return super.addAll(collection);
        }
        zzacn zzacnVar = (zzacn) collection;
        int i8 = zzacnVar.zzb;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.zzb;
        if (d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        boolean[] zArr = this.zza;
        if (i10 > zArr.length) {
            this.zza = Arrays.copyOf(zArr, i10);
        }
        System.arraycopy(zzacnVar.zza, 0, this.zza, this.zzb, zzacnVar.zzb);
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
        if (!(obj instanceof zzacn)) {
            return super.equals(obj);
        }
        zzacn zzacnVar = (zzacn) obj;
        if (this.zzb != zzacnVar.zzb) {
            return false;
        }
        boolean[] zArr = zzacnVar.zza;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            if (this.zza[i8] != zArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        zzh(i8);
        return Boolean.valueOf(this.zza[i8]);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZza = 1;
        for (int i8 = 0; i8 < this.zzb; i8++) {
            iZza = (iZza * 31) + zzaee.zza(this.zza[i8]);
        }
        return iZza;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i8 = this.zzb;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.zza[i9] == zBooleanValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        zzh(i8);
        boolean[] zArr = this.zza;
        boolean z7 = zArr[i8];
        int i9 = this.zzb;
        if (i8 < i9 - 1) {
            System.arraycopy(zArr, i8 + 1, zArr, i8, (i9 - i8) - 1);
        }
        this.zzb--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z7);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.zza;
        System.arraycopy(zArr, i9, zArr, i8, this.zzb - i9);
        this.zzb -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zza();
        zzh(i8);
        boolean[] zArr = this.zza;
        boolean z7 = zArr[i8];
        zArr[i8] = zBooleanValue;
        return Boolean.valueOf(z7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaed
    public final /* bridge */ /* synthetic */ zzaed zzd(int i8) {
        if (i8 >= this.zzb) {
            return new zzacn(Arrays.copyOf(this.zza, i8), this.zzb, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zze(boolean z7) {
        zza();
        int i8 = this.zzb;
        boolean[] zArr = this.zza;
        if (i8 == zArr.length) {
            boolean[] zArr2 = new boolean[O.v(i8, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i8);
            this.zza = zArr2;
        }
        boolean[] zArr3 = this.zza;
        int i9 = this.zzb;
        this.zzb = i9 + 1;
        zArr3[i9] = z7;
    }

    public final boolean zzf(int i8) {
        zzh(i8);
        return this.zza[i8];
    }

    private zzacn(boolean[] zArr, int i8, boolean z7) {
        super(z7);
        this.zza = zArr;
        this.zzb = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zze(((Boolean) obj).booleanValue());
        return true;
    }
}
