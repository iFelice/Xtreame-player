package com.google.android.gms.internal.cast;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class K2 extends V1 implements RandomAccess {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final K2 f22483J = new K2(new Object[0], 0, false);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f22484H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f22485I;

    public K2(Object[] objArr, int i8, boolean z7) {
        super(z7);
        this.f22484H = objArr;
        this.f22485I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        zza();
        if (i8 < 0 || i8 > (i9 = this.f22485I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22485I));
        }
        int i10 = i8 + 1;
        Object[] objArr = this.f22484H;
        if (i9 < objArr.length) {
            System.arraycopy(objArr, i8, objArr, i10, i9 - i8);
        } else {
            Object[] objArr2 = new Object[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i8);
            System.arraycopy(this.f22484H, i8, objArr2, i10, this.f22485I - i8);
            this.f22484H = objArr2;
        }
        this.f22484H[i8] = obj;
        this.f22485I++;
        ((AbstractList) this).modCount++;
    }

    public final void b(int i8) {
        if (i8 < 0 || i8 >= this.f22485I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f22485I));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        b(i8);
        return this.f22484H[i8];
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        zza();
        b(i8);
        Object[] objArr = this.f22484H;
        Object obj = objArr[i8];
        int i9 = this.f22485I;
        if (i8 < i9 - 1) {
            System.arraycopy(objArr, i8 + 1, objArr, i8, (i9 - i8) - 1);
        }
        this.f22485I--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        zza();
        b(i8);
        Object[] objArr = this.f22484H;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22485I;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2477n2
    public final /* bridge */ /* synthetic */ InterfaceC2477n2 zzg(int i8) {
        if (i8 >= this.f22485I) {
            return new K2(Arrays.copyOf(this.f22484H, i8), this.f22485I, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zza();
        int i8 = this.f22485I;
        Object[] objArr = this.f22484H;
        if (i8 == objArr.length) {
            this.f22484H = Arrays.copyOf(objArr, ((i8 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f22484H;
        int i9 = this.f22485I;
        this.f22485I = i9 + 1;
        objArr2[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
