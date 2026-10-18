package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class I extends D implements Set {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f22471I = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient G f22472H;

    public static int n(int i8) {
        int iMax = Math.max(i8, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static I o(int i8, Object... objArr) {
        if (i8 == 0) {
            return S.f22529P;
        }
        if (i8 == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new T(obj);
        }
        int iN = n(i8);
        Object[] objArr2 = new Object[iN];
        int i9 = iN - 1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i8; i12++) {
            Object obj2 = objArr[i12];
            if (obj2 == null) {
                throw new NullPointerException(p000a.r.f("at index ", i12));
            }
            int iHashCode = obj2.hashCode();
            int iS = Cw.s(iHashCode);
            while (true) {
                int i13 = iS & i9;
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
                iS++;
            }
        }
        Arrays.fill(objArr, i11, i8, (Object) null);
        if (i11 == 1) {
            Object obj4 = objArr[0];
            obj4.getClass();
            return new T(obj4);
        }
        if (n(i11) < iN / 2) {
            return o(i11, objArr);
        }
        int length = objArr.length;
        if (i11 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i11);
        }
        return new S(objArr, i10, objArr2, i9, i11);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof I) && (this instanceof S)) {
            I i8 = (I) obj;
            i8.getClass();
            if ((i8 instanceof S) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }
}
