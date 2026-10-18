package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.protobuf.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2921l1 extends AbstractC2883c implements InterfaceC2948s1, RandomAccess, InterfaceC2898f2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2921l1 f24468J = new C2921l1(new int[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int[] f24469H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f24470I;

    public C2921l1() {
        this(new int[10], 0, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f24470I)) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24470I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
        int[] iArr = this.f24469H;
        if (i9 < iArr.length) {
            System.arraycopy(iArr, i8, iArr, i8 + 1, i9 - i8);
        } else {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i8);
            System.arraycopy(this.f24469H, i8, iArr2, i8 + 1, this.f24470I - i8);
            this.f24469H = iArr2;
        }
        this.f24469H[i8] = iIntValue;
        this.f24470I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2960v1.f24524a;
        collection.getClass();
        if (!(collection instanceof C2921l1)) {
            return super.addAll(collection);
        }
        C2921l1 c2921l1 = (C2921l1) collection;
        int i8 = c2921l1.f24470I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f24470I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        int[] iArr = this.f24469H;
        if (i10 > iArr.length) {
            this.f24469H = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(c2921l1.f24469H, 0, this.f24469H, this.f24470I, c2921l1.f24470I);
        this.f24470I = i10;
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
        if (!(obj instanceof C2921l1)) {
            return super.equals(obj);
        }
        C2921l1 c2921l1 = (C2921l1) obj;
        if (this.f24470I != c2921l1.f24470I) {
            return false;
        }
        int[] iArr = c2921l1.f24469H;
        for (int i8 = 0; i8 < this.f24470I; i8++) {
            if (this.f24469H[i8] != iArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        if (i8 >= this.f24470I) {
            return new C2921l1(Arrays.copyOf(this.f24469H, i8), this.f24470I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        return Integer.valueOf(n(i8));
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f24470I; i9++) {
            i8 = (i8 * 31) + this.f24469H[i9];
        }
        return i8;
    }

    public final void i(int i8) {
        b();
        int i9 = this.f24470I;
        int[] iArr = this.f24469H;
        if (i9 == iArr.length) {
            int[] iArr2 = new int[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i9);
            this.f24469H = iArr2;
        }
        int[] iArr3 = this.f24469H;
        int i10 = this.f24470I;
        this.f24470I = i10 + 1;
        iArr3[i10] = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f24470I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f24469H[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f24470I) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24470I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
    }

    public final int n(int i8) {
        l(i8);
        return this.f24469H[i8];
    }

    public final int o(int i8, int i9) {
        b();
        l(i8);
        int[] iArr = this.f24469H;
        int i10 = iArr[i8];
        iArr[i8] = i9;
        return i10;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        l(i8);
        int[] iArr = this.f24469H;
        int i9 = iArr[i8];
        int i10 = this.f24470I;
        if (i8 < i10 - 1) {
            System.arraycopy(iArr, i8 + 1, iArr, i8, (i10 - i8) - 1);
        }
        this.f24470I--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f24469H;
        System.arraycopy(iArr, i9, iArr, i8, this.f24470I - i9);
        this.f24470I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        return Integer.valueOf(o(i8, ((Integer) obj).intValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24470I;
    }

    public C2921l1(int[] iArr, int i8, boolean z7) {
        super(z7);
        this.f24469H = iArr;
        this.f24470I = i8;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Integer) obj).intValue());
        return true;
    }
}
