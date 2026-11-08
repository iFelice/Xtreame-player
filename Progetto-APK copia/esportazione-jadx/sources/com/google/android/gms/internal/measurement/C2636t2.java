package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2636t2 extends AbstractC2546d2 implements RandomAccess, InterfaceC2651w2, U2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final int[] f23256J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C2636t2 f23257K;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int[] f23258H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23259I;

    static {
        int[] iArr = new int[0];
        f23256J = iArr;
        f23257K = new C2636t2(iArr, 0, false);
    }

    public C2636t2(int[] iArr, int i8, boolean z7) {
        super(z7);
        this.f23258H = iArr;
        this.f23259I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f23259I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23259I));
        }
        int i10 = i8 + 1;
        int[] iArr = this.f23258H;
        int length = iArr.length;
        if (i9 < length) {
            System.arraycopy(iArr, i8, iArr, i10, i9 - i8);
        } else {
            int[] iArr2 = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f23258H, 0, iArr2, 0, i8);
            System.arraycopy(this.f23258H, i8, iArr2, i10, this.f23259I - i8);
            this.f23258H = iArr2;
        }
        this.f23258H[i8] = iIntValue;
        this.f23259I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2666z2.f23416a;
        collection.getClass();
        if (!(collection instanceof C2636t2)) {
            return super.addAll(collection);
        }
        C2636t2 c2636t2 = (C2636t2) collection;
        int i8 = c2636t2.f23259I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f23259I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        int[] iArr = this.f23258H;
        if (i10 > iArr.length) {
            this.f23258H = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(c2636t2.f23258H, 0, this.f23258H, this.f23259I, c2636t2.f23259I);
        this.f23259I = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final int c(int i8) {
        o(i8);
        return this.f23258H[i8];
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
        if (!(obj instanceof C2636t2)) {
            return super.equals(obj);
        }
        C2636t2 c2636t2 = (C2636t2) obj;
        if (this.f23259I != c2636t2.f23259I) {
            return false;
        }
        int[] iArr = c2636t2.f23258H;
        for (int i8 = 0; i8 < this.f23259I; i8++) {
            if (this.f23258H[i8] != iArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i8) {
        o(i8);
        return Integer.valueOf(this.f23258H[i8]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f23259I; i9++) {
            i8 = (i8 * 31) + this.f23258H[i9];
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2661y2
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final C2636t2 zzd(int i8) {
        if (i8 >= this.f23259I) {
            return new C2636t2(i8 == 0 ? f23256J : Arrays.copyOf(this.f23258H, i8), this.f23259I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f23259I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f23258H[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        b();
        int i9 = this.f23259I;
        int length = this.f23258H.length;
        if (i9 == length) {
            int[] iArr = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f23258H, 0, iArr, 0, this.f23259I);
            this.f23258H = iArr;
        }
        int[] iArr2 = this.f23258H;
        int i10 = this.f23259I;
        this.f23259I = i10 + 1;
        iArr2[i10] = i8;
    }

    public final void n(int i8) {
        int length = this.f23258H.length;
        if (i8 <= length) {
            return;
        }
        if (length == 0) {
            this.f23258H = new int[Math.max(i8, 10)];
            return;
        }
        while (length < i8) {
            length = Math.max(((length * 3) / 2) + 1, 10);
        }
        this.f23258H = Arrays.copyOf(this.f23258H, length);
    }

    public final void o(int i8) {
        if (i8 < 0 || i8 >= this.f23259I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23259I));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i8) {
        b();
        o(i8);
        int[] iArr = this.f23258H;
        int i9 = iArr[i8];
        int i10 = this.f23259I;
        if (i8 < i10 - 1) {
            System.arraycopy(iArr, i8 + 1, iArr, i8, (i10 - i8) - 1);
        }
        this.f23259I--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f23258H;
        System.arraycopy(iArr, i9, iArr, i8, this.f23259I - i9);
        this.f23259I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        b();
        o(i8);
        int[] iArr = this.f23258H;
        int i9 = iArr[i8];
        iArr[i8] = iIntValue;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23259I;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Integer) obj).intValue());
        return true;
    }
}
