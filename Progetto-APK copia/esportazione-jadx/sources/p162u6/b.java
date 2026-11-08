package p162u6;

import C6.l;
import D6.d;
import E6.a;
import N6.f;
import java.util.Collection;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Collection, a {
    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract int b();

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (q0.c(it.next(), obj)) {
                return true;
            }
        }
        return false;
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
        return b() == 0;
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
    public final /* bridge */ int size() {
        return b();
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        q0.h(objArr, "array");
        return d.b(this, objArr);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [u6.a] */
    public final String toString() {
        final int i8 = 0;
        return o.z(this, ", ", "[", "]", new l() { // from class: u6.a
            @Override // C6.l
            public final Object invoke(Object obj) {
                Object objN;
                Throwable th;
                int i9 = i8;
                Object obj2 = this;
                switch (i9) {
                    case 0:
                        return obj == ((b) obj2) ? "(this Collection)" : String.valueOf(obj);
                    case 1:
                        String str = (String) obj;
                        q0.h(str, "line");
                        return ((String) obj2) + str;
                    default:
                        l lVar = (l) obj2;
                        Throwable th2 = (Throwable) obj;
                        int i10 = f.f4973a;
                        try {
                            th = (Throwable) lVar.invoke(th2);
                            boolean zC = q0.c(th2.getMessage(), th.getMessage());
                            objN = th;
                            if (!zC && !q0.c(th.getMessage(), th2.toString())) {
                                objN = th;
                                objN = null;
                            }
                        } catch (Throwable th3) {
                            objN = q0.n(th3);
                        }
                        objN = th;
                        return (Throwable) (objN instanceof p155t6.d ? null : objN);
                }
            }
        }, 24);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return d.a(this);
    }
}
