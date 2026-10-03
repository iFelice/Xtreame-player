package androidx.appcompat.widget;

import G.b;
import N.C;
import N.E;
import N.InterfaceC0267p;
import N.InterfaceC0268q;
import N.N;
import N.X;
import N.Y;
import N.Z;
import N.a0;
import N.h0;
import N.i0;
import N.r;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.google.android.gms.common.api.d;
import java.util.WeakHashMap;
import p039f.y;
import p071j.k;
import p079k.o;
import p086l.C3022d;
import p086l.C3028g;
import p086l.C3030h;
import p086l.C3042n;
import p086l.InterfaceC3026f;
import p086l.InterfaceC3047p0;
import p086l.InterfaceC3049q0;
import p086l.RunnableC3024e;
import p086l.j1;
import p086l.o1;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC3047p0, InterfaceC0267p, InterfaceC0268q {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final int[] f8789l0 = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final i0 f8790m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final Rect f8791n0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f8792G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f8793H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ContentFrameLayout f8794I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ActionBarContainer f8795J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC3049q0 f8796K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Drawable f8797L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f8798M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f8799N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f8800O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f8801P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f8802Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f8803R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Rect f8804S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Rect f8805T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final Rect f8806U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final Rect f8807V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public i0 f8808W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public i0 f8809a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public i0 f8810b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public i0 f8811c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public InterfaceC3026f f8812d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public OverScroller f8813e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public ViewPropertyAnimator f8814f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final C3022d f8815g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final RunnableC3024e f8816h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final RunnableC3024e f8817i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final r f8818j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final C3030h f8819k0;

    static {
        a0 y7;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30) {
            y7 = new Z();
        } else {
            y7 = i8 >= 29 ? new Y() : new X();
        }
        y7.d(b.a(0, 1, 0, 1));
        f8790m0 = y7.b();
        f8791n0 = new Rect();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8793H = 0;
        this.f8804S = new Rect();
        this.f8805T = new Rect();
        this.f8806U = new Rect();
        this.f8807V = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        i0 i0Var = i0.f4900b;
        this.f8808W = i0Var;
        this.f8809a0 = i0Var;
        this.f8810b0 = i0Var;
        this.f8811c0 = i0Var;
        this.f8815g0 = new C3022d(this, 0);
        this.f8816h0 = new RunnableC3024e(this, 0);
        this.f8817i0 = new RunnableC3024e(this, 1);
        i(context);
        this.f8818j0 = new r();
        C3030h c3030h = new C3030h(context);
        c3030h.setWillNotDraw(true);
        this.f8819k0 = c3030h;
        addView(c3030h);
    }

    public static boolean g(FrameLayout frameLayout, Rect rect, boolean z7) {
        boolean z8;
        C3028g c3028g = (C3028g) frameLayout.getLayoutParams();
        int i8 = ((ViewGroup.MarginLayoutParams) c3028g).leftMargin;
        int i9 = rect.left;
        if (i8 != i9) {
            ((ViewGroup.MarginLayoutParams) c3028g).leftMargin = i9;
            z8 = true;
        } else {
            z8 = false;
        }
        int i10 = ((ViewGroup.MarginLayoutParams) c3028g).topMargin;
        int i11 = rect.top;
        if (i10 != i11) {
            ((ViewGroup.MarginLayoutParams) c3028g).topMargin = i11;
            z8 = true;
        }
        int i12 = ((ViewGroup.MarginLayoutParams) c3028g).rightMargin;
        int i13 = rect.right;
        if (i12 != i13) {
            ((ViewGroup.MarginLayoutParams) c3028g).rightMargin = i13;
            z8 = true;
        }
        if (z7) {
            int i14 = ((ViewGroup.MarginLayoutParams) c3028g).bottomMargin;
            int i15 = rect.bottom;
            if (i14 != i15) {
                ((ViewGroup.MarginLayoutParams) c3028g).bottomMargin = i15;
                return true;
            }
        }
        return z8;
    }

    @Override // N.InterfaceC0268q
    public final void a(View view, int i8, int i9, int i10, int i11, int i12, int[] iArr) {
        b(view, i8, i9, i10, i11, i12);
    }

    @Override // N.InterfaceC0267p
    public final void b(View view, int i8, int i9, int i10, int i11, int i12) {
        if (i12 == 0) {
            onNestedScroll(view, i8, i9, i10, i11);
        }
    }

    @Override // N.InterfaceC0267p
    public final boolean c(View view, View view2, int i8, int i9) {
        return i9 == 0 && onStartNestedScroll(view, view2, i8);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C3028g;
    }

    @Override // N.InterfaceC0267p
    public final void d(View view, View view2, int i8, int i9) {
        if (i9 == 0) {
            onNestedScrollAccepted(view, view2, i8);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f8797L != null) {
            if (this.f8795J.getVisibility() == 0) {
                translationY = (int) (this.f8795J.getTranslationY() + this.f8795J.getBottom() + 0.5f);
            } else {
                translationY = 0;
            }
            this.f8797L.setBounds(0, translationY, getWidth(), this.f8797L.getIntrinsicHeight() + translationY);
            this.f8797L.draw(canvas);
        }
    }

    @Override // N.InterfaceC0267p
    public final void e(View view, int i8) {
        if (i8 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // N.InterfaceC0267p
    public final void f(View view, int i8, int i9, int[] iArr, int i10) {
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C3028g(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C3028g(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f8795J;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        r rVar = this.f8818j0;
        return rVar.f4920I | rVar.f4919H;
    }

    public CharSequence getTitle() {
        k();
        return ((o1) this.f8796K).f26323a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.f8816h0);
        removeCallbacks(this.f8817i0);
        ViewPropertyAnimator viewPropertyAnimator = this.f8814f0;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f8789l0);
        this.f8792G = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f8797L = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f8813e0 = new OverScroller(context);
    }

    public final void j(int i8) {
        k();
        if (i8 == 2) {
            ((o1) this.f8796K).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i8 == 5) {
            ((o1) this.f8796K).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i8 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        InterfaceC3049q0 wrapper;
        if (this.f8794I == null) {
            this.f8794I = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f8795J = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof InterfaceC3049q0) {
                wrapper = (InterfaceC3049q0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f8796K = wrapper;
        }
    }

    public final void l(o oVar, y yVar) {
        k();
        o1 o1Var = (o1) this.f8796K;
        C3042n c3042n = o1Var.f26335m;
        Toolbar toolbar = o1Var.f26323a;
        if (c3042n == null) {
            o1Var.f26335m = new C3042n(toolbar.getContext());
        }
        C3042n c3042n2 = o1Var.f26335m;
        c3042n2.f26299K = yVar;
        if (oVar == null && toolbar.f8893G == null) {
            return;
        }
        toolbar.f();
        o oVar2 = toolbar.f8893G.f8820V;
        if (oVar2 == oVar) {
            return;
        }
        if (oVar2 != null) {
            oVar2.r(toolbar.f8929t0);
            oVar2.r(toolbar.f8930u0);
        }
        if (toolbar.f8930u0 == null) {
            toolbar.f8930u0 = new j1(toolbar);
        }
        c3042n2.f26311W = true;
        if (oVar != null) {
            oVar.b(c3042n2, toolbar.f8902P);
            oVar.b(toolbar.f8930u0, toolbar.f8902P);
        } else {
            c3042n2.k(toolbar.f8902P, null);
            toolbar.f8930u0.k(toolbar.f8902P, null);
            c3042n2.i();
            toolbar.f8930u0.i();
        }
        toolbar.f8893G.setPopupTheme(toolbar.f8903Q);
        toolbar.f8893G.setPresenter(c3042n2);
        toolbar.f8929t0 = c3042n2;
        toolbar.t();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        i0 i0VarH = i0.h(windowInsets, this);
        boolean zG = g(this.f8795J, new Rect(i0VarH.b(), i0VarH.d(), i0VarH.c(), i0VarH.a()), false);
        WeakHashMap weakHashMap = N.f4843a;
        Rect rect = this.f8804S;
        E.b(this, i0VarH, rect);
        int i8 = rect.left;
        int i9 = rect.top;
        int i10 = rect.right;
        int i11 = rect.bottom;
        h0 h0Var = i0VarH.f4901a;
        i0 i0VarH2 = h0Var.h(i8, i9, i10, i11);
        this.f8808W = i0VarH2;
        if (!this.f8809a0.equals(i0VarH2)) {
            this.f8809a0 = this.f8808W;
            zG = true;
        }
        Rect rect2 = this.f8805T;
        if (rect2.equals(rect)) {
            if (zG) {
            }
            return h0Var.a().f4901a.c().f4901a.b().g();
        }
        rect2.set(rect);
        requestLayout();
        return h0Var.a().f4901a.c().f4901a.b().g();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = N.f4843a;
        C.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                C3028g c3028g = (C3028g) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = ((ViewGroup.MarginLayoutParams) c3028g).leftMargin + paddingLeft;
                int i14 = ((ViewGroup.MarginLayoutParams) c3028g).topMargin + paddingTop;
                childAt.layout(i13, i14, measuredWidth + i13, measuredHeight + i14);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:24:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:27:0x00da  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e0  */
    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        int measuredHeight;
        i0 i0Var;
        int i10;
        a0 x7;
        k();
        measureChildWithMargins(this.f8795J, i8, 0, i9, 0);
        C3028g c3028g = (C3028g) this.f8795J.getLayoutParams();
        int iMax = Math.max(0, this.f8795J.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c3028g).leftMargin + ((ViewGroup.MarginLayoutParams) c3028g).rightMargin);
        int iMax2 = Math.max(0, this.f8795J.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c3028g).topMargin + ((ViewGroup.MarginLayoutParams) c3028g).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f8795J.getMeasuredState());
        WeakHashMap weakHashMap = N.f4843a;
        boolean z7 = (getWindowSystemUiVisibility() & 256) != 0;
        if (z7) {
            measuredHeight = this.f8792G;
            if (this.f8799N && this.f8795J.getTabContainer() != null) {
                measuredHeight += this.f8792G;
            }
        } else {
            measuredHeight = this.f8795J.getVisibility() != 8 ? this.f8795J.getMeasuredHeight() : 0;
        }
        Rect rect = this.f8804S;
        Rect rect2 = this.f8806U;
        rect2.set(rect);
        this.f8810b0 = this.f8808W;
        if (this.f8798M || z7) {
            b bVarA = b.a(this.f8810b0.b(), this.f8810b0.d() + measuredHeight, this.f8810b0.c(), this.f8810b0.a());
            i0Var = this.f8810b0;
            i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                x7 = new Z(i0Var);
            } else if (i10 >= 29) {
                x7 = new Y(i0Var);
            } else {
                x7 = new X(i0Var);
            }
            x7.d(bVarA);
            this.f8810b0 = x7.b();
        } else {
            C3030h c3030h = this.f8819k0;
            i0 i0Var2 = f8790m0;
            Rect rect3 = this.f8807V;
            E.b(c3030h, i0Var2, rect3);
            if (!rect3.equals(f8791n0)) {
                rect2.top += measuredHeight;
                rect2.bottom = rect2.bottom;
                this.f8810b0 = this.f8810b0.f4901a.h(0, measuredHeight, 0, 0);
            } else {
                b bVarA2 = b.a(this.f8810b0.b(), this.f8810b0.d() + measuredHeight, this.f8810b0.c(), this.f8810b0.a());
                i0Var = this.f8810b0;
                i10 = Build.VERSION.SDK_INT;
                if (i10 >= 30) {
                    x7 = new Z(i0Var);
                } else if (i10 >= 29) {
                    x7 = new Y(i0Var);
                } else {
                    x7 = new X(i0Var);
                }
                x7.d(bVarA2);
                this.f8810b0 = x7.b();
            }
        }
        g(this.f8794I, rect2, true);
        if (!this.f8811c0.equals(this.f8810b0)) {
            i0 i0Var3 = this.f8810b0;
            this.f8811c0 = i0Var3;
            N.b(this.f8794I, i0Var3);
        }
        measureChildWithMargins(this.f8794I, i8, 0, i9, 0);
        C3028g c3028g2 = (C3028g) this.f8794I.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f8794I.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c3028g2).leftMargin + ((ViewGroup.MarginLayoutParams) c3028g2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f8794I.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c3028g2).topMargin + ((ViewGroup.MarginLayoutParams) c3028g2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f8794I.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i8, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i9, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f8, float f9, boolean z7) {
        if (!this.f8800O || !z7) {
            return false;
        }
        this.f8813e0.fling(0, 0, 0, (int) f9, 0, 0, Integer.MIN_VALUE, d.API_PRIORITY_OTHER);
        if (this.f8813e0.getFinalY() > this.f8795J.getHeight()) {
            h();
            this.f8817i0.run();
        } else {
            h();
            this.f8816h0.run();
        }
        this.f8801P = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f8, float f9) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i8, int i9, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i8, int i9, int i10, int i11) {
        int i12 = this.f8802Q + i9;
        this.f8802Q = i12;
        setActionBarHideOffset(i12);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i8) {
        p039f.X x7;
        k kVar;
        this.f8818j0.f4919H = i8;
        this.f8802Q = getActionBarHideOffset();
        h();
        InterfaceC3026f interfaceC3026f = this.f8812d0;
        if (interfaceC3026f == null || (kVar = (x7 = (p039f.X) interfaceC3026f).f25022e0) == null) {
            return;
        }
        kVar.a();
        x7.f25022e0 = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i8) {
        if ((i8 & 2) == 0 || this.f8795J.getVisibility() != 0) {
            return false;
        }
        return this.f8800O;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f8800O || this.f8801P) {
            return;
        }
        if (this.f8802Q <= this.f8795J.getHeight()) {
            h();
            postDelayed(this.f8816h0, 600L);
        } else {
            h();
            postDelayed(this.f8817i0, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i8) {
        super.onWindowSystemUiVisibilityChanged(i8);
        k();
        int i9 = this.f8803R ^ i8;
        this.f8803R = i8;
        boolean z7 = (i8 & 4) == 0;
        boolean z8 = (i8 & 256) != 0;
        InterfaceC3026f interfaceC3026f = this.f8812d0;
        if (interfaceC3026f != null) {
            ((p039f.X) interfaceC3026f).f25018a0 = !z8;
            if (z7 || !z8) {
                p039f.X x7 = (p039f.X) interfaceC3026f;
                if (x7.f25019b0) {
                    x7.f25019b0 = false;
                    x7.M0(true);
                }
            } else {
                p039f.X x8 = (p039f.X) interfaceC3026f;
                if (!x8.f25019b0) {
                    x8.f25019b0 = true;
                    x8.M0(true);
                }
            }
        }
        if ((i9 & 256) == 0 || this.f8812d0 == null) {
            return;
        }
        WeakHashMap weakHashMap = N.f4843a;
        C.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i8) {
        super.onWindowVisibilityChanged(i8);
        this.f8793H = i8;
        InterfaceC3026f interfaceC3026f = this.f8812d0;
        if (interfaceC3026f != null) {
            ((p039f.X) interfaceC3026f).f25017Z = i8;
        }
    }

    public void setActionBarHideOffset(int i8) {
        h();
        this.f8795J.setTranslationY(-Math.max(0, Math.min(i8, this.f8795J.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC3026f interfaceC3026f) {
        this.f8812d0 = interfaceC3026f;
        if (getWindowToken() != null) {
            ((p039f.X) this.f8812d0).f25017Z = this.f8793H;
            int i8 = this.f8803R;
            if (i8 != 0) {
                onWindowSystemUiVisibilityChanged(i8);
                WeakHashMap weakHashMap = N.f4843a;
                C.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z7) {
        this.f8799N = z7;
    }

    public void setHideOnContentScrollEnabled(boolean z7) {
        if (z7 != this.f8800O) {
            this.f8800O = z7;
            if (z7) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i8) {
        k();
        o1 o1Var = (o1) this.f8796K;
        o1Var.f26326d = i8 != 0 ? J6.r.h(o1Var.f26323a.getContext(), i8) : null;
        o1Var.c();
    }

    public void setLogo(int i8) {
        k();
        o1 o1Var = (o1) this.f8796K;
        o1Var.f26327e = i8 != 0 ? J6.r.h(o1Var.f26323a.getContext(), i8) : null;
        o1Var.c();
    }

    public void setOverlayMode(boolean z7) {
        this.f8798M = z7;
    }

    public void setShowingForActionMode(boolean z7) {
    }

    public void setUiOptions(int i8) {
    }

    @Override // p086l.InterfaceC3047p0
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((o1) this.f8796K).f26333k = callback;
    }

    @Override // p086l.InterfaceC3047p0
    public void setWindowTitle(CharSequence charSequence) {
        k();
        o1 o1Var = (o1) this.f8796K;
        if (o1Var.f26329g) {
            return;
        }
        o1Var.f26330h = charSequence;
        if ((o1Var.f26324b & 8) != 0) {
            Toolbar toolbar = o1Var.f26323a;
            toolbar.setTitle(charSequence);
            if (o1Var.f26329g) {
                N.n(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C3028g(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        o1 o1Var = (o1) this.f8796K;
        o1Var.f26326d = drawable;
        o1Var.c();
    }
}
