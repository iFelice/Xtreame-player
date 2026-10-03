package com.google.android.gms.internal.pal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class X2 extends T2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient S2 f23693I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient P2 f23694J;

    public X2(S2 s7, Y2 y7) {
        this.f23693I = s7;
        this.f23694J = y7;
    }

    @Override // com.google.android.gms.internal.pal.M2
    public final int b(Object[] objArr) {
        return this.f23694J.b(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f23693I.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f23694J.listIterator(0);
    }

    @Override // com.google.android.gms.internal.pal.T2
    public final N2 n() {
        return this.f23694J.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((Z2) this.f23693I).f23717L;
    }
}
