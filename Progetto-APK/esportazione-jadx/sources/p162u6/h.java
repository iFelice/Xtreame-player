package p162u6;

import D6.d;
import E6.a;
import N.P;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements Collection, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object[] f30533G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f30534H;

    public h(Object[] objArr, boolean z7) {
        q0.h(objArr, "values");
        this.f30533G = objArr;
        this.f30534H = z7;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        int i8;
        Object[] objArr = this.f30533G;
        q0.h(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length;
            i8 = 0;
            while (i8 < length) {
                if (objArr[i8] != null) {
                    i8++;
                }
            }
            return false;
        }
        int length2 = objArr.length;
        for (int i9 = 0; i9 < length2; i9++) {
            if (q0.c(obj, objArr[i9])) {
                i8 = i9;
            }
        }
        return false;
        return i8 >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        q0.h(collection, "elements");
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f30533G.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Object[] objArr = this.f30533G;
        q0.h(objArr, "array");
        return new P(objArr);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f30533G.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] objArr = this.f30533G;
        q0.h(objArr, "<this>");
        if (this.f30534H && q0.c(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        q0.g(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        q0.h(objArr, "array");
        return d.b(this, objArr);
    }
}
