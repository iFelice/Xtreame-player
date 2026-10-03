package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class D0 extends AbstractC2883c implements InterfaceC2929n1, RandomAccess, InterfaceC2898f2 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final D0 f24242J = new D0(new double[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public double[] f24243H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f24244I;

    public D0(double[] dArr, int i8, boolean z7) {
        super(z7);
        this.f24243H = dArr;
        this.f24244I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        double dDoubleValue = ((Double) obj).doubleValue();
        b();
        if (i8 < 0 || i8 > (i9 = this.f24244I)) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24244I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
        double[] dArr = this.f24243H;
        if (i9 < dArr.length) {
            System.arraycopy(dArr, i8, dArr, i8 + 1, i9 - i8);
        } else {
            double[] dArr2 = new double[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i8);
            System.arraycopy(this.f24243H, i8, dArr2, i8 + 1, this.f24244I - i8);
            this.f24243H = dArr2;
        }
        this.f24243H[i8] = dDoubleValue;
        this.f24244I++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = AbstractC2960v1.f24524a;
        collection.getClass();
        if (!(collection instanceof D0)) {
            return super.addAll(collection);
        }
        D0 d6 = (D0) collection;
        int i8 = d6.f24244I;
        if (i8 == 0) {
            return false;
        }
        int i9 = this.f24244I;
        if (com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i9 < i8) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i8;
        double[] dArr = this.f24243H;
        if (i10 > dArr.length) {
            this.f24243H = Arrays.copyOf(dArr, i10);
        }
        System.arraycopy(d6.f24243H, 0, this.f24243H, this.f24244I, d6.f24244I);
        this.f24244I = i10;
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
        if (!(obj instanceof D0)) {
            return super.equals(obj);
        }
        D0 d6 = (D0) obj;
        if (this.f24244I != d6.f24244I) {
            return false;
        }
        double[] dArr = d6.f24243H;
        for (int i8 = 0; i8 < this.f24244I; i8++) {
            if (Double.doubleToLongBits(this.f24243H[i8]) != Double.doubleToLongBits(dArr[i8])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        if (i8 >= this.f24244I) {
            return new D0(Arrays.copyOf(this.f24243H, i8), this.f24244I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        l(i8);
        return Double.valueOf(this.f24243H[i8]);
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i8 = 0; i8 < this.f24244I; i8++) {
            iB = (iB * 31) + AbstractC2960v1.b(Double.doubleToLongBits(this.f24243H[i8]));
        }
        return iB;
    }

    public final void i(double d6) {
        b();
        int i8 = this.f24244I;
        double[] dArr = this.f24243H;
        if (i8 == dArr.length) {
            double[] dArr2 = new double[A0.O.v(i8, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i8);
            this.f24243H = dArr2;
        }
        double[] dArr3 = this.f24243H;
        int i9 = this.f24244I;
        this.f24244I = i9 + 1;
        dArr3[i9] = d6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i8 = this.f24244I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (this.f24243H[i9] == dDoubleValue) {
                return i9;
            }
        }
        return -1;
    }

    public final void l(int i8) {
        if (i8 < 0 || i8 >= this.f24244I) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24244I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        l(i8);
        double[] dArr = this.f24243H;
        double d6 = dArr[i8];
        int i9 = this.f24244I;
        if (i8 < i9 - 1) {
            System.arraycopy(dArr, i8 + 1, dArr, i8, (i9 - i8) - 1);
        }
        this.f24244I--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d6);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        b();
        if (i9 < i8) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f24243H;
        System.arraycopy(dArr, i9, dArr, i8, this.f24244I - i9);
        this.f24244I -= i9 - i8;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        b();
        l(i8);
        double[] dArr = this.f24243H;
        double d6 = dArr[i8];
        dArr[i8] = dDoubleValue;
        return Double.valueOf(d6);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24244I;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Double) obj).doubleValue());
        return true;
    }
}
