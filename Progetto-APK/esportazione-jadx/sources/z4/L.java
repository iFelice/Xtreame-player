package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class L extends C implements Set {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f31811I = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient H f31812H;

    public static int p(int i8) {
        int iMax = Math.max(i8, 2);
        if (iMax >= 751619276) {
            p190y4.k.o("collection too large", iMax < 1073741824);
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static L q(int i8, Object... objArr) {
        if (i8 == 0) {
            return j0.f31869P;
        }
        if (i8 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new r0(obj);
        }
        int iP = p(i8);
        Object[] objArr2 = new Object[iP];
        int i9 = iP - 1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i8; i12++) {
            Object obj2 = objArr[i12];
            if (obj2 == null) {
                throw new NullPointerException(p000a.r.f("at index ", i12));
            }
            int iHashCode = obj2.hashCode();
            int iG = a7.b.g(iHashCode);
            while (true) {
                int i13 = iG & i9;
                Object obj3 = objArr2[i13];
                if (obj3 == null) {
                    objArr[i11] = obj2;
                    objArr2[i13] = obj2;
                    i10 += iHashCode;
                    i11++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iG++;
            }
        }
        Arrays.fill(objArr, i11, i8, (Object) null);
        if (i11 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new r0(obj4);
        }
        if (p(i11) < iP / 2) {
            return q(i11, objArr);
        }
        int length = objArr.length;
        if (i11 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i11);
        }
        return new j0(objArr, i10, objArr2, i9, i11);
    }

    public static L r(Collection collection) {
        if ((collection instanceof L) && !(collection instanceof SortedSet)) {
            L l4 = (L) collection;
            if (!l4.o()) {
                return l4;
            }
        }
        Object[] array = collection.toArray();
        return q(array.length, array);
    }

    @Override // z4.C
    public H b() {
        H h8 = this.f31812H;
        if (h8 != null) {
            return h8;
        }
        H hS = s();
        this.f31812H = hS;
        return hS;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof L) && (this instanceof j0)) {
            L l4 = (L) obj;
            l4.getClass();
            if ((l4 instanceof j0) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return q0.o(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return q0.z(this);
    }

    public H s() {
        Object[] array = toArray(C.f31797G);
        F f8 = H.f31804H;
        return H.p(array.length, array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public abstract AbstractC1349gB iterator();
}
