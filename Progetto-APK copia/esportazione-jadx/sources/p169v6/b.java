package p169v6;

import Z5.C0456m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p162u6.f;
import p162u6.j;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends f implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object[] f30730G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f30731H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f30732I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final b f30733J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final c f30734K;

    public b(Object[] objArr, int i8, int i9, b bVar, c cVar) {
        q0.h(objArr, "backing");
        q0.h(cVar, "root");
        this.f30730G = objArr;
        this.f30731H = i8;
        this.f30732I = i9;
        this.f30733J = bVar;
        this.f30734K = cVar;
        ((AbstractList) this).modCount = ((AbstractList) cVar).modCount;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        p();
        o();
        n(this.f30731H + this.f30732I, obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        q0.h(collection, "elements");
        p();
        o();
        C0456m.b(i8, this.f30732I);
        int size = collection.size();
        l(this.f30731H + i8, collection, size);
        return size > 0;
    }

    @Override // p162u6.f
    public final int b() {
        o();
        return this.f30732I;
    }

    @Override // p162u6.f
    public final Object c(int i8) {
        p();
        o();
        C0456m.a(i8, this.f30732I);
        return q(this.f30731H + i8);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        p();
        o();
        r(this.f30731H, this.f30732I);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        o();
        if (obj != this) {
            if (obj instanceof List) {
                if (q0.a(this.f30730G, this.f30731H, this.f30732I, (List) obj)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        o();
        C0456m.a(i8, this.f30732I);
        return this.f30730G[this.f30731H + i8];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        o();
        Object[] objArr = this.f30730G;
        int i8 = this.f30732I;
        int iHashCode = 1;
        for (int i9 = 0; i9 < i8; i9++) {
            Object obj = objArr[this.f30731H + i9];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        o();
        for (int i8 = 0; i8 < this.f30732I; i8++) {
            if (q0.c(this.f30730G[this.f30731H + i8], obj)) {
                return i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        o();
        return this.f30732I == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void l(int i8, Collection collection, int i9) {
        ((AbstractList) this).modCount++;
        c cVar = this.f30734K;
        b bVar = this.f30733J;
        if (bVar != null) {
            bVar.l(i8, collection, i9);
        } else {
            c cVar2 = c.f30735J;
            cVar.l(i8, collection, i9);
        }
        this.f30730G = cVar.f30736G;
        this.f30732I += i9;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        o();
        for (int i8 = this.f30732I - 1; i8 >= 0; i8--) {
            if (q0.c(this.f30730G[this.f30731H + i8], obj)) {
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
        c cVar = this.f30734K;
        b bVar = this.f30733J;
        if (bVar != null) {
            bVar.n(i8, obj);
        } else {
            c cVar2 = c.f30735J;
            cVar.n(i8, obj);
        }
        this.f30730G = cVar.f30736G;
        this.f30732I++;
    }

    public final void o() {
        if (((AbstractList) this.f30734K).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    public final void p() {
        if (this.f30734K.f30738I) {
            throw new UnsupportedOperationException();
        }
    }

    public final Object q(int i8) {
        Object objQ;
        ((AbstractList) this).modCount++;
        b bVar = this.f30733J;
        if (bVar != null) {
            objQ = bVar.q(i8);
        } else {
            c cVar = c.f30735J;
            objQ = this.f30734K.q(i8);
        }
        this.f30732I--;
        return objQ;
    }

    public final void r(int i8, int i9) {
        if (i9 > 0) {
            ((AbstractList) this).modCount++;
        }
        b bVar = this.f30733J;
        if (bVar != null) {
            bVar.r(i8, i9);
        } else {
            c cVar = c.f30735J;
            this.f30734K.r(i8, i9);
        }
        this.f30732I -= i9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        p();
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
        p();
        o();
        return s(this.f30731H, this.f30732I, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        q0.h(collection, "elements");
        p();
        o();
        return s(this.f30731H, this.f30732I, collection, true) > 0;
    }

    public final int s(int i8, int i9, Collection collection, boolean z7) {
        int iS;
        b bVar = this.f30733J;
        if (bVar != null) {
            iS = bVar.s(i8, i9, collection, z7);
        } else {
            c cVar = c.f30735J;
            iS = this.f30734K.s(i8, i9, collection, z7);
        }
        if (iS > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f30732I -= iS;
        return iS;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        p();
        o();
        C0456m.a(i8, this.f30732I);
        Object[] objArr = this.f30730G;
        int i9 = this.f30731H + i8;
        Object obj2 = objArr[i9];
        objArr[i9] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i8, int i9) {
        C0456m.c(i8, i9, this.f30732I);
        return new b(this.f30730G, this.f30731H + i8, i9 - i8, this, this.f30734K);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        q0.h(objArr, "array");
        o();
        int length = objArr.length;
        int i8 = this.f30732I;
        int i9 = this.f30731H;
        if (length < i8) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f30730G, i9, i8 + i9, objArr.getClass());
            q0.g(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        j.M(this.f30730G, 0, objArr, i9, i8 + i9);
        int i10 = this.f30732I;
        if (i10 < objArr.length) {
            objArr[i10] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        o();
        return q0.b(this.f30730G, this.f30731H, this.f30732I, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        o();
        C0456m.b(i8, this.f30732I);
        return new a(this, i8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        p();
        o();
        C0456m.b(i8, this.f30732I);
        n(this.f30731H + i8, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        q0.h(collection, "elements");
        p();
        o();
        int size = collection.size();
        l(this.f30731H + this.f30732I, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        o();
        Object[] objArr = this.f30730G;
        int i8 = this.f30732I;
        int i9 = this.f30731H;
        return j.O(i9, i8 + i9, objArr);
    }
}
