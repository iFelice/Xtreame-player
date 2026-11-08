package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WK extends AbstractC0774Ie {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f17199k = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WN f17201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f17204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f17205g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AbstractC0774Ie[] f17206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object[] f17207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashMap f17208j;

    public WK(AbstractC0774Ie[] abstractC0774IeArr, Object[] objArr, WN wn) {
        this.f17201c = wn;
        this.f17200b = wn.f17244b.length;
        this.f17206h = abstractC0774IeArr;
        int length = abstractC0774IeArr.length;
        this.f17204f = new int[length];
        this.f17205g = new int[length];
        this.f17207i = objArr;
        this.f17208j = new HashMap();
        int i8 = 0;
        int iC = 0;
        int iB = 0;
        int i9 = 0;
        while (i8 < abstractC0774IeArr.length) {
            AbstractC0774Ie abstractC0774Ie = abstractC0774IeArr[i8];
            this.f17206h[i9] = abstractC0774Ie;
            this.f17205g[i9] = iC;
            this.f17204f[i9] = iB;
            iC += abstractC0774Ie.c();
            iB += this.f17206h[i9].b();
            this.f17208j.put(objArr[i9], Integer.valueOf(i9));
            i8++;
            i9++;
        }
        this.f17202d = iC;
        this.f17203e = iB;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int a(Object obj) {
        int iA;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f17208j.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        if (iIntValue == -1 || (iA = this.f17206h[iIntValue].a(obj3)) == -1) {
            return -1;
        }
        return this.f17204f[iIntValue] + iA;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int b() {
        return this.f17203e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int c() {
        return this.f17202d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C1521je d(int i8, C1521je c1521je, boolean z7) {
        int[] iArr = this.f17204f;
        int iJ = Et.j(iArr, i8 + 1, false, false);
        int i9 = this.f17205g[iJ];
        this.f17206h[iJ].d(i8 - iArr[iJ], c1521je, z7);
        c1521je.f19467c += i9;
        if (z7) {
            Object obj = this.f17207i[iJ];
            Object obj2 = c1521je.f19466b;
            obj2.getClass();
            c1521je.f19466b = Pair.create(obj, obj2);
        }
        return c1521je;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C2196we e(int i8, C2196we c2196we, long j8) {
        int[] iArr = this.f17205g;
        int iJ = Et.j(iArr, i8 + 1, false, false);
        int i9 = iArr[iJ];
        int i10 = this.f17204f[iJ];
        this.f17206h[iJ].e(i8 - i9, c2196we, j8);
        Object objCreate = this.f17207i[iJ];
        if (!C2196we.f21706m.equals(c2196we.f21708a)) {
            objCreate = Pair.create(objCreate, c2196we.f21708a);
        }
        c2196we.f21708a = objCreate;
        c2196we.f21718k += i10;
        c2196we.f21719l += i10;
        return c2196we;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final Object f(int i8) {
        int[] iArr = this.f17204f;
        int iJ = Et.j(iArr, i8 + 1, false, false);
        return Pair.create(this.f17207i[iJ], this.f17206h[iJ].f(i8 - iArr[iJ]));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int g(boolean z7) {
        if (this.f17200b == 0) {
            return -1;
        }
        int iP = 0;
        if (z7) {
            int[] iArr = this.f17201c.f17244b;
            iP = iArr.length > 0 ? iArr[0] : -1;
        }
        do {
            AbstractC0774Ie[] abstractC0774IeArr = this.f17206h;
            if (!abstractC0774IeArr[iP].o()) {
                return this.f17205g[iP] + abstractC0774IeArr[iP].g(z7);
            }
            iP = p(iP, z7);
        } while (iP != -1);
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int h(boolean z7) {
        int iQ;
        int i8 = this.f17200b;
        if (i8 == 0) {
            return -1;
        }
        if (z7) {
            int[] iArr = this.f17201c.f17244b;
            int length = iArr.length;
            iQ = length > 0 ? iArr[length - 1] : -1;
        } else {
            iQ = i8 - 1;
        }
        do {
            AbstractC0774Ie[] abstractC0774IeArr = this.f17206h;
            if (!abstractC0774IeArr[iQ].o()) {
                return this.f17205g[iQ] + abstractC0774IeArr[iQ].h(z7);
            }
            iQ = q(iQ, z7);
        } while (iQ != -1);
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int j(boolean z7, int i8, int i9) {
        int[] iArr = this.f17205g;
        int iJ = Et.j(iArr, i8 + 1, false, false);
        int i10 = iArr[iJ];
        AbstractC0774Ie[] abstractC0774IeArr = this.f17206h;
        int iJ2 = abstractC0774IeArr[iJ].j(z7, i8 - i10, i9 != 2 ? i9 : 0);
        if (iJ2 != -1) {
            return i10 + iJ2;
        }
        int iP = p(iJ, z7);
        while (iP != -1 && abstractC0774IeArr[iP].o()) {
            iP = p(iP, z7);
        }
        if (iP != -1) {
            return abstractC0774IeArr[iP].g(z7) + iArr[iP];
        }
        if (i9 == 2) {
            return g(z7);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int k(int i8) {
        int[] iArr = this.f17205g;
        int iJ = Et.j(iArr, i8 + 1, false, false);
        int i9 = iArr[iJ];
        AbstractC0774Ie[] abstractC0774IeArr = this.f17206h;
        int iK = abstractC0774IeArr[iJ].k(i8 - i9);
        if (iK != -1) {
            return i9 + iK;
        }
        int iQ = q(iJ, false);
        while (iQ != -1 && abstractC0774IeArr[iQ].o()) {
            iQ = q(iQ, false);
        }
        if (iQ == -1) {
            return -1;
        }
        return abstractC0774IeArr[iQ].h(false) + iArr[iQ];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C1521je n(Object obj, C1521je c1521je) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        Integer num = (Integer) this.f17208j.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        int i8 = this.f17205g[iIntValue];
        this.f17206h[iIntValue].n(obj3, c1521je);
        c1521je.f19467c += i8;
        c1521je.f19466b = obj;
        return c1521je;
    }

    public final int p(int i8, boolean z7) {
        if (!z7) {
            if (i8 >= this.f17200b - 1) {
                return -1;
            }
            return i8 + 1;
        }
        WN wn = this.f17201c;
        int i9 = wn.f17245c[i8] + 1;
        int[] iArr = wn.f17244b;
        if (i9 < iArr.length) {
            return iArr[i9];
        }
        return -1;
    }

    public final int q(int i8, boolean z7) {
        if (!z7) {
            if (i8 <= 0) {
                return -1;
            }
            return (-1) + i8;
        }
        WN wn = this.f17201c;
        int i9 = wn.f17245c[i8] - 1;
        if (i9 >= 0) {
            return wn.f17244b[i9];
        }
        return -1;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public WK(List list, WN wn) {
        AbstractC0774Ie[] abstractC0774IeArr = new AbstractC0774Ie[list.size()];
        Iterator it = list.iterator();
        int i8 = 0;
        int i9 = 0;
        while (it.hasNext()) {
            abstractC0774IeArr[i9] = ((JK) it.next()).zza();
            i9++;
        }
        Object[] objArr = new Object[list.size()];
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            objArr[i8] = ((JK) it2.next()).zzb();
            i8++;
        }
        this(abstractC0774IeArr, objArr, wn);
    }
}
