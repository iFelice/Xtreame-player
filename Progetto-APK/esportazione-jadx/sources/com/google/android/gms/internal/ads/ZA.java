package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public class ZA extends AbstractCollection implements Set {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Collection f17731G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC2321yz f17732H;

    public ZA(Set set, InterfaceC2321yz interfaceC2321yz) {
        this.f17731G = set;
        this.f17732H = interfaceC2321yz;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean add(Object obj) {
        if (this.f17732H.zza(obj)) {
            return this.f17731G.add(obj);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!this.f17732H.zza(it.next())) {
                throw new IllegalArgumentException();
            }
        }
        return this.f17731G.addAll(collection);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return AbstractC2987b.x0(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return AbstractC2987b.Y(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final void clear() {
        Collection collection = this.f17731G;
        boolean z7 = collection instanceof RandomAccess;
        InterfaceC2321yz interfaceC2321yz = this.f17732H;
        if (!z7 || !(collection instanceof List)) {
            Iterator it = collection.iterator();
            interfaceC2321yz.getClass();
            while (it.hasNext()) {
                if (interfaceC2321yz.zza(it.next())) {
                    it.remove();
                }
            }
            return;
        }
        List list = (List) collection;
        interfaceC2321yz.getClass();
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            Object obj = list.get(i9);
            if (!interfaceC2321yz.zza(obj)) {
                if (i9 > i8) {
                    try {
                        list.set(i8, obj);
                    } catch (IllegalArgumentException unused) {
                        Cw.g1(list, interfaceC2321yz, i8, i9);
                        return;
                    } catch (UnsupportedOperationException unused2) {
                        Cw.g1(list, interfaceC2321yz, i8, i9);
                        return;
                    }
                }
                i8++;
            }
        }
        list.subList(i8, list.size()).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final boolean contains(Object obj) {
        Collection collection = this.f17731G;
        collection.getClass();
        try {
            if (collection.contains(obj)) {
                return this.f17732H.zza(obj);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final boolean isEmpty() {
        Iterator it = this.f17731G.iterator();
        InterfaceC2321yz interfaceC2321yz = this.f17732H;
        AbstractC2987b.w0(interfaceC2321yz, "predicate");
        int i8 = 0;
        while (it.hasNext()) {
            if (interfaceC2321yz.zza(it.next())) {
                return i8 == -1;
            }
            i8++;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final Iterator iterator() {
        Iterator it = this.f17731G.iterator();
        it.getClass();
        InterfaceC2321yz interfaceC2321yz = this.f17732H;
        interfaceC2321yz.getClass();
        return new AA(it, interfaceC2321yz);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final boolean remove(Object obj) {
        return contains(obj) && this.f17731G.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final boolean removeAll(Collection collection) {
        Iterator it = this.f17731G.iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f17732H.zza(next) && collection.contains(next)) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final boolean retainAll(Collection collection) {
        Iterator it = this.f17731G.iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f17732H.zza(next) && !collection.contains(next)) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final int size() {
        Iterator it = this.f17731G.iterator();
        int i8 = 0;
        while (it.hasNext()) {
            if (this.f17732H.zza(it.next())) {
                i8++;
            }
        }
        return i8;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final Object[] toArray() {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        AA aa = (AA) it;
        while (aa.hasNext()) {
            arrayList.add(aa.next());
        }
        return arrayList.toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final Object[] toArray(Object[] objArr) {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        AA aa = (AA) it;
        while (aa.hasNext()) {
            arrayList.add(aa.next());
        }
        return arrayList.toArray(objArr);
    }
}
