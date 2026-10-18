package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class FH extends QG implements RandomAccess, InterfaceC2184wH, TH {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final FH f13343J = new FH(new long[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long[] f13344H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f13345I;

    public FH(long[] jArr, int i8, boolean z7) {
        super(z7);
        this.f13344H = jArr;
        this.f13345I = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2236xH
    public final InterfaceC2236xH a(int i8) {
        if (i8 >= this.f13345I) {
            return new FH(Arrays.copyOf(this.f13344H, i8), this.f13345I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        long jLongValue = ((Long) obj).longValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f13345I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f13345I));
        }
        int i10 = i8 + 1;
        long[] jArr = this.f13344H;
        if (i9 < jArr.length) {
            System.arraycopy(jArr, i8, jArr, i10, i9 - i8);
        } else {
            long[] jArr2 = new long[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            System.arraycopy(this.f13344H, i8, jArr2, i10, this.f13345I - i8);
            this.f13344H = jArr2;
        }
        this.f13344H[i8] = jLongValue;
        this.f13345I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2288yH.f22010a;
        collection.getClass();
        if (!(collection instanceof FH)) {
            return super.addAll(collection);
        }
        FH fh = (FH) collection;
        int i8 = fh.f13345I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f13345I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        long[] jArr = this.f13344H;
        if (i10 > jArr.length) {
            this.f13344H = Arrays.copyOf(jArr, i10);
        }
        System.arraycopy(fh.f13344H, 0, this.f13344H, this.f13345I, fh.f13345I);
        this.f13345I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final long c(int i8) {
        l(i8);
        return this.f13344H[i8];
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
        if (!(obj instanceof FH)) {
            return super.equals(obj);
        }
        FH fh = (FH) obj;
        if (this.f13345I != fh.f13345I) {
            return false;
        }
        long[] jArr = fh.f13344H;
        for (int i8 = 0; i8 < this.f13345I; i8++) {
            if (this.f13344H[i8] != jArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        l(i8);
        return Long.valueOf(this.f13344H[i8]);
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f13345I; i9++) {
            long j8 = this.f13344H[i9];
            Charset charset = AbstractC2288yH.f22010a;
            i8 = (i8 * 31) + ((int) (j8 ^ (j8 >>> 32)));
        }
        return i8;
    }

    public final void i(long j8) {
        b();
        int i8 = this.f13345I;
        long[] jArr = this.f13344H;
        if (i8 == jArr.length) {
            long[] jArr2 = new long[A0.O.v(i8, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i8);
            this.f13344H = jArr2;
        }
        long[] jArr3 = this.f13344H;
        int i9 = this.f13345I;
        this.f13345I = i9 + 1;
        jArr3[i9] = j8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i8 = this.f13345I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f13344H[i9] == jLongValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f13345I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f13345I));
        }
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        b();
        l(i8);
        long[] jArr = this.f13344H;
        long j8 = jArr[i8];
        int i9 = this.f13345I;
        if (i8 < i9 - 1) {
            System.arraycopy(jArr, i8 + 1, jArr, i8, (i9 - i8) - 1);
        }
        this.f13345I--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f13344H;
        System.arraycopy(jArr, i9, jArr, i8, this.f13345I - i9);
        this.f13345I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        b();
        l(i8);
        long[] jArr = this.f13344H;
        long j8 = jArr[i8];
        jArr[i8] = jLongValue;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13345I;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        i(((Long) obj).longValue());
        return true;
    }
}
