package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import java.util.Set;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2333zA extends AbstractC1814pA implements Set {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f22134I = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient AbstractC2073uA f22135H;

    public static int q(int i8) {
        int iMax = Math.max(i8, 2);
        if (iMax >= 751619276) {
            AbstractC2987b.B0("collection too large", iMax < 1073741824);
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static C2281yA s(int i8) {
        C2281yA c2281yA = new C2281yA(i8, 0);
        c2281yA.f21998d = new Object[q(i8)];
        return c2281yA;
    }

    public static AbstractC2333zA t(Zt zt, Zt zt2, Zt zt3, Zt zt4, Wt wt, Mu mu, Object... objArr) {
        Object[] objArr2 = new Object[11];
        objArr2[0] = zt;
        objArr2[1] = zt2;
        objArr2[2] = zt3;
        objArr2[3] = zt4;
        objArr2[4] = wt;
        objArr2[5] = mu;
        System.arraycopy(objArr, 0, objArr2, 6, 5);
        return u(11, objArr2);
    }

    public static AbstractC2333zA u(int i8, Object... objArr) {
        if (i8 == 0) {
            return VA.f16965P;
        }
        if (i8 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new C1194dB(obj);
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
            int iJ = p113o3.r.j(iHashCode);
            while (true) {
                int i13 = iJ & i9;
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
                iJ++;
            }
        }
        Arrays.fill(objArr, i11, i8, (Object) null);
        if (i11 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new C1194dB(obj4);
        }
        if (q(i11) < iQ / 2) {
            return u(i11, objArr);
        }
        int length = objArr.length;
        if (i11 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i11);
        }
        return new VA(objArr, i10, objArr2, i9, i11);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC2333zA) && (this instanceof VA)) {
            AbstractC2333zA abstractC2333zA = (AbstractC2333zA) obj;
            abstractC2333zA.getClass();
            if ((abstractC2333zA instanceof VA) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return AbstractC2987b.x0(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return AbstractC2987b.Y(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1814pA
    public AbstractC2073uA l() {
        AbstractC2073uA abstractC2073uA = this.f22135H;
        if (abstractC2073uA != null) {
            return abstractC2073uA;
        }
        AbstractC2073uA abstractC2073uAR = r();
        this.f22135H = abstractC2073uAR;
        return abstractC2073uAR;
    }

    public AbstractC2073uA r() {
        Object[] array = toArray(AbstractC1814pA.f20430G);
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return AbstractC2073uA.s(array.length, array);
    }
}
