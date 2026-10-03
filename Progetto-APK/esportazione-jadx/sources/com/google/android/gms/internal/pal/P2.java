package com.google.android.gms.internal.pal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class P2 extends M2 implements List, RandomAccess {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final N2 f23624H = new N2(U2.f23664K, 0);

    @Override // java.util.List
    public final void add(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i8, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.pal.M2
    public int b(Object[] objArr) {
        int size = size();
        for (int i8 = 0; i8 < size; i8++) {
            objArr[i8] = get(i8);
        }
        return size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        Object next;
        Object next2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i8 = 0; i8 < size; i8++) {
                        Object obj2 = get(i8);
                        Object obj3 = list.get(i8);
                        if (obj2 == obj3 || (obj2 != null && obj2.equals(obj3))) {
                        }
                    }
                    return true;
                }
                N2 n2ListIterator = listIterator(0);
                Iterator it = list.iterator();
                while (n2ListIterator.hasNext()) {
                    if (it.hasNext() && ((next = n2ListIterator.next()) == (next2 = it.next()) || (next != null && next.equals(next2)))) {
                    }
                }
                if (!it.hasNext()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i8 = 0; i8 < size; i8++) {
            iHashCode = (iHashCode * 31) + get(i8).hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i8 = 0; i8 < size; i8++) {
            if (obj.equals(get(i8))) {
                return i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: n */
    public P2 subList(int i8, int i9) {
        AbstractC2864y4.V(i8, i9, size());
        int i10 = i9 - i8;
        if (i10 == size()) {
            return this;
        }
        return i10 == 0 ? U2.f23664K : new O2(this, i8, i10);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final N2 listIterator(int i8) {
        AbstractC2864y4.J(i8, size());
        return isEmpty() ? f23624H : new N2(this, i8);
    }

    @Override // java.util.List
    public final Object remove(int i8) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }
}
