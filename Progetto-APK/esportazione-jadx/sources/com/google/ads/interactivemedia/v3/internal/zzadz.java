package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzadz extends zzacj implements RandomAccess, zzaec {
    private static final zzadz zza = new zzadz(new int[0], 0, false);
    private int[] zzb;
    private int zzc;

    public zzadz() {
        this(new int[10], 0, true);
    }

    public static zzadz zzf() {
        return zza;
    }

    private final String zzh(int i8) {
        return U2.j("Index:", i8, ", Size:", this.zzc);
    }

    private final void zzi(int i8) {
        if (i8 < 0 || i8 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzh(i8));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i8, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzh(i8));
        }
        int i10 = i8 + 1;
        int[] iArr = this.zzb;
        if (i9 < iArr.length) {
            System.arraycopy(iArr, i8, iArr, i10, i9 - i8);
        } else {
            int[] iArr2 = new int[O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i8);
            System.arraycopy(this.zzb, i8, iArr2, i10, this.zzc - i8);
            this.zzb = iArr2;
        }
        this.zzb[i8] = iIntValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        byte[] bArr = zzaee.zzb;
        collection.getClass();
        if (!(collection instanceof zzadz)) {
            return super.addAll(collection);
        }
        zzadz zzadzVar = (zzadz) collection;
        int i8 = zzadzVar.zzc;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.zzc;
        if (d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        int[] iArr = this.zzb;
        if (i10 > iArr.length) {
            this.zzb = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(zzadzVar.zzb, 0, this.zzb, this.zzc, zzadzVar.zzc);
        this.zzc = i10;
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
        if (!(obj instanceof zzadz)) {
            return super.equals(obj);
        }
        zzadz zzadzVar = (zzadz) obj;
        if (this.zzc != zzadzVar.zzc) {
            return false;
        }
        int[] iArr = zzadzVar.zzb;
        for (int i8 = 0; i8 < this.zzc; i8++) {
            if (this.zzb[i8] != iArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        zzi(i8);
        return Integer.valueOf(this.zzb[i8]);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.zzc; i9++) {
            i8 = (i8 * 31) + this.zzb[i9];
        }
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.zzc;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.zzb[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        zzi(i8);
        int[] iArr = this.zzb;
        int i9 = iArr[i8];
        int i10 = this.zzc;
        if (i8 < i10 - 1) {
            System.arraycopy(iArr, i8 + 1, iArr, i8, (i10 - i8) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.zzb;
        System.arraycopy(iArr, i9, iArr, i8, this.zzc - i9);
        this.zzc -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zza();
        zzi(i8);
        int[] iArr = this.zzb;
        int i9 = iArr[i8];
        iArr[i8] = iIntValue;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaed
    public final /* bridge */ /* synthetic */ zzaed zzd(int i8) {
        if (i8 >= this.zzc) {
            return new zzadz(Arrays.copyOf(this.zzb, i8), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    public final int zze(int i8) {
        zzi(i8);
        return this.zzb[i8];
    }

    public final void zzg(int i8) {
        zza();
        int i9 = this.zzc;
        int[] iArr = this.zzb;
        if (i9 == iArr.length) {
            int[] iArr2 = new int[O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i9);
            this.zzb = iArr2;
        }
        int[] iArr3 = this.zzb;
        int i10 = this.zzc;
        this.zzc = i10 + 1;
        iArr3[i10] = i8;
    }

    private zzadz(int[] iArr, int i8, boolean z7) {
        super(z7);
        this.zzb = iArr;
        this.zzc = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzg(((Integer) obj).intValue());
        return true;
    }
}
