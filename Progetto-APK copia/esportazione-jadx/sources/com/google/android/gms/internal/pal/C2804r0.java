package com.google.android.gms.internal.pal;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2804r0 extends AbstractList implements RandomAccess, O {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final O f23992G;

    public C2804r0(O o4) {
        this.f23992G = o4;
    }

    @Override // com.google.android.gms.internal.pal.O
    public final Object a(int i8) {
        return this.f23992G.a(i8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        return ((N) this.f23992G).get(i8);
    }

    @Override // com.google.android.gms.internal.pal.O
    public final void h(C2796q c2796q) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new C2797q0(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        return new com.google.android.gms.internal.atv_ads_framework.B0(this, i8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23992G.size();
    }

    @Override // com.google.android.gms.internal.pal.O
    public final O zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.pal.O
    public final List zzh() {
        return this.f23992G.zzh();
    }
}
