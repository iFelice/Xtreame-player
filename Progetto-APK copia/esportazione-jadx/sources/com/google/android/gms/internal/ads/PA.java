package com.google.android.gms.internal.ads;

import java.util.Objects;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class PA extends AbstractC2073uA {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final PA f15340K = new PA(new Object[0], 0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f15341I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f15342J;

    public PA(Object[] objArr, int i8) {
        this.f15341I = objArr;
        this.f15342J = i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2073uA, com.google.android.gms.internal.ads.AbstractC1814pA
    public final int b(Object[] objArr, int i8) {
        Object[] objArr2 = this.f15341I;
        int i9 = this.f15342J;
        System.arraycopy(objArr2, 0, objArr, i8, i9);
        return i8 + i9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int c() {
        return this.f15342J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        AbstractC2987b.c0(i8, this.f15342J);
        Object obj = this.f15341I[i8];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final Object[] p() {
        return this.f15341I;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15342J;
    }
}
