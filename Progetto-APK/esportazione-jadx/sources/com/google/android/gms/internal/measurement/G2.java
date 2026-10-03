package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class G2 extends AbstractC2546d2 implements RandomAccess, InterfaceC2656x2, U2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final long[] f22919J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final G2 f22920K;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long[] f22921H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f22922I;

    static {
        long[] jArr = new long[0];
        f22919J = jArr;
        f22920K = new G2(jArr, 0, false);
    }

    public G2(long[] jArr, int i8, boolean z7) {
        super(z7);
        this.f22921H = jArr;
        this.f22922I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        long jLongValue = ((Long) obj).longValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f22922I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22922I));
        }
        int i10 = i8 + 1;
        long[] jArr = this.f22921H;
        int length = jArr.length;
        if (i9 < length) {
            System.arraycopy(jArr, i8, jArr, i10, i9 - i8);
        } else {
            long[] jArr2 = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f22921H, 0, jArr2, 0, i8);
            System.arraycopy(this.f22921H, i8, jArr2, i10, this.f22922I - i8);
            this.f22921H = jArr2;
        }
        this.f22921H[i8] = jLongValue;
        this.f22922I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2666z2.f23416a;
        collection.getClass();
        if (!(collection instanceof G2)) {
            return super.addAll(collection);
        }
        G2 g8 = (G2) collection;
        int i8 = g8.f22922I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f22922I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        long[] jArr = this.f22921H;
        if (i10 > jArr.length) {
            this.f22921H = Arrays.copyOf(jArr, i10);
        }
        System.arraycopy(g8.f22921H, 0, this.f22921H, this.f22922I, g8.f22922I);
        this.f22922I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final long c(int i8) {
        o(i8);
        return this.f22921H[i8];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof G2)) {
            return super.equals(obj);
        }
        G2 g8 = (G2) obj;
        if (this.f22922I != g8.f22922I) {
            return false;
        }
        long[] jArr = g8.f22921H;
        for (int i8 = 0; i8 < this.f22922I; i8++) {
            if (this.f22921H[i8] != jArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        o(i8);
        return Long.valueOf(this.f22921H[i8]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f22922I; i9++) {
            long j8 = this.f22921H[i9];
            Charset charset = AbstractC2666z2.f23416a;
            i8 = (i8 * 31) + ((int) (j8 ^ (j8 >>> 32)));
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2661y2
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final G2 zzd(int i8) {
        if (i8 >= this.f22922I) {
            return new G2(i8 == 0 ? f22919J : Arrays.copyOf(this.f22921H, i8), this.f22922I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i8 = this.f22922I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f22921H[i9] == jLongValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(long j8) {
        b();
        int i8 = this.f22922I;
        int length = this.f22921H.length;
        if (i8 == length) {
            long[] jArr = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f22921H, 0, jArr, 0, this.f22922I);
            this.f22921H = jArr;
        }
        long[] jArr2 = this.f22921H;
        int i9 = this.f22922I;
        this.f22922I = i9 + 1;
        jArr2[i9] = j8;
    }

    public final void n(int i8) {
        int length = this.f22921H.length;
        if (i8 <= length) {
            return;
        }
        if (length == 0) {
            this.f22921H = new long[Math.max(i8, 10)];
            return;
        }
        while (length < i8) {
            length = Math.max(((length * 3) / 2) + 1, 10);
        }
        this.f22921H = Arrays.copyOf(this.f22921H, length);
    }

    public final void o(int i8) {
        if (i8 < 0 || i8 >= this.f22922I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22922I));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        b();
        o(i8);
        long[] jArr = this.f22921H;
        long j8 = jArr[i8];
        int i9 = this.f22922I;
        if (i8 < i9 - 1) {
            System.arraycopy(jArr, i8 + 1, jArr, i8, (i9 - i8) - 1);
        }
        this.f22922I--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f22921H;
        System.arraycopy(jArr, i9, jArr, i8, this.f22922I - i9);
        this.f22922I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        b();
        o(i8);
        long[] jArr = this.f22921H;
        long j8 = jArr[i8];
        jArr[i8] = jLongValue;
        return Long.valueOf(j8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22922I;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Long) obj).longValue());
        return true;
    }
}
