package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1924rH extends QG implements RandomAccess, InterfaceC2080uH, TH {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C1924rH f20709J = new C1924rH(new int[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int[] f20710H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f20711I;

    public C1924rH(int[] iArr, int i8, boolean z7) {
        super(z7);
        this.f20710H = iArr;
        this.f20711I = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2236xH
    public final InterfaceC2236xH a(int i8) {
        if (i8 >= this.f20711I) {
            return new C1924rH(Arrays.copyOf(this.f20710H, i8), this.f20711I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f20711I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f20711I));
        }
        int i10 = i8 + 1;
        int[] iArr = this.f20710H;
        if (i9 < iArr.length) {
            System.arraycopy(iArr, i8, iArr, i10, i9 - i8);
        } else {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i8);
            System.arraycopy(this.f20710H, i8, iArr2, i10, this.f20711I - i8);
            this.f20710H = iArr2;
        }
        this.f20710H[i8] = iIntValue;
        this.f20711I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2288yH.f22010a;
        collection.getClass();
        if (!(collection instanceof C1924rH)) {
            return super.addAll(collection);
        }
        C1924rH c1924rH = (C1924rH) collection;
        int i8 = c1924rH.f20711I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f20711I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        int[] iArr = this.f20710H;
        if (i10 > iArr.length) {
            this.f20710H = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(c1924rH.f20710H, 0, this.f20710H, this.f20711I, c1924rH.f20711I);
        this.f20711I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final int c(int i8) {
        l(i8);
        return this.f20710H[i8];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1924rH)) {
            return super.equals(obj);
        }
        C1924rH c1924rH = (C1924rH) obj;
        if (this.f20711I != c1924rH.f20711I) {
            return false;
        }
        int[] iArr = c1924rH.f20710H;
        for (int i8 = 0; i8 < this.f20711I; i8++) {
            if (this.f20710H[i8] != iArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        l(i8);
        return Integer.valueOf(this.f20710H[i8]);
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f20711I; i9++) {
            i8 = (i8 * 31) + this.f20710H[i9];
        }
        return i8;
    }

    public final void i(int i8) {
        b();
        int i9 = this.f20711I;
        int[] iArr = this.f20710H;
        if (i9 == iArr.length) {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i9);
            this.f20710H = iArr2;
        }
        int[] iArr3 = this.f20710H;
        int i10 = this.f20711I;
        this.f20711I = i10 + 1;
        iArr3[i10] = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f20711I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f20710H[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f20711I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f20711I));
        }
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        b();
        l(i8);
        int[] iArr = this.f20710H;
        int i9 = iArr[i8];
        int i10 = this.f20711I;
        if (i8 < i10 - 1) {
            System.arraycopy(iArr, i8 + 1, iArr, i8, (i10 - i8) - 1);
        }
        this.f20711I--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f20710H;
        System.arraycopy(iArr, i9, iArr, i8, this.f20711I - i9);
        this.f20711I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        b();
        l(i8);
        int[] iArr = this.f20710H;
        int i9 = iArr[i8];
        iArr[i8] = iIntValue;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20711I;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        i(((Integer) obj).intValue());
        return true;
    }
}
