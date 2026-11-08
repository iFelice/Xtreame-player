package androidx.recyclerview.widget;

import K3.C0234g;
import N.N;
import O.f;
import O1.AbstractC0326z;
import O1.C;
import O1.C0320t;
import O1.C0323w;
import O1.K;
import O1.L;
import O1.M;
import O1.RunnableC0313l;
import O1.X;
import O1.Y;
import O1.h0;
import O1.i0;
import O1.k0;
import O1.l0;
import O1.o0;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.bumptech.glide.d;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.WeakHashMap;
import p132r.h;
import p142s1.g;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends L implements X {

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final o0 f9692B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f9693C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f9694D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f9695E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public k0 f9696F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Rect f9697G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final h0 f9698H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f9699I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int[] f9700J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final RunnableC0313l f9701K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9702p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final l0[] f9703q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AbstractC0326z f9704r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AbstractC0326z f9705s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f9706t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9707u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final C0320t f9708v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f9709w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final BitSet f9711y;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f9710x = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f9712z = -1;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f9691A = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i8, int i9) {
        this.f9702p = -1;
        this.f9709w = false;
        o0 o0Var = new o0(1);
        this.f9692B = o0Var;
        this.f9693C = 2;
        this.f9697G = new Rect();
        this.f9698H = new h0(this);
        this.f9699I = true;
        this.f9701K = new RunnableC0313l(this, 1);
        K kN = L.N(context, attributeSet, i8, i9);
        int i10 = kN.f5275a;
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i10 != this.f9706t) {
            this.f9706t = i10;
            AbstractC0326z abstractC0326z = this.f9704r;
            this.f9704r = this.f9705s;
            this.f9705s = abstractC0326z;
            D0();
        }
        int i11 = kN.f5276b;
        c(null);
        if (i11 != this.f9702p) {
            o0Var.d();
            D0();
            this.f9702p = i11;
            this.f9711y = new BitSet(this.f9702p);
            this.f9703q = new l0[this.f9702p];
            for (int i12 = 0; i12 < this.f9702p; i12++) {
                this.f9703q[i12] = new l0(this, i12);
            }
            D0();
        }
        boolean z7 = kN.f5277c;
        c(null);
        k0 k0Var = this.f9696F;
        if (k0Var != null && k0Var.f5446N != z7) {
            k0Var.f5446N = z7;
        }
        this.f9709w = z7;
        D0();
        C0320t c0320t = new C0320t();
        c0320t.f5513a = true;
        c0320t.f5518f = 0;
        c0320t.f5519g = 0;
        this.f9708v = c0320t;
        this.f9704r = AbstractC0326z.a(this, this.f9706t);
        this.f9705s = AbstractC0326z.a(this, 1 - this.f9706t);
    }

    public static int w1(int i8, int i9, int i10) {
        if (i9 == 0 && i10 == 0) {
            return i8;
        }
        int mode = View.MeasureSpec.getMode(i8);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i8) - i9) - i10), mode) : i8;
    }

    @Override // O1.L
    public final int F0(int i8, g gVar, Y y7) {
        return s1(i8, gVar, y7);
    }

    @Override // O1.L
    public final void G0(int i8) {
        k0 k0Var = this.f9696F;
        if (k0Var != null && k0Var.f5439G != i8) {
            k0Var.f5442J = null;
            k0Var.f5441I = 0;
            k0Var.f5439G = -1;
            k0Var.f5440H = -1;
        }
        this.f9712z = i8;
        this.f9691A = Integer.MIN_VALUE;
        D0();
    }

    @Override // O1.L
    public final int H0(int i8, g gVar, Y y7) {
        return s1(i8, gVar, y7);
    }

    @Override // O1.L
    public final void K0(Rect rect, int i8, int i9) {
        int iH;
        int iH2;
        int iK = K() + J();
        int I7 = I() + L();
        if (this.f9706t == 1) {
            int iHeight = rect.height() + I7;
            RecyclerView recyclerView = this.f5280b;
            WeakHashMap weakHashMap = N.f4843a;
            iH2 = L.h(i9, iHeight, recyclerView.getMinimumHeight());
            iH = L.h(i8, (this.f9707u * this.f9702p) + iK, this.f5280b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + iK;
            RecyclerView recyclerView2 = this.f5280b;
            WeakHashMap weakHashMap2 = N.f4843a;
            iH = L.h(i8, iWidth, recyclerView2.getMinimumWidth());
            iH2 = L.h(i9, (this.f9707u * this.f9702p) + I7, this.f5280b.getMinimumHeight());
        }
        this.f5280b.setMeasuredDimension(iH, iH2);
    }

    @Override // O1.L
    public final int O(g gVar, Y y7) {
        if (this.f9706t == 0) {
            return Math.min(this.f9702p, y7.b());
        }
        return -1;
    }

    @Override // O1.L
    public final void Q0(RecyclerView recyclerView, int i8) {
        C0323w c0323w = new C0323w(recyclerView.getContext());
        c0323w.f5537a = i8;
        R0(c0323w);
    }

    @Override // O1.L
    public final boolean R() {
        return this.f9693C != 0;
    }

    @Override // O1.L
    public final boolean S() {
        return this.f9709w;
    }

    @Override // O1.L
    public final boolean S0() {
        return this.f9696F == null;
    }

    public final int T0(int i8) {
        if (x() == 0) {
            return this.f9710x ? 1 : -1;
        }
        return (i8 < d1()) != this.f9710x ? -1 : 1;
    }

    public final boolean U0() {
        int iD1;
        if (x() != 0 && this.f9693C != 0 && this.f5285g) {
            if (this.f9710x) {
                iD1 = e1();
                d1();
            } else {
                iD1 = d1();
                e1();
            }
            o0 o0Var = this.f9692B;
            if (iD1 == 0 && i1() != null) {
                o0Var.d();
                this.f5284f = true;
                D0();
                return true;
            }
        }
        return false;
    }

    public final int V0(Y y7) {
        if (x() == 0) {
            return 0;
        }
        AbstractC0326z abstractC0326z = this.f9704r;
        boolean z7 = this.f9699I;
        return d.c(y7, abstractC0326z, a1(!z7), Z0(!z7), this, this.f9699I);
    }

    @Override // O1.L
    public final void W(int i8) {
        super.W(i8);
        for (int i9 = 0; i9 < this.f9702p; i9++) {
            l0 l0Var = this.f9703q[i9];
            int i10 = l0Var.f5452b;
            if (i10 != Integer.MIN_VALUE) {
                l0Var.f5452b = i10 + i8;
            }
            int i11 = l0Var.f5453c;
            if (i11 != Integer.MIN_VALUE) {
                l0Var.f5453c = i11 + i8;
            }
        }
    }

    public final int W0(Y y7) {
        if (x() == 0) {
            return 0;
        }
        AbstractC0326z abstractC0326z = this.f9704r;
        boolean z7 = this.f9699I;
        return d.d(y7, abstractC0326z, a1(!z7), Z0(!z7), this, this.f9699I, this.f9710x);
    }

    @Override // O1.L
    public final void X(int i8) {
        super.X(i8);
        for (int i9 = 0; i9 < this.f9702p; i9++) {
            l0 l0Var = this.f9703q[i9];
            int i10 = l0Var.f5452b;
            if (i10 != Integer.MIN_VALUE) {
                l0Var.f5452b = i10 + i8;
            }
            int i11 = l0Var.f5453c;
            if (i11 != Integer.MIN_VALUE) {
                l0Var.f5453c = i11 + i8;
            }
        }
    }

    public final int X0(Y y7) {
        if (x() == 0) {
            return 0;
        }
        AbstractC0326z abstractC0326z = this.f9704r;
        boolean z7 = this.f9699I;
        return d.e(y7, abstractC0326z, a1(!z7), Z0(!z7), this, this.f9699I);
    }

    @Override // O1.L
    public final void Y(C c8) {
        this.f9692B.d();
        for (int i8 = 0; i8 < this.f9702p; i8++) {
            this.f9703q[i8].b();
        }
    }

    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean, int] */
    public final int Y0(g gVar, C0320t c0320t, Y y7) {
        l0 l0Var;
        ?? r7;
        int i8;
        int iH;
        int iC;
        int iH2;
        int iC2;
        int i9;
        int i10;
        int i11;
        int i12 = 1;
        this.f9711y.set(0, this.f9702p, true);
        C0320t c0320t2 = this.f9708v;
        int i13 = c0320t2.f5521i ? c0320t.f5517e == 1 ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : Integer.MIN_VALUE : c0320t.f5517e == 1 ? c0320t.f5519g + c0320t.f5514b : c0320t.f5518f - c0320t.f5514b;
        int i14 = c0320t.f5517e;
        for (int i15 = 0; i15 < this.f9702p; i15++) {
            if (!this.f9703q[i15].f5451a.isEmpty()) {
                v1(this.f9703q[i15], i14, i13);
            }
        }
        int iF = this.f9710x ? this.f9704r.f() : this.f9704r.h();
        boolean z7 = false;
        while (true) {
            int i16 = c0320t.f5515c;
            if (!(i16 >= 0 && i16 < y7.b()) || (!c0320t2.f5521i && this.f9711y.isEmpty())) {
                break;
            }
            View viewD = gVar.d(c0320t.f5515c);
            c0320t.f5515c += c0320t.f5516d;
            i0 i0Var = (i0) viewD.getLayoutParams();
            int iD = i0Var.f5294a.d();
            o0 o0Var = this.f9692B;
            int[] iArr = (int[]) o0Var.f5468b;
            int i17 = (iArr == null || iD >= iArr.length) ? -1 : iArr[iD];
            if (i17 == -1) {
                if (m1(c0320t.f5517e)) {
                    i10 = this.f9702p - i12;
                    i9 = -1;
                    i11 = -1;
                } else {
                    i9 = this.f9702p;
                    i10 = 0;
                    i11 = 1;
                }
                l0 l0Var2 = null;
                if (c0320t.f5517e == i12) {
                    int iH3 = this.f9704r.h();
                    int i18 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                    while (i10 != i9) {
                        l0 l0Var3 = this.f9703q[i10];
                        int iF2 = l0Var3.f(iH3);
                        if (iF2 < i18) {
                            i18 = iF2;
                            l0Var2 = l0Var3;
                        }
                        i10 += i11;
                    }
                } else {
                    int iF3 = this.f9704r.f();
                    int i19 = Integer.MIN_VALUE;
                    while (i10 != i9) {
                        l0 l0Var4 = this.f9703q[i10];
                        int iH4 = l0Var4.h(iF3);
                        if (iH4 > i19) {
                            l0Var2 = l0Var4;
                            i19 = iH4;
                        }
                        i10 += i11;
                    }
                }
                l0Var = l0Var2;
                o0Var.e(iD);
                ((int[]) o0Var.f5468b)[iD] = l0Var.f5455e;
            } else {
                l0Var = this.f9703q[i17];
            }
            i0Var.f5417e = l0Var;
            if (c0320t.f5517e == 1) {
                r7 = 0;
                b(-1, viewD, false);
            } else {
                r7 = 0;
                b(0, viewD, false);
            }
            if (this.f9706t == 1) {
                i8 = 1;
                k1(L.y(this.f9707u, this.f5290l, r7, ((ViewGroup.MarginLayoutParams) i0Var).width, r7), L.y(this.f5293o, this.f5291m, I() + L(), ((ViewGroup.MarginLayoutParams) i0Var).height, true), viewD);
            } else {
                i8 = 1;
                k1(L.y(this.f5292n, this.f5290l, K() + J(), ((ViewGroup.MarginLayoutParams) i0Var).width, true), L.y(this.f9707u, this.f5291m, 0, ((ViewGroup.MarginLayoutParams) i0Var).height, false), viewD);
            }
            if (c0320t.f5517e == i8) {
                iC = l0Var.f(iF);
                iH = this.f9704r.c(viewD) + iC;
            } else {
                iH = l0Var.h(iF);
                iC = iH - this.f9704r.c(viewD);
            }
            if (c0320t.f5517e == 1) {
                l0 l0Var5 = i0Var.f5417e;
                l0Var5.getClass();
                i0 i0Var2 = (i0) viewD.getLayoutParams();
                i0Var2.f5417e = l0Var5;
                ArrayList arrayList = l0Var5.f5451a;
                arrayList.add(viewD);
                l0Var5.f5453c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    l0Var5.f5452b = Integer.MIN_VALUE;
                }
                if (i0Var2.f5294a.j() || i0Var2.f5294a.m()) {
                    l0Var5.f5454d = l0Var5.f5456f.f9704r.c(viewD) + l0Var5.f5454d;
                }
            } else {
                l0 l0Var6 = i0Var.f5417e;
                l0Var6.getClass();
                i0 i0Var3 = (i0) viewD.getLayoutParams();
                i0Var3.f5417e = l0Var6;
                ArrayList arrayList2 = l0Var6.f5451a;
                arrayList2.add(0, viewD);
                l0Var6.f5452b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    l0Var6.f5453c = Integer.MIN_VALUE;
                }
                if (i0Var3.f5294a.j() || i0Var3.f5294a.m()) {
                    l0Var6.f5454d = l0Var6.f5456f.f9704r.c(viewD) + l0Var6.f5454d;
                }
            }
            if (j1() && this.f9706t == 1) {
                iC2 = this.f9705s.f() - (((this.f9702p - 1) - l0Var.f5455e) * this.f9707u);
                iH2 = iC2 - this.f9705s.c(viewD);
            } else {
                iH2 = this.f9705s.h() + (l0Var.f5455e * this.f9707u);
                iC2 = this.f9705s.c(viewD) + iH2;
            }
            if (this.f9706t == 1) {
                L.V(viewD, iH2, iC, iC2, iH);
            } else {
                L.V(viewD, iC, iH2, iH, iC2);
            }
            v1(l0Var, c0320t2.f5517e, i13);
            o1(gVar, c0320t2);
            if (c0320t2.f5520h && viewD.hasFocusable()) {
                this.f9711y.set(l0Var.f5455e, false);
            }
            i12 = 1;
            z7 = true;
        }
        if (!z7) {
            o1(gVar, c0320t2);
        }
        int iH5 = c0320t2.f5517e == -1 ? this.f9704r.h() - g1(this.f9704r.h()) : f1(this.f9704r.f()) - this.f9704r.f();
        if (iH5 > 0) {
            return Math.min(c0320t.f5514b, iH5);
        }
        return 0;
    }

    public final View Z0(boolean z7) {
        int iH = this.f9704r.h();
        int iF = this.f9704r.f();
        View view = null;
        for (int iX = x() - 1; iX >= 0; iX--) {
            View viewW = w(iX);
            int iD = this.f9704r.d(viewW);
            int iB = this.f9704r.b(viewW);
            if (iB > iH && iD < iF) {
                if (iB <= iF || !z7) {
                    return viewW;
                }
                if (view == null) {
                    view = viewW;
                }
            }
        }
        return view;
    }

    @Override // O1.X
    public final PointF a(int i8) {
        int iT0 = T0(i8);
        PointF pointF = new PointF();
        if (iT0 == 0) {
            return null;
        }
        if (this.f9706t == 0) {
            pointF.x = iT0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iT0;
        }
        return pointF;
    }

    @Override // O1.L
    public final void a0(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f5280b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.f9701K);
        }
        for (int i8 = 0; i8 < this.f9702p; i8++) {
            this.f9703q[i8].b();
        }
        recyclerView.requestLayout();
    }

    public final View a1(boolean z7) {
        int iH = this.f9704r.h();
        int iF = this.f9704r.f();
        int iX = x();
        View view = null;
        for (int i8 = 0; i8 < iX; i8++) {
            View viewW = w(i8);
            int iD = this.f9704r.d(viewW);
            if (this.f9704r.b(viewW) > iH && iD < iF) {
                if (iD >= iH || !z7) {
                    return viewW;
                }
                if (view == null) {
                    view = viewW;
                }
            }
        }
        return view;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0046  */
    /* JADX WARN: Code duplicated, block: B:38:0x004e  */
    @Override // O1.L
    public final View b0(View view, int i8, g gVar, Y y7) {
        View viewR;
        int i9;
        if (x() == 0 || (viewR = r(view)) == null) {
            return null;
        }
        r1();
        if (i8 != 1) {
            if (i8 != 2) {
                if (i8 != 17) {
                    if (i8 != 33) {
                        if (i8 == 66 ? this.f9706t == 0 : !(i8 != 130 || this.f9706t != 1)) {
                            i9 = 1;
                        }
                    } else if (this.f9706t == 1) {
                        i9 = -1;
                    }
                    i9 = Integer.MIN_VALUE;
                } else if (this.f9706t == 0) {
                    i9 = -1;
                } else {
                    i9 = Integer.MIN_VALUE;
                }
            } else if (this.f9706t != 1 && j1()) {
                i9 = -1;
            } else {
                i9 = 1;
            }
        } else if (this.f9706t != 1 && j1()) {
            i9 = 1;
        } else {
            i9 = -1;
        }
        if (i9 == Integer.MIN_VALUE) {
            return null;
        }
        i0 i0Var = (i0) viewR.getLayoutParams();
        i0Var.getClass();
        l0 l0Var = i0Var.f5417e;
        int iE1 = i9 == 1 ? e1() : d1();
        u1(iE1, y7);
        t1(i9);
        C0320t c0320t = this.f9708v;
        c0320t.f5515c = c0320t.f5516d + iE1;
        c0320t.f5514b = (int) (this.f9704r.i() * 0.33333334f);
        c0320t.f5520h = true;
        c0320t.f5513a = false;
        Y0(gVar, c0320t, y7);
        this.f9694D = this.f9710x;
        View viewG = l0Var.g(iE1, i9);
        if (viewG != null && viewG != viewR) {
            return viewG;
        }
        if (m1(i9)) {
            for (int i10 = this.f9702p - 1; i10 >= 0; i10--) {
                View viewG2 = this.f9703q[i10].g(iE1, i9);
                if (viewG2 != null && viewG2 != viewR) {
                    return viewG2;
                }
            }
        } else {
            for (int i11 = 0; i11 < this.f9702p; i11++) {
                View viewG3 = this.f9703q[i11].g(iE1, i9);
                if (viewG3 != null && viewG3 != viewR) {
                    return viewG3;
                }
            }
        }
        boolean z7 = (this.f9709w ^ true) == (i9 == -1);
        View viewS = s(z7 ? l0Var.c() : l0Var.d());
        if (viewS != null && viewS != viewR) {
            return viewS;
        }
        if (m1(i9)) {
            for (int i12 = this.f9702p - 1; i12 >= 0; i12--) {
                if (i12 != l0Var.f5455e) {
                    View viewS2 = s(z7 ? this.f9703q[i12].c() : this.f9703q[i12].d());
                    if (viewS2 != null && viewS2 != viewR) {
                        return viewS2;
                    }
                }
            }
        } else {
            for (int i13 = 0; i13 < this.f9702p; i13++) {
                View viewS3 = s(z7 ? this.f9703q[i13].c() : this.f9703q[i13].d());
                if (viewS3 != null && viewS3 != viewR) {
                    return viewS3;
                }
            }
        }
        return null;
    }

    public final void b1(g gVar, Y y7, boolean z7) {
        int iF;
        int iF1 = f1(Integer.MIN_VALUE);
        if (iF1 != Integer.MIN_VALUE && (iF = this.f9704r.f() - iF1) > 0) {
            int i8 = iF - (-s1(-iF, gVar, y7));
            if (!z7 || i8 <= 0) {
                return;
            }
            this.f9704r.m(i8);
        }
    }

    @Override // O1.L
    public final void c(String str) {
        if (this.f9696F == null) {
            super.c(str);
        }
    }

    @Override // O1.L
    public final void c0(AccessibilityEvent accessibilityEvent) {
        super.c0(accessibilityEvent);
        if (x() > 0) {
            View viewA1 = a1(false);
            View viewZ0 = Z0(false);
            if (viewA1 == null || viewZ0 == null) {
                return;
            }
            int iM = L.M(viewA1);
            int iM2 = L.M(viewZ0);
            if (iM < iM2) {
                accessibilityEvent.setFromIndex(iM);
                accessibilityEvent.setToIndex(iM2);
            } else {
                accessibilityEvent.setFromIndex(iM2);
                accessibilityEvent.setToIndex(iM);
            }
        }
    }

    public final void c1(g gVar, Y y7, boolean z7) {
        int iH;
        int iG1 = g1(com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
        if (iG1 != Integer.MAX_VALUE && (iH = iG1 - this.f9704r.h()) > 0) {
            int iS1 = iH - s1(iH, gVar, y7);
            if (!z7 || iS1 <= 0) {
                return;
            }
            this.f9704r.m(-iS1);
        }
    }

    @Override // O1.L
    public final void d0(g gVar, Y y7, f fVar) {
        super.d0(gVar, y7, fVar);
        fVar.f5019a.setClassName("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    public final int d1() {
        if (x() == 0) {
            return 0;
        }
        return L.M(w(0));
    }

    @Override // O1.L
    public final boolean e() {
        return this.f9706t == 0;
    }

    public final int e1() {
        int iX = x();
        if (iX == 0) {
            return 0;
        }
        return L.M(w(iX - 1));
    }

    @Override // O1.L
    public final boolean f() {
        return this.f9706t == 1;
    }

    @Override // O1.L
    public final void f0(g gVar, Y y7, View view, f fVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof i0)) {
            e0(view, fVar);
            return;
        }
        i0 i0Var = (i0) layoutParams;
        if (this.f9706t == 0) {
            l0 l0Var = i0Var.f5417e;
            fVar.g(C0234g.a(l0Var == null ? -1 : l0Var.f5455e, 1, -1, -1));
        } else {
            l0 l0Var2 = i0Var.f5417e;
            fVar.g(C0234g.a(-1, -1, l0Var2 == null ? -1 : l0Var2.f5455e, 1));
        }
    }

    public final int f1(int i8) {
        int iF = this.f9703q[0].f(i8);
        for (int i9 = 1; i9 < this.f9702p; i9++) {
            int iF2 = this.f9703q[i9].f(i8);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    @Override // O1.L
    public final boolean g(M m7) {
        return m7 instanceof i0;
    }

    public final int g1(int i8) {
        int iH = this.f9703q[0].h(i8);
        for (int i9 = 1; i9 < this.f9702p; i9++) {
            int iH2 = this.f9703q[i9].h(i8);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    @Override // O1.L
    public final void h0(int i8, int i9) {
        h1(i8, i9, 1);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x003d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0046  */
    /* JADX WARN: Code duplicated, block: B:29:0x004c  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public final void h1(int i8, int i9, int i10) {
        int i11;
        int i12;
        o0 o0Var;
        int iE1;
        int iE2 = this.f9710x ? e1() : d1();
        if (i10 == 8) {
            if (i8 < i9) {
                i11 = i9 + 1;
            } else {
                i11 = i8 + 1;
                i12 = i9;
            }
            o0Var = this.f9692B;
            o0Var.g(i12);
            if (i10 != 1) {
                o0Var.i(i8, i9);
            } else if (i10 != 2) {
                o0Var.j(i8, i9);
            } else if (i10 == 8) {
                o0Var.j(i8, 1);
                o0Var.i(i9, 1);
            }
            if (i11 <= iE2) {
                return;
            }
            if (this.f9710x) {
                iE1 = d1();
            } else {
                iE1 = e1();
            }
            if (i12 <= iE1) {
                D0();
            }
        }
        i11 = i8 + i9;
        i12 = i8;
        o0Var = this.f9692B;
        o0Var.g(i12);
        if (i10 != 1) {
            o0Var.i(i8, i9);
        } else if (i10 != 2) {
            o0Var.j(i8, i9);
        } else if (i10 == 8) {
            o0Var.j(i8, 1);
            o0Var.i(i9, 1);
        }
        if (i11 <= iE2) {
            return;
        }
        if (this.f9710x) {
            iE1 = d1();
        } else {
            iE1 = e1();
        }
        if (i12 <= iE1) {
            D0();
        }
    }

    @Override // O1.L
    public final void i(int i8, int i9, Y y7, h hVar) {
        C0320t c0320t;
        int iF;
        int iH;
        if (this.f9706t != 0) {
            i8 = i9;
        }
        if (x() == 0 || i8 == 0) {
            return;
        }
        n1(i8, y7);
        int[] iArr = this.f9700J;
        if (iArr == null || iArr.length < this.f9702p) {
            this.f9700J = new int[this.f9702p];
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.f9702p;
            c0320t = this.f9708v;
            if (i10 >= i12) {
                break;
            }
            if (c0320t.f5516d == -1) {
                iF = c0320t.f5518f;
                iH = this.f9703q[i10].h(iF);
            } else {
                iF = this.f9703q[i10].f(c0320t.f5519g);
                iH = c0320t.f5519g;
            }
            int i13 = iF - iH;
            if (i13 >= 0) {
                this.f9700J[i11] = i13;
                i11++;
            }
            i10++;
        }
        Arrays.sort(this.f9700J, 0, i11);
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = c0320t.f5515c;
            if (i15 < 0 || i15 >= y7.b()) {
                return;
            }
            hVar.b(c0320t.f5515c, this.f9700J[i14]);
            c0320t.f5515c += c0320t.f5516d;
        }
    }

    @Override // O1.L
    public final void i0() {
        this.f9692B.d();
        D0();
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x002c A[SYNTHETIC] */
    public final View i1() {
        boolean z7;
        boolean z8;
        int iX = x();
        int i8 = iX - 1;
        BitSet bitSet = new BitSet(this.f9702p);
        bitSet.set(0, this.f9702p, true);
        byte b8 = (this.f9706t == 1 && j1()) ? (byte) 1 : (byte) -1;
        if (this.f9710x) {
            iX = -1;
        } else {
            i8 = 0;
        }
        int i9 = i8 < iX ? 1 : -1;
        while (i8 != iX) {
            View viewW = w(i8);
            i0 i0Var = (i0) viewW.getLayoutParams();
            if (bitSet.get(i0Var.f5417e.f5455e)) {
                l0 l0Var = i0Var.f5417e;
                if (this.f9710x) {
                    int i10 = l0Var.f5453c;
                    if (i10 == Integer.MIN_VALUE) {
                        l0Var.a();
                        i10 = l0Var.f5453c;
                    }
                    if (i10 < this.f9704r.f()) {
                        ((i0) ((View) U2.g(l0Var.f5451a, 1)).getLayoutParams()).getClass();
                        return viewW;
                    }
                    bitSet.clear(i0Var.f5417e.f5455e);
                } else {
                    int i11 = l0Var.f5452b;
                    if (i11 == Integer.MIN_VALUE) {
                        View view = (View) l0Var.f5451a.get(0);
                        i0 i0Var2 = (i0) view.getLayoutParams();
                        l0Var.f5452b = l0Var.f5456f.f9704r.d(view);
                        i0Var2.getClass();
                        i11 = l0Var.f5452b;
                    }
                    if (i11 > this.f9704r.h()) {
                        ((i0) ((View) l0Var.f5451a.get(0)).getLayoutParams()).getClass();
                        return viewW;
                    }
                    bitSet.clear(i0Var.f5417e.f5455e);
                }
            }
            i8 += i9;
            if (i8 != iX) {
                View viewW2 = w(i8);
                if (this.f9710x) {
                    int iB = this.f9704r.b(viewW);
                    int iB2 = this.f9704r.b(viewW2);
                    if (iB < iB2) {
                        return viewW;
                    }
                    if (iB == iB2) {
                        if (i0Var.f5417e.f5455e - ((i0) viewW2.getLayoutParams()).f5417e.f5455e < 0) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (b8 < 0) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        if (z7 != z8) {
                            return viewW;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iD = this.f9704r.d(viewW);
                    int iD2 = this.f9704r.d(viewW2);
                    if (iD > iD2) {
                        return viewW;
                    }
                    if (iD == iD2) {
                        if (i0Var.f5417e.f5455e - ((i0) viewW2.getLayoutParams()).f5417e.f5455e < 0) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (b8 < 0) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        if (z7 != z8) {
                            return viewW;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    @Override // O1.L
    public final void j0(int i8, int i9) {
        h1(i8, i9, 8);
    }

    public final boolean j1() {
        return this.f5280b.getLayoutDirection() == 1;
    }

    @Override // O1.L
    public final int k(Y y7) {
        return V0(y7);
    }

    @Override // O1.L
    public final void k0(int i8, int i9) {
        h1(i8, i9, 2);
    }

    public final void k1(int i8, int i9, View view) {
        Rect rect = this.f9697G;
        d(rect, view);
        i0 i0Var = (i0) view.getLayoutParams();
        int iW1 = w1(i8, ((ViewGroup.MarginLayoutParams) i0Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) i0Var).rightMargin + rect.right);
        int iW2 = w1(i9, ((ViewGroup.MarginLayoutParams) i0Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) i0Var).bottomMargin + rect.bottom);
        if (N0(view, iW1, iW2, i0Var)) {
            view.measure(iW1, iW2);
        }
    }

    @Override // O1.L
    public final int l(Y y7) {
        return W0(y7);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:116:0x01da  */
    /* JADX WARN: Code duplicated, block: B:122:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:124:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:246:0x040a  */
    /* JADX WARN: Code duplicated, block: B:257:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x01ea A[SYNTHETIC] */
    public final void l1(g gVar, Y y7, boolean z7) {
        boolean z8;
        k0 k0Var;
        int iX;
        int i8;
        int iM;
        int iM2;
        int iX2;
        int i9;
        k0 k0Var2 = this.f9696F;
        h0 h0Var = this.f9698H;
        if (!(k0Var2 == null && this.f9712z == -1) && y7.b() == 0) {
            w0(gVar);
            h0Var.a();
            return;
        }
        boolean z9 = (h0Var.f5409e && this.f9712z == -1 && this.f9696F == null) ? false : true;
        o0 o0Var = this.f9692B;
        StaggeredGridLayoutManager staggeredGridLayoutManager = h0Var.f5411g;
        if (z9) {
            h0Var.a();
            k0 k0Var3 = this.f9696F;
            if (k0Var3 != null) {
                int i10 = k0Var3.f5441I;
                if (i10 > 0) {
                    if (i10 == this.f9702p) {
                        for (int i11 = 0; i11 < this.f9702p; i11++) {
                            this.f9703q[i11].b();
                            k0 k0Var4 = this.f9696F;
                            int iF = k0Var4.f5442J[i11];
                            if (iF != Integer.MIN_VALUE) {
                                iF += k0Var4.f5447O ? this.f9704r.f() : this.f9704r.h();
                            }
                            l0 l0Var = this.f9703q[i11];
                            l0Var.f5452b = iF;
                            l0Var.f5453c = iF;
                        }
                    } else {
                        k0Var3.f5442J = null;
                        k0Var3.f5441I = 0;
                        k0Var3.f5443K = 0;
                        k0Var3.f5444L = null;
                        k0Var3.f5445M = null;
                        k0Var3.f5439G = k0Var3.f5440H;
                    }
                }
                k0 k0Var5 = this.f9696F;
                this.f9695E = k0Var5.f5448P;
                boolean z10 = k0Var5.f5446N;
                c(null);
                k0 k0Var6 = this.f9696F;
                if (k0Var6 != null && k0Var6.f5446N != z10) {
                    k0Var6.f5446N = z10;
                }
                this.f9709w = z10;
                D0();
                r1();
                k0 k0Var7 = this.f9696F;
                int i12 = k0Var7.f5439G;
                if (i12 != -1) {
                    this.f9712z = i12;
                    h0Var.f5407c = k0Var7.f5447O;
                } else {
                    h0Var.f5407c = this.f9710x;
                }
                if (k0Var7.f5443K > 1) {
                    o0Var.f5468b = k0Var7.f5444L;
                    o0Var.f5469c = k0Var7.f5445M;
                }
            } else {
                r1();
                h0Var.f5407c = this.f9710x;
            }
            if (y7.f5320g || (i9 = this.f9712z) == -1) {
                if (this.f9694D) {
                    int iB = y7.b();
                    iX2 = x() - 1;
                    while (true) {
                        if (iX2 < 0) {
                            iM2 = 0;
                            break;
                        }
                        iM2 = L.M(w(iX2));
                        if (iM2 < 0 && iM2 < iB) {
                            break;
                        } else {
                            iX2--;
                        }
                    }
                } else {
                    int iB2 = y7.b();
                    iX = x();
                    i8 = 0;
                    while (true) {
                        if (i8 >= iX) {
                            iM2 = 0;
                            break;
                        }
                        iM = L.M(w(i8));
                        if (iM < 0 && iM < iB2) {
                            iM2 = iM;
                            break;
                        }
                        i8++;
                    }
                }
                h0Var.f5405a = iM2;
                h0Var.f5406b = Integer.MIN_VALUE;
            } else if (i9 < 0 || i9 >= y7.b()) {
                this.f9712z = -1;
                this.f9691A = Integer.MIN_VALUE;
                if (this.f9694D) {
                    int iB3 = y7.b();
                    iX2 = x() - 1;
                    while (true) {
                        if (iX2 < 0) {
                            iM2 = 0;
                            break;
                        } else {
                            iM2 = L.M(w(iX2));
                            if (iM2 < 0) {
                            }
                            iX2--;
                        }
                    }
                } else {
                    int iB4 = y7.b();
                    iX = x();
                    i8 = 0;
                    while (true) {
                        if (i8 >= iX) {
                            iM2 = 0;
                            break;
                        } else {
                            iM = L.M(w(i8));
                            if (iM < 0) {
                            }
                            i8++;
                        }
                    }
                }
                h0Var.f5405a = iM2;
                h0Var.f5406b = Integer.MIN_VALUE;
            } else {
                k0 k0Var8 = this.f9696F;
                if (k0Var8 == null || k0Var8.f5439G == -1 || k0Var8.f5441I < 1) {
                    View viewS = s(this.f9712z);
                    if (viewS != null) {
                        h0Var.f5405a = this.f9710x ? e1() : d1();
                        if (this.f9691A != Integer.MIN_VALUE) {
                            if (h0Var.f5407c) {
                                h0Var.f5406b = (this.f9704r.f() - this.f9691A) - this.f9704r.b(viewS);
                            } else {
                                h0Var.f5406b = (this.f9704r.h() + this.f9691A) - this.f9704r.d(viewS);
                            }
                        } else if (this.f9704r.c(viewS) > this.f9704r.i()) {
                            h0Var.f5406b = h0Var.f5407c ? this.f9704r.f() : this.f9704r.h();
                        } else {
                            int iD = this.f9704r.d(viewS) - this.f9704r.h();
                            if (iD < 0) {
                                h0Var.f5406b = -iD;
                            } else {
                                int iF2 = this.f9704r.f() - this.f9704r.b(viewS);
                                if (iF2 < 0) {
                                    h0Var.f5406b = iF2;
                                } else {
                                    h0Var.f5406b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i13 = this.f9712z;
                        h0Var.f5405a = i13;
                        int i14 = this.f9691A;
                        if (i14 == Integer.MIN_VALUE) {
                            boolean z11 = T0(i13) == 1;
                            h0Var.f5407c = z11;
                            h0Var.f5406b = z11 ? staggeredGridLayoutManager.f9704r.f() : staggeredGridLayoutManager.f9704r.h();
                        } else if (h0Var.f5407c) {
                            h0Var.f5406b = staggeredGridLayoutManager.f9704r.f() - i14;
                        } else {
                            h0Var.f5406b = staggeredGridLayoutManager.f9704r.h() + i14;
                        }
                        h0Var.f5408d = true;
                    }
                } else {
                    h0Var.f5406b = Integer.MIN_VALUE;
                    h0Var.f5405a = this.f9712z;
                }
            }
            h0Var.f5409e = true;
        }
        if (this.f9696F == null && this.f9712z == -1 && (h0Var.f5407c != this.f9694D || j1() != this.f9695E)) {
            o0Var.d();
            h0Var.f5408d = true;
        }
        if (x() > 0 && ((k0Var = this.f9696F) == null || k0Var.f5441I < 1)) {
            if (h0Var.f5408d) {
                for (int i15 = 0; i15 < this.f9702p; i15++) {
                    this.f9703q[i15].b();
                    int i16 = h0Var.f5406b;
                    if (i16 != Integer.MIN_VALUE) {
                        l0 l0Var2 = this.f9703q[i15];
                        l0Var2.f5452b = i16;
                        l0Var2.f5453c = i16;
                    }
                }
            } else if (z9 || h0Var.f5410f == null) {
                for (int i17 = 0; i17 < this.f9702p; i17++) {
                    l0 l0Var3 = this.f9703q[i17];
                    boolean z12 = this.f9710x;
                    int i18 = h0Var.f5406b;
                    int iF3 = z12 ? l0Var3.f(Integer.MIN_VALUE) : l0Var3.h(Integer.MIN_VALUE);
                    l0Var3.b();
                    if (iF3 != Integer.MIN_VALUE) {
                        StaggeredGridLayoutManager staggeredGridLayoutManager2 = l0Var3.f5456f;
                        if ((!z12 || iF3 >= staggeredGridLayoutManager2.f9704r.f()) && (z12 || iF3 <= staggeredGridLayoutManager2.f9704r.h())) {
                            if (i18 != Integer.MIN_VALUE) {
                                iF3 += i18;
                            }
                            l0Var3.f5453c = iF3;
                            l0Var3.f5452b = iF3;
                        }
                    }
                }
                l0[] l0VarArr = this.f9703q;
                int length = l0VarArr.length;
                int[] iArr = h0Var.f5410f;
                if (iArr == null || iArr.length < length) {
                    h0Var.f5410f = new int[staggeredGridLayoutManager.f9703q.length];
                }
                for (int i19 = 0; i19 < length; i19++) {
                    h0Var.f5410f[i19] = l0VarArr[i19].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i20 = 0; i20 < this.f9702p; i20++) {
                    l0 l0Var4 = this.f9703q[i20];
                    l0Var4.b();
                    int i21 = h0Var.f5410f[i20];
                    l0Var4.f5452b = i21;
                    l0Var4.f5453c = i21;
                }
            }
        }
        q(gVar);
        C0320t c0320t = this.f9708v;
        c0320t.f5513a = false;
        int i22 = this.f9705s.i();
        this.f9707u = i22 / this.f9702p;
        View.MeasureSpec.makeMeasureSpec(i22, this.f9705s.g());
        u1(h0Var.f5405a, y7);
        if (h0Var.f5407c) {
            t1(-1);
            Y0(gVar, c0320t, y7);
            t1(1);
            c0320t.f5515c = h0Var.f5405a + c0320t.f5516d;
            Y0(gVar, c0320t, y7);
        } else {
            t1(1);
            Y0(gVar, c0320t, y7);
            t1(-1);
            c0320t.f5515c = h0Var.f5405a + c0320t.f5516d;
            Y0(gVar, c0320t, y7);
        }
        if (this.f9705s.g() != 1073741824) {
            int iX3 = x();
            float fMax = 0.0f;
            for (int i23 = 0; i23 < iX3; i23++) {
                View viewW = w(i23);
                float fC = this.f9705s.c(viewW);
                if (fC >= fMax) {
                    ((i0) viewW.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i24 = this.f9707u;
            int iRound = Math.round(fMax * this.f9702p);
            if (this.f9705s.g() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f9705s.i());
            }
            this.f9707u = iRound / this.f9702p;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f9705s.g());
            if (this.f9707u != i24) {
                for (int i25 = 0; i25 < iX3; i25++) {
                    View viewW2 = w(i25);
                    i0 i0Var = (i0) viewW2.getLayoutParams();
                    i0Var.getClass();
                    if (j1() && this.f9706t == 1) {
                        int i26 = -((this.f9702p - 1) - i0Var.f5417e.f5455e);
                        viewW2.offsetLeftAndRight((this.f9707u * i26) - (i26 * i24));
                    } else {
                        int i27 = i0Var.f5417e.f5455e;
                        int i28 = this.f9707u * i27;
                        int i29 = i27 * i24;
                        if (this.f9706t == 1) {
                            viewW2.offsetLeftAndRight(i28 - i29);
                        } else {
                            viewW2.offsetTopAndBottom(i28 - i29);
                        }
                    }
                }
            }
        }
        if (x() > 0) {
            if (this.f9710x) {
                b1(gVar, y7, true);
                c1(gVar, y7, false);
            } else {
                c1(gVar, y7, true);
                b1(gVar, y7, false);
            }
        }
        if (z7 && !y7.f5320g && this.f9693C != 0 && x() > 0 && i1() != null) {
            RecyclerView recyclerView = this.f5280b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.f9701K);
            }
            z8 = U0();
        }
        if (y7.f5320g) {
            h0Var.a();
        }
        this.f9694D = h0Var.f5407c;
        this.f9695E = j1();
        if (z8) {
            h0Var.a();
            l1(gVar, y7, false);
        }
    }

    @Override // O1.L
    public final int m(Y y7) {
        return X0(y7);
    }

    @Override // O1.L
    public final void m0(RecyclerView recyclerView, int i8, int i9) {
        h1(i8, i9, 4);
    }

    public final boolean m1(int i8) {
        if (this.f9706t == 0) {
            return (i8 == -1) != this.f9710x;
        }
        return ((i8 == -1) == this.f9710x) == j1();
    }

    @Override // O1.L
    public final int n(Y y7) {
        return V0(y7);
    }

    @Override // O1.L
    public final void n0(g gVar, Y y7) {
        l1(gVar, y7, true);
    }

    public final void n1(int i8, Y y7) {
        int iD1;
        int i9;
        if (i8 > 0) {
            iD1 = e1();
            i9 = 1;
        } else {
            iD1 = d1();
            i9 = -1;
        }
        C0320t c0320t = this.f9708v;
        c0320t.f5513a = true;
        u1(iD1, y7);
        t1(i9);
        c0320t.f5515c = iD1 + c0320t.f5516d;
        c0320t.f5514b = Math.abs(i8);
    }

    @Override // O1.L
    public final int o(Y y7) {
        return W0(y7);
    }

    @Override // O1.L
    public final void o0(Y y7) {
        this.f9712z = -1;
        this.f9691A = Integer.MIN_VALUE;
        this.f9696F = null;
        this.f9698H.a();
    }

    public final void o1(g gVar, C0320t c0320t) {
        int iMin;
        if (!c0320t.f5513a || c0320t.f5521i) {
            return;
        }
        if (c0320t.f5514b == 0) {
            if (c0320t.f5517e == -1) {
                p1(c0320t.f5519g, gVar);
                return;
            } else {
                q1(c0320t.f5518f, gVar);
                return;
            }
        }
        int i8 = 1;
        if (c0320t.f5517e == -1) {
            int i9 = c0320t.f5518f;
            int iH = this.f9703q[0].h(i9);
            while (i8 < this.f9702p) {
                int iH2 = this.f9703q[i8].h(i9);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i8++;
            }
            int i10 = i9 - iH;
            p1(i10 < 0 ? c0320t.f5519g : c0320t.f5519g - Math.min(i10, c0320t.f5514b), gVar);
            return;
        }
        int i11 = c0320t.f5519g;
        int iF = this.f9703q[0].f(i11);
        while (i8 < this.f9702p) {
            int iF2 = this.f9703q[i8].f(i11);
            if (iF2 < iF) {
                iF = iF2;
            }
            i8++;
        }
        int i12 = iF - c0320t.f5519g;
        if (i12 < 0) {
            iMin = c0320t.f5518f;
        } else {
            iMin = Math.min(i12, c0320t.f5514b) + c0320t.f5518f;
        }
        q1(iMin, gVar);
    }

    @Override // O1.L
    public final int p(Y y7) {
        return X0(y7);
    }

    public final void p1(int i8, g gVar) {
        for (int iX = x() - 1; iX >= 0; iX--) {
            View viewW = w(iX);
            if (this.f9704r.d(viewW) < i8 || this.f9704r.l(viewW) < i8) {
                return;
            }
            i0 i0Var = (i0) viewW.getLayoutParams();
            i0Var.getClass();
            if (i0Var.f5417e.f5451a.size() == 1) {
                return;
            }
            l0 l0Var = i0Var.f5417e;
            ArrayList arrayList = l0Var.f5451a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            i0 i0Var2 = (i0) view.getLayoutParams();
            i0Var2.f5417e = null;
            if (i0Var2.f5294a.j() || i0Var2.f5294a.m()) {
                l0Var.f5454d -= l0Var.f5456f.f9704r.c(view);
            }
            if (size == 1) {
                l0Var.f5452b = Integer.MIN_VALUE;
            }
            l0Var.f5453c = Integer.MIN_VALUE;
            y0(viewW, gVar);
        }
    }

    public final void q1(int i8, g gVar) {
        while (x() > 0) {
            View viewW = w(0);
            if (this.f9704r.b(viewW) > i8 || this.f9704r.k(viewW) > i8) {
                return;
            }
            i0 i0Var = (i0) viewW.getLayoutParams();
            i0Var.getClass();
            if (i0Var.f5417e.f5451a.size() == 1) {
                return;
            }
            l0 l0Var = i0Var.f5417e;
            ArrayList arrayList = l0Var.f5451a;
            View view = (View) arrayList.remove(0);
            i0 i0Var2 = (i0) view.getLayoutParams();
            i0Var2.f5417e = null;
            if (arrayList.size() == 0) {
                l0Var.f5453c = Integer.MIN_VALUE;
            }
            if (i0Var2.f5294a.j() || i0Var2.f5294a.m()) {
                l0Var.f5454d -= l0Var.f5456f.f9704r.c(view);
            }
            l0Var.f5452b = Integer.MIN_VALUE;
            y0(viewW, gVar);
        }
    }

    @Override // O1.L
    public final void r0(Parcelable parcelable) {
        if (parcelable instanceof k0) {
            k0 k0Var = (k0) parcelable;
            this.f9696F = k0Var;
            if (this.f9712z != -1) {
                k0Var.f5442J = null;
                k0Var.f5441I = 0;
                k0Var.f5439G = -1;
                k0Var.f5440H = -1;
                k0Var.f5442J = null;
                k0Var.f5441I = 0;
                k0Var.f5443K = 0;
                k0Var.f5444L = null;
                k0Var.f5445M = null;
            }
            D0();
        }
    }

    public final void r1() {
        if (this.f9706t == 1 || !j1()) {
            this.f9710x = this.f9709w;
        } else {
            this.f9710x = !this.f9709w;
        }
    }

    @Override // O1.L
    public final Parcelable s0() {
        int iH;
        int iH2;
        int[] iArr;
        k0 k0Var = this.f9696F;
        if (k0Var != null) {
            k0 k0Var2 = new k0();
            k0Var2.f5441I = k0Var.f5441I;
            k0Var2.f5439G = k0Var.f5439G;
            k0Var2.f5440H = k0Var.f5440H;
            k0Var2.f5442J = k0Var.f5442J;
            k0Var2.f5443K = k0Var.f5443K;
            k0Var2.f5444L = k0Var.f5444L;
            k0Var2.f5446N = k0Var.f5446N;
            k0Var2.f5447O = k0Var.f5447O;
            k0Var2.f5448P = k0Var.f5448P;
            k0Var2.f5445M = k0Var.f5445M;
            return k0Var2;
        }
        k0 k0Var3 = new k0();
        k0Var3.f5446N = this.f9709w;
        k0Var3.f5447O = this.f9694D;
        k0Var3.f5448P = this.f9695E;
        o0 o0Var = this.f9692B;
        if (o0Var == null || (iArr = (int[]) o0Var.f5468b) == null) {
            k0Var3.f5443K = 0;
        } else {
            k0Var3.f5444L = iArr;
            k0Var3.f5443K = iArr.length;
            k0Var3.f5445M = (List) o0Var.f5469c;
        }
        if (x() > 0) {
            k0Var3.f5439G = this.f9694D ? e1() : d1();
            View viewZ0 = this.f9710x ? Z0(true) : a1(true);
            k0Var3.f5440H = viewZ0 != null ? L.M(viewZ0) : -1;
            int i8 = this.f9702p;
            k0Var3.f5441I = i8;
            k0Var3.f5442J = new int[i8];
            for (int i9 = 0; i9 < this.f9702p; i9++) {
                if (this.f9694D) {
                    iH = this.f9703q[i9].f(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iH2 = this.f9704r.f();
                        iH -= iH2;
                    }
                } else {
                    iH = this.f9703q[i9].h(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iH2 = this.f9704r.h();
                        iH -= iH2;
                    }
                }
                k0Var3.f5442J[i9] = iH;
            }
        } else {
            k0Var3.f5439G = -1;
            k0Var3.f5440H = -1;
            k0Var3.f5441I = 0;
        }
        return k0Var3;
    }

    public final int s1(int i8, g gVar, Y y7) {
        if (x() == 0 || i8 == 0) {
            return 0;
        }
        n1(i8, y7);
        C0320t c0320t = this.f9708v;
        int iY0 = Y0(gVar, c0320t, y7);
        if (c0320t.f5514b >= iY0) {
            i8 = i8 < 0 ? -iY0 : iY0;
        }
        this.f9704r.m(-i8);
        this.f9694D = this.f9710x;
        c0320t.f5514b = 0;
        o1(gVar, c0320t);
        return i8;
    }

    @Override // O1.L
    public final M t() {
        return this.f9706t == 0 ? new i0(-2, -1) : new i0(-1, -2);
    }

    @Override // O1.L
    public final void t0(int i8) {
        if (i8 == 0) {
            U0();
        }
    }

    public final void t1(int i8) {
        C0320t c0320t = this.f9708v;
        c0320t.f5517e = i8;
        c0320t.f5516d = this.f9710x != (i8 == -1) ? -1 : 1;
    }

    @Override // O1.L
    public final M u(Context context, AttributeSet attributeSet) {
        return new i0(context, attributeSet);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004a  */
    public final void u1(int i8, Y y7) {
        int i9;
        int i10;
        RecyclerView recyclerView;
        int i11;
        C0320t c0320t = this.f9708v;
        boolean z7 = false;
        c0320t.f5514b = 0;
        c0320t.f5515c = i8;
        if (U() && (i11 = y7.f5314a) != -1) {
            if (this.f9710x == (i11 < i8)) {
                i9 = this.f9704r.i();
            } else {
                i10 = this.f9704r.i();
                i9 = 0;
            }
            recyclerView = this.f5280b;
            if (recyclerView == null && recyclerView.f9634N) {
                c0320t.f5518f = this.f9704r.h() - i10;
                c0320t.f5519g = this.f9704r.f() + i9;
            } else {
                c0320t.f5519g = this.f9704r.e() + i9;
                c0320t.f5518f = -i10;
            }
            c0320t.f5520h = false;
            c0320t.f5513a = true;
            if (this.f9704r.g() == 0 && this.f9704r.e() == 0) {
                z7 = true;
            }
            c0320t.f5521i = z7;
        }
        i9 = 0;
        i10 = 0;
        recyclerView = this.f5280b;
        if (recyclerView == null) {
            c0320t.f5519g = this.f9704r.e() + i9;
            c0320t.f5518f = -i10;
        } else {
            c0320t.f5519g = this.f9704r.e() + i9;
            c0320t.f5518f = -i10;
        }
        c0320t.f5520h = false;
        c0320t.f5513a = true;
        if (this.f9704r.g() == 0) {
            z7 = true;
        }
        c0320t.f5521i = z7;
    }

    @Override // O1.L
    public final M v(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new i0((ViewGroup.MarginLayoutParams) layoutParams) : new i0(layoutParams);
    }

    public final void v1(l0 l0Var, int i8, int i9) {
        int i10 = l0Var.f5454d;
        int i11 = l0Var.f5455e;
        if (i8 != -1) {
            int i12 = l0Var.f5453c;
            if (i12 == Integer.MIN_VALUE) {
                l0Var.a();
                i12 = l0Var.f5453c;
            }
            if (i12 - i10 >= i9) {
                this.f9711y.set(i11, false);
                return;
            }
            return;
        }
        int i13 = l0Var.f5452b;
        if (i13 == Integer.MIN_VALUE) {
            View view = (View) l0Var.f5451a.get(0);
            i0 i0Var = (i0) view.getLayoutParams();
            l0Var.f5452b = l0Var.f5456f.f9704r.d(view);
            i0Var.getClass();
            i13 = l0Var.f5452b;
        }
        if (i13 + i10 <= i9) {
            this.f9711y.set(i11, false);
        }
    }

    @Override // O1.L
    public final int z(g gVar, Y y7) {
        if (this.f9706t == 1) {
            return Math.min(this.f9702p, y7.b());
        }
        return -1;
    }
}
