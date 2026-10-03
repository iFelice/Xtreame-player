package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class W2 extends AbstractC2546d2 implements RandomAccess {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Object[] f23029J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final W2 f23030K;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f23031H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23032I;

    static {
        Object[] objArr = new Object[0];
        f23029J = objArr;
        f23030K = new W2(objArr, 0, false);
    }

    public W2(Object[] objArr, int i8, boolean z7) {
        super(z7);
        this.f23031H = objArr;
        this.f23032I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        b();
        if (i8 < 0 || i8 > (i9 = this.f23032I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23032I));
        }
        int i10 = i8 + 1;
        Object[] objArr = this.f23031H;
        int length = objArr.length;
        if (i9 < length) {
            System.arraycopy(objArr, i8, objArr, i10, i9 - i8);
        } else {
            Object[] objArr2 = new Object[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f23031H, 0, objArr2, 0, i8);
            System.arraycopy(this.f23031H, i8, objArr2, i10, this.f23032I - i8);
            this.f23031H = objArr2;
        }
        this.f23031H[i8] = obj;
        this.f23032I++;
        ((AbstractList) this).modCount++;
    }

    public final void c(int i8) {
        if (i8 < 0 || i8 >= this.f23032I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23032I));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        c(i8);
        return this.f23031H[i8];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2546d2, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        c(i8);
        Object[] objArr = this.f23031H;
        Object obj = objArr[i8];
        int i9 = this.f23032I;
        if (i8 < i9 - 1) {
            System.arraycopy(objArr, i8 + 1, objArr, i8, (i9 - i8) - 1);
        }
        this.f23032I--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        b();
        c(i8);
        Object[] objArr = this.f23031H;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23032I;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2661y2
    public final /* bridge */ /* synthetic */ InterfaceC2661y2 zzd(int i8) {
        if (i8 >= this.f23032I) {
            return new W2(i8 == 0 ? f23029J : Arrays.copyOf(this.f23031H, i8), this.f23032I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        int i8 = this.f23032I;
        int length = this.f23031H.length;
        if (i8 == length) {
            this.f23031H = Arrays.copyOf(this.f23031H, Math.max(((length * 3) / 2) + 1, 10));
        }
        Object[] objArr = this.f23031H;
        int i9 = this.f23032I;
        this.f23032I = i9 + 1;
        objArr[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
