package androidx.core.widget;

import E3.f;
import J.a;
import N.C0261j;
import N.C0266o;
import N.E;
import N.InterfaceC0268q;
import N.N;
import N.r;
import Q.c;
import Q.e;
import Q.g;
import Q.h;
import Z3.H;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.google.android.gms.common.api.d;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p039f.C2995j;
import p039f.S;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC0268q {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final float f9013l0 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final e f9014m0 = new e();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final int[] f9015n0 = {R.attr.fillViewport};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f9016G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f9017H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Rect f9018I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final OverScroller f9019J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final EdgeEffect f9020K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final EdgeEffect f9021L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f9022M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f9023N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f9024O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public View f9025P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f9026Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public VelocityTracker f9027R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f9028S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f9029T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f9030U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final int f9031V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f9032W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f9033a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int[] f9034b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int[] f9035c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f9036d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f9037e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public h f9038f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final r f9039g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final C0266o f9040h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float f9041i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public g f9042j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final C0261j f9043k0;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, pe.hf.black20.R.attr.nestedScrollViewStyle);
        this.f9018I = new Rect();
        this.f9023N = true;
        this.f9024O = false;
        this.f9025P = null;
        this.f9026Q = false;
        this.f9029T = true;
        this.f9033a0 = -1;
        this.f9034b0 = new int[2];
        this.f9035c0 = new int[2];
        this.f9043k0 = new C0261j(getContext(), new S(this, 15));
        int i8 = Build.VERSION.SDK_INT;
        this.f9020K = i8 >= 31 ? c.a(context, attributeSet) : new EdgeEffect(context);
        this.f9021L = i8 >= 31 ? c.a(context, attributeSet) : new EdgeEffect(context);
        this.f9016G = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f9019J = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f9030U = viewConfiguration.getScaledTouchSlop();
        this.f9031V = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f9032W = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f9015n0, pe.hf.black20.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f9039g0 = new r();
        this.f9040h0 = new C0266o(this);
        setNestedScrollingEnabled(true);
        N.m(this, f9014m0);
    }

    public static boolean l(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && l((View) parent, view2);
    }

    @Override // N.InterfaceC0268q
    public final void a(View view, int i8, int i9, int i10, int i11, int i12, int[] iArr) {
        n(i11, i12, iArr);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // N.InterfaceC0267p
    public final void b(View view, int i8, int i9, int i10, int i11, int i12) {
        n(i11, i12, null);
    }

    @Override // N.InterfaceC0267p
    public final boolean c(View view, View view2, int i8, int i9) {
        return (i8 & 2) != 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0088  */
    /* JADX WARN: Code duplicated, block: B:23:0x0097  */
    /* JADX WARN: Code duplicated, block: B:25:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00df  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fd  */
    @Override // android.view.View
    public final void computeScroll() {
        int iRound;
        int[] iArr;
        int i8;
        int scrollRange;
        int overScrollMode;
        if (this.f9019J.isFinished()) {
            return;
        }
        this.f9019J.computeScrollOffset();
        int currY = this.f9019J.getCurrY();
        int i9 = currY - this.f9037e0;
        int height = getHeight();
        EdgeEffect edgeEffect = this.f9021L;
        EdgeEffect edgeEffect2 = this.f9020K;
        if (i9 <= 0 || f.m(edgeEffect2) == 0.0f) {
            if (i9 < 0 && f.m(edgeEffect) != 0.0f) {
                float f8 = height;
                iRound = Math.round(f.u(edgeEffect, (i9 * 4.0f) / f8, 0.5f) * (f8 / 4.0f));
                if (iRound != i9) {
                    edgeEffect.finish();
                }
            }
            this.f9037e0 = currY;
            iArr = this.f9035c0;
            iArr[1] = 0;
            this.f9040h0.c(0, i9, 1, iArr, null);
            i8 = i9 - iArr[1];
            scrollRange = getScrollRange();
            if (a.b()) {
                Q.f.a(this, Math.abs(this.f9019J.getCurrVelocity()));
            }
            if (i8 != 0) {
                int scrollY = getScrollY();
                p(i8, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i10 = i8 - scrollY2;
                iArr[1] = 0;
                this.f9040h0.e(0, scrollY2, 0, i10, this.f9034b0, 1, iArr);
                i8 = i10 - iArr[1];
            }
            if (i8 != 0) {
                overScrollMode = getOverScrollMode();
                if (overScrollMode != 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    if (i8 < 0) {
                        if (edgeEffect2.isFinished()) {
                            edgeEffect2.onAbsorb((int) this.f9019J.getCurrVelocity());
                        }
                    } else if (edgeEffect.isFinished()) {
                        edgeEffect.onAbsorb((int) this.f9019J.getCurrVelocity());
                    }
                }
                this.f9019J.abortAnimation();
                w(1);
            }
            if (this.f9019J.isFinished()) {
                w(1);
            } else {
                postInvalidateOnAnimation();
            }
        }
        iRound = Math.round(f.u(edgeEffect2, ((-i9) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (iRound != i9) {
            edgeEffect2.finish();
        }
        i9 -= iRound;
        this.f9037e0 = currY;
        iArr = this.f9035c0;
        iArr[1] = 0;
        this.f9040h0.c(0, i9, 1, iArr, null);
        i8 = i9 - iArr[1];
        scrollRange = getScrollRange();
        if (a.b()) {
            Q.f.a(this, Math.abs(this.f9019J.getCurrVelocity()));
        }
        if (i8 != 0) {
            int scrollY3 = getScrollY();
            p(i8, getScrollX(), scrollY3, scrollRange);
            int scrollY4 = getScrollY() - scrollY3;
            int i11 = i8 - scrollY4;
            iArr[1] = 0;
            this.f9040h0.e(0, scrollY4, 0, i11, this.f9034b0, 1, iArr);
            i8 = i11 - iArr[1];
        }
        if (i8 != 0) {
            overScrollMode = getOverScrollMode();
            if (overScrollMode != 0) {
                if (i8 < 0) {
                    if (edgeEffect2.isFinished()) {
                        edgeEffect2.onAbsorb((int) this.f9019J.getCurrVelocity());
                    }
                } else if (edgeEffect.isFinished()) {
                    edgeEffect.onAbsorb((int) this.f9019J.getCurrVelocity());
                }
            } else if (i8 < 0) {
                if (edgeEffect2.isFinished()) {
                    edgeEffect2.onAbsorb((int) this.f9019J.getCurrVelocity());
                }
            } else if (edgeEffect.isFinished()) {
                edgeEffect.onAbsorb((int) this.f9019J.getCurrVelocity());
            }
            this.f9019J.abortAnimation();
            w(1);
        }
        if (this.f9019J.isFinished()) {
            postInvalidateOnAnimation();
        } else {
            w(1);
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // N.InterfaceC0267p
    public final void d(View view, View view2, int i8, int i9) {
        r rVar = this.f9039g0;
        if (i9 == 1) {
            rVar.f4920I = i8;
        } else {
            rVar.f4919H = i8;
        }
        this.f9040h0.h(2, i9);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || i(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f8, float f9, boolean z7) {
        return this.f9040h0.a(f8, f9, z7);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f8, float f9) {
        return this.f9040h0.b(f8, f9);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i8, int i9, int[] iArr, int[] iArr2) {
        return this.f9040h0.c(i8, i9, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i8, int i9, int i10, int i11, int[] iArr) {
        return this.f9040h0.e(i8, i9, i10, i11, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f9020K;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (getClipToPadding()) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f9021L;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (getClipToPadding()) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (getClipToPadding()) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // N.InterfaceC0267p
    public final void e(View view, int i8) {
        r rVar = this.f9039g0;
        if (i8 == 1) {
            rVar.f4920I = 0;
        } else {
            rVar.f4919H = 0;
        }
        w(i8);
    }

    @Override // N.InterfaceC0267p
    public final void f(View view, int i8, int i9, int[] iArr, int i10) {
        this.f9040h0.c(i8, i9, i10, iArr, null);
    }

    public final boolean g(int i8) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i8);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !m(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i8 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i8 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i8 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            s(maxScrollAmount, 0, 1, true);
        } else {
            Rect rect = this.f9018I;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            s(h(rect), 0, 1, true);
            viewFindNextFocus.requestFocus(i8);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && (!m(viewFindFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        r rVar = this.f9039g0;
        return rVar.f4920I | rVar.f4919H;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.f9041i0 == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f9041i0 = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f9041i0;
    }

    public final int h(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i8 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i9 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i8 - verticalFadingEdgeLength : i8;
        int i10 = rect.bottom;
        if (i10 > i9 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i9, (childAt.getBottom() + layoutParams.bottomMargin) - i8);
        }
        if (rect.top >= scrollY || i10 >= i9) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i9 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f9040h0.g(0);
    }

    public final boolean i(KeyEvent keyEvent) {
        this.f9018I.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    return keyEvent.isAltPressed() ? k(33) : g(33);
                }
                if (keyCode == 20) {
                    return keyEvent.isAltPressed() ? k(130) : g(130);
                }
                if (keyCode == 62) {
                    q(keyEvent.isShiftPressed() ? 33 : 130);
                    return false;
                }
                if (keyCode == 92) {
                    return k(33);
                }
                if (keyCode == 93) {
                    return k(130);
                }
                if (keyCode == 122) {
                    q(33);
                    return false;
                }
                if (keyCode != 123) {
                    return false;
                }
                q(130);
                return false;
            }
        }
        if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
        return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f9040h0.f4916d;
    }

    public final void j(int i8) {
        if (getChildCount() > 0) {
            this.f9019J.fling(getScrollX(), getScrollY(), 0, i8, 0, 0, Integer.MIN_VALUE, d.API_PRIORITY_OTHER, 0, 0);
            this.f9040h0.h(2, 1);
            this.f9037e0 = getScrollY();
            postInvalidateOnAnimation();
            if (a.b()) {
                Q.f.a(this, Math.abs(this.f9019J.getCurrVelocity()));
            }
        }
    }

    public final boolean k(int i8) {
        int childCount;
        boolean z7 = i8 == 130;
        int height = getHeight();
        Rect rect = this.f9018I;
        rect.top = 0;
        rect.bottom = height;
        if (z7 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return r(i8, rect.top, rect.bottom);
    }

    public final boolean m(View view, int i8, int i9) {
        Rect rect = this.f9018I;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i8 >= getScrollY() && rect.top - i8 <= getScrollY() + i9;
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i8, int i9) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i8, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i8, int i9, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i8, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i9, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final void n(int i8, int i9, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i8);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f9040h0.d(scrollY2, i8 - scrollY2, i9, iArr);
    }

    public final void o(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f9033a0) {
            int i8 = actionIndex == 0 ? 1 : 0;
            this.f9022M = (int) motionEvent.getY(i8);
            this.f9033a0 = motionEvent.getPointerId(i8);
            VelocityTracker velocityTracker = this.f9027R;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9024O = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i8;
        float axisValue;
        int width;
        if (motionEvent.getAction() == 8 && !this.f9026Q) {
            if (H.m(motionEvent, 2)) {
                i8 = 9;
                axisValue = motionEvent.getAxisValue(9);
                width = (int) motionEvent.getX();
            } else if (H.m(motionEvent, 4194304)) {
                axisValue = motionEvent.getAxisValue(26);
                width = getWidth() / 2;
                i8 = 26;
            } else {
                i8 = 0;
                axisValue = 0.0f;
                width = 0;
            }
            if (axisValue != 0.0f) {
                s(-((int) (getVerticalScrollFactorCompat() * axisValue)), width, 1, H.m(motionEvent, 8194));
                if (i8 != 0) {
                    this.f9043k0.a(motionEvent, i8);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0083  */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:62:0x0119  */
    /* JADX WARN: Code duplicated, block: B:70:0x012f  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int action = motionEvent.getAction();
        boolean z7 = true;
        if (action == 2 && this.f9026Q) {
            return true;
        }
        int i8 = action & 255;
        if (i8 == 0) {
            int y7 = (int) motionEvent.getY();
            int x7 = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y7 < childAt.getTop() - scrollY || y7 >= childAt.getBottom() - scrollY || x7 < childAt.getLeft() || x7 >= childAt.getRight()) {
                    if (!v(motionEvent) && this.f9019J.isFinished()) {
                        z7 = false;
                    }
                    this.f9026Q = z7;
                    velocityTracker = this.f9027R;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.f9027R = null;
                    }
                } else {
                    this.f9022M = y7;
                    this.f9033a0 = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker3 = this.f9027R;
                    if (velocityTracker3 == null) {
                        this.f9027R = VelocityTracker.obtain();
                    } else {
                        velocityTracker3.clear();
                    }
                    this.f9027R.addMovement(motionEvent);
                    this.f9019J.computeScrollOffset();
                    if (!v(motionEvent) && this.f9019J.isFinished()) {
                        z7 = false;
                    }
                    this.f9026Q = z7;
                    this.f9040h0.h(2, 0);
                }
            } else {
                if (!v(motionEvent)) {
                    z7 = false;
                }
                this.f9026Q = z7;
                velocityTracker = this.f9027R;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f9027R = null;
                }
            }
        } else if (i8 == 1) {
            this.f9026Q = false;
            this.f9033a0 = -1;
            velocityTracker2 = this.f9027R;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f9027R = null;
            }
            if (this.f9019J.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            w(0);
        } else if (i8 == 2) {
            int i9 = this.f9033a0;
            if (i9 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i9);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + i9 + " in onInterceptTouchEvent");
                } else {
                    int y8 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y8 - this.f9022M) > this.f9030U && (2 & getNestedScrollAxes()) == 0) {
                        this.f9026Q = true;
                        this.f9022M = y8;
                        if (this.f9027R == null) {
                            this.f9027R = VelocityTracker.obtain();
                        }
                        this.f9027R.addMovement(motionEvent);
                        this.f9036d0 = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i8 == 3) {
            this.f9026Q = false;
            this.f9033a0 = -1;
            velocityTracker2 = this.f9027R;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f9027R = null;
            }
            if (this.f9019J.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            w(0);
        } else if (i8 == 6) {
            o(motionEvent);
        }
        return this.f9026Q;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int measuredHeight;
        super.onLayout(z7, i8, i9, i10, i11);
        int i12 = 0;
        this.f9023N = false;
        View view = this.f9025P;
        if (view != null && l(view, this)) {
            View view2 = this.f9025P;
            Rect rect = this.f9018I;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        this.f9025P = null;
        if (!this.f9024O) {
            if (this.f9038f0 != null) {
                scrollTo(getScrollX(), this.f9038f0.f5998G);
                this.f9038f0 = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i11 - i9) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i12 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i12 != scrollY) {
                scrollTo(getScrollX(), i12);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f9024O = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        if (this.f9028S && View.MeasureSpec.getMode(i9) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i8, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f8, float f9, boolean z7) {
        if (z7) {
            return false;
        }
        dispatchNestedFling(0.0f, f9, true);
        j((int) f9);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f8, float f9) {
        return this.f9040h0.b(f8, f9);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i8, int i9, int[] iArr) {
        this.f9040h0.c(i8, i9, 0, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i8, int i9, int i10, int i11) {
        n(i11, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i8) {
        d(view, view2, i8, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i8, int i9, boolean z7, boolean z8) {
        super.scrollTo(i8, i9);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i8, Rect rect) {
        if (i8 == 2) {
            i8 = 130;
        } else if (i8 == 1) {
            i8 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i8) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i8);
        if (viewFindNextFocus == null || (true ^ m(viewFindNextFocus, 0, getHeight()))) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i8, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.getSuperState());
        this.f9038f0 = hVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        hVar.f5998G = getScrollY();
        return hVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i8, int i9, int i10, int i11) {
        super.onScrollChanged(i8, i9, i10, i11);
        g gVar = this.f9042j0;
        if (gVar != null) {
            u uVar = (u) gVar;
            C2995j.b(this, (View) uVar.f27278H, (View) uVar.f27279I);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i8, int i9, int i10, int i11) {
        super.onSizeChanged(i8, i9, i10, i11);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !m(viewFindFocus, 0, i11)) {
            return;
        }
        Rect rect = this.f9018I;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        int iH = h(rect);
        if (iH != 0) {
            if (this.f9029T) {
                u(0, iH, false);
            } else {
                scrollBy(0, iH);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i8) {
        return c(view, view2, i8, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        e(view, 0);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (this.f9027R == null) {
            this.f9027R = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f9036d0 = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f8 = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.f9036d0);
        C0266o c0266o = this.f9040h0;
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.f9021L;
            EdgeEffect edgeEffect2 = this.f9020K;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f9027R;
                velocityTracker.computeCurrentVelocity(1000, this.f9032W);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f9033a0);
                if (Math.abs(yVelocity) >= this.f9031V) {
                    if (f.m(edgeEffect2) != 0.0f) {
                        if (t(edgeEffect2, yVelocity)) {
                            edgeEffect2.onAbsorb(yVelocity);
                        } else {
                            j(-yVelocity);
                        }
                    } else if (f.m(edgeEffect) != 0.0f) {
                        int i8 = -yVelocity;
                        if (t(edgeEffect, i8)) {
                            edgeEffect.onAbsorb(i8);
                        } else {
                            j(i8);
                        }
                    } else {
                        int i9 = -yVelocity;
                        float f9 = i9;
                        if (!c0266o.b(0.0f, f9)) {
                            dispatchNestedFling(0.0f, f9, true);
                            j(i9);
                        }
                    }
                } else if (this.f9019J.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f9033a0 = -1;
                this.f9026Q = false;
                VelocityTracker velocityTracker2 = this.f9027R;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.f9027R = null;
                }
                w(0);
                this.f9020K.onRelease();
                this.f9021L.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f9033a0);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f9033a0 + " in onTouchEvent");
                } else {
                    int y7 = (int) motionEvent.getY(iFindPointerIndex);
                    int i10 = this.f9022M - y7;
                    float x7 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i10 / getHeight();
                    if (f.m(edgeEffect2) != 0.0f) {
                        float f10 = -f.u(edgeEffect2, -height, x7);
                        if (f.m(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                        f8 = f10;
                    } else if (f.m(edgeEffect) != 0.0f) {
                        float fU = f.u(edgeEffect, height, 1.0f - x7);
                        if (f.m(edgeEffect) == 0.0f) {
                            edgeEffect.onRelease();
                        }
                        f8 = fU;
                    }
                    int iRound = Math.round(f8 * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    int i11 = i10 - iRound;
                    if (!this.f9026Q && Math.abs(i11) > this.f9030U) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f9026Q = true;
                        i11 = i11 > 0 ? i11 - this.f9030U : i11 + this.f9030U;
                    }
                    if (this.f9026Q) {
                        int iS = s(i11, (int) motionEvent.getX(iFindPointerIndex), 0, false);
                        this.f9022M = y7 - iS;
                        this.f9036d0 += iS;
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f9026Q && getChildCount() > 0 && this.f9019J.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f9033a0 = -1;
                this.f9026Q = false;
                VelocityTracker velocityTracker3 = this.f9027R;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f9027R = null;
                }
                w(0);
                this.f9020K.onRelease();
                this.f9021L.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f9022M = (int) motionEvent.getY(actionIndex);
                this.f9033a0 = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                o(motionEvent);
                this.f9022M = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f9033a0));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f9026Q && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f9019J.isFinished()) {
                this.f9019J.abortAnimation();
                w(1);
            }
            int y8 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.f9022M = y8;
            this.f9033a0 = pointerId;
            c0266o.h(2, 0);
        }
        VelocityTracker velocityTracker4 = this.f9027R;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final boolean p(int i8, int i9, int i10, int i11) {
        boolean z7;
        boolean z8;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i12 = i10 + i8;
        if (i9 <= 0 && i9 >= 0) {
            z7 = false;
        } else {
            i9 = 0;
            z7 = true;
        }
        if (i12 > i11) {
            z8 = true;
        } else if (i12 < 0) {
            z8 = true;
            i11 = 0;
        } else {
            i11 = i12;
            z8 = false;
        }
        if (z8 && !this.f9040h0.g(1)) {
            this.f9019J.springBack(i9, i11, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i9, i11);
        return z7 || z8;
    }

    public final void q(int i8) {
        boolean z7 = i8 == 130;
        int height = getHeight();
        Rect rect = this.f9018I;
        if (z7) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i9 = rect.top;
        int i10 = height + i9;
        rect.bottom = i10;
        r(i8, i9, i10);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0068  */
    public final boolean r(int i8, int i9, int i10) {
        boolean z7;
        int height = getHeight();
        int scrollY = getScrollY();
        int i11 = height + scrollY;
        boolean z8 = i8 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z9 = false;
        for (int i12 = 0; i12 < size; i12++) {
            View view2 = focusables.get(i12);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i9 < bottom && top < i10) {
                boolean z10 = i9 < top && bottom < i10;
                if (view == null) {
                    view = view2;
                    z9 = z10;
                } else {
                    boolean z11 = (z8 && top < view.getTop()) || (!z8 && bottom > view.getBottom());
                    if (z9) {
                        if (z10 && z11) {
                            view = view2;
                        }
                    } else if (z10) {
                        view = view2;
                        z9 = true;
                    } else if (z11) {
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i9 < scrollY || i10 > i11) {
            s(z8 ? i9 - scrollY : i10 - i11, 0, 1, true);
            z7 = true;
        } else {
            z7 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i8);
        }
        return z7;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f9023N) {
            this.f9025P = view2;
        } else {
            Rect rect = this.f9018I;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z7) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iH = h(rect);
        boolean z8 = iH != 0;
        if (z8) {
            if (z7) {
                scrollBy(0, iH);
            } else {
                u(0, iH, false);
            }
        }
        return z8;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z7) {
        VelocityTracker velocityTracker;
        if (z7 && (velocityTracker = this.f9027R) != null) {
            velocityTracker.recycle();
            this.f9027R = null;
        }
        super.requestDisallowInterceptTouchEvent(z7);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f9023N = true;
        super.requestLayout();
    }

    public final int s(int i8, int i9, int i10, boolean z7) {
        int i11;
        int i12;
        VelocityTracker velocityTracker;
        C0266o c0266o = this.f9040h0;
        if (i10 == 1) {
            c0266o.h(2, i10);
        }
        boolean zC = this.f9040h0.c(0, i8, i10, this.f9035c0, this.f9034b0);
        int[] iArr = this.f9035c0;
        int[] iArr2 = this.f9034b0;
        if (zC) {
            i11 = i8 - iArr[1];
            i12 = iArr2[1];
        } else {
            i11 = i8;
            i12 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z8 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z7;
        boolean z9 = p(i11, 0, scrollY, scrollRange) && !c0266o.g(i10);
        int scrollY2 = getScrollY() - scrollY;
        iArr[1] = 0;
        this.f9040h0.e(0, scrollY2, 0, i11 - scrollY2, this.f9034b0, i10, iArr);
        int i13 = i12 + iArr2[1];
        int i14 = i11 - iArr[1];
        int i15 = scrollY + i14;
        EdgeEffect edgeEffect = this.f9021L;
        EdgeEffect edgeEffect2 = this.f9020K;
        if (i15 < 0) {
            if (z8) {
                f.u(edgeEffect2, (-i14) / getHeight(), i9 / getWidth());
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i15 > scrollRange && z8) {
            f.u(edgeEffect, i14 / getHeight(), 1.0f - (i9 / getWidth()));
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
        }
        if (!edgeEffect2.isFinished() || !edgeEffect.isFinished()) {
            postInvalidateOnAnimation();
        } else if (z9 && i10 == 0 && (velocityTracker = this.f9027R) != null) {
            velocityTracker.clear();
        }
        if (i10 == 1) {
            w(i10);
            edgeEffect2.onRelease();
            edgeEffect.onRelease();
        }
        return i13;
    }

    @Override // android.view.View
    public final void scrollTo(int i8, int i9) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i8 < 0) {
                i8 = 0;
            } else if (width + i8 > width2) {
                i8 = width2 - width;
            }
            if (height >= height2 || i9 < 0) {
                i9 = 0;
            } else if (height + i9 > height2) {
                i9 = height2 - height;
            }
            if (i8 == getScrollX() && i9 == getScrollY()) {
                return;
            }
            super.scrollTo(i8, i9);
        }
    }

    public void setFillViewport(boolean z7) {
        if (z7 != this.f9028S) {
            this.f9028S = z7;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z7) {
        C0266o c0266o = this.f9040h0;
        if (c0266o.f4916d) {
            WeakHashMap weakHashMap = N.f4843a;
            E.o(c0266o.f4915c);
        }
        c0266o.f4916d = z7;
    }

    public void setOnScrollChangeListener(g gVar) {
        this.f9042j0 = gVar;
    }

    public void setSmoothScrollingEnabled(boolean z7) {
        this.f9029T = z7;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i8) {
        return this.f9040h0.h(i8, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        w(0);
    }

    public final boolean t(EdgeEffect edgeEffect, int i8) {
        if (i8 > 0) {
            return true;
        }
        float fM = f.m(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i8) * 0.35f;
        float f8 = this.f9016G * 0.015f;
        double dLog = Math.log(fAbs / f8);
        double d6 = f9013l0;
        return ((float) (Math.exp((d6 / (d6 - 1.0d)) * dLog) * ((double) f8))) < fM;
    }

    public final void u(int i8, int i9, boolean z7) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f9017H > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f9019J.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i9 + scrollY, Math.max(0, height - height2))) - scrollY, 250);
            if (z7) {
                this.f9040h0.h(2, 1);
            } else {
                w(1);
            }
            this.f9037e0 = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.f9019J.isFinished()) {
                this.f9019J.abortAnimation();
                w(1);
            }
            scrollBy(i8, i9);
        }
        this.f9017H = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean v(MotionEvent motionEvent) {
        boolean z7;
        EdgeEffect edgeEffect = this.f9020K;
        if (f.m(edgeEffect) != 0.0f) {
            f.u(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z7 = true;
        } else {
            z7 = false;
        }
        EdgeEffect edgeEffect2 = this.f9021L;
        if (f.m(edgeEffect2) == 0.0f) {
            return z7;
        }
        f.u(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void w(int i8) {
        this.f9040h0.i(i8);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i8) {
        if (getChildCount() <= 0) {
            super.addView(view, i8);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i8, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i8, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
