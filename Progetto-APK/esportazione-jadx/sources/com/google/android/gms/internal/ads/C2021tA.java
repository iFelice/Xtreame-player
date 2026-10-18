package com.google.android.gms.internal.ads;

import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2021tA extends AbstractC2073uA {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient int f21042I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f21043J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractC2073uA f21044K;

    public C2021tA(AbstractC2073uA abstractC2073uA, int i8, int i9) {
        this.f21044K = abstractC2073uA;
        this.f21042I = i8;
        this.f21043J = i9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int c() {
        return this.f21044K.i() + this.f21042I + this.f21043J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        AbstractC2987b.c0(i8, this.f21043J);
        return this.f21044K.get(i8 + this.f21042I);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int i() {
        return this.f21044K.i() + this.f21042I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final Object[] p() {
        return this.f21044K.p();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2073uA, java.util.List
    /* JADX INFO: renamed from: q */
    public final AbstractC2073uA subList(int i8, int i9) {
        AbstractC2987b.D0(i8, i9, this.f21043J);
        int i10 = this.f21042I;
        return this.f21044K.subList(i8 + i10, i9 + i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21043J;
    }
}
