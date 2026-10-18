package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class F1 extends AbstractC2883c implements InterfaceC2952t1, RandomAccess, InterfaceC2898f2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final F1 f24248J = new F1(new long[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long[] f24249H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f24250I;

    public F1() {
        this(new long[10], 0, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        long jLongValue = ((Long) obj).longValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f24250I)) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24250I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
        long[] jArr = this.f24249H;
        if (i9 < jArr.length) {
            System.arraycopy(jArr, i8, jArr, i8 + 1, i9 - i8);
        } else {
            long[] jArr2 = new long[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            System.arraycopy(this.f24249H, i8, jArr2, i8 + 1, this.f24250I - i8);
            this.f24249H = jArr2;
        }
        this.f24249H[i8] = jLongValue;
        this.f24250I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2960v1.f24524a;
        collection.getClass();
        if (!(collection instanceof F1)) {
            return super.addAll(collection);
        }
        F1 f8 = (F1) collection;
        int i8 = f8.f24250I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f24250I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        long[] jArr = this.f24249H;
        if (i10 > jArr.length) {
            this.f24249H = Arrays.copyOf(jArr, i10);
        }
        System.arraycopy(f8.f24249H, 0, this.f24249H, this.f24250I, f8.f24250I);
        this.f24250I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F1)) {
            return super.equals(obj);
        }
        F1 f8 = (F1) obj;
        if (this.f24250I != f8.f24250I) {
            return false;
        }
        long[] jArr = f8.f24249H;
        for (int i8 = 0; i8 < this.f24250I; i8++) {
            if (this.f24249H[i8] != jArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        if (i8 >= this.f24250I) {
            return new F1(Arrays.copyOf(this.f24249H, i8), this.f24250I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        l(i8);
        return Long.valueOf(this.f24249H[i8]);
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i8 = 0; i8 < this.f24250I; i8++) {
            iB = (iB * 31) + AbstractC2960v1.b(this.f24249H[i8]);
        }
        return iB;
    }

    public final void i(long j8) {
        b();
        int i8 = this.f24250I;
        long[] jArr = this.f24249H;
        if (i8 == jArr.length) {
            long[] jArr2 = new long[A0.O.v(i8, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            this.f24249H = jArr2;
        }
        long[] jArr3 = this.f24249H;
        int i9 = this.f24250I;
        this.f24250I = i9 + 1;
        jArr3[i9] = j8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i8 = this.f24250I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f24249H[i9] == jLongValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f24250I) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24250I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        l(i8);
        long[] jArr = this.f24249H;
        long j8 = jArr[i8];
        int i9 = this.f24250I;
        if (i8 < i9 - 1) {
            System.arraycopy(jArr, i8 + 1, jArr, i8, (i9 - i8) - 1);
        }
        this.f24250I--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f24249H;
        System.arraycopy(jArr, i9, jArr, i8, this.f24250I - i9);
        this.f24250I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        b();
        l(i8);
        long[] jArr = this.f24249H;
        long j8 = jArr[i8];
        jArr[i8] = jLongValue;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24250I;
    }

    public F1(long[] jArr, int i8, boolean z7) {
        super(z7);
        this.f24249H = jArr;
        this.f24250I = i8;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Long) obj).longValue());
        return true;
    }
}
