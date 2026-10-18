package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class SA extends AbstractC2333zA {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient AbstractC2229xA f16410J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient AbstractC2073uA f16411K;

    public SA(AbstractC2229xA abstractC2229xA, TA ta) {
        this.f16410J = abstractC2229xA;
        this.f16411K = ta;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int b(Object[] objArr, int i8) {
        return this.f16411K.b(objArr, i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f16410J.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f16411K.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2333zA, com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC2073uA l() {
        return this.f16411K;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC1349gB n() {
        return this.f16411K.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((UA) this.f16410J).f16806L;
    }
}
