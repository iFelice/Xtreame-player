package com.google.android.gms.internal.ads;

import C0.C0083h;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class EA extends AbstractList implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12945G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f12946H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f12947I;

    public EA(C0083h c0083h, List list) {
        list.getClass();
        this.f12946H = list;
        this.f12947I = c0083h;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        int i9 = this.f12945G;
        List list = this.f12946H;
        Object obj = this.f12947I;
        switch (i9) {
            case 0:
                return ((InterfaceC2165vz) obj).apply(list.get(i8));
            default:
                return ((p190y4.h) obj).apply(list.get(i8));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        int i8 = this.f12945G;
        List list = this.f12946H;
        switch (i8) {
            case 0:
                break;
        }
        return list.isEmpty();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        switch (this.f12945G) {
            case 0:
                break;
        }
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        int i9 = this.f12945G;
        List list = this.f12946H;
        switch (i9) {
            case 0:
                return new DA(this, list.listIterator(i8), 0);
            default:
                return new z4.S(this, list.listIterator(i8), 0);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        int i9 = this.f12945G;
        List list = this.f12946H;
        Object obj = this.f12947I;
        switch (i9) {
            case 0:
                return ((InterfaceC2165vz) obj).apply(list.remove(i8));
            default:
                return ((p190y4.h) obj).apply(list.remove(i8));
        }
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        int i10 = this.f12945G;
        List list = this.f12946H;
        switch (i10) {
            case 0:
                list.subList(i8, i9).clear();
                break;
            default:
                list.subList(i8, i9).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i8 = this.f12945G;
        List list = this.f12946H;
        switch (i8) {
            case 0:
                break;
        }
        return list.size();
    }

    public EA(List list, C2064u1 c2064u1) {
        list.getClass();
        this.f12946H = list;
        this.f12947I = c2064u1;
    }
}
