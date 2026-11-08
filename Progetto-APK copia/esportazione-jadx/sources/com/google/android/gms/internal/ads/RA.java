package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class RA extends AbstractC2333zA {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient AbstractC2229xA f16218J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f16219K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f16220L;

    public RA(AbstractC2229xA abstractC2229xA, Object[] objArr, int i8) {
        this.f16218J = abstractC2229xA;
        this.f16219K = objArr;
        this.f16220L = i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final int b(Object[] objArr, int i8) {
        return l().b(objArr, i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f16218J.get(key))) {
                return true;
            }
        }
        return false;
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
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2333zA
    public final AbstractC2073uA r() {
        return new QA(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f16220L;
    }
}
