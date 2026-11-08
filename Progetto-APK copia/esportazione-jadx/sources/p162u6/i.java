package p162u6;

import Z5.C0456m;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends f {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Object[] f30535J = new Object[0];

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f30536G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f30537H = f30535J;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f30538I;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        int length;
        C0456m.b(i8, this.f30538I);
        if (i8 == this.f30538I) {
            addLast(obj);
            return;
        }
        if (i8 == 0) {
            addFirst(obj);
            return;
        }
        r();
        l(this.f30538I + 1);
        int iQ = q(this.f30536G + i8);
        int i9 = this.f30538I;
        if (i8 < ((i9 + 1) >> 1)) {
            if (iQ == 0) {
                Object[] objArr = this.f30537H;
                q0.h(objArr, "<this>");
                iQ = objArr.length;
            }
            int i10 = iQ - 1;
            int i11 = this.f30536G;
            if (i11 == 0) {
                Object[] objArr2 = this.f30537H;
                q0.h(objArr2, "<this>");
                length = objArr2.length - 1;
            } else {
                length = i11 - 1;
            }
            int i12 = this.f30536G;
            if (i10 >= i12) {
                Object[] objArr3 = this.f30537H;
                objArr3[length] = objArr3[i12];
                j.M(objArr3, i12, objArr3, i12 + 1, i10 + 1);
            } else {
                Object[] objArr4 = this.f30537H;
                j.M(objArr4, i12 - 1, objArr4, i12, objArr4.length);
                Object[] objArr5 = this.f30537H;
                objArr5[objArr5.length - 1] = objArr5[0];
                j.M(objArr5, 0, objArr5, 1, i10 + 1);
            }
            this.f30537H[i10] = obj;
            this.f30536G = length;
        } else {
            int iQ2 = q(i9 + this.f30536G);
            if (iQ < iQ2) {
                Object[] objArr6 = this.f30537H;
                j.M(objArr6, iQ + 1, objArr6, iQ, iQ2);
            } else {
                Object[] objArr7 = this.f30537H;
                j.M(objArr7, 1, objArr7, 0, iQ2);
                Object[] objArr8 = this.f30537H;
                objArr8[0] = objArr8[objArr8.length - 1];
                j.M(objArr8, iQ + 1, objArr8, iQ, objArr8.length - 1);
            }
            this.f30537H[iQ] = obj;
        }
        this.f30538I++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        q0.h(collection, "elements");
        C0456m.b(i8, this.f30538I);
        if (collection.isEmpty()) {
            return false;
        }
        if (i8 == this.f30538I) {
            return addAll(collection);
        }
        r();
        l(collection.size() + this.f30538I);
        int iQ = q(this.f30538I + this.f30536G);
        int iQ2 = q(this.f30536G + i8);
        int size = collection.size();
        if (i8 < ((this.f30538I + 1) >> 1)) {
            int i9 = this.f30536G;
            int length = i9 - size;
            if (iQ2 < i9) {
                Object[] objArr = this.f30537H;
                j.M(objArr, length, objArr, i9, objArr.length);
                if (size >= iQ2) {
                    Object[] objArr2 = this.f30537H;
                    j.M(objArr2, objArr2.length - size, objArr2, 0, iQ2);
                } else {
                    Object[] objArr3 = this.f30537H;
                    j.M(objArr3, objArr3.length - size, objArr3, 0, size);
                    Object[] objArr4 = this.f30537H;
                    j.M(objArr4, 0, objArr4, size, iQ2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f30537H;
                j.M(objArr5, length, objArr5, i9, iQ2);
            } else {
                Object[] objArr6 = this.f30537H;
                length += objArr6.length;
                int i10 = iQ2 - i9;
                int length2 = objArr6.length - length;
                if (length2 >= i10) {
                    j.M(objArr6, length, objArr6, i9, iQ2);
                } else {
                    j.M(objArr6, length, objArr6, i9, i9 + length2);
                    Object[] objArr7 = this.f30537H;
                    j.M(objArr7, 0, objArr7, this.f30536G + length2, iQ2);
                }
            }
            this.f30536G = length;
            i(o(iQ2 - size), collection);
        } else {
            int i11 = iQ2 + size;
            if (iQ2 < iQ) {
                int i12 = size + iQ;
                Object[] objArr8 = this.f30537H;
                if (i12 <= objArr8.length) {
                    j.M(objArr8, i11, objArr8, iQ2, iQ);
                } else if (i11 >= objArr8.length) {
                    j.M(objArr8, i11 - objArr8.length, objArr8, iQ2, iQ);
                } else {
                    int length3 = iQ - (i12 - objArr8.length);
                    j.M(objArr8, 0, objArr8, length3, iQ);
                    Object[] objArr9 = this.f30537H;
                    j.M(objArr9, i11, objArr9, iQ2, length3);
                }
            } else {
                Object[] objArr10 = this.f30537H;
                j.M(objArr10, size, objArr10, 0, iQ);
                Object[] objArr11 = this.f30537H;
                if (i11 >= objArr11.length) {
                    j.M(objArr11, i11 - objArr11.length, objArr11, iQ2, objArr11.length);
                } else {
                    j.M(objArr11, 0, objArr11, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f30537H;
                    j.M(objArr12, i11, objArr12, iQ2, objArr12.length - size);
                }
            }
            i(iQ2, collection);
        }
        return true;
    }

    public final void addFirst(Object obj) {
        r();
        l(this.f30538I + 1);
        int length = this.f30536G;
        if (length == 0) {
            Object[] objArr = this.f30537H;
            q0.h(objArr, "<this>");
            length = objArr.length;
        }
        int i8 = length - 1;
        this.f30536G = i8;
        this.f30537H[i8] = obj;
        this.f30538I++;
    }

    public final void addLast(Object obj) {
        r();
        l(b() + 1);
        this.f30537H[q(b() + this.f30536G)] = obj;
        this.f30538I = b() + 1;
    }

    @Override // p162u6.f
    public final int b() {
        return this.f30538I;
    }

    @Override // p162u6.f
    public final Object c(int i8) {
        C0456m.a(i8, this.f30538I);
        if (i8 == v.m(this)) {
            return removeLast();
        }
        if (i8 == 0) {
            return removeFirst();
        }
        r();
        int iQ = q(this.f30536G + i8);
        Object[] objArr = this.f30537H;
        Object obj = objArr[iQ];
        if (i8 < (this.f30538I >> 1)) {
            int i9 = this.f30536G;
            if (iQ >= i9) {
                j.M(objArr, i9 + 1, objArr, i9, iQ);
            } else {
                j.M(objArr, 1, objArr, 0, iQ);
                Object[] objArr2 = this.f30537H;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i10 = this.f30536G;
                j.M(objArr2, i10 + 1, objArr2, i10, objArr2.length - 1);
            }
            Object[] objArr3 = this.f30537H;
            int i11 = this.f30536G;
            objArr3[i11] = null;
            this.f30536G = n(i11);
        } else {
            int iQ2 = q(v.m(this) + this.f30536G);
            if (iQ <= iQ2) {
                Object[] objArr4 = this.f30537H;
                j.M(objArr4, iQ, objArr4, iQ + 1, iQ2 + 1);
            } else {
                Object[] objArr5 = this.f30537H;
                j.M(objArr5, iQ, objArr5, iQ + 1, objArr5.length);
                Object[] objArr6 = this.f30537H;
                objArr6[objArr6.length - 1] = objArr6[0];
                j.M(objArr6, 0, objArr6, 1, iQ2 + 1);
            }
            this.f30537H[iQ2] = null;
        }
        this.f30538I--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            r();
            p(this.f30536G, q(b() + this.f30536G));
        }
        this.f30536G = 0;
        this.f30538I = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        C0456m.a(i8, this.f30538I);
        return this.f30537H[q(this.f30536G + i8)];
    }

    public final void i(int i8, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f30537H.length;
        while (i8 < length && it.hasNext()) {
            this.f30537H[i8] = it.next();
            i8++;
        }
        int i9 = this.f30536G;
        for (int i10 = 0; i10 < i9 && it.hasNext(); i10++) {
            this.f30537H[i10] = it.next();
        }
        this.f30538I = collection.size() + b();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i8;
        int iQ = q(b() + this.f30536G);
        int length = this.f30536G;
        if (length < iQ) {
            while (length < iQ) {
                if (q0.c(obj, this.f30537H[length])) {
                    i8 = this.f30536G;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iQ) {
            return -1;
        }
        int length2 = this.f30537H.length;
        while (length < length2) {
            if (q0.c(obj, this.f30537H[length])) {
                i8 = this.f30536G;
            } else {
                length++;
            }
        }
        for (int i9 = 0; i9 < iQ; i9++) {
            if (q0.c(obj, this.f30537H[i9])) {
                length = i9 + this.f30537H.length;
                i8 = this.f30536G;
            }
        }
        return -1;
        return length - i8;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return b() == 0;
    }

    public final void l(int i8) {
        if (i8 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f30537H;
        if (i8 <= objArr.length) {
            return;
        }
        if (objArr == f30535J) {
            if (i8 < 10) {
                i8 = 10;
            }
            this.f30537H = new Object[i8];
            return;
        }
        Object[] objArr2 = new Object[C0456m.d(objArr.length, i8)];
        Object[] objArr3 = this.f30537H;
        j.M(objArr3, 0, objArr2, this.f30536G, objArr3.length);
        Object[] objArr4 = this.f30537H;
        int length = objArr4.length;
        int i9 = this.f30536G;
        j.M(objArr4, length - i9, objArr2, 0, i9);
        this.f30536G = 0;
        this.f30537H = objArr2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i8;
        int iQ = q(this.f30538I + this.f30536G);
        int i9 = this.f30536G;
        if (i9 < iQ) {
            length = iQ - 1;
            if (i9 <= length) {
                while (!q0.c(obj, this.f30537H[length])) {
                    if (length != i9) {
                        length--;
                    }
                }
                i8 = this.f30536G;
                return length - i8;
            }
            return -1;
        }
        if (i9 > iQ) {
            for (int i10 = iQ - 1; -1 < i10; i10--) {
                if (q0.c(obj, this.f30537H[i10])) {
                    length = i10 + this.f30537H.length;
                    i8 = this.f30536G;
                    return length - i8;
                }
            }
            Object[] objArr = this.f30537H;
            q0.h(objArr, "<this>");
            length = objArr.length - 1;
            int i11 = this.f30536G;
            if (i11 <= length) {
                while (!q0.c(obj, this.f30537H[length])) {
                    if (length != i11) {
                        length--;
                    }
                }
                i8 = this.f30536G;
                return length - i8;
            }
        }
        return -1;
    }

    public final int n(int i8) {
        Object[] objArr = this.f30537H;
        q0.h(objArr, "<this>");
        if (i8 == objArr.length - 1) {
            return 0;
        }
        return i8 + 1;
    }

    public final int o(int i8) {
        return i8 < 0 ? i8 + this.f30537H.length : i8;
    }

    public final void p(int i8, int i9) {
        if (i8 < i9) {
            j.P(this.f30537H, i8, i9);
            return;
        }
        Object[] objArr = this.f30537H;
        j.P(objArr, i8, objArr.length);
        j.P(this.f30537H, 0, i9);
    }

    public final int q(int i8) {
        Object[] objArr = this.f30537H;
        return i8 >= objArr.length ? i8 - objArr.length : i8;
    }

    public final void r() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        c(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iQ;
        q0.h(collection, "elements");
        boolean z7 = false;
        z7 = false;
        z7 = false;
        if (!isEmpty() && this.f30537H.length != 0) {
            int iQ2 = q(this.f30538I + this.f30536G);
            int i8 = this.f30536G;
            if (i8 < iQ2) {
                iQ = i8;
                while (i8 < iQ2) {
                    Object obj = this.f30537H[i8];
                    if (!collection.contains(obj)) {
                        this.f30537H[iQ] = obj;
                        iQ++;
                    } else {
                        z7 = true;
                    }
                    i8++;
                }
                j.P(this.f30537H, iQ, iQ2);
            } else {
                int length = this.f30537H.length;
                int i9 = i8;
                boolean z8 = false;
                while (i8 < length) {
                    Object[] objArr = this.f30537H;
                    Object obj2 = objArr[i8];
                    objArr[i8] = null;
                    if (!collection.contains(obj2)) {
                        this.f30537H[i9] = obj2;
                        i9++;
                    } else {
                        z8 = true;
                    }
                    i8++;
                }
                iQ = q(i9);
                for (int i10 = 0; i10 < iQ2; i10++) {
                    Object[] objArr2 = this.f30537H;
                    Object obj3 = objArr2[i10];
                    objArr2[i10] = null;
                    if (!collection.contains(obj3)) {
                        this.f30537H[iQ] = obj3;
                        iQ = n(iQ);
                    } else {
                        z8 = true;
                    }
                }
                z7 = z8;
            }
            if (z7) {
                r();
                this.f30538I = o(iQ - this.f30536G);
            }
        }
        return z7;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        r();
        Object[] objArr = this.f30537H;
        int i8 = this.f30536G;
        Object obj = objArr[i8];
        objArr[i8] = null;
        this.f30536G = n(i8);
        this.f30538I = b() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        r();
        int iQ = q(v.m(this) + this.f30536G);
        Object[] objArr = this.f30537H;
        Object obj = objArr[iQ];
        objArr[iQ] = null;
        this.f30538I = b() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        C0456m.c(i8, i9, this.f30538I);
        int i10 = i9 - i8;
        if (i10 == 0) {
            return;
        }
        if (i10 == this.f30538I) {
            clear();
            return;
        }
        if (i10 == 1) {
            c(i8);
            return;
        }
        r();
        if (i8 < this.f30538I - i9) {
            int iQ = q((i8 - 1) + this.f30536G);
            int iQ2 = q((i9 - 1) + this.f30536G);
            while (i8 > 0) {
                int i11 = iQ + 1;
                int iMin = Math.min(i8, Math.min(i11, iQ2 + 1));
                Object[] objArr = this.f30537H;
                int i12 = iQ2 - iMin;
                int i13 = iQ - iMin;
                j.M(objArr, i12 + 1, objArr, i13 + 1, i11);
                iQ = o(i13);
                iQ2 = o(i12);
                i8 -= iMin;
            }
            int iQ3 = q(this.f30536G + i10);
            p(this.f30536G, iQ3);
            this.f30536G = iQ3;
        } else {
            int iQ4 = q(this.f30536G + i9);
            int iQ5 = q(this.f30536G + i8);
            int i14 = this.f30538I;
            while (true) {
                i14 -= i9;
                if (i14 <= 0) {
                    break;
                }
                Object[] objArr2 = this.f30537H;
                i9 = Math.min(i14, Math.min(objArr2.length - iQ4, objArr2.length - iQ5));
                Object[] objArr3 = this.f30537H;
                int i15 = iQ4 + i9;
                j.M(objArr3, iQ5, objArr3, iQ4, i15);
                iQ4 = q(i15);
                iQ5 = q(iQ5 + i9);
            }
            int iQ6 = q(this.f30538I + this.f30536G);
            p(o(iQ6 - i10), iQ6);
        }
        this.f30538I -= i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iQ;
        q0.h(collection, "elements");
        boolean z7 = false;
        z7 = false;
        z7 = false;
        if (!isEmpty() && this.f30537H.length != 0) {
            int iQ2 = q(this.f30538I + this.f30536G);
            int i8 = this.f30536G;
            if (i8 < iQ2) {
                iQ = i8;
                while (i8 < iQ2) {
                    Object obj = this.f30537H[i8];
                    if (collection.contains(obj)) {
                        this.f30537H[iQ] = obj;
                        iQ++;
                    } else {
                        z7 = true;
                    }
                    i8++;
                }
                j.P(this.f30537H, iQ, iQ2);
            } else {
                int length = this.f30537H.length;
                int i9 = i8;
                boolean z8 = false;
                while (i8 < length) {
                    Object[] objArr = this.f30537H;
                    Object obj2 = objArr[i8];
                    objArr[i8] = null;
                    if (collection.contains(obj2)) {
                        this.f30537H[i9] = obj2;
                        i9++;
                    } else {
                        z8 = true;
                    }
                    i8++;
                }
                iQ = q(i9);
                for (int i10 = 0; i10 < iQ2; i10++) {
                    Object[] objArr2 = this.f30537H;
                    Object obj3 = objArr2[i10];
                    objArr2[i10] = null;
                    if (collection.contains(obj3)) {
                        this.f30537H[iQ] = obj3;
                        iQ = n(iQ);
                    } else {
                        z8 = true;
                    }
                }
                z7 = z8;
            }
            if (z7) {
                r();
                this.f30538I = o(iQ - this.f30536G);
            }
        }
        return z7;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        C0456m.a(i8, this.f30538I);
        int iQ = q(this.f30536G + i8);
        Object[] objArr = this.f30537H;
        Object obj2 = objArr[iQ];
        objArr[iQ] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        q0.h(objArr, "array");
        int length = objArr.length;
        int i8 = this.f30538I;
        if (length < i8) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i8);
            q0.f(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) objNewInstance;
        }
        int iQ = q(this.f30538I + this.f30536G);
        int i9 = this.f30536G;
        if (i9 < iQ) {
            j.N(this.f30537H, objArr, i9, iQ, 2);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f30537H;
            j.M(objArr2, 0, objArr, this.f30536G, objArr2.length);
            Object[] objArr3 = this.f30537H;
            j.M(objArr3, objArr3.length - this.f30536G, objArr, 0, iQ);
        }
        int i10 = this.f30538I;
        if (i10 < objArr.length) {
            objArr[i10] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[b()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        q0.h(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        r();
        l(collection.size() + b());
        i(q(b() + this.f30536G), collection);
        return true;
    }
}
