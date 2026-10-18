package androidx.recyclerview.widget;

import B0.U;
import M1.f;
import O1.AbstractC0326z;
import O1.C;
import O1.C0321u;
import O1.C0322v;
import O1.C0323w;
import O1.C0325y;
import O1.K;
import O1.L;
import O1.M;
import O1.X;
import O1.Y;
import O1.c0;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.bumptech.glide.d;
import java.util.List;
import p000a.r;
import p132r.h;
import p142s1.g;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends L implements X {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final U f9590A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final f f9591B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f9592C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int[] f9593D;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f9594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public C0321u f9595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public C0325y f9596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f9597s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f9598t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f9599u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f9600v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f9601w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f9602x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f9603y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public C0322v f9604z;

    public LinearLayoutManager(int i8) {
        this.f9594p = 1;
        this.f9598t = false;
        this.f9599u = false;
        this.f9600v = false;
        this.f9601w = true;
        this.f9602x = -1;
        this.f9603y = Integer.MIN_VALUE;
        this.f9604z = null;
        this.f9590A = new U();
        this.f9591B = new f();
        this.f9592C = 2;
        this.f9593D = new int[2];
        q1(i8);
        c(null);
        if (this.f9598t) {
            this.f9598t = false;
            D0();
        }
    }

    @Override // O1.L
    public int F0(int i8, g gVar, Y y7) {
        if (this.f9594p == 1) {
            return 0;
        }
        return p1(i8, gVar, y7);
    }

    @Override // O1.L
    public final void G0(int i8) {
        this.f9602x = i8;
        this.f9603y = Integer.MIN_VALUE;
        C0322v c0322v = this.f9604z;
        if (c0322v != null) {
            c0322v.f5534G = -1;
        }
        D0();
    }

    @Override // O1.L
    public int H0(int i8, g gVar, Y y7) {
        if (this.f9594p == 0) {
            return 0;
        }
        return p1(i8, gVar, y7);
    }

    @Override // O1.L
    public final boolean O0() {
        if (this.f5291m == 1073741824 || this.f5290l == 1073741824) {
            return false;
        }
        int iX = x();
        for (int i8 = 0; i8 < iX; i8++) {
            ViewGroup.LayoutParams layoutParams = w(i8).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    @Override // O1.L
    public void Q0(RecyclerView recyclerView, int i8) {
        C0323w c0323w = new C0323w(recyclerView.getContext());
        c0323w.f5537a = i8;
        R0(c0323w);
    }

    @Override // O1.L
    public final boolean R() {
        return true;
    }

    @Override // O1.L
    public final boolean S() {
        return this.f9598t;
    }

    @Override // O1.L
    public boolean S0() {
        return this.f9604z == null && this.f9597s == this.f9600v;
    }

    public void T0(Y y7, C0321u c0321u, h hVar) {
        int i8 = c0321u.f5525d;
        if (i8 < 0 || i8 >= y7.b()) {
            return;
        }
        hVar.b(i8, Math.max(0, c0321u.f5528g));
    }

    public final int U0(Y y7) {
        if (x() == 0) {
            return 0;
        }
        Y0();
        C0325y c0325y = this.f9596r;
        boolean z7 = !this.f9601w;
        return d.c(y7, c0325y, b1(z7), a1(z7), this, this.f9601w);
    }

    public final int V0(Y y7) {
        if (x() == 0) {
            return 0;
        }
        Y0();
        C0325y c0325y = this.f9596r;
        boolean z7 = !this.f9601w;
        return d.d(y7, c0325y, b1(z7), a1(z7), this, this.f9601w, this.f9599u);
    }

    public final int W0(Y y7) {
        if (x() == 0) {
            return 0;
        }
        Y0();
        C0325y c0325y = this.f9596r;
        boolean z7 = !this.f9601w;
        return d.e(y7, c0325y, b1(z7), a1(z7), this, this.f9601w);
    }

    public final int X0(int i8) {
        if (i8 == 1) {
            return (this.f9594p != 1 && j1()) ? 1 : -1;
        }
        if (i8 == 2) {
            return (this.f9594p != 1 && j1()) ? -1 : 1;
        }
        if (i8 == 17) {
            return this.f9594p == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i8 == 33) {
            return this.f9594p == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i8 != 66) {
            return (i8 == 130 && this.f9594p == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f9594p == 0 ? 1 : Integer.MIN_VALUE;
    }

    public final void Y0() {
        if (this.f9595q == null) {
            C0321u c0321u = new C0321u();
            c0321u.f5522a = true;
            c0321u.f5529h = 0;
            c0321u.f5530i = 0;
            c0321u.f5532k = null;
            this.f9595q = c0321u;
        }
    }

    public final int Z0(g gVar, C0321u c0321u, Y y7, boolean z7) {
        int i8;
        int i9 = c0321u.f5524c;
        int i10 = c0321u.f5528g;
        if (i10 != Integer.MIN_VALUE) {
            if (i9 < 0) {
                c0321u.f5528g = i10 + i9;
            }
            m1(gVar, c0321u);
        }
        int i11 = c0321u.f5524c + c0321u.f5529h;
        while (true) {
            if ((!c0321u.f5533l && i11 <= 0) || (i8 = c0321u.f5525d) < 0 || i8 >= y7.b()) {
                break;
            }
            f fVar = this.f9591B;
            fVar.f4768a = 0;
            fVar.f4769b = false;
            fVar.f4770c = false;
            fVar.f4771d = false;
            k1(gVar, y7, c0321u, fVar);
            if (!fVar.f4769b) {
                int i12 = c0321u.f5523b;
                int i13 = fVar.f4768a;
                c0321u.f5523b = (c0321u.f5527f * i13) + i12;
                if (!fVar.f4770c || c0321u.f5532k != null || !y7.f5320g) {
                    c0321u.f5524c -= i13;
                    i11 -= i13;
                }
                int i14 = c0321u.f5528g;
                if (i14 != Integer.MIN_VALUE) {
                    int i15 = i14 + i13;
                    c0321u.f5528g = i15;
                    int i16 = c0321u.f5524c;
                    if (i16 < 0) {
                        c0321u.f5528g = i15 + i16;
                    }
                    m1(gVar, c0321u);
                }
                if (z7 && fVar.f4771d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i9 - c0321u.f5524c;
    }

    @Override // O1.X
    public final PointF a(int i8) {
        if (x() == 0) {
            return null;
        }
        int i9 = (i8 < L.M(w(0))) != this.f9599u ? -1 : 1;
        return this.f9594p == 0 ? new PointF(i9, 0.0f) : new PointF(0.0f, i9);
    }

    @Override // O1.L
    public final void a0(RecyclerView recyclerView) {
    }

    public final View a1(boolean z7) {
        return this.f9599u ? d1(0, x(), z7) : d1(x() - 1, -1, z7);
    }

    @Override // O1.L
    public View b0(View view, int i8, g gVar, Y y7) {
        int iX0;
        View viewC1;
        o1();
        if (x() == 0 || (iX0 = X0(i8)) == Integer.MIN_VALUE) {
            return null;
        }
        Y0();
        s1(iX0, (int) (this.f9596r.i() * 0.33333334f), false, y7);
        C0321u c0321u = this.f9595q;
        c0321u.f5528g = Integer.MIN_VALUE;
        c0321u.f5522a = false;
        Z0(gVar, c0321u, y7, true);
        if (iX0 == -1) {
            viewC1 = this.f9599u ? c1(x() - 1, -1) : c1(0, x());
        } else {
            viewC1 = this.f9599u ? c1(0, x()) : c1(x() - 1, -1);
        }
        View viewI1 = iX0 == -1 ? i1() : h1();
        if (!viewI1.hasFocusable()) {
            return viewC1;
        }
        if (viewC1 == null) {
            return null;
        }
        return viewI1;
    }

    public final View b1(boolean z7) {
        return this.f9599u ? d1(x() - 1, -1, z7) : d1(0, x(), z7);
    }

    @Override // O1.L
    public final void c(String str) {
        if (this.f9604z == null) {
            super.c(str);
        }
    }

    @Override // O1.L
    public final void c0(AccessibilityEvent accessibilityEvent) {
        super.c0(accessibilityEvent);
        if (x() > 0) {
            View viewD1 = d1(0, x(), false);
            accessibilityEvent.setFromIndex(viewD1 == null ? -1 : L.M(viewD1));
            View viewD2 = d1(x() - 1, -1, false);
            accessibilityEvent.setToIndex(viewD2 != null ? L.M(viewD2) : -1);
        }
    }

    public final View c1(int i8, int i9) {
        int i10;
        int i11;
        Y0();
        if (i9 <= i8 && i9 >= i8) {
            return w(i8);
        }
        if (this.f9596r.d(w(i8)) < this.f9596r.h()) {
            i10 = 16644;
            i11 = 16388;
        } else {
            i10 = 4161;
            i11 = 4097;
        }
        return this.f9594p == 0 ? this.f5281c.f(i8, i9, i10, i11) : this.f5282d.f(i8, i9, i10, i11);
    }

    @Override // O1.L
    public void d0(g gVar, Y y7, O.f fVar) {
        super.d0(gVar, y7, fVar);
        C c8 = this.f5280b.f9644S;
        if (c8 == null || c8.a() <= 0 || Build.VERSION.SDK_INT < 23) {
            return;
        }
        fVar.b(O.d.f5010e);
    }

    public final View d1(int i8, int i9, boolean z7) {
        Y0();
        int i10 = z7 ? 24579 : 320;
        return this.f9594p == 0 ? this.f5281c.f(i8, i9, i10, 320) : this.f5282d.f(i8, i9, i10, 320);
    }

    @Override // O1.L
    public final boolean e() {
        return this.f9594p == 0;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    public View e1(g gVar, Y y7, boolean z7, boolean z8) {
        int i8;
        int iX;
        int i9;
        Y0();
        int iX2 = x();
        if (z8) {
            iX = x() - 1;
            i8 = -1;
            i9 = -1;
        } else {
            i8 = iX2;
            iX = 0;
            i9 = 1;
        }
        int iB = y7.b();
        int iH = this.f9596r.h();
        int iF = this.f9596r.f();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (iX != i8) {
            View viewW = w(iX);
            int iM = L.M(viewW);
            int iD = this.f9596r.d(viewW);
            int iB2 = this.f9596r.b(viewW);
            if (iM >= 0 && iM < iB) {
                if (!((M) viewW.getLayoutParams()).f5294a.j()) {
                    boolean z9 = iB2 <= iH && iD < iH;
                    boolean z10 = iD >= iF && iB2 > iF;
                    if (!z9 && !z10) {
                        return viewW;
                    }
                    if (z7) {
                        if (z10) {
                            view2 = viewW;
                        } else if (view == null) {
                            view = viewW;
                        }
                    } else if (z9) {
                        view2 = viewW;
                    } else if (view == null) {
                        view = viewW;
                    }
                } else if (view3 == null) {
                    view3 = viewW;
                }
            }
            iX += i9;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // O1.L
    public final boolean f() {
        return this.f9594p == 1;
    }

    public final int f1(int i8, g gVar, Y y7, boolean z7) {
        int iF;
        int iF2 = this.f9596r.f() - i8;
        if (iF2 <= 0) {
            return 0;
        }
        int i9 = -p1(-iF2, gVar, y7);
        int i10 = i8 + i9;
        if (!z7 || (iF = this.f9596r.f() - i10) <= 0) {
            return i9;
        }
        this.f9596r.m(iF);
        return iF + i9;
    }

    public final int g1(int i8, g gVar, Y y7, boolean z7) {
        int iH;
        int iH2 = i8 - this.f9596r.h();
        if (iH2 <= 0) {
            return 0;
        }
        int i9 = -p1(iH2, gVar, y7);
        int i10 = i8 + i9;
        if (!z7 || (iH = i10 - this.f9596r.h()) <= 0) {
            return i9;
        }
        this.f9596r.m(-iH);
        return i9 - iH;
    }

    public final View h1() {
        return w(this.f9599u ? 0 : x() - 1);
    }

    @Override // O1.L
    public final void i(int i8, int i9, Y y7, h hVar) {
        if (this.f9594p != 0) {
            i8 = i9;
        }
        if (x() == 0 || i8 == 0) {
            return;
        }
        Y0();
        s1(i8 > 0 ? 1 : -1, Math.abs(i8), true, y7);
        T0(y7, this.f9595q, hVar);
    }

    public final View i1() {
        return w(this.f9599u ? x() - 1 : 0);
    }

    @Override // O1.L
    public final void j(int i8, h hVar) {
        boolean z7;
        int i9;
        C0322v c0322v = this.f9604z;
        if (c0322v == null || (i9 = c0322v.f5534G) < 0) {
            o1();
            z7 = this.f9599u;
            i9 = this.f9602x;
            if (i9 == -1) {
                i9 = z7 ? i8 - 1 : 0;
            }
        } else {
            z7 = c0322v.f5536I;
        }
        int i10 = z7 ? -1 : 1;
        for (int i11 = 0; i11 < this.f9592C && i9 >= 0 && i9 < i8; i11++) {
            hVar.b(i9, 0);
            i9 += i10;
        }
    }

    public final boolean j1() {
        return this.f5280b.getLayoutDirection() == 1;
    }

    @Override // O1.L
    public final int k(Y y7) {
        return U0(y7);
    }

    public void k1(g gVar, Y y7, C0321u c0321u, f fVar) {
        int iJ;
        int i8;
        int i9;
        int iS;
        View viewB = c0321u.b(gVar);
        if (viewB == null) {
            fVar.f4769b = true;
            return;
        }
        M m7 = (M) viewB.getLayoutParams();
        if (c0321u.f5532k == null) {
            if (this.f9599u == (c0321u.f5527f == -1)) {
                b(-1, viewB, false);
            } else {
                b(0, viewB, false);
            }
        } else {
            if (this.f9599u == (c0321u.f5527f == -1)) {
                b(-1, viewB, true);
            } else {
                b(0, viewB, true);
            }
        }
        M m8 = (M) viewB.getLayoutParams();
        Rect rectN = this.f5280b.N(viewB);
        int i10 = rectN.left + rectN.right;
        int i11 = rectN.top + rectN.bottom;
        int iY = L.y(this.f5292n, this.f5290l, K() + J() + ((ViewGroup.MarginLayoutParams) m8).leftMargin + ((ViewGroup.MarginLayoutParams) m8).rightMargin + i10, ((ViewGroup.MarginLayoutParams) m8).width, e());
        int iY2 = L.y(this.f5293o, this.f5291m, I() + L() + ((ViewGroup.MarginLayoutParams) m8).topMargin + ((ViewGroup.MarginLayoutParams) m8).bottomMargin + i11, ((ViewGroup.MarginLayoutParams) m8).height, f());
        if (N0(viewB, iY, iY2, m8)) {
            viewB.measure(iY, iY2);
        }
        fVar.f4768a = this.f9596r.c(viewB);
        if (this.f9594p == 1) {
            if (j1()) {
                iS = this.f5292n - K();
                iJ = iS - this.f9596r.s(viewB);
            } else {
                iJ = J();
                iS = this.f9596r.s(viewB) + iJ;
            }
            if (c0321u.f5527f == -1) {
                i8 = c0321u.f5523b;
                i9 = i8 - fVar.f4768a;
            } else {
                i9 = c0321u.f5523b;
                i8 = fVar.f4768a + i9;
            }
        } else {
            int iL = L();
            int iS2 = this.f9596r.s(viewB) + iL;
            if (c0321u.f5527f == -1) {
                int i12 = c0321u.f5523b;
                int i13 = i12 - fVar.f4768a;
                iS = i12;
                i8 = iS2;
                iJ = i13;
                i9 = iL;
            } else {
                int i14 = c0321u.f5523b;
                int i15 = fVar.f4768a + i14;
                iJ = i14;
                i8 = iS2;
                i9 = iL;
                iS = i15;
            }
        }
        L.V(viewB, iJ, i9, iS, i8);
        if (m7.f5294a.j() || m7.f5294a.m()) {
            fVar.f4770c = true;
        }
        fVar.f4771d = viewB.hasFocusable();
    }

    @Override // O1.L
    public int l(Y y7) {
        return V0(y7);
    }

    @Override // O1.L
    public int m(Y y7) {
        return W0(y7);
    }

    public final void m1(g gVar, C0321u c0321u) {
        if (!c0321u.f5522a || c0321u.f5533l) {
            return;
        }
        int i8 = c0321u.f5528g;
        int i9 = c0321u.f5530i;
        if (c0321u.f5527f == -1) {
            int iX = x();
            if (i8 < 0) {
                return;
            }
            int iE = (this.f9596r.e() - i8) + i9;
            if (this.f9599u) {
                for (int i10 = 0; i10 < iX; i10++) {
                    View viewW = w(i10);
                    if (this.f9596r.d(viewW) < iE || this.f9596r.l(viewW) < iE) {
                        n1(gVar, 0, i10);
                        return;
                    }
                }
                return;
            }
            int i11 = iX - 1;
            for (int i12 = i11; i12 >= 0; i12--) {
                View viewW2 = w(i12);
                if (this.f9596r.d(viewW2) < iE || this.f9596r.l(viewW2) < iE) {
                    n1(gVar, i11, i12);
                    return;
                }
            }
            return;
        }
        if (i8 < 0) {
            return;
        }
        int i13 = i8 - i9;
        int iX2 = x();
        if (!this.f9599u) {
            for (int i14 = 0; i14 < iX2; i14++) {
                View viewW3 = w(i14);
                if (this.f9596r.b(viewW3) > i13 || this.f9596r.k(viewW3) > i13) {
                    n1(gVar, 0, i14);
                    return;
                }
            }
            return;
        }
        int i15 = iX2 - 1;
        for (int i16 = i15; i16 >= 0; i16--) {
            View viewW4 = w(i16);
            if (this.f9596r.b(viewW4) > i13 || this.f9596r.k(viewW4) > i13) {
                n1(gVar, i15, i16);
                return;
            }
        }
    }

    @Override // O1.L
    public final int n(Y y7) {
        return U0(y7);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x019f  */
    /* JADX WARN: Code duplicated, block: B:107:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:114:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:118:0x0203 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:120:0x0207  */
    /* JADX WARN: Code duplicated, block: B:122:0x020a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x020e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0211 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:127:0x0213  */
    /* JADX WARN: Code duplicated, block: B:129:0x0217  */
    /* JADX WARN: Code duplicated, block: B:131:0x021b  */
    /* JADX WARN: Code duplicated, block: B:133:0x0222  */
    /* JADX WARN: Code duplicated, block: B:134:0x0228  */
    /* JADX WARN: Code duplicated, block: B:91:0x0188  */
    /* JADX WARN: Code duplicated, block: B:93:0x018c  */
    @Override // O1.L
    public void n0(g gVar, Y y7) {
        View focusedChild;
        int iB;
        RecyclerView recyclerView;
        View focusedChild2;
        boolean z7;
        boolean z8;
        View viewE1;
        int iD;
        int iB2;
        int iH;
        int iF;
        boolean z9;
        boolean z10;
        M m7;
        int i8;
        int i9;
        int iK;
        int i10;
        int i11;
        List list;
        int i12;
        int i13;
        int iF1;
        int i14;
        View viewS;
        int iD2;
        int iF2;
        int i15;
        int i16 = -1;
        if (!(this.f9604z == null && this.f9602x == -1) && y7.b() == 0) {
            w0(gVar);
            return;
        }
        C0322v c0322v = this.f9604z;
        if (c0322v != null && (i15 = c0322v.f5534G) >= 0) {
            this.f9602x = i15;
        }
        Y0();
        this.f9595q.f5522a = false;
        o1();
        RecyclerView recyclerView2 = this.f5280b;
        if (recyclerView2 == null || (focusedChild = recyclerView2.getFocusedChild()) == null || this.f5279a.k(focusedChild)) {
            focusedChild = null;
        }
        U u7 = this.f9590A;
        if (!u7.f833e || this.f9602x != -1 || this.f9604z != null) {
            u7.e();
            u7.f832d = this.f9599u ^ this.f9600v;
            if (y7.f5320g || (i8 = this.f9602x) == -1) {
                if (x() != 0) {
                    recyclerView = this.f5280b;
                    if (recyclerView != null || (focusedChild2 = recyclerView.getFocusedChild()) == null || this.f5279a.k(focusedChild2)) {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        m7 = (M) focusedChild2.getLayoutParams();
                        if (!m7.f5294a.j() || m7.f5294a.d() < 0 || m7.f5294a.d() >= y7.b()) {
                            z7 = this.f9597s;
                            z8 = this.f9600v;
                            if (z7 == z8 || (viewE1 = e1(gVar, y7, u7.f832d, z8)) == null) {
                                u7.a();
                                if (this.f9600v) {
                                    iB = y7.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                u7.f830b = iB;
                            } else {
                                u7.b(viewE1, L.M(viewE1));
                                if (!y7.f5320g && S0()) {
                                    iD = this.f9596r.d(viewE1);
                                    iB2 = this.f9596r.b(viewE1);
                                    iH = this.f9596r.h();
                                    iF = this.f9596r.f();
                                    if (iB2 <= iH || iD >= iH) {
                                        z9 = false;
                                    } else {
                                        z9 = true;
                                    }
                                    if (iD >= iF || iB2 <= iF) {
                                        z10 = false;
                                    } else {
                                        z10 = true;
                                    }
                                    if (z9 || z10) {
                                        if (u7.f832d) {
                                            iH = iF;
                                        }
                                        u7.f831c = iH;
                                    }
                                }
                            }
                        } else {
                            u7.c(focusedChild2, L.M(focusedChild2));
                        }
                    } else {
                        z7 = this.f9597s;
                        z8 = this.f9600v;
                        if (z7 == z8) {
                            u7.a();
                            if (this.f9600v) {
                                iB = y7.b() - 1;
                            } else {
                                iB = 0;
                            }
                            u7.f830b = iB;
                        } else {
                            u7.b(viewE1, L.M(viewE1));
                            if (!y7.f5320g) {
                                iD = this.f9596r.d(viewE1);
                                iB2 = this.f9596r.b(viewE1);
                                iH = this.f9596r.h();
                                iF = this.f9596r.f();
                                if (iB2 <= iH) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                if (iD >= iF) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                if (z9) {
                                    if (u7.f832d) {
                                        iH = iF;
                                    }
                                    u7.f831c = iH;
                                } else {
                                    if (u7.f832d) {
                                        iH = iF;
                                    }
                                    u7.f831c = iH;
                                }
                            }
                        }
                    }
                } else {
                    u7.a();
                    if (this.f9600v) {
                        iB = y7.b() - 1;
                    } else {
                        iB = 0;
                    }
                    u7.f830b = iB;
                }
            } else if (i8 < 0 || i8 >= y7.b()) {
                this.f9602x = -1;
                this.f9603y = Integer.MIN_VALUE;
                if (x() != 0) {
                    recyclerView = this.f5280b;
                    if (recyclerView != null) {
                        focusedChild2 = null;
                    } else {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        m7 = (M) focusedChild2.getLayoutParams();
                        if (m7.f5294a.j()) {
                            z7 = this.f9597s;
                            z8 = this.f9600v;
                            if (z7 == z8) {
                                u7.a();
                                if (this.f9600v) {
                                    iB = y7.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                u7.f830b = iB;
                            } else {
                                u7.b(viewE1, L.M(viewE1));
                                if (!y7.f5320g) {
                                    iD = this.f9596r.d(viewE1);
                                    iB2 = this.f9596r.b(viewE1);
                                    iH = this.f9596r.h();
                                    iF = this.f9596r.f();
                                    if (iB2 <= iH) {
                                        z9 = false;
                                    } else {
                                        z9 = false;
                                    }
                                    if (iD >= iF) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    if (z9) {
                                        if (u7.f832d) {
                                            iH = iF;
                                        }
                                        u7.f831c = iH;
                                    } else {
                                        if (u7.f832d) {
                                            iH = iF;
                                        }
                                        u7.f831c = iH;
                                    }
                                }
                            }
                        } else {
                            z7 = this.f9597s;
                            z8 = this.f9600v;
                            if (z7 == z8) {
                                u7.a();
                                if (this.f9600v) {
                                    iB = y7.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                u7.f830b = iB;
                            } else {
                                u7.b(viewE1, L.M(viewE1));
                                if (!y7.f5320g) {
                                    iD = this.f9596r.d(viewE1);
                                    iB2 = this.f9596r.b(viewE1);
                                    iH = this.f9596r.h();
                                    iF = this.f9596r.f();
                                    if (iB2 <= iH) {
                                        z9 = false;
                                    } else {
                                        z9 = false;
                                    }
                                    if (iD >= iF) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    if (z9) {
                                        if (u7.f832d) {
                                            iH = iF;
                                        }
                                        u7.f831c = iH;
                                    } else {
                                        if (u7.f832d) {
                                            iH = iF;
                                        }
                                        u7.f831c = iH;
                                    }
                                }
                            }
                        }
                    } else {
                        z7 = this.f9597s;
                        z8 = this.f9600v;
                        if (z7 == z8) {
                            u7.a();
                            if (this.f9600v) {
                                iB = y7.b() - 1;
                            } else {
                                iB = 0;
                            }
                            u7.f830b = iB;
                        } else {
                            u7.b(viewE1, L.M(viewE1));
                            if (!y7.f5320g) {
                                iD = this.f9596r.d(viewE1);
                                iB2 = this.f9596r.b(viewE1);
                                iH = this.f9596r.h();
                                iF = this.f9596r.f();
                                if (iB2 <= iH) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                if (iD >= iF) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                if (z9) {
                                    if (u7.f832d) {
                                        iH = iF;
                                    }
                                    u7.f831c = iH;
                                } else {
                                    if (u7.f832d) {
                                        iH = iF;
                                    }
                                    u7.f831c = iH;
                                }
                            }
                        }
                    }
                } else {
                    u7.a();
                    if (this.f9600v) {
                        iB = y7.b() - 1;
                    } else {
                        iB = 0;
                    }
                    u7.f830b = iB;
                }
            } else {
                int i17 = this.f9602x;
                u7.f830b = i17;
                C0322v c0322v2 = this.f9604z;
                if (c0322v2 != null && c0322v2.f5534G >= 0) {
                    boolean z11 = c0322v2.f5536I;
                    u7.f832d = z11;
                    if (z11) {
                        u7.f831c = this.f9596r.f() - this.f9604z.f5535H;
                    } else {
                        u7.f831c = this.f9596r.h() + this.f9604z.f5535H;
                    }
                } else if (this.f9603y == Integer.MIN_VALUE) {
                    View viewS2 = s(i17);
                    if (viewS2 == null) {
                        if (x() > 0) {
                            u7.f832d = (this.f9602x < L.M(w(0))) == this.f9599u;
                        }
                        u7.a();
                    } else if (this.f9596r.c(viewS2) > this.f9596r.i()) {
                        u7.a();
                    } else if (this.f9596r.d(viewS2) - this.f9596r.h() < 0) {
                        u7.f831c = this.f9596r.h();
                        u7.f832d = false;
                    } else if (this.f9596r.f() - this.f9596r.b(viewS2) < 0) {
                        u7.f831c = this.f9596r.f();
                        u7.f832d = true;
                    } else {
                        u7.f831c = u7.f832d ? this.f9596r.j() + this.f9596r.b(viewS2) : this.f9596r.d(viewS2);
                    }
                } else {
                    boolean z12 = this.f9599u;
                    u7.f832d = z12;
                    if (z12) {
                        u7.f831c = this.f9596r.f() - this.f9603y;
                    } else {
                        u7.f831c = this.f9596r.h() + this.f9603y;
                    }
                }
            }
            u7.f833e = true;
        } else if (focusedChild != null && (this.f9596r.d(focusedChild) >= this.f9596r.f() || this.f9596r.b(focusedChild) <= this.f9596r.h())) {
            u7.c(focusedChild, L.M(focusedChild));
        }
        C0321u c0321u = this.f9595q;
        c0321u.f5527f = c0321u.f5531j >= 0 ? 1 : -1;
        int[] iArr = this.f9593D;
        iArr[0] = 0;
        iArr[1] = 0;
        int i18 = y7.f5314a != -1 ? this.f9596r.i() : 0;
        if (this.f9595q.f5527f == -1) {
            i9 = 0;
        } else {
            i9 = i18;
            i18 = 0;
        }
        iArr[0] = i18;
        iArr[1] = i9;
        int iH2 = this.f9596r.h() + Math.max(0, i18);
        int iMax = Math.max(0, iArr[1]);
        C0325y c0325y = this.f9596r;
        int i19 = c0325y.f5558d;
        Object obj = c0325y.f5560b;
        switch (i19) {
            case 0:
                iK = ((L) obj).K();
                break;
            default:
                iK = ((L) obj).I();
                break;
        }
        int i20 = iK + iMax;
        if (y7.f5320g && (i14 = this.f9602x) != -1 && this.f9603y != Integer.MIN_VALUE && (viewS = s(i14)) != null) {
            if (this.f9599u) {
                iF2 = this.f9596r.f() - this.f9596r.b(viewS);
                iD2 = this.f9603y;
            } else {
                iD2 = this.f9596r.d(viewS) - this.f9596r.h();
                iF2 = this.f9603y;
            }
            int i21 = iF2 - iD2;
            if (i21 > 0) {
                iH2 += i21;
            } else {
                i20 -= i21;
            }
        }
        if (!u7.f832d ? !this.f9599u : this.f9599u) {
            i16 = 1;
        }
        l1(gVar, y7, u7, i16);
        q(gVar);
        this.f9595q.f5533l = this.f9596r.g() == 0 && this.f9596r.e() == 0;
        this.f9595q.getClass();
        this.f9595q.f5530i = 0;
        if (u7.f832d) {
            u1(u7.f830b, u7.f831c);
            C0321u c0321u2 = this.f9595q;
            c0321u2.f5529h = iH2;
            Z0(gVar, c0321u2, y7, false);
            C0321u c0321u3 = this.f9595q;
            i11 = c0321u3.f5523b;
            int i22 = c0321u3.f5525d;
            int i23 = c0321u3.f5524c;
            if (i23 > 0) {
                i20 += i23;
            }
            t1(u7.f830b, u7.f831c);
            C0321u c0321u4 = this.f9595q;
            c0321u4.f5529h = i20;
            c0321u4.f5525d += c0321u4.f5526e;
            Z0(gVar, c0321u4, y7, false);
            C0321u c0321u5 = this.f9595q;
            i10 = c0321u5.f5523b;
            int i24 = c0321u5.f5524c;
            if (i24 > 0) {
                u1(i22, i11);
                C0321u c0321u6 = this.f9595q;
                c0321u6.f5529h = i24;
                Z0(gVar, c0321u6, y7, false);
                i11 = this.f9595q.f5523b;
            }
        } else {
            t1(u7.f830b, u7.f831c);
            C0321u c0321u7 = this.f9595q;
            c0321u7.f5529h = i20;
            Z0(gVar, c0321u7, y7, false);
            C0321u c0321u8 = this.f9595q;
            i10 = c0321u8.f5523b;
            int i25 = c0321u8.f5525d;
            int i26 = c0321u8.f5524c;
            if (i26 > 0) {
                iH2 += i26;
            }
            u1(u7.f830b, u7.f831c);
            C0321u c0321u9 = this.f9595q;
            c0321u9.f5529h = iH2;
            c0321u9.f5525d += c0321u9.f5526e;
            Z0(gVar, c0321u9, y7, false);
            C0321u c0321u10 = this.f9595q;
            int i27 = c0321u10.f5523b;
            int i28 = c0321u10.f5524c;
            if (i28 > 0) {
                t1(i25, i10);
                C0321u c0321u11 = this.f9595q;
                c0321u11.f5529h = i28;
                Z0(gVar, c0321u11, y7, false);
                i10 = this.f9595q.f5523b;
            }
            i11 = i27;
        }
        if (x() > 0) {
            if (this.f9599u ^ this.f9600v) {
                int iF3 = f1(i10, gVar, y7, true);
                i12 = i11 + iF3;
                i13 = i10 + iF3;
                iF1 = g1(i12, gVar, y7, false);
            } else {
                int iG1 = g1(i11, gVar, y7, true);
                i12 = i11 + iG1;
                i13 = i10 + iG1;
                iF1 = f1(i13, gVar, y7, false);
            }
            i11 = i12 + iF1;
            i10 = i13 + iF1;
        }
        if (y7.f5324k && x() != 0 && !y7.f5320g && S0()) {
            List list2 = (List) gVar.f30048f;
            int size = list2.size();
            int iM = L.M(w(0));
            int iC = 0;
            int iC2 = 0;
            for (int i29 = 0; i29 < size; i29++) {
                c0 c0Var = (c0) list2.get(i29);
                if (!c0Var.j()) {
                    boolean z13 = c0Var.d() < iM;
                    boolean z14 = this.f9599u;
                    View view = c0Var.f5353G;
                    if (z13 != z14) {
                        iC += this.f9596r.c(view);
                    } else {
                        iC2 += this.f9596r.c(view);
                    }
                }
            }
            this.f9595q.f5532k = list2;
            if (iC > 0) {
                u1(L.M(i1()), i11);
                C0321u c0321u12 = this.f9595q;
                c0321u12.f5529h = iC;
                c0321u12.f5524c = 0;
                c0321u12.a(null);
                Z0(gVar, this.f9595q, y7, false);
            }
            if (iC2 > 0) {
                t1(L.M(h1()), i10);
                C0321u c0321u13 = this.f9595q;
                c0321u13.f5529h = iC2;
                c0321u13.f5524c = 0;
                list = null;
                c0321u13.a(null);
                Z0(gVar, this.f9595q, y7, false);
            } else {
                list = null;
            }
            this.f9595q.f5532k = list;
        }
        if (y7.f5320g) {
            u7.e();
        } else {
            C0325y c0325y2 = this.f9596r;
            c0325y2.f5559a = c0325y2.i();
        }
        this.f9597s = this.f9600v;
    }

    public final void n1(g gVar, int i8, int i9) {
        if (i8 == i9) {
            return;
        }
        if (i9 <= i8) {
            while (i8 > i9) {
                z0(i8, gVar);
                i8--;
            }
        } else {
            for (int i10 = i9 - 1; i10 >= i8; i10--) {
                z0(i10, gVar);
            }
        }
    }

    @Override // O1.L
    public int o(Y y7) {
        return V0(y7);
    }

    @Override // O1.L
    public void o0(Y y7) {
        this.f9604z = null;
        this.f9602x = -1;
        this.f9603y = Integer.MIN_VALUE;
        this.f9590A.e();
    }

    public final void o1() {
        if (this.f9594p == 1 || !j1()) {
            this.f9599u = this.f9598t;
        } else {
            this.f9599u = !this.f9598t;
        }
    }

    @Override // O1.L
    public int p(Y y7) {
        return W0(y7);
    }

    public final int p1(int i8, g gVar, Y y7) {
        if (x() == 0 || i8 == 0) {
            return 0;
        }
        Y0();
        this.f9595q.f5522a = true;
        int i9 = i8 > 0 ? 1 : -1;
        int iAbs = Math.abs(i8);
        s1(i9, iAbs, true, y7);
        C0321u c0321u = this.f9595q;
        int iZ0 = Z0(gVar, c0321u, y7, false) + c0321u.f5528g;
        if (iZ0 < 0) {
            return 0;
        }
        if (iAbs > iZ0) {
            i8 = i9 * iZ0;
        }
        this.f9596r.m(-i8);
        this.f9595q.f5531j = i8;
        return i8;
    }

    public final void q1(int i8) {
        if (i8 != 0 && i8 != 1) {
            throw new IllegalArgumentException(r.f("invalid orientation:", i8));
        }
        c(null);
        if (i8 != this.f9594p || this.f9596r == null) {
            C0325y c0325yA = AbstractC0326z.a(this, i8);
            this.f9596r = c0325yA;
            this.f9590A.f834f = c0325yA;
            this.f9594p = i8;
            D0();
        }
    }

    @Override // O1.L
    public final void r0(Parcelable parcelable) {
        if (parcelable instanceof C0322v) {
            C0322v c0322v = (C0322v) parcelable;
            this.f9604z = c0322v;
            if (this.f9602x != -1) {
                c0322v.f5534G = -1;
            }
            D0();
        }
    }

    public void r1(boolean z7) {
        c(null);
        if (this.f9600v == z7) {
            return;
        }
        this.f9600v = z7;
        D0();
    }

    @Override // O1.L
    public final View s(int i8) {
        int iX = x();
        if (iX == 0) {
            return null;
        }
        int iM = i8 - L.M(w(0));
        if (iM >= 0 && iM < iX) {
            View viewW = w(iM);
            if (L.M(viewW) == i8) {
                return viewW;
            }
        }
        return super.s(i8);
    }

    @Override // O1.L
    public final Parcelable s0() {
        C0322v c0322v = this.f9604z;
        if (c0322v != null) {
            C0322v c0322v2 = new C0322v();
            c0322v2.f5534G = c0322v.f5534G;
            c0322v2.f5535H = c0322v.f5535H;
            c0322v2.f5536I = c0322v.f5536I;
            return c0322v2;
        }
        C0322v c0322v3 = new C0322v();
        if (x() > 0) {
            Y0();
            boolean z7 = this.f9597s ^ this.f9599u;
            c0322v3.f5536I = z7;
            if (z7) {
                View viewH1 = h1();
                c0322v3.f5535H = this.f9596r.f() - this.f9596r.b(viewH1);
                c0322v3.f5534G = L.M(viewH1);
            } else {
                View viewI1 = i1();
                c0322v3.f5534G = L.M(viewI1);
                c0322v3.f5535H = this.f9596r.d(viewI1) - this.f9596r.h();
            }
        } else {
            c0322v3.f5534G = -1;
        }
        return c0322v3;
    }

    public final void s1(int i8, int i9, boolean z7, Y y7) {
        int i10;
        int iH;
        int iK;
        this.f9595q.f5533l = this.f9596r.g() == 0 && this.f9596r.e() == 0;
        this.f9595q.f5527f = i8;
        int[] iArr = this.f9593D;
        iArr[0] = 0;
        iArr[1] = 0;
        int i11 = y7.f5314a != -1 ? this.f9596r.i() : 0;
        if (this.f9595q.f5527f == -1) {
            i10 = 0;
        } else {
            i10 = i11;
            i11 = 0;
        }
        iArr[0] = i11;
        iArr[1] = i10;
        int iMax = Math.max(0, i11);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z8 = i8 == 1;
        C0321u c0321u = this.f9595q;
        int i12 = z8 ? iMax2 : iMax;
        c0321u.f5529h = i12;
        if (!z8) {
            iMax = iMax2;
        }
        c0321u.f5530i = iMax;
        if (z8) {
            C0325y c0325y = this.f9596r;
            int i13 = c0325y.f5558d;
            Object obj = c0325y.f5560b;
            switch (i13) {
                case 0:
                    iK = ((L) obj).K();
                    break;
                default:
                    iK = ((L) obj).I();
                    break;
            }
            c0321u.f5529h = iK + i12;
            View viewH1 = h1();
            C0321u c0321u2 = this.f9595q;
            c0321u2.f5526e = this.f9599u ? -1 : 1;
            int iM = L.M(viewH1);
            C0321u c0321u3 = this.f9595q;
            c0321u2.f5525d = iM + c0321u3.f5526e;
            c0321u3.f5523b = this.f9596r.b(viewH1);
            iH = this.f9596r.b(viewH1) - this.f9596r.f();
        } else {
            View viewI1 = i1();
            C0321u c0321u4 = this.f9595q;
            c0321u4.f5529h = this.f9596r.h() + c0321u4.f5529h;
            C0321u c0321u5 = this.f9595q;
            c0321u5.f5526e = this.f9599u ? 1 : -1;
            int iM2 = L.M(viewI1);
            C0321u c0321u6 = this.f9595q;
            c0321u5.f5525d = iM2 + c0321u6.f5526e;
            c0321u6.f5523b = this.f9596r.d(viewI1);
            iH = (-this.f9596r.d(viewI1)) + this.f9596r.h();
        }
        C0321u c0321u7 = this.f9595q;
        c0321u7.f5524c = i9;
        if (z7) {
            c0321u7.f5524c = i9 - iH;
        }
        c0321u7.f5528g = iH;
    }

    @Override // O1.L
    public M t() {
        return new M(-2, -2);
    }

    public final void t1(int i8, int i9) {
        this.f9595q.f5524c = this.f9596r.f() - i9;
        C0321u c0321u = this.f9595q;
        c0321u.f5526e = this.f9599u ? -1 : 1;
        c0321u.f5525d = i8;
        c0321u.f5527f = 1;
        c0321u.f5523b = i9;
        c0321u.f5528g = Integer.MIN_VALUE;
    }

    @Override // O1.L
    public boolean u0(int i8, Bundle bundle) {
        int iMin;
        if (super.u0(i8, bundle)) {
            return true;
        }
        if (i8 == 16908343 && bundle != null) {
            if (this.f9594p == 1) {
                int i9 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i9 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.f5280b;
                iMin = Math.min(i9, O(recyclerView.f9624I, recyclerView.f9635N0) - 1);
            } else {
                int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i10 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.f5280b;
                iMin = Math.min(i10, z(recyclerView2.f9624I, recyclerView2.f9635N0) - 1);
            }
            if (iMin >= 0) {
                this.f9602x = iMin;
                this.f9603y = 0;
                C0322v c0322v = this.f9604z;
                if (c0322v != null) {
                    c0322v.f5534G = -1;
                }
                D0();
                return true;
            }
        }
        return false;
    }

    public final void u1(int i8, int i9) {
        this.f9595q.f5524c = i9 - this.f9596r.h();
        C0321u c0321u = this.f9595q;
        c0321u.f5525d = i8;
        c0321u.f5526e = this.f9599u ? 1 : -1;
        c0321u.f5527f = -1;
        c0321u.f5523b = i9;
        c0321u.f5528g = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i8, int i9) {
        this.f9594p = 1;
        this.f9598t = false;
        this.f9599u = false;
        this.f9600v = false;
        this.f9601w = true;
        this.f9602x = -1;
        this.f9603y = Integer.MIN_VALUE;
        this.f9604z = null;
        this.f9590A = new U();
        this.f9591B = new f();
        this.f9592C = 2;
        this.f9593D = new int[2];
        K kN = L.N(context, attributeSet, i8, i9);
        q1(kN.f5275a);
        boolean z7 = kN.f5277c;
        c(null);
        if (z7 != this.f9598t) {
            this.f9598t = z7;
            D0();
        }
        r1(kN.f5278d);
    }

    public void l1(g gVar, Y y7, U u7, int i8) {
    }
}
