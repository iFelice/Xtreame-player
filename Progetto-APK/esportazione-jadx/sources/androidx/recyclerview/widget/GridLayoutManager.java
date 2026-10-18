package androidx.recyclerview.widget;

import A0.O;
import B0.U;
import K3.C0234g;
import N.N;
import O.d;
import O.f;
import O1.C;
import O1.C0319s;
import O1.C0321u;
import O1.C0322v;
import O1.C0325y;
import O1.L;
import O1.M;
import O1.Y;
import O1.c0;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import p000a.r;
import p086l.e1;
import p132r.h;
import p142s1.g;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final Set f9578P = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f9579E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int f9580F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int[] f9581G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public View[] f9582H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final SparseIntArray f9583I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final SparseIntArray f9584J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final e1 f9585K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Rect f9586L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f9587M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f9588N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f9589O;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i8, int i9) {
        super(context, attributeSet, i8, i9);
        this.f9579E = false;
        this.f9580F = -1;
        this.f9583I = new SparseIntArray();
        this.f9584J = new SparseIntArray();
        e1 e1Var = new e1(3);
        this.f9585K = e1Var;
        this.f9586L = new Rect();
        this.f9587M = -1;
        this.f9588N = -1;
        this.f9589O = -1;
        int i10 = L.N(context, attributeSet, i8, i9).f5276b;
        if (i10 == this.f9580F) {
            return;
        }
        this.f9579E = true;
        if (i10 < 1) {
            throw new IllegalArgumentException(r.f("Span count should be at least 1. Provided ", i10));
        }
        this.f9580F = i10;
        e1Var.e();
        D0();
    }

    public final HashSet A1(int i8, int i9) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.f5280b;
        int iE1 = E1(i9, recyclerView.f9624I, recyclerView.f9635N0);
        for (int i10 = i8; i10 < i8 + iE1; i10++) {
            hashSet.add(Integer.valueOf(i10));
        }
        return hashSet;
    }

    public final int B1(int i8, int i9) {
        if (this.f9594p != 1 || !j1()) {
            int[] iArr = this.f9581G;
            return iArr[i9 + i8] - iArr[i8];
        }
        int[] iArr2 = this.f9581G;
        int i10 = this.f9580F;
        return iArr2[i10 - i8] - iArr2[(i10 - i8) - i9];
    }

    public final int C1(int i8, g gVar, Y y7) {
        boolean z7 = y7.f5320g;
        e1 e1Var = this.f9585K;
        if (!z7) {
            return e1Var.b(i8, this.f9580F);
        }
        int iB = gVar.b(i8);
        if (iB != -1) {
            return e1Var.b(iB, this.f9580F);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i8);
        return 0;
    }

    public final int D1(int i8, g gVar, Y y7) {
        boolean z7 = y7.f5320g;
        e1 e1Var = this.f9585K;
        if (!z7) {
            return e1Var.c(i8, this.f9580F);
        }
        int i9 = this.f9584J.get(i8, -1);
        if (i9 != -1) {
            return i9;
        }
        int iB = gVar.b(i8);
        if (iB != -1) {
            return e1Var.c(iB, this.f9580F);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i8);
        return 0;
    }

    public final int E1(int i8, g gVar, Y y7) {
        boolean z7 = y7.f5320g;
        e1 e1Var = this.f9585K;
        if (!z7) {
            e1Var.getClass();
            return 1;
        }
        int i9 = this.f9583I.get(i8, -1);
        if (i9 != -1) {
            return i9;
        }
        if (gVar.b(i8) != -1) {
            e1Var.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i8);
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final int F0(int i8, g gVar, Y y7) {
        G1();
        w1();
        return super.F0(i8, gVar, y7);
    }

    public final void F1(int i8, View view, boolean z7) {
        int iY;
        int iY2;
        C0319s c0319s = (C0319s) view.getLayoutParams();
        Rect rect = c0319s.f5295b;
        int i9 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0319s).topMargin + ((ViewGroup.MarginLayoutParams) c0319s).bottomMargin;
        int i10 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0319s).leftMargin + ((ViewGroup.MarginLayoutParams) c0319s).rightMargin;
        int iB1 = B1(c0319s.f5511e, c0319s.f5512f);
        if (this.f9594p == 1) {
            iY2 = L.y(iB1, i8, i10, ((ViewGroup.MarginLayoutParams) c0319s).width, false);
            iY = L.y(this.f9596r.i(), this.f5291m, i9, ((ViewGroup.MarginLayoutParams) c0319s).height, true);
        } else {
            int iY3 = L.y(iB1, i8, i9, ((ViewGroup.MarginLayoutParams) c0319s).height, false);
            int iY4 = L.y(this.f9596r.i(), this.f5290l, i10, ((ViewGroup.MarginLayoutParams) c0319s).width, true);
            iY = iY3;
            iY2 = iY4;
        }
        M m7 = (M) view.getLayoutParams();
        if (z7 ? P0(view, iY2, iY, m7) : N0(view, iY2, iY, m7)) {
            view.measure(iY2, iY);
        }
    }

    public final void G1() {
        int I7;
        int iL;
        if (this.f9594p == 1) {
            I7 = this.f5292n - K();
            iL = J();
        } else {
            I7 = this.f5293o - I();
            iL = L();
        }
        v1(I7 - iL);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final int H0(int i8, g gVar, Y y7) {
        G1();
        w1();
        return super.H0(i8, gVar, y7);
    }

    @Override // O1.L
    public final void K0(Rect rect, int i8, int i9) {
        int iH;
        int iH2;
        if (this.f9581G == null) {
            super.K0(rect, i8, i9);
        }
        int iK = K() + J();
        int I7 = I() + L();
        if (this.f9594p == 1) {
            int iHeight = rect.height() + I7;
            RecyclerView recyclerView = this.f5280b;
            WeakHashMap weakHashMap = N.f4843a;
            iH2 = L.h(i9, iHeight, recyclerView.getMinimumHeight());
            int[] iArr = this.f9581G;
            iH = L.h(i8, iArr[iArr.length - 1] + iK, this.f5280b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + iK;
            RecyclerView recyclerView2 = this.f5280b;
            WeakHashMap weakHashMap2 = N.f4843a;
            iH = L.h(i8, iWidth, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.f9581G;
            iH2 = L.h(i9, iArr2[iArr2.length - 1] + I7, this.f5280b.getMinimumHeight());
        }
        this.f5280b.setMeasuredDimension(iH, iH2);
    }

    @Override // O1.L
    public final int O(g gVar, Y y7) {
        if (this.f9594p == 0) {
            return Math.min(this.f9580F, H());
        }
        if (y7.b() < 1) {
            return 0;
        }
        return C1(y7.b() - 1, gVar, y7) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final boolean S0() {
        return this.f9604z == null && !this.f9579E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void T0(Y y7, C0321u c0321u, h hVar) {
        int i8;
        int i9 = this.f9580F;
        for (int i10 = 0; i10 < this.f9580F && (i8 = c0321u.f5525d) >= 0 && i8 < y7.b() && i9 > 0; i10++) {
            hVar.b(c0321u.f5525d, Math.max(0, c0321u.f5528g));
            this.f9585K.getClass();
            i9--;
            c0321u.f5525d += c0321u.f5526e;
        }
    }

    /* JADX WARN: Code duplicated, block: B:75:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:76:0x0110  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c9, code lost:
    
        if (r13 == (r2 > r15)) goto L46;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View b0(android.view.View r23, int r24, p142s1.g r25, O1.Y r26) {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.b0(android.view.View, int, s1.g, O1.Y):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final void d0(g gVar, Y y7, f fVar) {
        super.d0(gVar, y7, fVar);
        fVar.f5019a.setClassName("android.widget.GridView");
        C c8 = this.f5280b.f9644S;
        if (c8 == null || c8.a() <= 1) {
            return;
        }
        fVar.b(d.f5015j);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View e1(g gVar, Y y7, boolean z7, boolean z8) {
        int i8;
        int iX;
        int iX2 = x();
        int i9 = 1;
        if (z8) {
            iX = x() - 1;
            i8 = -1;
            i9 = -1;
        } else {
            i8 = iX2;
            iX = 0;
        }
        int iB = y7.b();
        Y0();
        int iH = this.f9596r.h();
        int iF = this.f9596r.f();
        View view = null;
        View view2 = null;
        while (iX != i8) {
            View viewW = w(iX);
            int iM = L.M(viewW);
            if (iM >= 0 && iM < iB && D1(iM, gVar, y7) == 0) {
                if (((M) viewW.getLayoutParams()).f5294a.j()) {
                    if (view2 == null) {
                        view2 = viewW;
                    }
                } else {
                    if (this.f9596r.d(viewW) < iF && this.f9596r.b(viewW) >= iH) {
                        return viewW;
                    }
                    if (view == null) {
                        view = viewW;
                    }
                }
            }
            iX += i9;
        }
        return view != null ? view : view2;
    }

    @Override // O1.L
    public final void f0(g gVar, Y y7, View view, f fVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0319s)) {
            e0(view, fVar);
            return;
        }
        C0319s c0319s = (C0319s) layoutParams;
        int iC1 = C1(c0319s.f5294a.d(), gVar, y7);
        if (this.f9594p == 0) {
            fVar.g(C0234g.a(c0319s.f5511e, c0319s.f5512f, iC1, 1));
        } else {
            fVar.g(C0234g.a(iC1, 1, c0319s.f5511e, c0319s.f5512f));
        }
    }

    @Override // O1.L
    public final boolean g(M m7) {
        return m7 instanceof C0319s;
    }

    @Override // O1.L
    public final void h0(int i8, int i9) {
        e1 e1Var = this.f9585K;
        e1Var.e();
        ((SparseIntArray) e1Var.f26254e).clear();
    }

    @Override // O1.L
    public final void i0() {
        e1 e1Var = this.f9585K;
        e1Var.e();
        ((SparseIntArray) e1Var.f26254e).clear();
    }

    @Override // O1.L
    public final void j0(int i8, int i9) {
        e1 e1Var = this.f9585K;
        e1Var.e();
        ((SparseIntArray) e1Var.f26254e).clear();
    }

    @Override // O1.L
    public final void k0(int i8, int i9) {
        e1 e1Var = this.f9585K;
        e1Var.e();
        ((SparseIntArray) e1Var.f26254e).clear();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:104:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:107:0x021b  */
    /* JADX WARN: Code duplicated, block: B:108:0x022e  */
    /* JADX WARN: Code duplicated, block: B:113:0x0253  */
    /* JADX WARN: Code duplicated, block: B:129:0x0116 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x01b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0098  */
    /* JADX WARN: Code duplicated, block: B:45:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x009d  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a8 A[LOOP:1: B:49:0x00a6->B:50:0x00a8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:67:0x0115  */
    /* JADX WARN: Code duplicated, block: B:70:0x011b  */
    /* JADX WARN: Code duplicated, block: B:72:0x012f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0141  */
    /* JADX WARN: Code duplicated, block: B:78:0x0148  */
    /* JADX WARN: Code duplicated, block: B:80:0x0154  */
    /* JADX WARN: Code duplicated, block: B:82:0x017f  */
    /* JADX WARN: Code duplicated, block: B:83:0x018f  */
    /* JADX WARN: Code duplicated, block: B:86:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:87:0x01af  */
    /* JADX WARN: Code duplicated, block: B:91:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:94:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:95:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:97:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:99:0x01e0  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void k1(g gVar, Y y7, C0321u c0321u, M1.f fVar) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f8;
        int i13;
        int i14;
        int i15;
        int iS;
        int iJ;
        int iL;
        int iS2;
        int i16;
        View view;
        C0319s c0319s;
        View view2;
        C0319s c0319s2;
        int i17;
        int i18;
        int iB1;
        int iY;
        int iY2;
        int i19;
        int iC;
        View view3;
        boolean z7;
        int iC2;
        float fS;
        int i20;
        View viewB;
        C0325y c0325y = this.f9596r;
        int i21 = c0325y.f5558d;
        Object obj = c0325y.f5560b;
        switch (i21) {
            case 0:
                i8 = ((L) obj).f5291m;
                break;
            default:
                i8 = ((L) obj).f5290l;
                break;
        }
        boolean z8 = i8 != 1073741824;
        int i22 = x() > 0 ? this.f9581G[this.f9580F] : 0;
        if (z8) {
            G1();
        }
        boolean z9 = c0321u.f5526e == 1;
        int iD1 = this.f9580F;
        if (!z9) {
            iD1 = D1(c0321u.f5525d, gVar, y7) + E1(c0321u.f5525d, gVar, y7);
        }
        for (int i23 = 0; i23 < this.f9580F && (i20 = c0321u.f5525d) >= 0 && i20 < y7.b() && iD1 > 0; i23++) {
            int i24 = c0321u.f5525d;
            int iE1 = E1(i24, gVar, y7);
            if (iE1 > this.f9580F) {
                throw new IllegalArgumentException(r.h(O.D("Item at position ", i24, " requires ", iE1, " spans but GridLayoutManager has only "), this.f9580F, " spans."));
            }
            iD1 -= iE1;
            if (iD1 < 0 || (viewB = c0321u.b(gVar)) == null) {
                if (i23 == 0) {
                    fVar.f4769b = true;
                    return;
                }
                if (z9) {
                    i10 = i23;
                    i9 = 0;
                    i11 = 1;
                } else {
                    i9 = i23 - 1;
                    i10 = -1;
                    i11 = -1;
                }
                i12 = 0;
                while (i9 != i10) {
                    View view4 = this.f9582H[i9];
                    C0319s c0319s3 = (C0319s) view4.getLayoutParams();
                    int iE2 = E1(L.M(view4), gVar, y7);
                    c0319s3.f5512f = iE2;
                    c0319s3.f5511e = i12;
                    i12 += iE2;
                    i9 += i11;
                }
                f8 = 0.0f;
                i14 = 0;
                for (i13 = 0; i13 < i23; i13++) {
                    view3 = this.f9582H[i13];
                    if (c0321u.f5532k == null) {
                        z7 = false;
                        if (z9) {
                            b(-1, view3, true);
                        } else {
                            b(0, view3, true);
                        }
                    } else if (z9) {
                        z7 = false;
                        b(-1, view3, false);
                    } else {
                        z7 = false;
                        b(0, view3, false);
                    }
                    d(this.f9586L, view3);
                    F1(i8, view3, z7);
                    iC2 = this.f9596r.c(view3);
                    if (iC2 > i14) {
                        i14 = iC2;
                    }
                    fS = (this.f9596r.s(view3) * 1.0f) / ((C0319s) view3.getLayoutParams()).f5512f;
                    if (fS > f8) {
                        f8 = fS;
                    }
                }
                if (z8) {
                    v1(Math.max(Math.round(f8 * this.f9580F), i22));
                    i14 = 0;
                    for (i19 = 0; i19 < i23; i19++) {
                        View view5 = this.f9582H[i19];
                        F1(1073741824, view5, true);
                        iC = this.f9596r.c(view5);
                        if (iC > i14) {
                            i14 = iC;
                        }
                    }
                }
                for (i15 = 0; i15 < i23; i15++) {
                    view2 = this.f9582H[i15];
                    if (this.f9596r.c(view2) != i14) {
                        c0319s2 = (C0319s) view2.getLayoutParams();
                        Rect rect = c0319s2.f5295b;
                        i17 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0319s2).topMargin + ((ViewGroup.MarginLayoutParams) c0319s2).bottomMargin;
                        i18 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0319s2).leftMargin + ((ViewGroup.MarginLayoutParams) c0319s2).rightMargin;
                        iB1 = B1(c0319s2.f5511e, c0319s2.f5512f);
                        if (this.f9594p == 1) {
                            iY2 = L.y(iB1, 1073741824, i18, ((ViewGroup.MarginLayoutParams) c0319s2).width, false);
                            iY = View.MeasureSpec.makeMeasureSpec(i14 - i17, 1073741824);
                        } else {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14 - i18, 1073741824);
                            iY = L.y(iB1, 1073741824, i17, ((ViewGroup.MarginLayoutParams) c0319s2).height, false);
                            iY2 = iMakeMeasureSpec;
                        }
                        if (P0(view2, iY2, iY, (M) view2.getLayoutParams())) {
                            view2.measure(iY2, iY);
                        }
                    }
                }
                fVar.f4768a = i14;
                if (this.f9594p == 1) {
                    if (c0321u.f5527f == -1) {
                        int i25 = c0321u.f5523b;
                        iJ = i25 - i14;
                        iS = i25;
                    } else {
                        int i26 = c0321u.f5523b;
                        iS = i26 + i14;
                        iJ = i26;
                    }
                    iL = 0;
                    iS2 = 0;
                } else if (c0321u.f5527f == -1) {
                    iS2 = c0321u.f5523b;
                    iL = iS2 - i14;
                    iJ = 0;
                    iS = 0;
                } else {
                    int i27 = c0321u.f5523b;
                    iL = i27;
                    iS = 0;
                    iS2 = i27 + i14;
                    iJ = 0;
                }
                for (i16 = 0; i16 < i23; i16++) {
                    view = this.f9582H[i16];
                    c0319s = (C0319s) view.getLayoutParams();
                    if (this.f9594p == 1) {
                        iL = L() + this.f9581G[c0319s.f5511e];
                        iS2 = this.f9596r.s(view) + iL;
                    } else if (j1()) {
                        int iJ2 = J() + this.f9581G[this.f9580F - c0319s.f5511e];
                        iS = iJ2;
                        iJ = iJ2 - this.f9596r.s(view);
                    } else {
                        iJ = J() + this.f9581G[c0319s.f5511e];
                        iS = this.f9596r.s(view) + iJ;
                    }
                    L.V(view, iJ, iL, iS, iS2);
                    if (c0319s.f5294a.j() || c0319s.f5294a.m()) {
                        fVar.f4770c = true;
                    }
                    fVar.f4771d = view.hasFocusable() | fVar.f4771d;
                }
                Arrays.fill(this.f9582H, (Object) null);
            }
            this.f9582H[i23] = viewB;
        }
        if (i23 == 0) {
            fVar.f4769b = true;
            return;
        }
        if (z9) {
            i10 = i23;
            i9 = 0;
            i11 = 1;
        } else {
            i9 = i23 - 1;
            i10 = -1;
            i11 = -1;
        }
        i12 = 0;
        while (i9 != i10) {
            View view6 = this.f9582H[i9];
            C0319s c0319s4 = (C0319s) view6.getLayoutParams();
            int iE3 = E1(L.M(view6), gVar, y7);
            c0319s4.f5512f = iE3;
            c0319s4.f5511e = i12;
            i12 += iE3;
            i9 += i11;
        }
        f8 = 0.0f;
        i14 = 0;
        while (i13 < i23) {
            view3 = this.f9582H[i13];
            if (c0321u.f5532k == null) {
                z7 = false;
                if (z9) {
                    b(-1, view3, true);
                } else {
                    b(0, view3, true);
                }
            } else if (z9) {
                z7 = false;
                b(-1, view3, false);
            } else {
                z7 = false;
                b(0, view3, false);
            }
            d(this.f9586L, view3);
            F1(i8, view3, z7);
            iC2 = this.f9596r.c(view3);
            if (iC2 > i14) {
                i14 = iC2;
            }
            fS = (this.f9596r.s(view3) * 1.0f) / ((C0319s) view3.getLayoutParams()).f5512f;
            if (fS > f8) {
                f8 = fS;
            }
        }
        if (z8) {
            v1(Math.max(Math.round(f8 * this.f9580F), i22));
            i14 = 0;
            while (i19 < i23) {
                View view7 = this.f9582H[i19];
                F1(1073741824, view7, true);
                iC = this.f9596r.c(view7);
                if (iC > i14) {
                    i14 = iC;
                }
            }
        }
        while (i15 < i23) {
            view2 = this.f9582H[i15];
            if (this.f9596r.c(view2) != i14) {
                c0319s2 = (C0319s) view2.getLayoutParams();
                Rect rect2 = c0319s2.f5295b;
                i17 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0319s2).topMargin + ((ViewGroup.MarginLayoutParams) c0319s2).bottomMargin;
                i18 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) c0319s2).leftMargin + ((ViewGroup.MarginLayoutParams) c0319s2).rightMargin;
                iB1 = B1(c0319s2.f5511e, c0319s2.f5512f);
                if (this.f9594p == 1) {
                    iY2 = L.y(iB1, 1073741824, i18, ((ViewGroup.MarginLayoutParams) c0319s2).width, false);
                    iY = View.MeasureSpec.makeMeasureSpec(i14 - i17, 1073741824);
                } else {
                    int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14 - i18, 1073741824);
                    iY = L.y(iB1, 1073741824, i17, ((ViewGroup.MarginLayoutParams) c0319s2).height, false);
                    iY2 = iMakeMeasureSpec2;
                }
                if (P0(view2, iY2, iY, (M) view2.getLayoutParams())) {
                    view2.measure(iY2, iY);
                }
            }
        }
        fVar.f4768a = i14;
        if (this.f9594p == 1) {
            if (c0321u.f5527f == -1) {
                int i28 = c0321u.f5523b;
                iJ = i28 - i14;
                iS = i28;
            } else {
                int i29 = c0321u.f5523b;
                iS = i29 + i14;
                iJ = i29;
            }
            iL = 0;
            iS2 = 0;
        } else if (c0321u.f5527f == -1) {
            iS2 = c0321u.f5523b;
            iL = iS2 - i14;
            iJ = 0;
            iS = 0;
        } else {
            int i210 = c0321u.f5523b;
            iL = i210;
            iS = 0;
            iS2 = i210 + i14;
            iJ = 0;
        }
        while (i16 < i23) {
            view = this.f9582H[i16];
            c0319s = (C0319s) view.getLayoutParams();
            if (this.f9594p == 1) {
                iL = L() + this.f9581G[c0319s.f5511e];
                iS2 = this.f9596r.s(view) + iL;
            } else if (j1()) {
                int iJ3 = J() + this.f9581G[this.f9580F - c0319s.f5511e];
                iS = iJ3;
                iJ = iJ3 - this.f9596r.s(view);
            } else {
                iJ = J() + this.f9581G[c0319s.f5511e];
                iS = this.f9596r.s(view) + iJ;
            }
            L.V(view, iJ, iL, iS, iS2);
            if (c0319s.f5294a.j()) {
                fVar.f4770c = true;
            } else {
                fVar.f4770c = true;
            }
            fVar.f4771d = view.hasFocusable() | fVar.f4771d;
        }
        Arrays.fill(this.f9582H, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final int l(Y y7) {
        return V0(y7);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void l1(g gVar, Y y7, U u7, int i8) {
        G1();
        if (y7.b() > 0 && !y7.f5320g) {
            boolean z7 = i8 == 1;
            int iD1 = D1(u7.f830b, gVar, y7);
            if (z7) {
                while (iD1 > 0) {
                    int i9 = u7.f830b;
                    if (i9 <= 0) {
                        break;
                    }
                    int i10 = i9 - 1;
                    u7.f830b = i10;
                    iD1 = D1(i10, gVar, y7);
                }
            } else {
                int iB = y7.b() - 1;
                int i11 = u7.f830b;
                while (i11 < iB) {
                    int i12 = i11 + 1;
                    int iD2 = D1(i12, gVar, y7);
                    if (iD2 <= iD1) {
                        break;
                    }
                    i11 = i12;
                    iD1 = iD2;
                }
                u7.f830b = i11;
            }
        }
        w1();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final int m(Y y7) {
        return W0(y7);
    }

    @Override // O1.L
    public final void m0(RecyclerView recyclerView, int i8, int i9) {
        e1 e1Var = this.f9585K;
        e1Var.e();
        ((SparseIntArray) e1Var.f26254e).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final void n0(g gVar, Y y7) {
        boolean z7 = y7.f5320g;
        SparseIntArray sparseIntArray = this.f9584J;
        SparseIntArray sparseIntArray2 = this.f9583I;
        if (z7) {
            int iX = x();
            for (int i8 = 0; i8 < iX; i8++) {
                C0319s c0319s = (C0319s) w(i8).getLayoutParams();
                int iD = c0319s.f5294a.d();
                sparseIntArray2.put(iD, c0319s.f5512f);
                sparseIntArray.put(iD, c0319s.f5511e);
            }
        }
        super.n0(gVar, y7);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final int o(Y y7) {
        return V0(y7);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final void o0(Y y7) {
        View viewS;
        super.o0(y7);
        this.f9579E = false;
        int i8 = this.f9587M;
        if (i8 == -1 || (viewS = s(i8)) == null) {
            return;
        }
        viewS.sendAccessibilityEvent(67108864);
        this.f9587M = -1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final int p(Y y7) {
        return W0(y7);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void r1(boolean z7) {
        if (z7) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.r1(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final M t() {
        return this.f9594p == 0 ? new C0319s(-2, -1) : new C0319s(-1, -2);
    }

    @Override // O1.L
    public final M u(Context context, AttributeSet attributeSet) {
        C0319s c0319s = new C0319s(context, attributeSet);
        c0319s.f5511e = -1;
        c0319s.f5512f = 0;
        return c0319s;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x01aa A[EDGE_INSN: B:126:0x01aa->B:170:0x027c BREAK  A[LOOP:2: B:130:0x01ba->B:139:0x01e3]] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, O1.L
    public final boolean u0(int i8, Bundle bundle) {
        View viewW;
        c0 c0VarK;
        int iIntValue;
        int i9;
        if (i8 != d.f5015j.a() || i8 == -1) {
            if (i8 != 16908343 || bundle == null) {
                return super.u0(i8, bundle);
            }
            int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
            int i11 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
            if (i10 != -1 && i11 != -1) {
                int iA = this.f5280b.f9644S.a();
                int i12 = 0;
                while (true) {
                    if (i12 >= iA) {
                        i12 = -1;
                        break;
                    }
                    RecyclerView recyclerView = this.f5280b;
                    int iD1 = D1(i12, recyclerView.f9624I, recyclerView.f9635N0);
                    RecyclerView recyclerView2 = this.f5280b;
                    int iC1 = C1(i12, recyclerView2.f9624I, recyclerView2.f9635N0);
                    if (this.f9594p != 1) {
                        if (iD1 == i10 && iC1 == i11) {
                            break;
                        }
                        i12++;
                    } else {
                        if (iD1 == i11 && iC1 == i10) {
                            break;
                        }
                        i12++;
                    }
                }
                if (i12 > -1) {
                    this.f9602x = i12;
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
        int i13 = 0;
        while (true) {
            if (i13 >= x()) {
                viewW = null;
                break;
            }
            View viewW2 = w(i13);
            Objects.requireNonNull(viewW2);
            if (viewW2.isAccessibilityFocused()) {
                viewW = w(i13);
                break;
            }
            i13++;
        }
        if (viewW == null || bundle == null) {
            return false;
        }
        int i14 = bundle.getInt("android.view.accessibility.action.ARGUMENT_DIRECTION_INT", -1);
        if (!f9578P.contains(Integer.valueOf(i14)) || (c0VarK = this.f5280b.K(viewW)) == null) {
            return false;
        }
        RecyclerView recyclerView3 = c0VarK.f5370X;
        int iJ = recyclerView3 == null ? -1 : recyclerView3.J(c0VarK);
        int iY1 = y1(iJ);
        int iX1 = x1(iJ);
        if (iY1 >= 0 && iX1 >= 0) {
            if (!z1(iJ).contains(Integer.valueOf(this.f9588N)) || !A1(x1(iJ), iJ).contains(Integer.valueOf(this.f9589O))) {
                this.f9588N = iY1;
                this.f9589O = iX1;
            }
            int i15 = this.f9588N;
            if (i15 == -1) {
                i15 = iY1;
            }
            int i16 = this.f9589O;
            if (i16 != -1) {
                iX1 = i16;
            }
            if (i14 == 17) {
                iIntValue = iJ - 1;
                while (true) {
                    if (iIntValue >= 0) {
                        int iY2 = y1(iIntValue);
                        int iX2 = x1(iIntValue);
                        if (iY2 >= 0 && iX2 >= 0) {
                            if (this.f9594p != 1) {
                                if (z1(iIntValue).contains(Integer.valueOf(i15)) && iX2 < iX1) {
                                    this.f9589O = iX2;
                                    break;
                                }
                                iIntValue--;
                            } else {
                                if ((iY2 == i15 && iX2 < iX1) || iY2 < i15) {
                                    this.f9588N = iY2;
                                    this.f9589O = iX2;
                                    break;
                                }
                                iIntValue--;
                            }
                        }
                    }
                    iIntValue = -1;
                    break;
                }
            }
            if (i14 == 33) {
                iIntValue = iJ - 1;
                while (true) {
                    if (iIntValue >= 0) {
                        int iY3 = y1(iIntValue);
                        int iX3 = x1(iIntValue);
                        if (iY3 >= 0 && iX3 >= 0) {
                            if (this.f9594p != 1) {
                                if (iY3 < i15 && iX3 == iX1) {
                                    this.f9588N = ((Integer) Collections.max(z1(iIntValue))).intValue();
                                    break;
                                }
                                iIntValue--;
                            } else {
                                if (iY3 < i15 && A1(x1(iIntValue), iIntValue).contains(Integer.valueOf(iX1))) {
                                    this.f9588N = iY3;
                                    break;
                                }
                                iIntValue--;
                            }
                        }
                    }
                    iIntValue = -1;
                    break;
                }
            }
            if (i14 == 66) {
                iIntValue = iJ + 1;
                while (true) {
                    if (iIntValue < H()) {
                        int iY4 = y1(iIntValue);
                        int iX4 = x1(iIntValue);
                        if (iY4 >= 0 && iX4 >= 0) {
                            if (this.f9594p != 1) {
                                if (iX4 > iX1 && z1(iIntValue).contains(Integer.valueOf(i15))) {
                                    this.f9589O = iX4;
                                    break;
                                }
                                iIntValue++;
                            } else {
                                if ((iY4 == i15 && iX4 > iX1) || iY4 > i15) {
                                    this.f9588N = iY4;
                                    this.f9589O = iX4;
                                    break;
                                }
                                iIntValue++;
                            }
                        }
                    }
                    iIntValue = -1;
                    break;
                }
            }
            if (i14 == 130) {
                iIntValue = iJ + 1;
                while (true) {
                    if (iIntValue < H()) {
                        int iY5 = y1(iIntValue);
                        int iX5 = x1(iIntValue);
                        if (iY5 >= 0 && iX5 >= 0) {
                            if (this.f9594p != 1) {
                                if (iY5 > i15 && iX5 == iX1) {
                                    this.f9588N = y1(iIntValue);
                                    break;
                                }
                                iIntValue++;
                            } else {
                                if (iY5 > i15 && (iX5 == iX1 || A1(x1(iIntValue), iIntValue).contains(Integer.valueOf(iX1)))) {
                                    this.f9588N = iY5;
                                    break;
                                }
                                iIntValue++;
                            }
                        }
                    }
                    iIntValue = -1;
                    break;
                }
            }
            return false;
            if (iIntValue == -1 && (i9 = this.f9594p) == 0) {
                if (i14 != 17) {
                    if (i14 == 66) {
                        if (iY1 < 0 || i9 == 1) {
                            iIntValue = -1;
                            break;
                        }
                        TreeMap treeMap = new TreeMap();
                        int i17 = 0;
                        loop5: while (true) {
                            if (i17 < H()) {
                                Iterator it = z1(i17).iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        Integer num = (Integer) it.next();
                                        if (num.intValue() >= 0) {
                                            if (!treeMap.containsKey(num)) {
                                                treeMap.put(num, Integer.valueOf(i17));
                                            }
                                        }
                                    } else {
                                        i17++;
                                    }
                                }
                            } else {
                                Iterator it2 = treeMap.keySet().iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        Integer num2 = (Integer) it2.next();
                                        int iIntValue2 = num2.intValue();
                                        if (iIntValue2 > iY1) {
                                            iIntValue = ((Integer) treeMap.get(num2)).intValue();
                                            this.f9588N = iIntValue2;
                                            this.f9589O = 0;
                                            break;
                                        }
                                    }
                                }
                            }
                            iIntValue = -1;
                            break;
                        }
                    }
                } else {
                    if (iY1 < 0 || i9 == 1) {
                        iIntValue = -1;
                        break;
                    }
                    TreeMap treeMap2 = new TreeMap(Collections.reverseOrder());
                    int i18 = 0;
                    loop2: while (true) {
                        if (i18 < H()) {
                            Iterator it3 = z1(i18).iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    Integer num3 = (Integer) it3.next();
                                    if (num3.intValue() >= 0) {
                                        treeMap2.put(num3, Integer.valueOf(i18));
                                    }
                                } else {
                                    i18++;
                                }
                            }
                        } else {
                            Iterator it4 = treeMap2.keySet().iterator();
                            while (true) {
                                if (it4.hasNext()) {
                                    Integer num4 = (Integer) it4.next();
                                    int iIntValue3 = num4.intValue();
                                    if (iIntValue3 < iY1) {
                                        iIntValue = ((Integer) treeMap2.get(num4)).intValue();
                                        this.f9588N = iIntValue3;
                                        this.f9589O = x1(iIntValue);
                                        break;
                                    }
                                }
                            }
                        }
                        iIntValue = -1;
                        break;
                    }
                }
            }
            if (iIntValue != -1) {
                G0(iIntValue);
                this.f9587M = iIntValue;
                return true;
            }
        }
        return false;
    }

    @Override // O1.L
    public final M v(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C0319s c0319s = new C0319s((ViewGroup.MarginLayoutParams) layoutParams);
            c0319s.f5511e = -1;
            c0319s.f5512f = 0;
            return c0319s;
        }
        C0319s c0319s2 = new C0319s(layoutParams);
        c0319s2.f5511e = -1;
        c0319s2.f5512f = 0;
        return c0319s2;
    }

    public final void v1(int i8) {
        int i9;
        int[] iArr = this.f9581G;
        int i10 = this.f9580F;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i8) {
            iArr = new int[i10 + 1];
        }
        int i11 = 0;
        iArr[0] = 0;
        int i12 = i8 / i10;
        int i13 = i8 % i10;
        int i14 = 0;
        for (int i15 = 1; i15 <= i10; i15++) {
            i11 += i13;
            if (i11 <= 0 || i10 - i11 >= i13) {
                i9 = i12;
            } else {
                i9 = i12 + 1;
                i11 -= i10;
            }
            i14 += i9;
            iArr[i15] = i14;
        }
        this.f9581G = iArr;
    }

    public final void w1() {
        View[] viewArr = this.f9582H;
        if (viewArr == null || viewArr.length != this.f9580F) {
            this.f9582H = new View[this.f9580F];
        }
    }

    public final int x1(int i8) {
        if (this.f9594p == 0) {
            RecyclerView recyclerView = this.f5280b;
            return C1(i8, recyclerView.f9624I, recyclerView.f9635N0);
        }
        RecyclerView recyclerView2 = this.f5280b;
        return D1(i8, recyclerView2.f9624I, recyclerView2.f9635N0);
    }

    public final int y1(int i8) {
        if (this.f9594p == 1) {
            RecyclerView recyclerView = this.f5280b;
            return C1(i8, recyclerView.f9624I, recyclerView.f9635N0);
        }
        RecyclerView recyclerView2 = this.f5280b;
        return D1(i8, recyclerView2.f9624I, recyclerView2.f9635N0);
    }

    @Override // O1.L
    public final int z(g gVar, Y y7) {
        if (this.f9594p == 1) {
            return Math.min(this.f9580F, H());
        }
        if (y7.b() < 1) {
            return 0;
        }
        return C1(y7.b() - 1, gVar, y7) + 1;
    }

    public final HashSet z1(int i8) {
        return A1(y1(i8), i8);
    }
}
