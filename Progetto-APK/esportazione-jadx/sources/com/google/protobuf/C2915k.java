package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.protobuf.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2915k extends AbstractC2883c implements InterfaceC2925m1, RandomAccess, InterfaceC2898f2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2915k f24459J = new C2915k(new boolean[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean[] f24460H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f24461I;

    public C2915k(boolean[] zArr, int i8, boolean z7) {
        super(z7);
        this.f24460H = zArr;
        this.f24461I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f24461I)) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24461I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
        boolean[] zArr = this.f24460H;
        if (i9 < zArr.length) {
            System.arraycopy(zArr, i8, zArr, i8 + 1, i9 - i8);
        } else {
            boolean[] zArr2 = new boolean[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i8);
            System.arraycopy(this.f24460H, i8, zArr2, i8 + 1, this.f24461I - i8);
            this.f24460H = zArr2;
        }
        this.f24460H[i8] = zBooleanValue;
        this.f24461I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2960v1.f24524a;
        collection.getClass();
        if (!(collection instanceof C2915k)) {
            return super.addAll(collection);
        }
        C2915k c2915k = (C2915k) collection;
        int i8 = c2915k.f24461I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f24461I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        boolean[] zArr = this.f24460H;
        if (i10 > zArr.length) {
            this.f24460H = Arrays.copyOf(zArr, i10);
        }
        System.arraycopy(c2915k.f24460H, 0, this.f24460H, this.f24461I, c2915k.f24461I);
        this.f24461I = i10;
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
        if (!(obj instanceof C2915k)) {
            return super.equals(obj);
        }
        C2915k c2915k = (C2915k) obj;
        if (this.f24461I != c2915k.f24461I) {
            return false;
        }
        boolean[] zArr = c2915k.f24460H;
        for (int i8 = 0; i8 < this.f24461I; i8++) {
            if (this.f24460H[i8] != zArr[i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        if (i8 >= this.f24461I) {
            return new C2915k(Arrays.copyOf(this.f24460H, i8), this.f24461I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        l(i8);
        return Boolean.valueOf(this.f24460H[i8]);
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f24461I; i9++) {
            int i10 = i8 * 31;
            boolean z7 = this.f24460H[i9];
            Charset charset = AbstractC2960v1.f24524a;
            i8 = i10 + (z7 ? 1231 : 1237);
        }
        return i8;
    }

    public final void i(boolean z7) {
        b();
        int i8 = this.f24461I;
        boolean[] zArr = this.f24460H;
        if (i8 == zArr.length) {
            boolean[] zArr2 = new boolean[A0.O.v(i8, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i8);
            this.f24460H = zArr2;
        }
        boolean[] zArr3 = this.f24460H;
        int i9 = this.f24461I;
        this.f24461I = i9 + 1;
        zArr3[i9] = z7;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i8 = this.f24461I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f24460H[i9] == zBooleanValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f24461I) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24461I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        l(i8);
        boolean[] zArr = this.f24460H;
        boolean z7 = zArr[i8];
        int i9 = this.f24461I;
        if (i8 < i9 - 1) {
            System.arraycopy(zArr, i8 + 1, zArr, i8, (i9 - i8) - 1);
        }
        this.f24461I--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z7);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f24460H;
        System.arraycopy(zArr, i9, zArr, i8, this.f24461I - i9);
        this.f24461I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        b();
        l(i8);
        boolean[] zArr = this.f24460H;
        boolean z7 = zArr[i8];
        zArr[i8] = zBooleanValue;
        return Boolean.valueOf(z7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24461I;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Boolean) obj).booleanValue());
        return true;
    }
}
