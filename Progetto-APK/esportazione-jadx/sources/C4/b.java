package C4;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class b extends AbstractList implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int[] f1630G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f1631H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f1632I;

    public b(int i8, int i9, int[] iArr) {
        this.f1630G = iArr;
        this.f1631H = i8;
        this.f1632I = i9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return (obj instanceof Integer) && k.N(((Integer) obj).intValue(), this.f1631H, this.f1632I, this.f1630G) != -1;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return super.equals(obj);
        }
        b bVar = (b) obj;
        int size = size();
        if (bVar.size() != size) {
            return false;
        }
        for (int i8 = 0; i8 < size; i8++) {
            if (this.f1630G[this.f1631H + i8] != bVar.f1630G[bVar.f1631H + i8]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        k.r(i8, size());
        return Integer.valueOf(this.f1630G[this.f1631H + i8]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = this.f1631H; i9 < this.f1632I; i9++) {
            i8 = (i8 * 31) + this.f1630G[i9];
        }
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f1631H;
        int iN = k.N(iIntValue, i8, this.f1632I, this.f1630G);
        if (iN >= 0) {
            return iN - i8;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int i8;
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i9 = this.f1632I;
            do {
                i9--;
                i8 = this.f1631H;
                if (i9 < i8) {
                    i9 = -1;
                    break;
                }
            } while (this.f1630G[i9] != iIntValue);
            if (i9 >= 0) {
                return i9 - i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        Integer num = (Integer) obj;
        k.r(i8, size());
        int i9 = this.f1631H + i8;
        int[] iArr = this.f1630G;
        int i10 = iArr[i9];
        num.getClass();
        iArr[i9] = num.intValue();
        return Integer.valueOf(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1632I - this.f1631H;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i8, int i9) {
        k.u(i8, i9, size());
        if (i8 == i9) {
            return Collections.emptyList();
        }
        int i10 = this.f1631H;
        return new b(i8 + i10, i10 + i9, this.f1630G);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder(size() * 5);
        sb.append('[');
        int[] iArr = this.f1630G;
        int i8 = this.f1631H;
        sb.append(iArr[i8]);
        while (true) {
            i8++;
            if (i8 >= this.f1632I) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i8]);
        }
    }
}
