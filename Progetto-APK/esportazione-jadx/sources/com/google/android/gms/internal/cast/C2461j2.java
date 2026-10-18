package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2461j2 extends V1 implements RandomAccess, InterfaceC2465k2, I2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2461j2 f22748J = new C2461j2(new int[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int[] f22749H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f22750I;

    public C2461j2(int[] iArr, int i8, boolean z7) {
        super(z7);
        this.f22749H = iArr;
        this.f22750I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.f22750I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22750I));
        }
        int i10 = i8 + 1;
        int[] iArr = this.f22749H;
        if (i9 < iArr.length) {
            System.arraycopy(iArr, i8, iArr, i10, i9 - i8);
        } else {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i8);
            System.arraycopy(this.f22749H, i8, iArr2, i10, this.f22750I - i8);
            this.f22749H = iArr2;
        }
        this.f22749H[i8] = iIntValue;
        this.f22750I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        Charset charset = AbstractC2481o2.f22763a;
        collection.getClass();
        if (!(collection instanceof C2461j2)) {
            return super.addAll(collection);
        }
        C2461j2 c2461j2 = (C2461j2) collection;
        int i8 = c2461j2.f22750I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f22750I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        int[] iArr = this.f22749H;
        if (i10 > iArr.length) {
            this.f22749H = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(c2461j2.f22749H, 0, this.f22749H, this.f22750I, c2461j2.f22750I);
        this.f22750I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void b(int i8) {
        zza();
        int i9 = this.f22750I;
        int[] iArr = this.f22749H;
        if (i9 == iArr.length) {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i9);
            this.f22749H = iArr2;
        }
        int[] iArr3 = this.f22749H;
        int i10 = this.f22750I;
        this.f22750I = i10 + 1;
        iArr3[i10] = i8;
    }

    public final void c(int i8) {
        if (i8 < 0 || i8 >= this.f22750I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22750I));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2461j2)) {
            return super.equals(obj);
        }
        C2461j2 c2461j2 = (C2461j2) obj;
        if (this.f22750I != c2461j2.f22750I) {
            return false;
        }
        int[] iArr = c2461j2.f22749H;
        for (int i8 = 0; i8 < this.f22750I; i8++) {
            if (this.f22749H[i8] != iArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        c(i8);
        return Integer.valueOf(this.f22749H[i8]);
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f22750I; i9++) {
            i8 = (i8 * 31) + this.f22749H[i9];
        }
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f22750I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f22749H[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        c(i8);
        int[] iArr = this.f22749H;
        int i9 = iArr[i8];
        int i10 = this.f22750I;
        if (i8 < i10 - 1) {
            System.arraycopy(iArr, i8 + 1, iArr, i8, (i10 - i8) - 1);
        }
        this.f22750I--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f22749H;
        System.arraycopy(iArr, i9, iArr, i8, this.f22750I - i9);
        this.f22750I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zza();
        c(i8);
        int[] iArr = this.f22749H;
        int i9 = iArr[i8];
        iArr[i8] = iIntValue;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22750I;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2477n2
    public final InterfaceC2477n2 zzg(int i8) {
        if (i8 >= this.f22750I) {
            return new C2461j2(Arrays.copyOf(this.f22749H, i8), this.f22750I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        b(((Integer) obj).intValue());
        return true;
    }
}
