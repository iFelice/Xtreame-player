package com.google.android.gms.internal.ads;

import java.util.Objects;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class TA extends AbstractC2073uA {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f16601I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f16602J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f16603K;

    public TA(Object[] objArr, int i8, int i9) {
        this.f16601I = objArr;
        this.f16602J = i8;
        this.f16603K = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        AbstractC2987b.c0(i8, this.f16603K);
        Object obj = this.f16601I[i8 + i8 + this.f16602J];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16603K;
    }
}
