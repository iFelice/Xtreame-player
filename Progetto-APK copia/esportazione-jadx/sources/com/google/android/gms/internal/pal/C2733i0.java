package com.google.android.gms.internal.pal;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2733i0 extends AbstractC2748k implements RandomAccess {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2733i0 f23843J;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f23844H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f23845I;

    static {
        C2733i0 c2733i0 = new C2733i0(new Object[0], 0);
        f23843J = c2733i0;
        c2733i0.f23887G = false;
    }

    public C2733i0(Object[] objArr, int i8) {
        this.f23844H = objArr;
        this.f23845I = i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int i9;
        zza();
        if (i8 < 0 || i8 > (i9 = this.f23845I)) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23845I));
        }
        Object[] objArr = this.f23844H;
        if (i9 < objArr.length) {
            System.arraycopy(objArr, i8, objArr, i8 + 1, i9 - i8);
        } else {
            Object[] objArr2 = new Object[A0.O.v(i9, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i8);
            System.arraycopy(this.f23844H, i8, objArr2, i8 + 1, this.f23845I - i8);
            this.f23844H = objArr2;
        }
        this.f23844H[i8] = obj;
        this.f23845I++;
        ((AbstractList) this).modCount++;
    }

    public final void b(int i8) {
        if (i8 < 0 || i8 >= this.f23845I) {
            throw new IndexOutOfBoundsException(com.google.protobuf.U2.j("Index:", i8, ", Size:", this.f23845I));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        b(i8);
        return this.f23844H[i8];
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        zza();
        b(i8);
        Object[] objArr = this.f23844H;
        Object obj = objArr[i8];
        int i9 = this.f23845I;
        if (i8 < i9 - 1) {
            System.arraycopy(objArr, i8 + 1, objArr, i8, (i9 - i8) - 1);
        }
        this.f23845I--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        zza();
        b(i8);
        Object[] objArr = this.f23844H;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23845I;
    }

    @Override // com.google.android.gms.internal.pal.I
    public final /* bridge */ /* synthetic */ I zzd(int i8) {
        if (i8 >= this.f23845I) {
            return new C2733i0(Arrays.copyOf(this.f23844H, i8), this.f23845I);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zza();
        int i8 = this.f23845I;
        Object[] objArr = this.f23844H;
        if (i8 == objArr.length) {
            this.f23844H = Arrays.copyOf(objArr, ((i8 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f23844H;
        int i9 = this.f23845I;
        this.f23845I = i9 + 1;
        objArr2[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
