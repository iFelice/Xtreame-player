package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class VA extends AbstractC2333zA {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Object[] f16964O = null;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final VA f16965P;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object[] f16966J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f16967K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient Object[] f16968L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f16969M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final transient int f16970N;

    static {
        Object[] objArr = new Object[0];
        f16965P = new VA(objArr, 0, objArr, 0, 0);
    }

    public VA(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        this.f16966J = objArr;
        this.f16967K = i8;
        this.f16968L = objArr2;
        this.f16969M = i9;
        this.f16970N = i10;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int b(Object[] objArr, int i8) {
        Object[] objArr2 = this.f16966J;
        int i9 = this.f16970N;
        System.arraycopy(objArr2, 0, objArr, i8, i9);
        return i8 + i9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int c() {
        return this.f16970N;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f16968L;
            if (objArr.length != 0) {
                int iT = p113o3.r.t(obj);
                while (true) {
                    int i8 = iT & this.f16969M;
                    Object obj2 = objArr[i8];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iT = i8 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2333zA, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f16967K;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int i() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC1349gB n() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final Object[] p() {
        return this.f16966J;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2333zA
    public final AbstractC2073uA r() {
        return AbstractC2073uA.s(this.f16970N, this.f16966J);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f16970N;
    }
}
