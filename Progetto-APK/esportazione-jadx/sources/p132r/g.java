package p132r;

import E6.a;
import J6.r;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import p162u6.j;
import p162u6.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Collection, Set, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int[] f29660G = p140s.a.f29859a;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f29661H = p140s.a.f29860b;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f29662I;

    public g(int i8) {
        if (i8 > 0) {
            r.a(this, i8);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i8;
        int iK;
        int i9 = this.f29662I;
        if (obj == null) {
            iK = r.k(this, null, 0);
            i8 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i8 = iHashCode;
            iK = r.k(this, obj, iHashCode);
        }
        if (iK >= 0) {
            return false;
        }
        int i10 = ~iK;
        int[] iArr = this.f29660G;
        if (i9 >= iArr.length) {
            int i11 = 8;
            if (i9 >= 8) {
                i11 = (i9 >> 1) + i9;
            } else if (i9 < 4) {
                i11 = 4;
            }
            Object[] objArr = this.f29661H;
            r.a(this, i11);
            if (i9 != this.f29662I) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f29660G;
            if (!(iArr2.length == 0)) {
                j.L(0, 0, iArr.length, iArr, iArr2);
                j.N(objArr, this.f29661H, 0, objArr.length, 6);
            }
        }
        if (i10 < i9) {
            int[] iArr3 = this.f29660G;
            int i12 = i10 + 1;
            j.L(i12, i10, i9, iArr3, iArr3);
            Object[] objArr2 = this.f29661H;
            j.M(objArr2, i12, objArr2, i10, i9);
        }
        int i13 = this.f29662I;
        if (i9 == i13) {
            int[] iArr4 = this.f29660G;
            if (i10 < iArr4.length) {
                iArr4[i10] = i8;
                this.f29661H[i10] = obj;
                this.f29662I = i13 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        q0.h(collection, "elements");
        int size = collection.size() + this.f29662I;
        int i8 = this.f29662I;
        int[] iArr = this.f29660G;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.f29661H;
            r.a(this, size);
            int i9 = this.f29662I;
            if (i9 > 0) {
                j.L(0, 0, i9, iArr, this.f29660G);
                j.N(objArr, this.f29661H, 0, this.f29662I, 6);
            }
        }
        if (this.f29662I != i8) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final Object b(int i8) {
        int i9 = this.f29662I;
        Object[] objArr = this.f29661H;
        Object obj = objArr[i8];
        if (i9 <= 1) {
            clear();
        } else {
            int i10 = i9 - 1;
            int[] iArr = this.f29660G;
            if (iArr.length <= 8 || i9 >= iArr.length / 3) {
                if (i8 < i10) {
                    int i11 = i8 + 1;
                    j.L(i8, i11, i9, iArr, iArr);
                    Object[] objArr2 = this.f29661H;
                    j.M(objArr2, i8, objArr2, i11, i9);
                }
                this.f29661H[i10] = null;
            } else {
                r.a(this, i9 > 8 ? i9 + (i9 >> 1) : 8);
                if (i8 > 0) {
                    j.L(0, 0, i8, iArr, this.f29660G);
                    j.N(objArr, this.f29661H, 0, i8, 6);
                }
                if (i8 < i10) {
                    int i12 = i8 + 1;
                    j.L(i8, i12, i9, iArr, this.f29660G);
                    j.M(objArr, i8, this.f29661H, i12, i9);
                }
            }
            if (i9 != this.f29662I) {
                throw new ConcurrentModificationException();
            }
            this.f29662I = i10;
        }
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f29662I != 0) {
            this.f29660G = p140s.a.f29859a;
            this.f29661H = p140s.a.f29860b;
            this.f29662I = 0;
        }
        if (this.f29662I != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? r.k(this, null, 0) : r.k(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        q0.h(collection, "elements");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && this.f29662I == ((Set) obj).size()) {
            try {
                int i8 = this.f29662I;
                for (int i9 = 0; i9 < i8; i9++) {
                    if (((Set) obj).contains(this.f29661H[i9])) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f29660G;
        int i8 = this.f29662I;
        int i9 = 0;
        for (int i10 = 0; i10 < i8; i10++) {
            i9 += iArr[i10];
        }
        return i9;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f29662I <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new b(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iK = obj == null ? r.k(this, null, 0) : r.k(this, obj, obj.hashCode());
        if (iK < 0) {
            return false;
        }
        b(iK);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        q0.h(collection, "elements");
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        q0.h(collection, "elements");
        boolean z7 = false;
        for (int i8 = this.f29662I - 1; -1 < i8; i8--) {
            if (!o.x(collection, this.f29661H[i8])) {
                b(i8);
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f29662I;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        q0.h(objArr, "array");
        int i8 = this.f29662I;
        if (objArr.length < i8) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i8);
        } else if (objArr.length > i8) {
            objArr[i8] = null;
        }
        j.M(this.f29661H, 0, objArr, 0, this.f29662I);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f29662I * 14);
        sb.append('{');
        int i8 = this.f29662I;
        for (int i9 = 0; i9 < i8; i9++) {
            if (i9 > 0) {
                sb.append(", ");
            }
            Object obj = this.f29661H[i9];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        q0.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return j.O(0, this.f29662I, this.f29661H);
    }
}
