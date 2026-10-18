package com.google.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class C2 extends AbstractList implements A1, RandomAccess {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final A1 f24241G;

    public C2(A1 a8) {
        this.f24241G = a8;
    }

    @Override // com.google.protobuf.A1
    public final void g(r rVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        return (String) this.f24241G.get(i8);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new com.google.android.gms.internal.atv_ads_framework.C0(this);
    }

    @Override // com.google.protobuf.A1
    public final List j() {
        return this.f24241G.j();
    }

    @Override // com.google.protobuf.A1
    public final A1 k() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        return new com.google.android.gms.internal.atv_ads_framework.B0(this, i8);
    }

    @Override // com.google.protobuf.A1
    public final Object m(int i8) {
        return this.f24241G.m(i8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24241G.size();
    }
}
