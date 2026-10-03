package com.google.android.gms.internal.atv_ads_framework;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class D0 extends AbstractList implements RandomAccess, InterfaceC2379c0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2379c0 f22255G;

    public D0(InterfaceC2379c0 interfaceC2379c0) {
        this.f22255G = interfaceC2379c0;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2379c0
    public final Object d(int i8) {
        return this.f22255G.d(i8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        return ((C2377b0) this.f22255G).get(i8);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new C0(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        return new B0(this, i8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22255G.size();
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2379c0
    public final InterfaceC2379c0 zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2379c0
    public final List zzh() {
        return this.f22255G.zzh();
    }
}
