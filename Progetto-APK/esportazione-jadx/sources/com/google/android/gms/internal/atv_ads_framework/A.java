package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class A extends r {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object f22244I;

    public A(Object obj) {
        this.f22244I = obj;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final int b(Object[] objArr) {
        objArr[0] = this.f22244I;
        return 1;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f22244I.equals(obj);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f22244I.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new C2409s(this.f22244I);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r, com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public final AbstractC2402o l() {
        C2398m c2398m = AbstractC2402o.f22343H;
        Object[] objArr = {this.f22244I};
        for (int i8 = 0; i8 < 1; i8++) {
            if (objArr[i8] == null) {
                throw new NullPointerException(p000a.r.f("at index ", i8));
            }
        }
        return AbstractC2402o.q(1, objArr);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.r
    public final AbstractC1349gB p() {
        return new C2409s(this.f22244I);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return p000a.r.g("[", this.f22244I.toString(), "]");
    }
}
