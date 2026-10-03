package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.v2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2508v2 extends V1 implements RandomAccess, InterfaceC2473m2, I2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2508v2 f22803J = new C2508v2(new long[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long[] f22804H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f22805I;

    public C2508v2(long[] jArr, int i8, boolean z7) {
        super(z7);
        this.f22804H = jArr;
        this.f22805I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        long jLongValue = ((Long) obj).longValue();
        zza();
        if (i8 < 0 || i8 > (i9 = this.f22805I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22805I));
        }
        int i10 = i8 + 1;
        long[] jArr = this.f22804H;
        if (i9 < jArr.length) {
            System.arraycopy(jArr, i8, jArr, i10, i9 - i8);
        } else {
            long[] jArr2 = new long[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            System.arraycopy(this.f22804H, i8, jArr2, i10, this.f22805I - i8);
            this.f22804H = jArr2;
        }
        this.f22804H[i8] = jLongValue;
        this.f22805I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        Charset charset = AbstractC2481o2.f22763a;
        collection.getClass();
        if (!(collection instanceof C2508v2)) {
            return super.addAll(collection);
        }
        C2508v2 c2508v2 = (C2508v2) collection;
        int i8 = c2508v2.f22805I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f22805I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        long[] jArr = this.f22804H;
        if (i10 > jArr.length) {
            this.f22804H = Arrays.copyOf(jArr, i10);
        }
        System.arraycopy(c2508v2.f22804H, 0, this.f22804H, this.f22805I, c2508v2.f22805I);
        this.f22805I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void b(int i8) {
        if (i8 < 0 || i8 >= this.f22805I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22805I));
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
        if (!(obj instanceof C2508v2)) {
            return super.equals(obj);
        }
        C2508v2 c2508v2 = (C2508v2) obj;
        if (this.f22805I != c2508v2.f22805I) {
            return false;
        }
        long[] jArr = c2508v2.f22804H;
        for (int i8 = 0; i8 < this.f22805I; i8++) {
            if (this.f22804H[i8] != jArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        b(i8);
        return Long.valueOf(this.f22804H[i8]);
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f22805I; i9++) {
            long j8 = this.f22804H[i9];
            Charset charset = AbstractC2481o2.f22763a;
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
        int i8 = this.f22805I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f22804H[i9] == jLongValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        zza();
        b(i8);
        long[] jArr = this.f22804H;
        long j8 = jArr[i8];
        int i9 = this.f22805I;
        if (i8 < i9 - 1) {
            System.arraycopy(jArr, i8 + 1, jArr, i8, (i9 - i8) - 1);
        }
        this.f22805I--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        zza();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f22804H;
        System.arraycopy(jArr, i9, jArr, i8, this.f22805I - i9);
        this.f22805I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zza();
        b(i8);
        long[] jArr = this.f22804H;
        long j8 = jArr[i8];
        jArr[i8] = jLongValue;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22805I;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2477n2
    public final /* bridge */ /* synthetic */ InterfaceC2477n2 zzg(int i8) {
        if (i8 >= this.f22805I) {
            return new C2508v2(Arrays.copyOf(this.f22804H, i8), this.f22805I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zza();
        int i8 = this.f22805I;
        long[] jArr = this.f22804H;
        if (i8 == jArr.length) {
            long[] jArr2 = new long[A0.O.v(i8, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            this.f22804H = jArr2;
        }
        long[] jArr3 = this.f22804H;
        int i9 = this.f22805I;
        this.f22805I = i9 + 1;
        jArr3[i9] = jLongValue;
        return true;
    }
}
