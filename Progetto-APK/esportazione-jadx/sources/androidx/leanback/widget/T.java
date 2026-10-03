package androidx.leanback.widget;

import com.google.android.gms.internal.ads.CO;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class T extends AbstractC0485k {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CO f9251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9252k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Object f9253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9254m;

    @Override // androidx.leanback.widget.AbstractC0485k
    public final boolean b(int i8, boolean z7) {
        Object[] objArr = this.f9299a;
        if (this.f9300b.O() == 0) {
            return false;
        }
        if (!z7 && c(i8)) {
            return false;
        }
        try {
            if (o(i8, z7)) {
                return true;
            }
            return q(i8, z7);
        } finally {
            objArr[0] = null;
            this.f9253l = null;
        }
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final int g(int[] iArr, int i8, boolean z7) {
        int i9;
        int iP = this.f9300b.P(i8);
        S sK = k(i8);
        int i10 = sK.f9298H;
        if (this.f9301c) {
            i9 = i10;
            int i11 = i9;
            int i12 = 1;
            int i13 = iP;
            for (int i14 = i8 + 1; i12 < this.f9303e && i14 <= this.f9305g; i14++) {
                S sK2 = k(i14);
                i13 += sK2.f9184I;
                int i15 = sK2.f9298H;
                if (i15 != i11) {
                    i12++;
                    if (!z7 ? i13 >= iP : i13 <= iP) {
                        i11 = i15;
                    } else {
                        iP = i13;
                        i8 = i14;
                        i9 = i15;
                        i11 = i9;
                    }
                }
            }
        } else {
            int i16 = 1;
            int i17 = i10;
            S sK3 = sK;
            int i18 = iP;
            iP = this.f9300b.Q(i8) + iP;
            i9 = i17;
            for (int i19 = i8 - 1; i16 < this.f9303e && i19 >= this.f9304f; i19--) {
                i18 -= sK3.f9184I;
                sK3 = k(i19);
                int i20 = sK3.f9298H;
                if (i20 != i17) {
                    i16++;
                    int iQ = this.f9300b.Q(i19) + i18;
                    if (!z7 ? iQ >= iP : iQ <= iP) {
                        i17 = i20;
                    } else {
                        iP = iQ;
                        i8 = i19;
                        i9 = i20;
                        i17 = i9;
                    }
                }
            }
        }
        if (iArr != null) {
            iArr[0] = i9;
            iArr[1] = i8;
        }
        return iP;
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final int i(int[] iArr, int i8, boolean z7) {
        int iQ;
        int iP = this.f9300b.P(i8);
        S sK = k(i8);
        int i9 = sK.f9298H;
        if (this.f9301c) {
            int i10 = 1;
            iQ = iP - this.f9300b.Q(i8);
            int i11 = i9;
            for (int i12 = i8 - 1; i10 < this.f9303e && i12 >= this.f9304f; i12--) {
                iP -= sK.f9184I;
                sK = k(i12);
                int i13 = sK.f9298H;
                if (i13 != i11) {
                    i10++;
                    int iQ2 = iP - this.f9300b.Q(i12);
                    if (!z7 ? iQ2 >= iQ : iQ2 <= iQ) {
                        i11 = i13;
                    } else {
                        iQ = iQ2;
                        i8 = i12;
                        i9 = i13;
                        i11 = i9;
                    }
                }
            }
        } else {
            int i14 = i9;
            int i15 = i14;
            int i16 = 1;
            int i17 = iP;
            for (int i18 = i8 + 1; i16 < this.f9303e && i18 <= this.f9305g; i18++) {
                S sK2 = k(i18);
                i17 += sK2.f9184I;
                int i19 = sK2.f9298H;
                if (i19 != i15) {
                    i16++;
                    if (!z7 ? i17 >= iP : i17 <= iP) {
                        i15 = i19;
                    } else {
                        iP = i17;
                        i8 = i18;
                        i14 = i19;
                        i15 = i14;
                    }
                }
            }
            iQ = iP;
            i9 = i14;
        }
        if (iArr != null) {
            iArr[0] = i9;
            iArr[1] = i8;
        }
        return iQ;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004b  */
    @Override // androidx.leanback.widget.AbstractC0485k
    public final p132r.h[] j(int i8, int i9) {
        for (int i10 = 0; i10 < this.f9303e; i10++) {
            p132r.h hVar = this.f9306h[i10];
            hVar.f29665c = hVar.f29664b;
        }
        if (i8 >= 0) {
            while (i8 <= i9) {
                p132r.h hVar2 = this.f9306h[k(i8).f9298H];
                if (hVar2.h() <= 0) {
                    hVar2.a(i8);
                    hVar2.a(i8);
                } else {
                    int i11 = hVar2.f29664b;
                    int i12 = hVar2.f29665c;
                    if (i11 == i12) {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                    int[] iArr = hVar2.f29666d;
                    int i13 = (i12 - 1) & hVar2.f29667e;
                    if (iArr[i13] != i8 - 1) {
                        hVar2.a(i8);
                        hVar2.a(i8);
                    } else {
                        if (i11 == i12) {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        hVar2.f29665c = i13;
                        hVar2.a(i8);
                    }
                }
                i8++;
            }
        }
        return this.f9306h;
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final void l(int i8) {
        super.l(i8);
        this.f9251j.D((s() - i8) + 1);
        if (this.f9251j.H() == 0) {
            this.f9252k = -1;
        }
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final boolean m(int i8, boolean z7) {
        Object[] objArr = this.f9299a;
        if (this.f9300b.O() == 0) {
            return false;
        }
        if (!z7 && d(i8)) {
            return false;
        }
        try {
            if (w(i8, z7)) {
                return true;
            }
            return y(i8, z7);
        } finally {
            objArr[0] = null;
            this.f9253l = null;
        }
    }

    public final boolean o(int i8, boolean z7) {
        int i9;
        int iP;
        int i10;
        if (this.f9251j.H() == 0) {
            return false;
        }
        int iO = this.f9300b.O();
        int i11 = this.f9305g;
        if (i11 >= 0) {
            i9 = i11 + 1;
            iP = this.f9300b.P(i11);
        } else {
            int i12 = this.f9307i;
            i9 = i12 != -1 ? i12 : 0;
            if (i9 > s() + 1 || i9 < this.f9252k) {
                CO co = this.f9251j;
                co.E(co.H());
                return false;
            }
            if (i9 > s()) {
                return false;
            }
            iP = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        int iS = s();
        int i13 = i9;
        while (i13 < iO && i13 <= iS) {
            S sK = k(i13);
            if (iP != Integer.MAX_VALUE) {
                iP += sK.f9184I;
            }
            int i14 = sK.f9298H;
            p039f.S s7 = this.f9300b;
            Object[] objArr = this.f9299a;
            int iL = s7.L(i13, true, objArr, false);
            if (iL != sK.f9185J) {
                sK.f9185J = iL;
                this.f9251j.D(iS - i13);
                i10 = i13;
            } else {
                i10 = iS;
            }
            this.f9305g = i13;
            if (this.f9304f < 0) {
                this.f9304f = i13;
            }
            this.f9300b.F(objArr[0], i13, iL, i14, iP);
            if (z7 || !c(i8)) {
                if (iP == Integer.MAX_VALUE) {
                    iP = this.f9300b.P(i13);
                }
                if (i14 != this.f9303e - 1 || !z7) {
                    i13++;
                    iS = i10;
                }
            }
            return true;
        }
        return false;
    }

    public final int p(int i8, int i9, int i10) {
        int iP;
        int i11 = this.f9305g;
        if (i11 >= 0 && (i11 != s() || this.f9305g != i8 - 1)) {
            throw new IllegalStateException();
        }
        int i12 = this.f9305g;
        if (i12 >= 0) {
            iP = i10 - this.f9300b.P(i12);
        } else if (this.f9251j.H() <= 0 || i8 != s() + 1) {
            iP = 0;
        } else {
            int iS = s();
            while (true) {
                if (iS < this.f9252k) {
                    iS = s();
                    break;
                }
                if (k(iS).f9298H == i9) {
                    break;
                }
                iS--;
            }
            iP = this.f9301c ? (-k(iS).f9185J) - this.f9302d : k(iS).f9185J + this.f9302d;
            for (int i13 = iS + 1; i13 <= s(); i13++) {
                iP -= k(i13).f9184I;
            }
        }
        S s7 = new S(i9, iP);
        CO co = this.f9251j;
        Object[] objArr = (Object[]) co.f12631d;
        int i14 = co.f12629b;
        objArr[i14] = s7;
        int i15 = co.f12630c & (i14 + 1);
        co.f12629b = i15;
        if (i15 == co.f12628a) {
            co.a();
        }
        Object obj = this.f9253l;
        if (obj != null) {
            s7.f9185J = this.f9254m;
            this.f9253l = null;
        } else {
            p039f.S s8 = this.f9300b;
            Object[] objArr2 = this.f9299a;
            s7.f9185J = s8.L(i8, true, objArr2, false);
            obj = objArr2[0];
        }
        Object obj2 = obj;
        if (this.f9251j.H() == 1) {
            this.f9305g = i8;
            this.f9304f = i8;
            this.f9252k = i8;
        } else {
            int i16 = this.f9305g;
            if (i16 < 0) {
                this.f9305g = i8;
                this.f9304f = i8;
            } else {
                this.f9305g = i16 + 1;
            }
        }
        this.f9300b.F(obj2, i8, s7.f9185J, i9, i10);
        return s7.f9185J;
    }

    public final boolean q(int i8, boolean z7) {
        int i9;
        int i10;
        boolean z8;
        int iV;
        int i11;
        int i12;
        int iO = this.f9300b.O();
        int i13 = this.f9305g;
        if (i13 < 0) {
            int i14 = this.f9307i;
            i9 = i14 != -1 ? i14 : 0;
            i10 = (this.f9251j.H() > 0 ? k(s()).f9298H + 1 : i9) % this.f9303e;
            z8 = false;
            iV = 0;
        } else {
            if (i13 < s()) {
                return false;
            }
            int i15 = this.f9305g;
            i9 = i15 + 1;
            i10 = k(i15).f9298H;
            int iR = r(true);
            if (iR < 0) {
                iV = Integer.MIN_VALUE;
                for (int i16 = 0; i16 < this.f9303e; i16++) {
                    iV = this.f9301c ? v(i16) : u(i16);
                    if (iV != Integer.MIN_VALUE) {
                        break;
                    }
                }
            } else {
                iV = this.f9301c ? i(null, iR, false) : g(null, iR, true);
            }
            if (!this.f9301c ? u(i10) >= iV : v(i10) <= iV) {
                i10++;
                if (i10 == this.f9303e) {
                    iV = this.f9301c ? h(false, null) : f(true, null);
                    i10 = 0;
                }
            }
            z8 = true;
        }
        boolean z9 = false;
        while (true) {
            if (i10 < this.f9303e) {
                if (i9 == iO || (!z7 && c(i8))) {
                    break;
                }
                int iV2 = this.f9301c ? v(i10) : u(i10);
                if (iV2 != Integer.MAX_VALUE && iV2 != Integer.MIN_VALUE) {
                    if (this.f9301c) {
                        i12 = this.f9302d;
                        i11 = -i12;
                    } else {
                        i11 = this.f9302d;
                    }
                    iV2 += i11;
                } else if (i10 == 0) {
                    iV2 = this.f9301c ? v(this.f9303e - 1) : u(this.f9303e - 1);
                    if (iV2 != Integer.MAX_VALUE && iV2 != Integer.MIN_VALUE) {
                        if (this.f9301c) {
                            i12 = this.f9302d;
                            i11 = -i12;
                        } else {
                            i11 = this.f9302d;
                        }
                        iV2 += i11;
                    }
                } else {
                    iV2 = this.f9301c ? u(i10 - 1) : v(i10 - 1);
                }
                int i17 = i9 + 1;
                int iP = p(i9, i10, iV2);
                if (z8) {
                    while (true) {
                        if (!this.f9301c) {
                            if (iV2 + iP >= iV) {
                                break;
                            }
                            if (i17 != iO) {
                            }
                            return true;
                        }
                        if (iV2 - iP <= iV) {
                            break;
                        }
                        if (i17 != iO || (!z7 && c(i8))) {
                            return true;
                        }
                        iV2 += this.f9301c ? (-iP) - this.f9302d : iP + this.f9302d;
                        int i18 = i17 + 1;
                        int iP2 = p(i17, i10, iV2);
                        i17 = i18;
                        iP = iP2;
                    }
                    i9 = i17;
                } else {
                    iV = this.f9301c ? v(i10) : u(i10);
                    i9 = i17;
                    z8 = true;
                }
                i10++;
                z9 = true;
            } else {
                if (z7) {
                    return z9;
                }
                iV = this.f9301c ? h(false, null) : f(true, null);
                i10 = 0;
            }
        }
        return z9;
    }

    public final int r(boolean z7) {
        boolean z8 = false;
        if (z7) {
            for (int i8 = this.f9305g; i8 >= this.f9304f; i8--) {
                int i9 = k(i8).f9298H;
                if (i9 == 0) {
                    z8 = true;
                } else if (z8 && i9 == this.f9303e - 1) {
                    return i8;
                }
            }
            return -1;
        }
        for (int i10 = this.f9304f; i10 <= this.f9305g; i10++) {
            int i11 = k(i10).f9298H;
            if (i11 == this.f9303e - 1) {
                z8 = true;
            } else if (z8 && i11 == 0) {
                return i10;
            }
        }
        return -1;
    }

    public final int s() {
        return (this.f9251j.H() + this.f9252k) - 1;
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final S k(int i8) {
        int i9 = i8 - this.f9252k;
        if (i9 < 0 || i9 >= this.f9251j.H()) {
            return null;
        }
        CO co = this.f9251j;
        if (i9 < 0) {
            co.getClass();
        } else if (i9 < co.H()) {
            Object obj = ((Object[]) co.f12631d)[co.f12630c & (co.f12628a + i9)];
            q0.e(obj);
            return (S) obj;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int u(int i8) {
        int i9;
        S sK;
        int i10 = this.f9304f;
        if (i10 < 0) {
            return Integer.MIN_VALUE;
        }
        if (this.f9301c) {
            int iP = this.f9300b.P(i10);
            if (k(this.f9304f).f9298H == i8) {
                return iP;
            }
            int i11 = this.f9304f;
            do {
                i11++;
                if (i11 <= s()) {
                    sK = k(i11);
                    iP += sK.f9184I;
                }
            } while (sK.f9298H != i8);
            return iP;
        }
        int iP2 = this.f9300b.P(this.f9305g);
        S sK2 = k(this.f9305g);
        if (sK2.f9298H == i8) {
            i9 = sK2.f9185J;
        } else {
            int i12 = this.f9305g;
            do {
                i12--;
                if (i12 >= this.f9252k) {
                    iP2 -= sK2.f9184I;
                    sK2 = k(i12);
                }
            } while (sK2.f9298H != i8);
            i9 = sK2.f9185J;
        }
        return iP2 + i9;
        return Integer.MIN_VALUE;
    }

    public final int v(int i8) {
        S sK;
        int i9;
        int i10 = this.f9304f;
        if (i10 < 0) {
            return com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        if (!this.f9301c) {
            int iP = this.f9300b.P(i10);
            if (k(this.f9304f).f9298H == i8) {
                return iP;
            }
            int i11 = this.f9304f;
            do {
                i11++;
                if (i11 <= s()) {
                    sK = k(i11);
                    iP += sK.f9184I;
                }
            } while (sK.f9298H != i8);
            return iP;
        }
        int iP2 = this.f9300b.P(this.f9305g);
        S sK2 = k(this.f9305g);
        if (sK2.f9298H == i8) {
            i9 = sK2.f9185J;
        } else {
            int i12 = this.f9305g;
            do {
                i12--;
                if (i12 >= this.f9252k) {
                    iP2 -= sK2.f9184I;
                    sK2 = k(i12);
                }
            } while (sK2.f9298H != i8);
            i9 = sK2.f9185J;
        }
        return iP2 - i9;
        return com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final boolean w(int i8, boolean z7) {
        int i9;
        int iP;
        int i10;
        if (this.f9251j.H() == 0) {
            return false;
        }
        int i11 = this.f9304f;
        if (i11 < 0) {
            int i12 = this.f9307i;
            i9 = i12 != -1 ? i12 : 0;
            if (i9 <= s()) {
                int i13 = this.f9252k;
                if (i9 >= i13 - 1) {
                    if (i9 < i13) {
                        return false;
                    }
                    iP = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                    i10 = 0;
                }
            }
            CO co = this.f9251j;
            co.E(co.H());
            return false;
        }
        iP = this.f9300b.P(i11);
        i10 = k(this.f9304f).f9184I;
        i9 = this.f9304f - 1;
        int iMax = Math.max(((C0491q) this.f9300b.f24988H).f9373u, this.f9252k);
        while (i9 >= iMax) {
            S sK = k(i9);
            int i14 = sK.f9298H;
            p039f.S s7 = this.f9300b;
            Object[] objArr = this.f9299a;
            int iL = s7.L(i9, false, objArr, false);
            if (iL != sK.f9185J) {
                this.f9251j.E((i9 + 1) - this.f9252k);
                this.f9252k = this.f9304f;
                this.f9253l = objArr[0];
                this.f9254m = iL;
                return false;
            }
            this.f9304f = i9;
            if (this.f9305g < 0) {
                this.f9305g = i9;
            }
            this.f9300b.F(objArr[0], i9, iL, i14, iP - i10);
            if (z7 || !d(i8)) {
                iP = this.f9300b.P(i9);
                i10 = sK.f9184I;
                if (i14 != 0 || !z7) {
                    i9--;
                }
            }
            return true;
        }
        return false;
    }

    public final int x(int i8, int i9, int i10) {
        int i11 = this.f9304f;
        if (i11 >= 0 && (i11 != this.f9252k || i11 != i8 + 1)) {
            throw new IllegalStateException();
        }
        int i12 = this.f9252k;
        S sK = i12 >= 0 ? k(i12) : null;
        int iP = this.f9300b.P(this.f9252k);
        S s7 = new S(i9, 0);
        CO co = this.f9251j;
        int i13 = (co.f12628a - 1) & co.f12630c;
        co.f12628a = i13;
        ((Object[]) co.f12631d)[i13] = s7;
        if (i13 == co.f12629b) {
            co.a();
        }
        Object obj = this.f9253l;
        if (obj != null) {
            s7.f9185J = this.f9254m;
            this.f9253l = null;
        } else {
            p039f.S s8 = this.f9300b;
            Object[] objArr = this.f9299a;
            s7.f9185J = s8.L(i8, false, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        this.f9304f = i8;
        this.f9252k = i8;
        if (this.f9305g < 0) {
            this.f9305g = i8;
        }
        int i14 = !this.f9301c ? i10 - s7.f9185J : i10 + s7.f9185J;
        if (sK != null) {
            sK.f9184I = iP - i14;
        }
        this.f9300b.F(obj2, i8, s7.f9185J, i9, i14);
        return s7.f9185J;
    }

    public final boolean y(int i8, boolean z7) {
        int i9;
        int i10;
        boolean z8;
        int iU;
        int i11;
        int i12;
        int i13 = this.f9304f;
        if (i13 < 0) {
            int i14 = this.f9307i;
            i9 = i14 != -1 ? i14 : 0;
            i10 = (this.f9251j.H() > 0 ? (k(this.f9252k).f9298H + this.f9303e) - 1 : i9) % this.f9303e;
            z8 = false;
            iU = 0;
        } else {
            if (i13 > this.f9252k) {
                return false;
            }
            i9 = i13 - 1;
            i10 = k(i13).f9298H;
            int iR = r(false);
            if (iR < 0) {
                i10--;
                iU = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                for (int i15 = this.f9303e - 1; i15 >= 0; i15--) {
                    iU = this.f9301c ? u(i15) : v(i15);
                    if (iU != Integer.MAX_VALUE) {
                        break;
                    }
                }
            } else {
                iU = this.f9301c ? g(null, iR, true) : i(null, iR, false);
            }
            if (!this.f9301c ? v(i10) <= iU : u(i10) >= iU) {
                i10--;
                if (i10 < 0) {
                    i10 = this.f9303e - 1;
                    iU = this.f9301c ? f(true, null) : h(false, null);
                }
            }
            z8 = true;
        }
        boolean z9 = false;
        while (true) {
            if (i10 >= 0) {
                if (i9 < 0 || (!z7 && d(i8))) {
                    break;
                }
                int iU2 = this.f9301c ? u(i10) : v(i10);
                if (iU2 != Integer.MAX_VALUE && iU2 != Integer.MIN_VALUE) {
                    if (this.f9301c) {
                        i12 = this.f9302d;
                    } else {
                        i11 = this.f9302d;
                        i12 = -i11;
                    }
                    iU2 += i12;
                } else if (i10 == this.f9303e - 1) {
                    iU2 = this.f9301c ? u(0) : v(0);
                    if (iU2 != Integer.MAX_VALUE && iU2 != Integer.MIN_VALUE) {
                        if (this.f9301c) {
                            i12 = this.f9302d;
                        } else {
                            i11 = this.f9302d;
                            i12 = -i11;
                        }
                        iU2 += i12;
                    }
                } else {
                    iU2 = this.f9301c ? v(i10 + 1) : u(i10 + 1);
                }
                int i16 = i9 - 1;
                int iX = x(i9, i10, iU2);
                if (z8) {
                    while (true) {
                        if (!this.f9301c) {
                            if (iU2 - iX <= iU) {
                                break;
                            }
                            if (i16 >= 0) {
                            }
                            return true;
                        }
                        if (iU2 + iX >= iU) {
                            break;
                        }
                        if (i16 >= 0 || (!z7 && d(i8))) {
                            return true;
                        }
                        iU2 += this.f9301c ? iX + this.f9302d : (-iX) - this.f9302d;
                        int i17 = i16 - 1;
                        int iX2 = x(i16, i10, iU2);
                        i16 = i17;
                        iX = iX2;
                    }
                    i9 = i16;
                } else {
                    iU = this.f9301c ? u(i10) : v(i10);
                    i9 = i16;
                    z8 = true;
                }
                i10--;
                z9 = true;
            } else {
                if (z7) {
                    return z9;
                }
                iU = this.f9301c ? f(true, null) : h(false, null);
                i10 = this.f9303e - 1;
            }
        }
        return z9;
    }
}
