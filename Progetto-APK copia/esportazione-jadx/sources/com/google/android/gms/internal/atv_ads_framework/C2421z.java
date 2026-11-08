package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2421z extends r {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Object[] f22399N = null;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final C2421z f22400O;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f22401I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f22402J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f22403K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f22404L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f22405M;

    static {
        Object[] objArr = new Object[0];
        f22400O = new C2421z(objArr, 0, objArr, 0, 0);
    }

    public C2421z(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        this.f22401I = objArr;
        this.f22402J = i8;
        this.f22403K = objArr2;
        this.f22404L = i9;
        this.f22405M = i10;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f22401I;
        int i8 = this.f22405M;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int c() {
        return this.f22405M;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f22403K;
            if (objArr.length != 0) {
                int iL0 = Cw.l0(obj.hashCode());
                while (true) {
                    int i8 = iL0 & this.f22404L;
                    Object obj2 = objArr[i8];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iL0 = i8 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f22402J;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int i() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final Object[] o() {
        return this.f22401I;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r
    public final AbstractC1349gB p() {
        return l().listIterator(0);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r
    public final AbstractC2402o r() {
        return AbstractC2402o.q(this.f22405M, this.f22401I);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22405M;
    }
}
