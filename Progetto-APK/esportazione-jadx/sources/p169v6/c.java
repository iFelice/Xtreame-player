package p169v6;

import Z5.C0456m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p162u6.f;
import p162u6.j;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends f implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final c f30735J;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object[] f30736G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f30737H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f30738I;

    static {
        c cVar = new c(0);
        cVar.f30738I = true;
        f30735J = cVar;
    }

    public c(int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.".toString());
        }
        this.f30736G = new Object[i8];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        o();
        int i8 = this.f30737H;
        ((AbstractList) this).modCount++;
        p(i8, 1);
        this.f30736G[i8] = obj;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        q0.h(collection, "elements");
        o();
        C0456m.b(i8, this.f30737H);
        int size = collection.size();
        l(i8, collection, size);
        return size > 0;
    }

    @Override // p162u6.f
    public final int b() {
        return this.f30737H;
    }

    @Override // p162u6.f
    public final Object c(int i8) {
        o();
        C0456m.a(i8, this.f30737H);
        return q(i8);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        o();
        r(0, this.f30737H);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            if (!q0.a(this.f30736G, 0, this.f30737H, (List) obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        C0456m.a(i8, this.f30737H);
        return this.f30736G[i8];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f30736G;
        int i8 = this.f30737H;
        int iHashCode = 1;
        for (int i9 = 0; i9 < i8; i9++) {
            Object obj = objArr[i9];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i8 = 0; i8 < this.f30737H; i8++) {
            if (q0.c(this.f30736G[i8], obj)) {
                return i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f30737H == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void l(int i8, Collection collection, int i9) {
        ((AbstractList) this).modCount++;
        p(i8, i9);
        Iterator it = collection.iterator();
        for (int i10 = 0; i10 < i9; i10++) {
            this.f30736G[i8 + i10] = it.next();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i8 = this.f30737H - 1; i8 >= 0; i8--) {
            if (q0.c(this.f30736G[i8], obj)) {
                return i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    public final void n(int i8, Object obj) {
        ((AbstractList) this).modCount++;
        p(i8, 1);
        this.f30736G[i8] = obj;
    }

    public final void o() {
        if (this.f30738I) {
            throw new UnsupportedOperationException();
        }
    }

    public final void p(int i8, int i9) {
        int i10 = this.f30737H + i9;
        if (i10 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f30736G;
        if (i10 > objArr.length) {
            int iD = C0456m.d(objArr.length, i10);
            Object[] objArr2 = this.f30736G;
            q0.h(objArr2, "<this>");
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, iD);
            q0.g(objArrCopyOf, "copyOf(...)");
            this.f30736G = objArrCopyOf;
        }
        Object[] objArr3 = this.f30736G;
        j.M(objArr3, i8 + i9, objArr3, i8, this.f30737H);
        this.f30737H += i9;
    }

    public final Object q(int i8) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f30736G;
        Object obj = objArr[i8];
        j.M(objArr, i8, objArr, i8 + 1, this.f30737H);
        Object[] objArr2 = this.f30736G;
        int i9 = this.f30737H - 1;
        q0.h(objArr2, "<this>");
        objArr2[i9] = null;
        this.f30737H--;
        return obj;
    }

    public final void r(int i8, int i9) {
        if (i9 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f30736G;
        j.M(objArr, i8, objArr, i8 + i9, this.f30737H);
        Object[] objArr2 = this.f30736G;
        int i10 = this.f30737H;
        q0.E(i10 - i9, i10, objArr2);
        this.f30737H -= i9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        o();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            c(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        q0.h(collection, "elements");
        o();
        return s(0, this.f30737H, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        q0.h(collection, "elements");
        o();
        return s(0, this.f30737H, collection, true) > 0;
    }

    public final int s(int i8, int i9, Collection collection, boolean z7) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < i9) {
            int i12 = i8 + i10;
            if (collection.contains(this.f30736G[i12]) == z7) {
                Object[] objArr = this.f30736G;
                i10++;
                objArr[i11 + i8] = objArr[i12];
                i11++;
            } else {
                i10++;
            }
        }
        int i13 = i9 - i11;
        Object[] objArr2 = this.f30736G;
        j.M(objArr2, i8 + i11, objArr2, i9 + i8, this.f30737H);
        Object[] objArr3 = this.f30736G;
        int i14 = this.f30737H;
        q0.E(i14 - i13, i14, objArr3);
        if (i13 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f30737H -= i13;
        return i13;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        o();
        C0456m.a(i8, this.f30737H);
        Object[] objArr = this.f30736G;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i8, int i9) {
        C0456m.c(i8, i9, this.f30737H);
        return new b(this.f30736G, i8, i9 - i8, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        q0.h(objArr, "array");
        int length = objArr.length;
        int i8 = this.f30737H;
        if (length < i8) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f30736G, 0, i8, objArr.getClass());
            q0.g(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        j.M(this.f30736G, 0, objArr, 0, i8);
        int i9 = this.f30737H;
        if (i9 < objArr.length) {
            objArr[i9] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return q0.b(this.f30736G, 0, this.f30737H, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        C0456m.b(i8, this.f30737H);
        return new a(this, i8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        o();
        C0456m.b(i8, this.f30737H);
        ((AbstractList) this).modCount++;
        p(i8, 1);
        this.f30736G[i8] = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        q0.h(collection, "elements");
        o();
        int size = collection.size();
        l(this.f30737H, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return j.O(0, this.f30737H, this.f30736G);
    }
}
