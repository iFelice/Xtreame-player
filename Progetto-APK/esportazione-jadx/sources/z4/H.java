package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class H extends C implements List, RandomAccess {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final F f31804H = new F(0, d0.f31844K);

    public static d0 A(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Object... objArr) {
        p190y4.k.o("the total number of elements must fit in an int", objArr.length <= 2147483635);
        int length = objArr.length + 12;
        Object[] objArr2 = new Object[length];
        objArr2[0] = str;
        objArr2[1] = str2;
        objArr2[2] = str3;
        objArr2[3] = str4;
        objArr2[4] = str5;
        objArr2[5] = str6;
        objArr2[6] = str7;
        objArr2[7] = str8;
        objArr2[8] = str9;
        objArr2[9] = str10;
        objArr2[10] = str11;
        objArr2[11] = str12;
        System.arraycopy(objArr, 0, objArr2, 12, objArr.length);
        Cw.d(length, objArr2);
        return p(length, objArr2);
    }

    public static d0 B(Comparator comparator, Iterable iterable) {
        Collection collection;
        comparator.getClass();
        if (iterable instanceof Collection) {
            collection = (Collection) iterable;
        } else {
            Iterator it = iterable.iterator();
            ArrayList arrayList = new ArrayList();
            it.getClass();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            collection = arrayList;
        }
        Object[] array = collection.toArray();
        Cw.d(array.length, array);
        Arrays.sort(array, comparator);
        return p(array.length, array);
    }

    public static d0 p(int i8, Object[] objArr) {
        return i8 == 0 ? d0.f31844K : new d0(objArr, i8);
    }

    public static E q() {
        return new E(4);
    }

    public static E r(int i8) {
        Cw.g(i8, "expectedSize");
        return new E(i8);
    }

    public static H s(Collection collection) {
        if (!(collection instanceof C)) {
            Object[] array = collection.toArray();
            Cw.d(array.length, array);
            return p(array.length, array);
        }
        H hB = ((C) collection).b();
        if (!hB.o()) {
            return hB;
        }
        Object[] array2 = hB.toArray(C.f31797G);
        return p(array2.length, array2);
    }

    public static d0 t(Object[] objArr) {
        if (objArr.length == 0) {
            return d0.f31844K;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        Cw.d(objArr2.length, objArr2);
        return p(objArr2.length, objArr2);
    }

    public static d0 w() {
        return d0.f31844K;
    }

    public static d0 x(Object obj) {
        Object[] objArr = {obj};
        Cw.d(1, objArr);
        return p(1, objArr);
    }

    public static d0 y(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        Cw.d(2, objArr);
        return p(2, objArr);
    }

    public static d0 z(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        Cw.d(5, objArr);
        return p(5, objArr);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public H subList(int i8, int i9) {
        p190y4.k.u(i8, i9, size());
        int i10 = i9 - i8;
        if (i10 == size()) {
            return this;
        }
        return i10 == 0 ? d0.f31844K : new G(this, i8, i10);
    }

    @Override // java.util.List
    public final void add(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i8, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // z4.C
    public int c(int i8, Object[] objArr) {
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            objArr[i8 + i9] = get(i9);
        }
        return i8 + size;
    }

    @Override // z4.C, java.util.AbstractCollection, java.util.Collection
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
                        if (a7.b.c(get(i8), list.get(i8))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && a7.b.c(it.next(), it2.next())) {
                    }
                }
                return !it2.hasNext();
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i8 = 1;
        for (int i9 = 0; i9 < size; i9++) {
            i8 = ~(~(get(i9).hashCode() + (i8 * 31)));
        }
        return i8;
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
    public Iterator iterator() {
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

    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i8) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }

    public final AbstractC1349gB u() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final F listIterator(int i8) {
        p190y4.k.t(i8, size());
        return isEmpty() ? f31804H : new F(i8, this);
    }

    @Override // z4.C
    public final H b() {
        return this;
    }
}
