package androidx.leanback.widget;

/* JADX INFO: loaded from: classes.dex */
public final class P extends AbstractC0485k {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0484j f9147j = new C0484j(0, 0);

    public P() {
        n(1);
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final boolean b(int i8, boolean z7) {
        int iMin;
        int iQ;
        if (this.f9300b.O() == 0) {
            return false;
        }
        if (!z7 && c(i8)) {
            return false;
        }
        int i9 = this.f9305g;
        if (i9 >= 0) {
            iMin = i9 + 1;
        } else {
            int i10 = this.f9307i;
            iMin = i10 != -1 ? Math.min(i10, this.f9300b.O() - 1) : 0;
        }
        boolean z8 = false;
        while (iMin < this.f9300b.O()) {
            p039f.S s7 = this.f9300b;
            Object[] objArr = this.f9299a;
            int iL = s7.L(iMin, true, objArr, false);
            if (this.f9304f < 0 || this.f9305g < 0) {
                iQ = this.f9301c ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : Integer.MIN_VALUE;
                this.f9304f = iMin;
                this.f9305g = iMin;
            } else {
                if (this.f9301c) {
                    int i11 = iMin - 1;
                    iQ = (this.f9300b.P(i11) - this.f9300b.Q(i11)) - this.f9302d;
                } else {
                    int i12 = iMin - 1;
                    iQ = this.f9302d + this.f9300b.Q(i12) + this.f9300b.P(i12);
                }
                this.f9305g = iMin;
            }
            this.f9300b.F(objArr[0], iMin, iL, 0, iQ);
            if (z7 || c(i8)) {
                return true;
            }
            iMin++;
            z8 = true;
        }
        return z8;
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final void e(int i8, int i9, p132r.h hVar) {
        int iO;
        int iP;
        if (!this.f9301c ? i9 < 0 : i9 > 0) {
            if (this.f9305g == this.f9300b.O() - 1) {
                return;
            }
            int i10 = this.f9305g;
            if (i10 >= 0) {
                iO = i10 + 1;
            } else {
                int i11 = this.f9307i;
                iO = i11 != -1 ? Math.min(i11, this.f9300b.O() - 1) : 0;
            }
            int iQ = this.f9300b.Q(this.f9305g) + this.f9302d;
            int iP2 = this.f9300b.P(this.f9305g);
            if (this.f9301c) {
                iQ = -iQ;
            }
            iP = iQ + iP2;
        } else {
            if (this.f9304f == 0) {
                return;
            }
            iO = o();
            iP = this.f9300b.P(this.f9304f) + (this.f9301c ? this.f9302d : -this.f9302d);
        }
        hVar.b(iO, Math.abs(iP - i8));
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final int g(int[] iArr, int i8, boolean z7) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i8;
        }
        return this.f9301c ? this.f9300b.P(i8) : this.f9300b.P(i8) + this.f9300b.Q(i8);
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final int i(int[] iArr, int i8, boolean z7) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i8;
        }
        return this.f9301c ? this.f9300b.P(i8) - this.f9300b.Q(i8) : this.f9300b.P(i8);
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final p132r.h[] j(int i8, int i9) {
        p132r.h hVar = this.f9306h[0];
        hVar.f29665c = hVar.f29664b;
        hVar.a(i8);
        this.f9306h[0].a(i9);
        return this.f9306h;
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final C0484j k(int i8) {
        return this.f9147j;
    }

    @Override // androidx.leanback.widget.AbstractC0485k
    public final boolean m(int i8, boolean z7) {
        int iP;
        if (this.f9300b.O() == 0) {
            return false;
        }
        if (!z7 && d(i8)) {
            return false;
        }
        int i9 = ((C0491q) this.f9300b.f24988H).f9373u;
        boolean z8 = false;
        for (int iO = o(); iO >= i9; iO--) {
            p039f.S s7 = this.f9300b;
            Object[] objArr = this.f9299a;
            int iL = s7.L(iO, false, objArr, false);
            if (this.f9304f < 0 || this.f9305g < 0) {
                iP = this.f9301c ? Integer.MIN_VALUE : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                this.f9304f = iO;
                this.f9305g = iO;
            } else {
                iP = this.f9301c ? this.f9300b.P(iO + 1) + this.f9302d + iL : (this.f9300b.P(iO + 1) - this.f9302d) - iL;
                this.f9304f = iO;
            }
            this.f9300b.F(objArr[0], iO, iL, 0, iP);
            z8 = true;
            if (z7 || d(i8)) {
                break;
            }
        }
        return z8;
    }

    public final int o() {
        int i8 = this.f9304f;
        if (i8 >= 0) {
            return i8 - 1;
        }
        int i9 = this.f9307i;
        return i9 != -1 ? Math.min(i9, this.f9300b.O() - 1) : this.f9300b.O() - 1;
    }
}
