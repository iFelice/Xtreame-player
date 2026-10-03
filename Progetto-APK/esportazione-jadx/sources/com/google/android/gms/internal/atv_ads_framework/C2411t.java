package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2411t extends AbstractC2402o {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C2411t f22369K = new C2411t(new Object[0], 0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f22370I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22371J;

    public C2411t(Object[] objArr, int i8) {
        this.f22370I = objArr;
        this.f22371J = i8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2402o, com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f22370I;
        int i8 = this.f22371J;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int c() {
        return this.f22371J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.q0(i8, this.f22371J);
        Object obj = this.f22370I[i8];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final boolean n() {
        return false;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final Object[] o() {
        return this.f22370I;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22371J;
    }
}
