package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class F extends AbstractC2748k implements RandomAccess, H, InterfaceC2717g0 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final F f23506J;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int[] f23507H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23508I;

    static {
        F f8 = new F(new int[0], 0);
        f23506J = f8;
        f8.f23887G = false;
    }

    public F(int[] iArr, int i8) {
        this.f23507H = iArr;
        this.f23508I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.f23508I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23508I));
        }
        int[] iArr = this.f23507H;
        if (i9 < iArr.length) {
            System.arraycopy(iArr, i8, iArr, i8 + 1, i9 - i8);
        } else {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i8);
            System.arraycopy(this.f23507H, i8, iArr2, i8 + 1, this.f23508I - i8);
            this.f23507H = iArr2;
        }
        this.f23507H[i8] = iIntValue;
        this.f23508I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        Charset charset = J.f23560a;
        collection.getClass();
        if (!(collection instanceof F)) {
            return super.addAll(collection);
        }
        F f8 = (F) collection;
        int i8 = f8.f23508I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f23508I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        int[] iArr = this.f23507H;
        if (i10 > iArr.length) {
            this.f23507H = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(f8.f23507H, 0, this.f23507H, this.f23508I, f8.f23508I);
        this.f23508I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void b(int i8) {
        zza();
        int i9 = this.f23508I;
        int[] iArr = this.f23507H;
        if (i9 == iArr.length) {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i9);
            this.f23507H = iArr2;
        }
        int[] iArr3 = this.f23507H;
        int i10 = this.f23508I;
        this.f23508I = i10 + 1;
        iArr3[i10] = i8;
    }

    public final void c(int i8) {
        if (i8 < 0 || i8 >= this.f23508I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23508I));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F)) {
            return super.equals(obj);
        }
        F f8 = (F) obj;
        if (this.f23508I != f8.f23508I) {
            return false;
        }
        int[] iArr = f8.f23507H;
        for (int i8 = 0; i8 < this.f23508I; i8++) {
            if (this.f23507H[i8] != iArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        c(i8);
        return Integer.valueOf(this.f23507H[i8]);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f23508I; i9++) {
            i8 = (i8 * 31) + this.f23507H[i9];
        }
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f23508I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f23507H[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        c(i8);
        int[] iArr = this.f23507H;
        int i9 = iArr[i8];
        int i10 = this.f23508I;
        if (i8 < i10 - 1) {
            System.arraycopy(iArr, i8 + 1, iArr, i8, (i10 - i8) - 1);
        }
        this.f23508I--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f23507H;
        System.arraycopy(iArr, i9, iArr, i8, this.f23508I - i9);
        this.f23508I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zza();
        c(i8);
        int[] iArr = this.f23507H;
        int i9 = iArr[i8];
        iArr[i8] = iIntValue;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23508I;
    }

    @Override // com.google.android.gms.internal.pal.I
    public final /* bridge */ /* synthetic */ I zzd(int i8) {
        if (i8 >= this.f23508I) {
            return new F(Arrays.copyOf(this.f23507H, i8), this.f23508I);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        b(((Integer) obj).intValue());
        return true;
    }
}
