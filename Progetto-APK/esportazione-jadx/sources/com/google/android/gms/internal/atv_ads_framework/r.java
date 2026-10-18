package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends AbstractC2396l implements Set {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient AbstractC2402o f22365H;

    public static int q(int i8) {
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

    public static r s(int i8, Object... objArr) {
        if (i8 == 0) {
            return C2421z.f22400O;
        }
        if (i8 == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new A(obj);
        }
        int iQ = q(i8);
        Object[] objArr2 = new Object[iQ];
        int i9 = iQ - 1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i8; i12++) {
            Object obj2 = objArr[i12];
            if (obj2 == null) {
                throw new NullPointerException(p000a.r.f("at index ", i12));
            }
            int iHashCode = obj2.hashCode();
            int iL0 = Cw.l0(iHashCode);
            while (true) {
                int i13 = iL0 & i9;
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
                iL0++;
            }
        }
        Arrays.fill(objArr, i11, i8, (Object) null);
        if (i11 == 1) {
            Object obj4 = objArr[0];
            obj4.getClass();
            return new A(obj4);
        }
        if (q(i11) < iQ / 2) {
            return s(i11, objArr);
        }
        int length = objArr.length;
        if (i11 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i11);
        }
        return new C2421z(objArr, i10, objArr2, i9, i11);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof r) && (this instanceof C2421z)) {
            r rVar = (r) obj;
            rVar.getClass();
            if ((rVar instanceof C2421z) && hashCode() != obj.hashCode()) {
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

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2396l
    public AbstractC2402o l() {
        AbstractC2402o abstractC2402o = this.f22365H;
        if (abstractC2402o != null) {
            return abstractC2402o;
        }
        AbstractC2402o abstractC2402oR = r();
        this.f22365H = abstractC2402oR;
        return abstractC2402oR;
    }

    public abstract AbstractC1349gB p();

    public AbstractC2402o r() {
        Object[] array = toArray(AbstractC2396l.f22337G);
        C2398m c2398m = AbstractC2402o.f22343H;
        return AbstractC2402o.q(array.length, array);
    }
}
