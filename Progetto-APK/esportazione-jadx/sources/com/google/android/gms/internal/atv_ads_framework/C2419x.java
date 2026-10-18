package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2419x extends AbstractC2402o {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f22385I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22386J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f22387K;

    public C2419x(Object[] objArr, int i8, int i9) {
        this.f22385I = objArr;
        this.f22386J = i8;
        this.f22387K = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.q0(i8, this.f22387K);
        Object obj = this.f22385I[i8 + i8 + this.f22386J];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final boolean n() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22387K;
    }
}
