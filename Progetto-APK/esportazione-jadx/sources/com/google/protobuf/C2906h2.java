package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.protobuf.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2906h2 extends AbstractC2883c implements RandomAccess {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2906h2 f24450J = new C2906h2(new Object[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f24451H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f24452I;

    public C2906h2(Object[] objArr, int i8, boolean z7) {
        super(z7);
        this.f24451H = objArr;
        this.f24452I = i8;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        int i8 = this.f24452I;
        Object[] objArr = this.f24451H;
        if (i8 == objArr.length) {
            this.f24451H = Arrays.copyOf(objArr, ((i8 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f24451H;
        int i9 = this.f24452I;
        this.f24452I = i9 + 1;
        objArr2[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        if (i8 >= this.f24452I) {
            return new C2906h2(Arrays.copyOf(this.f24451H, i8), this.f24452I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        i(i8);
        return this.f24451H[i8];
    }

    public final void i(int i8) {
        if (i8 < 0 || i8 >= this.f24452I) {
            StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
            sbK.append(this.f24452I);
            throw new IndexOutOfBoundsException(sbK.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        i(i8);
        Object[] objArr = this.f24451H;
        Object obj = objArr[i8];
        int i9 = this.f24452I;
        if (i8 < i9 - 1) {
            System.arraycopy(objArr, i8 + 1, objArr, i8, (i9 - i8) - 1);
        }
        this.f24452I--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        b();
        i(i8);
        Object[] objArr = this.f24451H;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24452I;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        b();
        if (i8 >= 0 && i8 <= (i9 = this.f24452I)) {
            Object[] objArr = this.f24451H;
            if (i9 < objArr.length) {
                System.arraycopy(objArr, i8, objArr, i8 + 1, i9 - i8);
            } else {
                Object[] objArr2 = new Object[A0.O.v(i9, 3, 2, 1)];
                System.arraycopy(objArr, 0, objArr2, 0, i8);
                System.arraycopy(this.f24451H, i8, objArr2, i8 + 1, this.f24452I - i8);
                this.f24451H = objArr2;
            }
            this.f24451H[i8] = obj;
            this.f24452I++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder sbK = p000a.r.k("Index:", i8, ", Size:");
        sbK.append(this.f24452I);
        throw new IndexOutOfBoundsException(sbK.toString());
    }
}
