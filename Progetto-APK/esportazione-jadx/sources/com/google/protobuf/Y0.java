package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class Y0 extends AbstractC2883c implements InterfaceC2944r1, RandomAccess, InterfaceC2898f2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Y0 f24400J = new Y0(new float[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public float[] f24401H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f24402I;

    public Y0(float[] fArr, int i8, boolean z7) {
        super(z7);
        this.f24401H = fArr;
        this.f24402I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        float fFloatValue = ((Float) obj).floatValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f24402I)) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24402I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
        float[] fArr = this.f24401H;
        if (i9 < fArr.length) {
            System.arraycopy(fArr, i8, fArr, i8 + 1, i9 - i8);
        } else {
            float[] fArr2 = new float[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i8);
            System.arraycopy(this.f24401H, i8, fArr2, i8 + 1, this.f24402I - i8);
            this.f24401H = fArr2;
        }
        this.f24401H[i8] = fFloatValue;
        this.f24402I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2960v1.f24524a;
        collection.getClass();
        if (!(collection instanceof Y0)) {
            return super.addAll(collection);
        }
        Y0 y7 = (Y0) collection;
        int i8 = y7.f24402I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f24402I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        float[] fArr = this.f24401H;
        if (i10 > fArr.length) {
            this.f24401H = Arrays.copyOf(fArr, i10);
        }
        System.arraycopy(y7.f24401H, 0, this.f24401H, this.f24402I, y7.f24402I);
        this.f24402I = i10;
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
        if (!(obj instanceof Y0)) {
            return super.equals(obj);
        }
        Y0 y7 = (Y0) obj;
        if (this.f24402I != y7.f24402I) {
            return false;
        }
        float[] fArr = y7.f24401H;
        for (int i8 = 0; i8 < this.f24402I; i8++) {
            if (Float.floatToIntBits(this.f24401H[i8]) != Float.floatToIntBits(fArr[i8])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        if (i8 >= this.f24402I) {
            return new Y0(Arrays.copyOf(this.f24401H, i8), this.f24402I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        l(i8);
        return Float.valueOf(this.f24401H[i8]);
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i8 = 0; i8 < this.f24402I; i8++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f24401H[i8]);
        }
        return iFloatToIntBits;
    }

    public final void i(float f8) {
        b();
        int i8 = this.f24402I;
        float[] fArr = this.f24401H;
        if (i8 == fArr.length) {
            float[] fArr2 = new float[A0.O.v(i8, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i8);
            this.f24401H = fArr2;
        }
        float[] fArr3 = this.f24401H;
        int i9 = this.f24402I;
        this.f24402I = i9 + 1;
        fArr3[i9] = f8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i8 = this.f24402I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f24401H[i9] == fFloatValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f24402I) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24402I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        l(i8);
        float[] fArr = this.f24401H;
        float f8 = fArr[i8];
        int i9 = this.f24402I;
        if (i8 < i9 - 1) {
            System.arraycopy(fArr, i8 + 1, fArr, i8, (i9 - i8) - 1);
        }
        this.f24402I--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f8);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f24401H;
        System.arraycopy(fArr, i9, fArr, i8, this.f24402I - i9);
        this.f24402I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        b();
        l(i8);
        float[] fArr = this.f24401H;
        float f8 = fArr[i8];
        fArr[i8] = fFloatValue;
        return Float.valueOf(f8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24402I;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Float) obj).floatValue());
        return true;
    }
}
