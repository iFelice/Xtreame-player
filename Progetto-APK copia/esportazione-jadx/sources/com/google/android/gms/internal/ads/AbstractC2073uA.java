package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2073uA extends AbstractC1814pA implements List, RandomAccess {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C1969sA f21207H = new C1969sA(0, PA.f15340K);

    public static C1917rA r(int i8) {
        p113o3.r.q(i8, "expectedSize");
        return new C1917rA(i8, 0);
    }

    public static PA s(int i8, Object[] objArr) {
        return i8 == 0 ? PA.f15340K : new PA(objArr, i8);
    }

    public static AbstractC2073uA t(Collection collection) {
        if (!(collection instanceof AbstractC1814pA)) {
            Object[] array = collection.toArray();
            int length = array.length;
            Cw.O0(array, length);
            return s(length, array);
        }
        AbstractC2073uA abstractC2073uAL = ((AbstractC1814pA) collection).l();
        if (!abstractC2073uAL.o()) {
            return abstractC2073uAL;
        }
        Object[] array2 = abstractC2073uAL.toArray(AbstractC1814pA.f20430G);
        return s(array2.length, array2);
    }

    public static PA u(Object[] objArr) {
        if (objArr.length == 0) {
            return PA.f15340K;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        Cw.O0(objArr2, length);
        return s(length, objArr2);
    }

    public static PA v() {
        return PA.f15340K;
    }

    public static PA w(Object obj) {
        Object[] objArr = {obj};
        Cw.O0(objArr, 1);
        return s(1, objArr);
    }

    public static PA x(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        Cw.O0(objArr, 2);
        return s(2, objArr);
    }

    public static PA y(Long l4, Long l8, Long l9, Long l10, Long l11) {
        Object[] objArr = {l4, l8, l9, l10, l11};
        Cw.O0(objArr, 5);
        return s(5, objArr);
    }

    public static PA z(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        int length = objArr.length;
        int i8 = length + 12;
        Object[] objArr2 = new Object[i8];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        objArr2[6] = obj7;
        objArr2[7] = obj8;
        objArr2[8] = obj9;
        objArr2[9] = obj10;
        objArr2[10] = obj11;
        objArr2[11] = obj12;
        System.arraycopy(objArr, 0, objArr2, 12, length);
        Cw.O0(objArr2, i8);
        return s(i8, objArr2);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C1969sA listIterator(int i8) {
        AbstractC2987b.o0(i8, size());
        return isEmpty() ? f21207H : new C1969sA(i8, this);
    }

    @Override // java.util.List
    public final void add(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i8, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public int b(Object[] objArr, int i8) {
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            objArr[i8 + i9] = get(i9);
        }
        return i8 + size;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i8 = 0; i8 < size; i8++) {
                        if (com.google.android.gms.internal.measurement.H1.E(get(i8), list.get(i8))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && com.google.android.gms.internal.measurement.H1.E(it.next(), it2.next())) {
                    }
                }
                if (!it2.hasNext()) {
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

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC2073uA l() {
        return this;
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

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public final AbstractC1349gB n() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public AbstractC2073uA subList(int i8, int i9) {
        AbstractC2987b.D0(i8, i9, size());
        int i10 = i9 - i8;
        if (i10 == size()) {
            return this;
        }
        return i10 == 0 ? PA.f15340K : new C2021tA(this, i8, i10);
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
