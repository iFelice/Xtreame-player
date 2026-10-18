package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Objects;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class QA extends AbstractC2073uA {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ RA f15995I;

    public QA(RA ra) {
        this.f15995I = ra;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        RA ra = this.f15995I;
        AbstractC2987b.c0(i8, ra.f16220L);
        int i9 = i8 + i8;
        Object[] objArr = ra.f16219K;
        Object obj = objArr[i9];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i9 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15995I.f16220L;
    }
}
