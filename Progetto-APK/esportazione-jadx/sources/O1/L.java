package O1;

import K3.C0234g;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0304c f5279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f5280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o0 f5281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o0 f5282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0323w f5283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5288j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5289k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5290l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5291m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5292n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5293o;

    public L() {
        J j8 = new J(this, 0);
        J j9 = new J(this, 1);
        this.f5281c = new o0(j8);
        this.f5282d = new o0(j9);
        this.f5284f = false;
        this.f5285g = false;
        this.f5286h = true;
        this.f5287i = true;
    }

    public static int D(View view) {
        Rect rect = ((M) view.getLayoutParams()).f5295b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public static int E(View view) {
        Rect rect = ((M) view.getLayoutParams()).f5295b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public static int M(View view) {
        return ((M) view.getLayoutParams()).f5294a.d();
    }

    public static K N(Context context, AttributeSet attributeSet, int i8, int i9) {
        K k8 = new K();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, N1.a.f4934a, i8, i9);
        k8.f5275a = typedArrayObtainStyledAttributes.getInt(0, 1);
        k8.f5276b = typedArrayObtainStyledAttributes.getInt(10, 1);
        k8.f5277c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        k8.f5278d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return k8;
    }

    public static boolean T(int i8, int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        if (i10 > 0 && i8 != i10) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i8;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i8;
        }
        return true;
    }

    public static void V(View view, int i8, int i9, int i10, int i11) {
        M m7 = (M) view.getLayoutParams();
        Rect rect = m7.f5295b;
        view.layout(i8 + rect.left + ((ViewGroup.MarginLayoutParams) m7).leftMargin, i9 + rect.top + ((ViewGroup.MarginLayoutParams) m7).topMargin, (i10 - rect.right) - ((ViewGroup.MarginLayoutParams) m7).rightMargin, (i11 - rect.bottom) - ((ViewGroup.MarginLayoutParams) m7).bottomMargin);
    }

    public static int h(int i8, int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i8);
        int size = View.MeasureSpec.getSize(i8);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i9, i10) : size;
        }
        return Math.min(size, Math.max(i9, i10));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int y(int i8, int i9, int i10, int i11, boolean z7) {
        int iMax = Math.max(0, i8 - i10);
        if (z7) {
            if (i11 >= 0) {
                i9 = 1073741824;
            } else if (i11 != -1 || (i9 != Integer.MIN_VALUE && (i9 == 0 || i9 != 1073741824))) {
                i9 = 0;
                i11 = 0;
            } else {
                i11 = iMax;
            }
        } else if (i11 >= 0) {
            i9 = 1073741824;
        } else {
            if (i11 != -1) {
                if (i11 == -2) {
                    i9 = (i9 == Integer.MIN_VALUE || i9 == 1073741824) ? Integer.MIN_VALUE : 0;
                } else {
                    i9 = 0;
                    i11 = 0;
                }
            }
            i11 = iMax;
        }
        return View.MeasureSpec.makeMeasureSpec(i11, i9);
    }

    public int A(View view) {
        return view.getBottom() + ((M) view.getLayoutParams()).f5295b.bottom;
    }

    public final void A0(int i8) {
        if (w(i8) != null) {
            C0304c c0304c = this.f5279a;
            B b8 = c0304c.f5347a;
            int i9 = c0304c.f5350d;
            if (i9 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i9 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int iF = c0304c.f(i8);
                View childAt = b8.f5264G.getChildAt(iF);
                if (childAt != null) {
                    c0304c.f5350d = 1;
                    c0304c.f5351e = childAt;
                    if (c0304c.f5348b.h(iF)) {
                        c0304c.l(childAt);
                    }
                    b8.h(iF);
                }
            } finally {
                c0304c.f5350d = 0;
                c0304c.f5351e = null;
            }
        }
    }

    public void B(Rect rect, View view) {
        RecyclerView.M(rect, view);
    }

    public boolean B0(RecyclerView recyclerView, View view, Rect rect, boolean z7) {
        return C0(recyclerView, view, rect, z7, false);
    }

    public int C(View view) {
        return view.getLeft() - ((M) view.getLayoutParams()).f5295b.left;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b4  */
    public final boolean C0(RecyclerView recyclerView, View view, Rect rect, boolean z7, boolean z8) {
        int iJ = J();
        int iL = L();
        int iK = this.f5292n - K();
        int I7 = this.f5293o - I();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i8 = left - iJ;
        int iMin = Math.min(0, i8);
        int i9 = top - iL;
        int iMin2 = Math.min(0, i9);
        int i10 = iWidth - iK;
        int iMax = Math.max(0, i10);
        int iMax2 = Math.max(0, iHeight - I7);
        if (this.f5280b.getLayoutDirection() != 1) {
            if (iMin == 0) {
                iMin = Math.min(i8, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i10);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i9, iMax2);
        }
        if (z8) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int iJ2 = J();
                int iL2 = L();
                int iK2 = this.f5292n - K();
                int I8 = this.f5293o - I();
                Rect rect2 = this.f5280b.f9638P;
                B(rect2, focusedChild);
                if (rect2.left - iMax < iK2 && rect2.right - iMax > iJ2 && rect2.top - iMin2 < I8 && rect2.bottom - iMin2 > iL2) {
                    if (iMax == 0) {
                    }
                    if (z7) {
                        recyclerView.scrollBy(iMax, iMin2);
                    } else {
                        recyclerView.j0(iMax, iMin2, false);
                    }
                    return true;
                }
            }
        } else if (iMax == 0 || iMin2 != 0) {
            if (z7) {
                recyclerView.scrollBy(iMax, iMin2);
            } else {
                recyclerView.j0(iMax, iMin2, false);
            }
            return true;
        }
        return false;
    }

    public final void D0() {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public final void E0(p142s1.g gVar, int i8, View view) {
        c0 c0VarL = RecyclerView.L(view);
        if (c0VarL.q()) {
            if (RecyclerView.f9606j1) {
                Log.d("RecyclerView", "ignoring view " + c0VarL);
                return;
            }
            return;
        }
        if (c0VarL.h() && !c0VarL.j()) {
            this.f5280b.f9644S.getClass();
            A0(i8);
            gVar.j(c0VarL);
        } else {
            w(i8);
            this.f5279a.c(i8);
            gVar.k(view);
            this.f5280b.f9632M.l(c0VarL);
        }
    }

    public int F(View view) {
        return view.getRight() + ((M) view.getLayoutParams()).f5295b.right;
    }

    public abstract int F0(int i8, p142s1.g gVar, Y y7);

    public int G(View view) {
        return view.getTop() - ((M) view.getLayoutParams()).f5295b.top;
    }

    public abstract void G0(int i8);

    public final int H() {
        RecyclerView recyclerView = this.f5280b;
        C adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.a();
        }
        return 0;
    }

    public abstract int H0(int i8, p142s1.g gVar, Y y7);

    public final int I() {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final void I0(RecyclerView recyclerView) {
        J0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public final int J() {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final void J0(int i8, int i9) {
        this.f5292n = View.MeasureSpec.getSize(i8);
        int mode = View.MeasureSpec.getMode(i8);
        this.f5290l = mode;
        if (mode == 0 && !RecyclerView.f9609m1) {
            this.f5292n = 0;
        }
        this.f5293o = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i9);
        this.f5291m = mode2;
        if (mode2 != 0 || RecyclerView.f9609m1) {
            return;
        }
        this.f5293o = 0;
    }

    public final int K() {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public void K0(Rect rect, int i8, int i9) {
        int iK = K() + J() + rect.width();
        int I7 = I() + L() + rect.height();
        RecyclerView recyclerView = this.f5280b;
        WeakHashMap weakHashMap = N.N.f4843a;
        this.f5280b.setMeasuredDimension(h(i8, iK, recyclerView.getMinimumWidth()), h(i9, I7, this.f5280b.getMinimumHeight()));
    }

    public final int L() {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public final void L0(int i8, int i9) {
        int iX = x();
        if (iX == 0) {
            this.f5280b.q(i8, i9);
            return;
        }
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MIN_VALUE;
        int i12 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        int i13 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        for (int i14 = 0; i14 < iX; i14++) {
            View viewW = w(i14);
            Rect rect = this.f5280b.f9638P;
            B(rect, viewW);
            int i15 = rect.left;
            if (i15 < i12) {
                i12 = i15;
            }
            int i16 = rect.right;
            if (i16 > i10) {
                i10 = i16;
            }
            int i17 = rect.top;
            if (i17 < i13) {
                i13 = i17;
            }
            int i18 = rect.bottom;
            if (i18 > i11) {
                i11 = i18;
            }
        }
        this.f5280b.f9638P.set(i12, i13, i10, i11);
        K0(this.f5280b.f9638P, i8, i9);
    }

    public final void M0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.f5280b = null;
            this.f5279a = null;
            this.f5292n = 0;
            this.f5293o = 0;
        } else {
            this.f5280b = recyclerView;
            this.f5279a = recyclerView.f9630L;
            this.f5292n = recyclerView.getWidth();
            this.f5293o = recyclerView.getHeight();
        }
        this.f5290l = 1073741824;
        this.f5291m = 1073741824;
    }

    public final boolean N0(View view, int i8, int i9, M m7) {
        return (!view.isLayoutRequested() && this.f5286h && T(view.getWidth(), i8, ((ViewGroup.MarginLayoutParams) m7).width) && T(view.getHeight(), i9, ((ViewGroup.MarginLayoutParams) m7).height)) ? false : true;
    }

    public int O(p142s1.g gVar, Y y7) {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView == null || recyclerView.f9644S == null || !f()) {
            return 1;
        }
        return this.f5280b.f9644S.a();
    }

    public boolean O0() {
        return false;
    }

    public final void P(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((M) view.getLayoutParams()).f5295b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.f5280b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.f5280b.f9642R;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public final boolean P0(View view, int i8, int i9, M m7) {
        return (this.f5286h && T(view.getMeasuredWidth(), i8, ((ViewGroup.MarginLayoutParams) m7).width) && T(view.getMeasuredHeight(), i9, ((ViewGroup.MarginLayoutParams) m7).height)) ? false : true;
    }

    public final boolean Q() {
        RecyclerView recyclerView = this.f5280b;
        return recyclerView != null && recyclerView.hasFocus();
    }

    public abstract void Q0(RecyclerView recyclerView, int i8);

    public boolean R() {
        return false;
    }

    public void R0(C0323w c0323w) {
        C0323w c0323w2 = this.f5283e;
        if (c0323w2 != null && c0323w != c0323w2 && c0323w2.f5541e) {
            c0323w2.h();
        }
        this.f5283e = c0323w;
        RecyclerView recyclerView = this.f5280b;
        b0 b0Var = recyclerView.f9629K0;
        b0Var.f5346M.removeCallbacks(b0Var);
        b0Var.f5342I.abortAnimation();
        if (c0323w.f5544h) {
            Log.w("RecyclerView", "An instance of " + c0323w.getClass().getSimpleName() + " was started more than once. Each instance of" + c0323w.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        c0323w.f5538b = recyclerView;
        c0323w.f5539c = this;
        int i8 = c0323w.f5537a;
        if (i8 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.f9635N0.f5314a = i8;
        c0323w.f5541e = true;
        c0323w.f5540d = true;
        c0323w.f5542f = recyclerView.f9646T.s(i8);
        c0323w.f5538b.f9629K0.b();
        c0323w.f5544h = true;
    }

    public boolean S() {
        return false;
    }

    public abstract boolean S0();

    public final boolean U() {
        C0323w c0323w = this.f5283e;
        return c0323w != null && c0323w.f5541e;
    }

    public void W(int i8) {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            int iE = recyclerView.f9630L.e();
            for (int i9 = 0; i9 < iE; i9++) {
                recyclerView.f9630L.d(i9).offsetLeftAndRight(i8);
            }
        }
    }

    public void X(int i8) {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            int iE = recyclerView.f9630L.e();
            for (int i9 = 0; i9 < iE; i9++) {
                recyclerView.f9630L.d(i9).offsetTopAndBottom(i8);
            }
        }
    }

    public boolean Z(RecyclerView recyclerView, ArrayList arrayList, int i8, int i9) {
        return false;
    }

    public final void b(int i8, View view, boolean z7) {
        c0 c0VarL = RecyclerView.L(view);
        if (z7 || c0VarL.j()) {
            this.f5280b.f9632M.a(c0VarL);
        } else {
            this.f5280b.f9632M.l(c0VarL);
        }
        M m7 = (M) view.getLayoutParams();
        if (c0VarL.r() || c0VarL.k()) {
            if (c0VarL.k()) {
                c0VarL.f5366T.m(c0VarL);
            } else {
                c0VarL.f5362P &= -33;
            }
            this.f5279a.b(view, i8, view.getLayoutParams(), false);
        } else {
            if (view.getParent() == this.f5280b) {
                int iJ = this.f5279a.j(view);
                if (i8 == -1) {
                    i8 = this.f5279a.e();
                }
                if (iJ == -1) {
                    StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb.append(this.f5280b.indexOfChild(view));
                    throw new IllegalStateException(U2.i(this.f5280b, sb));
                }
                if (iJ != i8) {
                    L l4 = this.f5280b.f9646T;
                    View viewW = l4.w(iJ);
                    if (viewW == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iJ + l4.f5280b.toString());
                    }
                    l4.w(iJ);
                    l4.f5279a.c(iJ);
                    M m8 = (M) viewW.getLayoutParams();
                    c0 c0VarL2 = RecyclerView.L(viewW);
                    if (c0VarL2.j()) {
                        l4.f5280b.f9632M.a(c0VarL2);
                    } else {
                        l4.f5280b.f9632M.l(c0VarL2);
                    }
                    l4.f5279a.b(viewW, i8, m8, c0VarL2.j());
                }
            } else {
                this.f5279a.a(i8, view, false);
                m7.f5296c = true;
                C0323w c0323w = this.f5283e;
                if (c0323w != null && c0323w.f5541e) {
                    c0323w.f5538b.getClass();
                    c0 c0VarL3 = RecyclerView.L(view);
                    if ((c0VarL3 != null ? c0VarL3.d() : -1) == c0323w.f5537a) {
                        c0323w.f5542f = view;
                        if (RecyclerView.f9606j1) {
                            Log.d("RecyclerView", "smooth scroll target view has been attached");
                        }
                    }
                }
            }
        }
        if (m7.f5297d) {
            if (RecyclerView.f9606j1) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + m7.f5294a);
            }
            c0VarL.f5353G.invalidate();
            m7.f5297d = false;
        }
    }

    public View b0(View view, int i8, p142s1.g gVar, Y y7) {
        return null;
    }

    public void c(String str) {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView != null) {
            recyclerView.k(str);
        }
    }

    public void c0(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f5280b;
        p142s1.g gVar = recyclerView.f9624I;
        Y y7 = recyclerView.f9635N0;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z7 = true;
        if (!recyclerView.canScrollVertically(1) && !this.f5280b.canScrollVertically(-1) && !this.f5280b.canScrollHorizontally(-1) && !this.f5280b.canScrollHorizontally(1)) {
            z7 = false;
        }
        accessibilityEvent.setScrollable(z7);
        C c8 = this.f5280b.f9644S;
        if (c8 != null) {
            accessibilityEvent.setItemCount(c8.a());
        }
    }

    public final void d(Rect rect, View view) {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.N(view));
        }
    }

    public void d0(p142s1.g gVar, Y y7, O.f fVar) {
        if (this.f5280b.canScrollVertically(-1) || this.f5280b.canScrollHorizontally(-1)) {
            fVar.a(8192);
            fVar.h(true);
            fVar.f(67108864, true);
        }
        if (this.f5280b.canScrollVertically(1) || this.f5280b.canScrollHorizontally(1)) {
            fVar.a(4096);
            fVar.h(true);
            fVar.f(67108864, true);
        }
        fVar.f5019a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(O(gVar, y7), z(gVar, y7), false, 0));
    }

    public abstract boolean e();

    public final void e0(View view, O.f fVar) {
        c0 c0VarL = RecyclerView.L(view);
        if (c0VarL == null || c0VarL.j() || this.f5279a.f5349c.contains(c0VarL.f5353G)) {
            return;
        }
        RecyclerView recyclerView = this.f5280b;
        f0(recyclerView.f9624I, recyclerView.f9635N0, view, fVar);
    }

    public abstract boolean f();

    public void f0(p142s1.g gVar, Y y7, View view, O.f fVar) {
        fVar.g(C0234g.a(f() ? M(view) : 0, 1, e() ? M(view) : 0, 1));
    }

    public boolean g(M m7) {
        return m7 != null;
    }

    public View g0(View view, int i8) {
        return null;
    }

    public abstract void i(int i8, int i9, Y y7, p132r.h hVar);

    public int k(Y y7) {
        return 0;
    }

    public int l(Y y7) {
        return 0;
    }

    public int m(Y y7) {
        return 0;
    }

    public void m0(RecyclerView recyclerView, int i8, int i9) {
        l0(i8, i9);
    }

    public int n(Y y7) {
        return 0;
    }

    public abstract void n0(p142s1.g gVar, Y y7);

    public int o(Y y7) {
        return 0;
    }

    public abstract void o0(Y y7);

    public int p(Y y7) {
        return 0;
    }

    public void p0(p142s1.g gVar, Y y7, int i8, int i9) {
        this.f5280b.q(i8, i9);
    }

    public final void q(p142s1.g gVar) {
        for (int iX = x() - 1; iX >= 0; iX--) {
            E0(gVar, iX, w(iX));
        }
    }

    public boolean q0(RecyclerView recyclerView, View view, View view2) {
        return U() || recyclerView.Q();
    }

    public final View r(View view) {
        View viewD;
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView == null || (viewD = recyclerView.D(view)) == null || this.f5279a.k(viewD)) {
            return null;
        }
        return viewD;
    }

    public abstract void r0(Parcelable parcelable);

    public View s(int i8) {
        int iX = x();
        for (int i9 = 0; i9 < iX; i9++) {
            View viewW = w(i9);
            c0 c0VarL = RecyclerView.L(viewW);
            if (c0VarL != null && c0VarL.d() == i8 && !c0VarL.q() && (this.f5280b.f9635N0.f5320g || !c0VarL.j())) {
                return viewW;
            }
        }
        return null;
    }

    public abstract Parcelable s0();

    public abstract M t();

    public M u(Context context, AttributeSet attributeSet) {
        return new M(context, attributeSet);
    }

    public boolean u0(int i8, Bundle bundle) {
        RecyclerView recyclerView = this.f5280b;
        return v0(recyclerView.f9624I, recyclerView.f9635N0, i8, bundle);
    }

    public M v(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof M) {
            return new M((M) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new M((ViewGroup.MarginLayoutParams) layoutParams) : new M(layoutParams);
    }

    public boolean v0(p142s1.g gVar, Y y7, int i8, Bundle bundle) {
        int iL;
        int iJ;
        float f8;
        if (this.f5280b == null) {
            return false;
        }
        int iHeight = this.f5293o;
        int iWidth = this.f5292n;
        Rect rect = new Rect();
        if (this.f5280b.getMatrix().isIdentity() && this.f5280b.getGlobalVisibleRect(rect)) {
            iHeight = rect.height();
            iWidth = rect.width();
        }
        if (i8 != 4096) {
            if (i8 != 8192) {
                iL = 0;
            } else {
                iL = this.f5280b.canScrollVertically(-1) ? -((iHeight - L()) - I()) : 0;
                if (this.f5280b.canScrollHorizontally(-1)) {
                    iJ = -((iWidth - J()) - K());
                }
            }
        } else {
            iL = this.f5280b.canScrollVertically(1) ? (iHeight - L()) - I() : 0;
            iJ = this.f5280b.canScrollHorizontally(1) ? (iWidth - J()) - K() : 0;
        }
        if (iL == 0 && iJ == 0) {
            return false;
        }
        if (bundle != null) {
            f8 = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
            if (f8 < 0.0f) {
                if (!RecyclerView.f9605i1) {
                    return false;
                }
                throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f8 + ")");
            }
        } else {
            f8 = 1.0f;
        }
        if (Float.compare(f8, Float.POSITIVE_INFINITY) != 0) {
            if (Float.compare(1.0f, f8) != 0 && Float.compare(0.0f, f8) != 0) {
                iJ = (int) (iJ * f8);
                iL = (int) (iL * f8);
            }
            this.f5280b.j0(iJ, iL, true);
            return true;
        }
        RecyclerView recyclerView = this.f5280b;
        C c8 = recyclerView.f9644S;
        if (c8 == null) {
            return false;
        }
        if (i8 == 4096) {
            recyclerView.k0(c8.a() - 1);
        } else if (i8 == 8192) {
            recyclerView.k0(0);
        }
        return true;
    }

    public final View w(int i8) {
        C0304c c0304c = this.f5279a;
        if (c0304c != null) {
            return c0304c.d(i8);
        }
        return null;
    }

    public void w0(p142s1.g gVar) {
        for (int iX = x() - 1; iX >= 0; iX--) {
            if (!RecyclerView.L(w(iX)).q()) {
                z0(iX, gVar);
            }
        }
    }

    public final int x() {
        C0304c c0304c = this.f5279a;
        if (c0304c != null) {
            return c0304c.e();
        }
        return 0;
    }

    public final void x0(p142s1.g gVar) {
        Cloneable cloneable;
        int size = ((ArrayList) gVar.f30045c).size();
        int i8 = size - 1;
        while (true) {
            cloneable = gVar.f30045c;
            if (i8 < 0) {
                break;
            }
            View view = ((c0) ((ArrayList) cloneable).get(i8)).f5353G;
            c0 c0VarL = RecyclerView.L(view);
            if (!c0VarL.q()) {
                c0VarL.p(false);
                if (c0VarL.l()) {
                    this.f5280b.removeDetachedView(view, false);
                }
                H h8 = this.f5280b.f9686v0;
                if (h8 != null) {
                    h8.d(c0VarL);
                }
                c0VarL.p(true);
                c0 c0VarL2 = RecyclerView.L(view);
                c0VarL2.f5366T = null;
                c0VarL2.f5367U = false;
                c0VarL2.f5362P &= -33;
                gVar.j(c0VarL2);
            }
            i8--;
        }
        ((ArrayList) cloneable).clear();
        ArrayList arrayList = (ArrayList) gVar.f30046d;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (size > 0) {
            this.f5280b.invalidate();
        }
    }

    public final void y0(View view, p142s1.g gVar) {
        C0304c c0304c = this.f5279a;
        B b8 = c0304c.f5347a;
        int i8 = c0304c.f5350d;
        if (i8 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i8 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            c0304c.f5350d = 1;
            c0304c.f5351e = view;
            int iIndexOfChild = b8.f5264G.indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (c0304c.f5348b.h(iIndexOfChild)) {
                    c0304c.l(view);
                }
                b8.h(iIndexOfChild);
            }
            c0304c.f5350d = 0;
            c0304c.f5351e = null;
            gVar.i(view);
        } catch (Throwable th) {
            c0304c.f5350d = 0;
            c0304c.f5351e = null;
            throw th;
        }
    }

    public int z(p142s1.g gVar, Y y7) {
        RecyclerView recyclerView = this.f5280b;
        if (recyclerView == null || recyclerView.f9644S == null || !e()) {
            return 1;
        }
        return this.f5280b.f9644S.a();
    }

    public final void z0(int i8, p142s1.g gVar) {
        View viewW = w(i8);
        A0(i8);
        gVar.i(viewW);
    }

    public void i0() {
    }

    public void Y(C c8) {
    }

    public void a0(RecyclerView recyclerView) {
    }

    public void t0(int i8) {
    }

    public void h0(int i8, int i9) {
    }

    public void j(int i8, p132r.h hVar) {
    }

    public void j0(int i8, int i9) {
    }

    public void k0(int i8, int i9) {
    }

    public void l0(int i8, int i9) {
    }
}
