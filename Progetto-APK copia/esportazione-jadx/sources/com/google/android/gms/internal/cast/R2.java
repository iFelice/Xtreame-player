package com.google.android.gms.internal.cast;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class R2 extends AbstractList implements RandomAccess, InterfaceC2492r2 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2492r2 f22527G;

    public R2(InterfaceC2492r2 interfaceC2492r2) {
        this.f22527G = interfaceC2492r2;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2492r2
    public final Object d(int i8) {
        return this.f22527G.d(i8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        return ((C2489q2) this.f22527G).get(i8);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new com.google.android.gms.internal.atv_ads_framework.C0(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        return new com.google.android.gms.internal.atv_ads_framework.B0(this, i8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22527G.size();
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2492r2
    public final InterfaceC2492r2 zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2492r2
    public final List zzh() {
        return this.f22527G.zzh();
    }
}
