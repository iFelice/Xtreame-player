package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class WH extends QG implements RandomAccess {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final WH f17195J = new WH(new Object[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f17196H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f17197I;

    public WH(Object[] objArr, int i8, boolean z7) {
        super(z7);
        this.f17196H = objArr;
        this.f17197I = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2236xH
    public final /* bridge */ /* synthetic */ InterfaceC2236xH a(int i8) {
        if (i8 >= this.f17197I) {
            return new WH(Arrays.copyOf(this.f17196H, i8), this.f17197I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        b();
        if (i8 < 0 || i8 > (i9 = this.f17197I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f17197I));
        }
        int i10 = i8 + 1;
        Object[] objArr = this.f17196H;
        if (i9 < objArr.length) {
            System.arraycopy(objArr, i8, objArr, i10, i9 - i8);
        } else {
            Object[] objArr2 = new Object[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i8);
            System.arraycopy(this.f17196H, i8, objArr2, i10, this.f17197I - i8);
            this.f17196H = objArr2;
        }
        this.f17196H[i8] = obj;
        this.f17197I++;
        ((AbstractList) this).modCount++;
    }

    public final void c(int i8) {
        if (i8 < 0 || i8 >= this.f17197I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f17197I));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        c(i8);
        return this.f17196H[i8];
    }

    @Override // com.google.android.gms.internal.ads.QG, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        c(i8);
        Object[] objArr = this.f17196H;
        Object obj = objArr[i8];
        int i9 = this.f17197I;
        if (i8 < i9 - 1) {
            System.arraycopy(objArr, i8 + 1, objArr, i8, (i9 - i8) - 1);
        }
        this.f17197I--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        b();
        c(i8);
        Object[] objArr = this.f17196H;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f17197I;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        int i8 = this.f17197I;
        Object[] objArr = this.f17196H;
        if (i8 == objArr.length) {
            this.f17196H = Arrays.copyOf(objArr, ((i8 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f17196H;
        int i9 = this.f17197I;
        this.f17197I = i9 + 1;
        objArr2[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
