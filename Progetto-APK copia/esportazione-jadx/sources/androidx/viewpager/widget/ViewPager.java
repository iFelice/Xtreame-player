package androidx.viewpager.widget;

import A0.O;
import B.f;
import N.E;
import N.N;
import T.a;
import Y.AbstractComponentCallbacksC0406s;
import Y.C0389a;
import Y.K;
import Y.Q;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.google.android.material.tabs.TabLayout;
import com.google.protobuf.U2;
import e7.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import p003a2.b;
import p003a2.c;
import p003a2.e;
import p032e0.EnumC2982j;
import p086l.J0;
import p145s4.g;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static final int[] f9718E0 = {R.attr.layout_gravity};

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public static final f f9719F0 = new f(2);

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public static final a f9720G0 = new a(2);

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public p003a2.f f9721A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public ArrayList f9722B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final p000a.f f9723C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public int f9724D0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f9725G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f9726H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final c f9727I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Rect f9728J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p003a2.a f9729K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f9730L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f9731M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Parcelable f9732N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Scroller f9733O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f9734P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public J0 f9735Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f9736R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Drawable f9737S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f9738T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f9739U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public float f9740V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public float f9741W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f9742a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f9743b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f9744c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f9745d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f9746e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f9747f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f9748g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f9749h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f9750i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final int f9751j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public float f9752k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public float f9753l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public float f9754m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public float f9755n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f9756o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public VelocityTracker f9757p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final int f9758q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final int f9759r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final int f9760s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final int f9761t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final EdgeEffect f9762u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final EdgeEffect f9763v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f9764w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f9765x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f9766y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public ArrayList f9767z0;

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9726H = new ArrayList();
        this.f9727I = new c();
        this.f9728J = new Rect();
        this.f9731M = -1;
        this.f9740V = -3.4028235E38f;
        this.f9741W = Float.MAX_VALUE;
        this.f9746e0 = 1;
        this.f9756o0 = -1;
        this.f9764w0 = true;
        this.f9723C0 = new p000a.f(this, 15);
        this.f9724D0 = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f9733O = new Scroller(context2, f9720G0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f8 = context2.getResources().getDisplayMetrics().density;
        this.f9751j0 = viewConfiguration.getScaledPagingTouchSlop();
        this.f9758q0 = (int) (400.0f * f8);
        this.f9759r0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f9762u0 = new EdgeEffect(context2);
        this.f9763v0 = new EdgeEffect(context2);
        this.f9760s0 = (int) (25.0f * f8);
        this.f9761t0 = (int) (2.0f * f8);
        this.f9749h0 = (int) (f8 * 16.0f);
        N.m(this, new e(this, 0));
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        E.l(this, new p096m2.e(this));
    }

    public static boolean c(int i8, int i9, int i10, View view, boolean z7) {
        int i11;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i12 = i9 + scrollX;
                if (i12 >= childAt.getLeft() && i12 < childAt.getRight() && (i11 = i10 + scrollY) >= childAt.getTop() && i11 < childAt.getBottom() && c(i8, i12 - childAt.getLeft(), i11 - childAt.getTop(), childAt, true)) {
                    return true;
                }
            }
        }
        return z7 && view.canScrollHorizontally(-i8);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z7) {
        if (this.f9744c0 != z7) {
            this.f9744c0 = z7;
        }
    }

    public final c a(int i8, int i9) {
        c cVar = new c();
        cVar.f8634b = i8;
        e7.c cVar2 = (e7.c) this.f9729K;
        C0389a c0389a = cVar2.f24877d;
        K k8 = cVar2.f24875b;
        if (c0389a == null) {
            k8.getClass();
            cVar2.f24877d = new C0389a(k8);
        }
        long j8 = i8;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sB = k8.B("android:switcher:" + getId() + ":" + j8);
        if (abstractComponentCallbacksC0406sB != null) {
            C0389a c0389a2 = cVar2.f24877d;
            c0389a2.getClass();
            c0389a2.b(new Q(7, abstractComponentCallbacksC0406sB));
        } else {
            d dVar = cVar2.f24880g;
            abstractComponentCallbacksC0406sB = (AbstractComponentCallbacksC0406s) dVar.f24882S0.get(((Integer) dVar.f24883T0.get(i8)).intValue());
            cVar2.f24877d.e(getId(), abstractComponentCallbacksC0406sB, "android:switcher:" + getId() + ":" + j8, 1);
        }
        if (abstractComponentCallbacksC0406sB != cVar2.f24878e) {
            if (abstractComponentCallbacksC0406sB.f7960j0) {
                abstractComponentCallbacksC0406sB.f7960j0 = false;
            }
            if (cVar2.f24876c == 1) {
                cVar2.f24877d.h(abstractComponentCallbacksC0406sB, EnumC2982j.f24744J);
            } else {
                abstractComponentCallbacksC0406sB.Q(false);
            }
        }
        cVar.f8633a = abstractComponentCallbacksC0406sB;
        this.f9729K.getClass();
        cVar.f8636d = 1.0f;
        ArrayList arrayList = this.f9726H;
        if (i9 < 0 || i9 >= arrayList.size()) {
            arrayList.add(cVar);
        } else {
            arrayList.add(i9, cVar);
        }
        return cVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i8, int i9) {
        c cVarH;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() == 0 && (cVarH = h(childAt)) != null && cVarH.f8634b == this.f9730L) {
                    childAt.addFocusables(arrayList, i8, i9);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i9 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        c cVarH;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 0 && (cVarH = h(childAt)) != null && cVarH.f8634b == this.f9730L) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i8, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        p003a2.d dVar = (p003a2.d) layoutParams;
        boolean z7 = dVar.f8638a | (view.getClass().getAnnotation(b.class) != null);
        dVar.f8638a = z7;
        if (!this.f9743b0) {
            super.addView(view, i8, layoutParams);
        } else {
            if (z7) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            dVar.f8641d = true;
            addViewInLayout(view, i8, layoutParams);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00cd  */
    public final boolean b(int i8) {
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i8);
        boolean z7 = true;
        boolean zM = false;
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.f9728J;
            if (i8 == 17) {
                int i9 = g(rect, viewFindNextFocus).left;
                int i10 = g(rect, viewFindFocus).left;
                if (viewFindFocus == null || i9 < i10) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                } else {
                    int i11 = this.f9730L;
                    if (i11 > 0) {
                        this.f9745d0 = false;
                        u(i11 - 1, 0, true, false);
                    } else {
                        z7 = false;
                    }
                    zM = z7;
                }
            } else if (i8 == 66) {
                zRequestFocus = (viewFindFocus == null || g(rect, viewFindNextFocus).left > g(rect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : m();
            }
            zM = zRequestFocus;
        } else if (i8 == 17 || i8 == 1) {
            int i12 = this.f9730L;
            if (i12 > 0) {
                this.f9745d0 = false;
                u(i12 - 1, 0, true, false);
            } else {
                z7 = false;
            }
            zM = z7;
        } else if (i8 == 66 || i8 == 2) {
            zM = m();
        }
        if (zM) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i8));
        }
        return zM;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i8) {
        if (this.f9729K == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i8 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.f9740V));
        }
        return i8 > 0 && scrollX < ((int) (((float) clientWidth) * this.f9741W));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof p003a2.d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.f9734P = true;
        if (this.f9733O.isFinished() || !this.f9733O.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f9733O.getCurrX();
        int currY = this.f9733O.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!n(currX)) {
                this.f9733O.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = N.f4843a;
        postInvalidateOnAnimation();
    }

    public final void d(boolean z7) {
        boolean z8 = this.f9724D0 == 2;
        if (z8) {
            setScrollingCacheEnabled(false);
            if (!this.f9733O.isFinished()) {
                this.f9733O.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f9733O.getCurrX();
                int currY = this.f9733O.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        n(currX);
                    }
                }
            }
        }
        this.f9745d0 = false;
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f9726H;
            if (i8 >= arrayList.size()) {
                break;
            }
            c cVar = (c) arrayList.get(i8);
            if (cVar.f8635c) {
                cVar.f8635c = false;
                z8 = true;
            }
            i8++;
        }
        if (z8) {
            p000a.f fVar = this.f9723C0;
            if (!z7) {
                fVar.run();
            } else {
                WeakHashMap weakHashMap = N.f4843a;
                postOnAnimation(fVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zB;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode == 22) {
                    zB = keyEvent.hasModifiers(2) ? m() : b(66);
                } else if (keyCode == 61) {
                    if (keyEvent.hasNoModifiers()) {
                        zB = b(2);
                    } else if (keyEvent.hasModifiers(1)) {
                        zB = b(1);
                    }
                }
                if (zB) {
                    return true;
                }
            } else if (keyEvent.hasModifiers(2)) {
                int i8 = this.f9730L;
                if (i8 > 0) {
                    this.f9745d0 = false;
                    u(i8 - 1, 0, true, false);
                    return true;
                }
            } else {
                zB = b(17);
                if (zB) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        c cVarH;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 0 && (cVarH = h(childAt)) != null && cVarH.f8634b == this.f9730L && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean zDraw;
        p003a2.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        if (overScrollMode != 0 && (overScrollMode != 1 || (aVar = this.f9729K) == null || aVar.c() <= 1)) {
            this.f9762u0.finish();
            this.f9763v0.finish();
            return;
        }
        if (this.f9762u0.isFinished()) {
            zDraw = false;
        } else {
            int iSave = canvas.save();
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int width = getWidth();
            canvas.rotate(270.0f);
            canvas.translate(getPaddingTop() + (-height), this.f9740V * width);
            this.f9762u0.setSize(height, width);
            zDraw = this.f9762u0.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        if (!this.f9763v0.isFinished()) {
            int iSave2 = canvas.save();
            int width2 = getWidth();
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            canvas.rotate(90.0f);
            canvas.translate(-getPaddingTop(), (-(this.f9741W + 1.0f)) * width2);
            this.f9763v0.setSize(height2, width2);
            zDraw |= this.f9763v0.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        if (zDraw) {
            WeakHashMap weakHashMap = N.f4843a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f9737S;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e() {
        int iC = this.f9729K.c();
        this.f9725G = iC;
        ArrayList arrayList = this.f9726H;
        boolean z7 = arrayList.size() < (this.f9746e0 * 2) + 1 && arrayList.size() < iC;
        int i8 = this.f9730L;
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            c cVar = (c) arrayList.get(i9);
            p003a2.a aVar = this.f9729K;
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = cVar.f8633a;
            aVar.getClass();
        }
        Collections.sort(arrayList, f9719F0);
        if (z7) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                p003a2.d dVar = (p003a2.d) getChildAt(i10).getLayoutParams();
                if (!dVar.f8638a) {
                    dVar.f8640c = 0.0f;
                }
            }
            u(i8, 0, false, true);
            requestLayout();
        }
    }

    public final void f(int i8) {
        p003a2.f fVar = this.f9721A0;
        if (fVar != null) {
            ((g) fVar).b(i8);
        }
        ArrayList arrayList = this.f9767z0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                p003a2.f fVar2 = (p003a2.f) this.f9767z0.get(i9);
                if (fVar2 != null) {
                    ((g) fVar2).b(i8);
                }
            }
        }
    }

    public final Rect g(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        p003a2.d dVar = new p003a2.d(-1, -1);
        dVar.f8640c = 0.0f;
        return dVar;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public p003a2.a getAdapter() {
        return this.f9729K;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i8, int i9) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f9730L;
    }

    public int getOffscreenPageLimit() {
        return this.f9746e0;
    }

    public int getPageMargin() {
        return this.f9736R;
    }

    public final c h(View view) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f9726H;
            if (i8 >= arrayList.size()) {
                return null;
            }
            c cVar = (c) arrayList.get(i8);
            p003a2.a aVar = this.f9729K;
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = cVar.f8633a;
            ((e7.c) aVar).getClass();
            if (abstractComponentCallbacksC0406s.f7963m0 == view) {
                return cVar;
            }
            i8++;
        }
    }

    public final c i() {
        c cVar;
        int i8;
        int clientWidth = getClientWidth();
        float f8 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f9 = clientWidth > 0 ? this.f9736R / clientWidth : 0.0f;
        c cVar2 = null;
        float f10 = 0.0f;
        int i9 = -1;
        int i10 = 0;
        boolean z7 = true;
        while (true) {
            ArrayList arrayList = this.f9726H;
            if (i10 >= arrayList.size()) {
                return cVar2;
            }
            c cVar3 = (c) arrayList.get(i10);
            if (z7 || cVar3.f8634b == (i8 = i9 + 1)) {
                cVar = cVar3;
            } else {
                float f11 = f8 + f10 + f9;
                c cVar4 = this.f9727I;
                cVar4.f8637e = f11;
                cVar4.f8634b = i8;
                this.f9729K.getClass();
                cVar4.f8636d = 1.0f;
                i10--;
                cVar = cVar4;
            }
            f8 = cVar.f8637e;
            float f12 = cVar.f8636d + f8 + f9;
            if (!z7 && scrollX < f8) {
                return cVar2;
            }
            if (scrollX < f12 || i10 == arrayList.size() - 1) {
                return cVar;
            }
            int i11 = cVar.f8634b;
            float f13 = cVar.f8636d;
            i10++;
            z7 = false;
            c cVar5 = cVar;
            i9 = i11;
            f10 = f13;
            cVar2 = cVar5;
        }
    }

    public final c j(int i8) {
        int i9 = 0;
        while (true) {
            ArrayList arrayList = this.f9726H;
            if (i9 >= arrayList.size()) {
                return null;
            }
            c cVar = (c) arrayList.get(i9);
            if (cVar.f8634b == i8) {
                return cVar;
            }
            i9++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0065  */
    public final void k(float f8, int i8, int i9) {
        int iMax;
        int width;
        int left;
        if (this.f9766y0 > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                p003a2.d dVar = (p003a2.d) childAt.getLayoutParams();
                if (dVar.f8638a) {
                    int i11 = dVar.f8639b & 7;
                    if (i11 != 1) {
                        if (i11 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i11 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i12 = iMax;
                    width = paddingLeft;
                    paddingLeft = i12;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        p003a2.f fVar = this.f9721A0;
        if (fVar != null) {
            ((g) fVar).a(f8, i8);
        }
        ArrayList arrayList = this.f9767z0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i13 = 0; i13 < size; i13++) {
                p003a2.f fVar2 = (p003a2.f) this.f9767z0.get(i13);
                if (fVar2 != null) {
                    ((g) fVar2).a(f8, i8);
                }
            }
        }
        this.f9765x0 = true;
    }

    public final void l(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f9756o0) {
            int i8 = actionIndex == 0 ? 1 : 0;
            this.f9752k0 = motionEvent.getX(i8);
            this.f9756o0 = motionEvent.getPointerId(i8);
            VelocityTracker velocityTracker = this.f9757p0;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean m() {
        p003a2.a aVar = this.f9729K;
        if (aVar == null || this.f9730L >= aVar.c() - 1) {
            return false;
        }
        int i8 = this.f9730L + 1;
        this.f9745d0 = false;
        u(i8, 0, true, false);
        return true;
    }

    public final boolean n(int i8) {
        if (this.f9726H.size() == 0) {
            if (this.f9764w0) {
                return false;
            }
            this.f9765x0 = false;
            k(0.0f, 0, 0);
            if (this.f9765x0) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        c cVarI = i();
        int clientWidth = getClientWidth();
        int i9 = this.f9736R;
        int i10 = clientWidth + i9;
        float f8 = clientWidth;
        int i11 = cVarI.f8634b;
        float f9 = ((i8 / f8) - cVarI.f8637e) / (cVarI.f8636d + (i9 / f8));
        this.f9765x0 = false;
        k(f9, i11, (int) (i10 * f9));
        if (this.f9765x0) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean o(float f8) {
        boolean z7;
        boolean z8;
        float f9 = this.f9752k0 - f8;
        this.f9752k0 = f8;
        float scrollX = getScrollX() + f9;
        float clientWidth = getClientWidth();
        float f10 = this.f9740V * clientWidth;
        float f11 = this.f9741W * clientWidth;
        ArrayList arrayList = this.f9726H;
        boolean z9 = false;
        c cVar = (c) arrayList.get(0);
        c cVar2 = (c) U2.g(arrayList, 1);
        if (cVar.f8634b != 0) {
            f10 = cVar.f8637e * clientWidth;
            z7 = false;
        } else {
            z7 = true;
        }
        if (cVar2.f8634b != this.f9729K.c() - 1) {
            f11 = cVar2.f8637e * clientWidth;
            z8 = false;
        } else {
            z8 = true;
        }
        if (scrollX < f10) {
            if (z7) {
                this.f9762u0.onPull(Math.abs(f10 - scrollX) / clientWidth);
                z9 = true;
            }
            scrollX = f10;
        } else if (scrollX > f11) {
            if (z8) {
                this.f9763v0.onPull(Math.abs(scrollX - f11) / clientWidth);
                z9 = true;
            }
            scrollX = f11;
        }
        int i8 = (int) scrollX;
        this.f9752k0 = (scrollX - i8) + this.f9752k0;
        scrollTo(i8, getScrollY());
        n(i8);
        return z9;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9764w0 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f9723C0);
        Scroller scroller = this.f9733O;
        if (scroller != null && !scroller.isFinished()) {
            this.f9733O.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i8;
        float f8;
        super.onDraw(canvas);
        if (this.f9736R <= 0 || this.f9737S == null) {
            return;
        }
        ArrayList arrayList = this.f9726H;
        if (arrayList.size() <= 0 || this.f9729K == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f9 = width;
        float f10 = this.f9736R / f9;
        int i9 = 0;
        c cVar = (c) arrayList.get(0);
        float f11 = cVar.f8637e;
        int size = arrayList.size();
        int i10 = cVar.f8634b;
        int i11 = ((c) arrayList.get(size - 1)).f8634b;
        while (i10 < i11) {
            while (true) {
                i8 = cVar.f8634b;
                if (i10 <= i8 || i9 >= size) {
                    break;
                }
                i9++;
                cVar = (c) arrayList.get(i9);
            }
            if (i10 == i8) {
                float f12 = cVar.f8637e;
                float f13 = cVar.f8636d;
                f8 = (f12 + f13) * f9;
                f11 = f12 + f13 + f10;
            } else {
                this.f9729K.getClass();
                f8 = (f11 + 1.0f) * f9;
                f11 = 1.0f + f10 + f11;
            }
            if (this.f9736R + f8 > scrollX) {
                this.f9737S.setBounds(Math.round(f8), this.f9738T, Math.round(this.f9736R + f8), this.f9739U);
                this.f9737S.draw(canvas);
            }
            if (f8 > scrollX + width) {
                return;
            }
            i10++;
            arrayList = arrayList;
            f10 = f10;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            s();
            return false;
        }
        if (action != 0) {
            if (this.f9747f0) {
                return true;
            }
            if (this.f9748g0) {
                return false;
            }
        }
        if (action == 0) {
            float x7 = motionEvent.getX();
            this.f9754m0 = x7;
            this.f9752k0 = x7;
            float y7 = motionEvent.getY();
            this.f9755n0 = y7;
            this.f9753l0 = y7;
            this.f9756o0 = motionEvent.getPointerId(0);
            this.f9748g0 = false;
            this.f9734P = true;
            this.f9733O.computeScrollOffset();
            if (this.f9724D0 != 2 || Math.abs(this.f9733O.getFinalX() - this.f9733O.getCurrX()) <= this.f9761t0) {
                d(false);
                this.f9747f0 = false;
            } else {
                this.f9733O.abortAnimation();
                this.f9745d0 = false;
                p();
                this.f9747f0 = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i8 = this.f9756o0;
            if (i8 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i8);
                float x8 = motionEvent.getX(iFindPointerIndex);
                float f8 = x8 - this.f9752k0;
                float fAbs = Math.abs(f8);
                float y8 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y8 - this.f9755n0);
                if (f8 != 0.0f) {
                    float f9 = this.f9752k0;
                    if ((f9 >= this.f9750i0 || f8 <= 0.0f) && ((f9 <= getWidth() - this.f9750i0 || f8 >= 0.0f) && c((int) f8, (int) x8, (int) y8, this, false))) {
                        this.f9752k0 = x8;
                        this.f9753l0 = y8;
                        this.f9748g0 = true;
                        return false;
                    }
                }
                float f10 = this.f9751j0;
                if (fAbs > f10 && fAbs * 0.5f > fAbs2) {
                    this.f9747f0 = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    float f11 = this.f9754m0;
                    float f12 = this.f9751j0;
                    this.f9752k0 = f8 > 0.0f ? f11 + f12 : f11 - f12;
                    this.f9753l0 = y8;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f10) {
                    this.f9748g0 = true;
                }
                if (this.f9747f0 && o(x8)) {
                    WeakHashMap weakHashMap = N.f4843a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            l(motionEvent);
        }
        if (this.f9757p0 == null) {
            this.f9757p0 = VelocityTracker.obtain();
        }
        this.f9757p0.addMovement(motionEvent);
        return this.f9747f0;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        boolean z8;
        c cVarH;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i12 = i10 - i8;
        int i13 = i11 - i9;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                p003a2.d dVar = (p003a2.d) childAt.getLayoutParams();
                if (dVar.f8638a) {
                    int i16 = dVar.f8639b;
                    int i17 = i16 & 7;
                    int i18 = i16 & 112;
                    if (i17 != 1) {
                        if (i17 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i17 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i12 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i18 != 16) {
                            if (i18 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i18 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i13 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i19 = paddingLeft + scrollX;
                            childAt.layout(i19, paddingTop, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + paddingTop);
                            i14++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i13 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i20 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i20;
                        int i110 = paddingLeft + scrollX;
                        childAt.layout(i110, paddingTop, childAt.getMeasuredWidth() + i110, childAt.getMeasuredHeight() + paddingTop);
                        i14++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i12 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i21 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i21;
                    if (i18 != 16) {
                        if (i18 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i18 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i13 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i111 = paddingLeft + scrollX;
                        childAt.layout(i111, paddingTop, childAt.getMeasuredWidth() + i111, childAt.getMeasuredHeight() + paddingTop);
                        i14++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i13 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i22 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i22;
                    int i112 = paddingLeft + scrollX;
                    childAt.layout(i112, paddingTop, childAt.getMeasuredWidth() + i112, childAt.getMeasuredHeight() + paddingTop);
                    i14++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i23 = (i12 - paddingLeft) - paddingRight;
        for (int i24 = 0; i24 < childCount; i24++) {
            View childAt2 = getChildAt(i24);
            if (childAt2.getVisibility() != 8) {
                p003a2.d dVar2 = (p003a2.d) childAt2.getLayoutParams();
                if (!dVar2.f8638a && (cVarH = h(childAt2)) != null) {
                    float f8 = i23;
                    int i25 = ((int) (cVarH.f8637e * f8)) + paddingLeft;
                    if (dVar2.f8641d) {
                        dVar2.f8641d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f8 * dVar2.f8640c), 1073741824), View.MeasureSpec.makeMeasureSpec((i13 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i25, paddingTop, childAt2.getMeasuredWidth() + i25, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f9738T = paddingTop;
        this.f9739U = i13 - paddingBottom;
        this.f9766y0 = i14;
        if (this.f9764w0) {
            z8 = false;
            t(this.f9730L, 0, false, false);
        } else {
            z8 = false;
        }
        this.f9764w0 = z8;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0081 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0086  */
    /* JADX WARN: Code duplicated, block: B:35:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x008d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0090  */
    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ae A[SYNTHETIC] */
    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        p003a2.d dVar;
        p003a2.d dVar2;
        int i10;
        int i11;
        int i12;
        setMeasuredDimension(View.getDefaultSize(0, i8), View.getDefaultSize(0, i9));
        int measuredWidth = getMeasuredWidth();
        this.f9750i0 = Math.min(measuredWidth / 10, this.f9749h0);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i13 = 0;
        while (true) {
            boolean z7 = true;
            int i14 = 1073741824;
            if (i13 >= childCount) {
                break;
            }
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8 && (dVar2 = (p003a2.d) childAt.getLayoutParams()) != null && dVar2.f8638a) {
                int i15 = dVar2.f8639b;
                int i16 = i15 & 7;
                int i17 = i15 & 112;
                boolean z8 = i17 == 48 || i17 == 80;
                if (i16 != 3 && i16 != 5) {
                    z7 = false;
                }
                int i18 = Integer.MIN_VALUE;
                if (z8) {
                    i18 = 1073741824;
                } else {
                    i10 = z7 ? 1073741824 : Integer.MIN_VALUE;
                    i11 = ((ViewGroup.LayoutParams) dVar2).width;
                    if (i11 != -2) {
                        if (i11 == -1) {
                            i11 = paddingLeft;
                        }
                        i18 = 1073741824;
                    } else {
                        i11 = paddingLeft;
                    }
                    i12 = ((ViewGroup.LayoutParams) dVar2).height;
                    if (i12 != -2) {
                        i12 = measuredHeight;
                        i14 = i10;
                    } else if (i12 == -1) {
                        i12 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i18), View.MeasureSpec.makeMeasureSpec(i12, i14));
                    if (z8) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z7) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
                i11 = ((ViewGroup.LayoutParams) dVar2).width;
                if (i11 != -2) {
                    if (i11 == -1) {
                        i11 = paddingLeft;
                    }
                    i18 = 1073741824;
                } else {
                    i11 = paddingLeft;
                }
                i12 = ((ViewGroup.LayoutParams) dVar2).height;
                if (i12 != -2) {
                    i12 = measuredHeight;
                    i14 = i10;
                } else if (i12 == -1) {
                    i12 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i18), View.MeasureSpec.makeMeasureSpec(i12, i14));
                if (z8) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z7) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i13++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f9742a0 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f9743b0 = true;
        p();
        this.f9743b0 = false;
        int childCount2 = getChildCount();
        for (int i19 = 0; i19 < childCount2; i19++) {
            View childAt2 = getChildAt(i19);
            if (childAt2.getVisibility() != 8 && ((dVar = (p003a2.d) childAt2.getLayoutParams()) == null || !dVar.f8638a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * dVar.f8640c), 1073741824), this.f9742a0);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i8, Rect rect) {
        int i9;
        int i10;
        int i11;
        c cVarH;
        int childCount = getChildCount();
        if ((i8 & 2) != 0) {
            i10 = childCount;
            i9 = 0;
            i11 = 1;
        } else {
            i9 = childCount - 1;
            i10 = -1;
            i11 = -1;
        }
        while (i9 != i10) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 0 && (cVarH = h(childAt)) != null && cVarH.f8634b == this.f9730L && childAt.requestFocus(i8, rect)) {
                return true;
            }
            i9 += i11;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof p003a2.g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        p003a2.g gVar = (p003a2.g) parcelable;
        super.onRestoreInstanceState(gVar.f6316G);
        if (this.f9729K != null) {
            u(gVar.f8645I, 0, false, true);
        } else {
            this.f9731M = gVar.f8645I;
            this.f9732N = gVar.f8646J;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        p003a2.g gVar = new p003a2.g(super.onSaveInstanceState());
        gVar.f8645I = this.f9730L;
        p003a2.a aVar = this.f9729K;
        if (aVar != null) {
            aVar.getClass();
            gVar.f8646J = null;
        }
        return gVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i8, int i9, int i10, int i11) {
        super.onSizeChanged(i8, i9, i10, i11);
        if (i8 != i10) {
            int i12 = this.f9736R;
            r(i8, i10, i12, i12);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:73:0x017b  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        p003a2.a aVar;
        boolean zS;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f9729K) == null || aVar.c() == 0) {
            return false;
        }
        if (this.f9757p0 == null) {
            this.f9757p0 = VelocityTracker.obtain();
        }
        this.f9757p0.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f9733O.abortAnimation();
            this.f9745d0 = false;
            p();
            float x7 = motionEvent.getX();
            this.f9754m0 = x7;
            this.f9752k0 = x7;
            float y7 = motionEvent.getY();
            this.f9755n0 = y7;
            this.f9753l0 = y7;
            this.f9756o0 = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.f9752k0 = motionEvent.getX(actionIndex);
                        this.f9756o0 = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        l(motionEvent);
                        this.f9752k0 = motionEvent.getX(motionEvent.findPointerIndex(this.f9756o0));
                    }
                } else if (this.f9747f0) {
                    t(this.f9730L, 0, true, false);
                    zS = s();
                    if (zS) {
                        WeakHashMap weakHashMap = N.f4843a;
                        postInvalidateOnAnimation();
                    }
                }
            } else if (!this.f9747f0) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f9756o0);
                if (iFindPointerIndex == -1) {
                    zS = s();
                } else {
                    float x8 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x8 - this.f9752k0);
                    float y8 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y8 - this.f9753l0);
                    if (fAbs > this.f9751j0 && fAbs > fAbs2) {
                        this.f9747f0 = true;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        float f8 = this.f9754m0;
                        this.f9752k0 = x8 - f8 > 0.0f ? f8 + this.f9751j0 : f8 - this.f9751j0;
                        this.f9753l0 = y8;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.f9747f0) {
                        zS = o(motionEvent.getX(motionEvent.findPointerIndex(this.f9756o0)));
                    }
                }
                if (zS) {
                    WeakHashMap weakHashMap2 = N.f4843a;
                    postInvalidateOnAnimation();
                }
            } else if (this.f9747f0) {
                zS = o(motionEvent.getX(motionEvent.findPointerIndex(this.f9756o0)));
                if (zS) {
                    WeakHashMap weakHashMap3 = N.f4843a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (this.f9747f0) {
            VelocityTracker velocityTracker = this.f9757p0;
            velocityTracker.computeCurrentVelocity(1000, this.f9759r0);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f9756o0);
            this.f9745d0 = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            c cVarI = i();
            float f9 = clientWidth;
            float f10 = this.f9736R / f9;
            int iMax = cVarI.f8634b;
            float f11 = ((scrollX / f9) - cVarI.f8637e) / (cVarI.f8636d + f10);
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.f9756o0)) - this.f9754m0)) <= this.f9760s0 || Math.abs(xVelocity) <= this.f9758q0) {
                iMax += (int) (f11 + (iMax >= this.f9730L ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                iMax++;
            }
            ArrayList arrayList = this.f9726H;
            if (arrayList.size() > 0) {
                iMax = Math.max(((c) arrayList.get(0)).f8634b, Math.min(iMax, ((c) U2.g(arrayList, 1)).f8634b));
            }
            u(iMax, xVelocity, true, true);
            zS = s();
            if (zS) {
                WeakHashMap weakHashMap4 = N.f4843a;
                postInvalidateOnAnimation();
            }
        }
        return true;
    }

    public final void p() {
        q(this.f9730L);
    }

    /* JADX WARN: Code duplicated, block: B:186:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bd A[PHI: r7 r11 r16
      0x00bd: PHI (r7v20 int) = (r7v19 int), (r7v7 int), (r7v23 int) binds: [B:61:0x00e1, B:58:0x00cc, B:50:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00bd: PHI (r11v32 int) = (r11v1 int), (r11v31 int), (r11v35 int) binds: [B:61:0x00e1, B:58:0x00cc, B:50:0x00b4] A[DONT_GENERATE, DONT_INLINE]
      0x00bd: PHI (r16v4 float) = (r16v2 float), (r16v3 float), (r16v1 float) binds: [B:61:0x00e1, B:58:0x00cc, B:50:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:87:0x013e A[PHI: r3 r12
      0x013e: PHI (r3v28 float) = (r3v26 float), (r3v27 float), (r3v25 float) binds: [B:95:0x0165, B:92:0x014f, B:85:0x0135] A[DONT_GENERATE, DONT_INLINE]
      0x013e: PHI (r12v25 int) = (r12v23 int), (r12v24 int), (r12v22 int) binds: [B:95:0x0165, B:92:0x014f, B:85:0x0135] A[DONT_GENERATE, DONT_INLINE]] */
    public final void q(int i8) {
        c cVarJ;
        String hexString;
        ArrayList arrayList;
        c cVarA;
        c cVarH;
        c cVarH2;
        int i9;
        int i10;
        c cVar;
        c cVar2;
        c cVar3;
        int i11 = this.f9730L;
        if (i11 != i8) {
            cVarJ = j(i11);
            this.f9730L = i8;
        } else {
            cVarJ = null;
        }
        if (this.f9729K == null || this.f9745d0 || getWindowToken() == null) {
            return;
        }
        this.f9729K.e(this);
        int i12 = this.f9746e0;
        int iMax = Math.max(0, this.f9730L - i12);
        int iC = this.f9729K.c();
        int iMin = Math.min(iC - 1, this.f9730L + i12);
        if (iC != this.f9725G) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            StringBuilder sb = new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ");
            O.J(sb, this.f9725G, ", found: ", iC, " Pager id: ");
            sb.append(hexString);
            sb.append(" Pager class: ");
            sb.append(getClass());
            sb.append(" Problematic adapter: ");
            sb.append(this.f9729K.getClass());
            throw new IllegalStateException(sb.toString());
        }
        int i13 = 0;
        while (true) {
            arrayList = this.f9726H;
            if (i13 < arrayList.size()) {
                cVarA = (c) arrayList.get(i13);
                int i14 = cVarA.f8634b;
                int i15 = this.f9730L;
                if (i14 >= i15) {
                    if (i14 != i15) {
                        break;
                    } else {
                        break;
                    }
                }
                i13++;
            }
            cVarA = null;
            break;
        }
        if (cVarA == null && iC > 0) {
            cVarA = a(this.f9730L, i13);
        }
        if (cVarA != null) {
            int i16 = i13 - 1;
            c cVar4 = i16 >= 0 ? (c) arrayList.get(i16) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (getPaddingLeft() / clientWidth) + (2.0f - cVarA.f8636d);
            float f8 = 0.0f;
            for (int i17 = this.f9730L - 1; i17 >= 0; i17--) {
                if (f8 < paddingLeft || i17 >= iMax) {
                    if (cVar4 == null || i17 != cVar4.f8634b) {
                        f8 += a(i17, i16 + 1).f8636d;
                        i13++;
                        if (i16 >= 0) {
                            cVar3 = (c) arrayList.get(i16);
                        } else {
                            cVar3 = null;
                        }
                    } else {
                        f8 += cVar4.f8636d;
                        i16--;
                        if (i16 >= 0) {
                            cVar3 = (c) arrayList.get(i16);
                        } else {
                            cVar3 = null;
                        }
                    }
                    cVar4 = cVar3;
                } else {
                    if (cVar4 == null) {
                        break;
                    }
                    if (i17 == cVar4.f8634b && !cVar4.f8635c) {
                        arrayList.remove(i16);
                        this.f9729K.a(cVar4.f8633a);
                        i16--;
                        i13--;
                        if (i16 >= 0) {
                            cVar3 = (c) arrayList.get(i16);
                        } else {
                            cVar3 = null;
                        }
                        cVar4 = cVar3;
                    }
                }
            }
            float f9 = cVarA.f8636d;
            int i18 = i13 + 1;
            if (f9 < 2.0f) {
                c cVar5 = i18 < arrayList.size() ? (c) arrayList.get(i18) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i19 = i18;
                for (int i20 = this.f9730L + 1; i20 < iC; i20++) {
                    if (f9 >= paddingRight && i20 > iMin) {
                        if (cVar5 == null) {
                            break;
                        }
                        if (i20 == cVar5.f8634b && !cVar5.f8635c) {
                            arrayList.remove(i19);
                            this.f9729K.a(cVar5.f8633a);
                            if (i19 < arrayList.size()) {
                                cVar5 = (c) arrayList.get(i19);
                            } else {
                                cVar5 = null;
                            }
                        }
                    } else if (cVar5 == null || i20 != cVar5.f8634b) {
                        c cVarA2 = a(i20, i19);
                        i19++;
                        f9 += cVarA2.f8636d;
                        if (i19 < arrayList.size()) {
                            cVar5 = (c) arrayList.get(i19);
                        } else {
                            cVar5 = null;
                        }
                    } else {
                        f9 += cVar5.f8636d;
                        i19++;
                        if (i19 < arrayList.size()) {
                            cVar5 = (c) arrayList.get(i19);
                        } else {
                            cVar5 = null;
                        }
                    }
                }
            }
            int iC2 = this.f9729K.c();
            int clientWidth2 = getClientWidth();
            float f10 = clientWidth2 > 0 ? this.f9736R / clientWidth2 : 0.0f;
            if (cVarJ != null) {
                int i21 = cVarJ.f8634b;
                int i22 = cVarA.f8634b;
                if (i21 < i22) {
                    float f11 = cVarJ.f8637e + cVarJ.f8636d + f10;
                    int i23 = i21 + 1;
                    int i24 = 0;
                    while (i23 <= cVarA.f8634b && i24 < arrayList.size()) {
                        Object obj = arrayList.get(i24);
                        while (true) {
                            cVar2 = (c) obj;
                            if (i23 <= cVar2.f8634b || i24 >= arrayList.size() - 1) {
                                break;
                            }
                            i24++;
                            obj = arrayList.get(i24);
                        }
                        while (i23 < cVar2.f8634b) {
                            this.f9729K.getClass();
                            f11 += 1.0f + f10;
                            i23++;
                        }
                        cVar2.f8637e = f11;
                        f11 += cVar2.f8636d + f10;
                        i23++;
                    }
                } else if (i21 > i22) {
                    int size = arrayList.size() - 1;
                    float f12 = cVarJ.f8637e;
                    int i25 = i21 - 1;
                    while (i25 >= cVarA.f8634b && size >= 0) {
                        Object obj2 = arrayList.get(size);
                        while (true) {
                            cVar = (c) obj2;
                            if (i25 >= cVar.f8634b || size <= 0) {
                                break;
                            }
                            size--;
                            obj2 = arrayList.get(size);
                        }
                        while (i25 > cVar.f8634b) {
                            this.f9729K.getClass();
                            f12 -= 1.0f + f10;
                            i25--;
                        }
                        f12 -= cVar.f8636d + f10;
                        cVar.f8637e = f12;
                        i25--;
                    }
                }
            }
            int size2 = arrayList.size();
            float f13 = cVarA.f8637e;
            int i26 = cVarA.f8634b;
            int i27 = i26 - 1;
            this.f9740V = i26 == 0 ? f13 : -3.4028235E38f;
            int i28 = iC2 - 1;
            this.f9741W = i26 == i28 ? (cVarA.f8636d + f13) - 1.0f : Float.MAX_VALUE;
            int i29 = i13 - 1;
            while (i29 >= 0) {
                c cVar6 = (c) arrayList.get(i29);
                while (true) {
                    i10 = cVar6.f8634b;
                    if (i27 <= i10) {
                        break;
                    }
                    i27--;
                    this.f9729K.getClass();
                    f13 -= 1.0f + f10;
                }
                f13 -= cVar6.f8636d + f10;
                cVar6.f8637e = f13;
                if (i10 == 0) {
                    this.f9740V = f13;
                }
                i29--;
                i27--;
            }
            float f14 = cVarA.f8637e + cVarA.f8636d + f10;
            int i30 = cVarA.f8634b + 1;
            while (i18 < size2) {
                c cVar7 = (c) arrayList.get(i18);
                while (true) {
                    i9 = cVar7.f8634b;
                    if (i30 >= i9) {
                        break;
                    }
                    i30++;
                    this.f9729K.getClass();
                    f14 += 1.0f + f10;
                }
                if (i9 == i28) {
                    this.f9741W = (cVar7.f8636d + f14) - 1.0f;
                }
                cVar7.f8637e = f14;
                f14 += cVar7.f8636d + f10;
                i18++;
                i30++;
            }
            p003a2.a aVar = this.f9729K;
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = cVarA.f8633a;
            e7.c cVar8 = (e7.c) aVar;
            cVar8.getClass();
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = cVar8.f24878e;
            if (abstractComponentCallbacksC0406s != abstractComponentCallbacksC0406s2) {
                K k8 = cVar8.f24875b;
                int i31 = cVar8.f24876c;
                if (abstractComponentCallbacksC0406s2 != null) {
                    if (abstractComponentCallbacksC0406s2.f7960j0) {
                        abstractComponentCallbacksC0406s2.f7960j0 = false;
                    }
                    if (i31 == 1) {
                        if (cVar8.f24877d == null) {
                            k8.getClass();
                            cVar8.f24877d = new C0389a(k8);
                        }
                        cVar8.f24877d.h(cVar8.f24878e, EnumC2982j.f24744J);
                    } else {
                        abstractComponentCallbacksC0406s2.Q(false);
                    }
                }
                if (!abstractComponentCallbacksC0406s.f7960j0) {
                    abstractComponentCallbacksC0406s.f7960j0 = true;
                }
                if (i31 == 1) {
                    if (cVar8.f24877d == null) {
                        k8.getClass();
                        cVar8.f24877d = new C0389a(k8);
                    }
                    cVar8.f24877d.h(abstractComponentCallbacksC0406s, EnumC2982j.f24745K);
                } else {
                    abstractComponentCallbacksC0406s.Q(true);
                }
                cVar8.f24878e = abstractComponentCallbacksC0406s;
            }
        }
        this.f9729K.b();
        int childCount = getChildCount();
        for (int i32 = 0; i32 < childCount; i32++) {
            View childAt = getChildAt(i32);
            p003a2.d dVar = (p003a2.d) childAt.getLayoutParams();
            dVar.getClass();
            if (!dVar.f8638a && dVar.f8640c == 0.0f && (cVarH2 = h(childAt)) != null) {
                dVar.f8640c = cVarH2.f8636d;
                dVar.f8642e = cVarH2.f8634b;
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == null) {
                cVarH = null;
                break;
            }
            while (true) {
                Object parent = viewFindFocus.getParent();
                if (parent == this) {
                    cVarH = h(viewFindFocus);
                    break;
                } else {
                    if (parent == null || !(parent instanceof View)) {
                        cVarH = null;
                        break;
                    }
                    viewFindFocus = (View) parent;
                }
            }
            if (cVarH == null || cVarH.f8634b != this.f9730L) {
                for (int i33 = 0; i33 < getChildCount(); i33++) {
                    View childAt2 = getChildAt(i33);
                    c cVarH3 = h(childAt2);
                    if (cVarH3 != null && cVarH3.f8634b == this.f9730L && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    public final void r(int i8, int i9, int i10, int i11) {
        if (i9 > 0 && !this.f9726H.isEmpty()) {
            if (!this.f9733O.isFinished()) {
                this.f9733O.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i9 - getPaddingLeft()) - getPaddingRight()) + i11)) * (((i8 - getPaddingLeft()) - getPaddingRight()) + i10)), getScrollY());
                return;
            }
        }
        c cVarJ = j(this.f9730L);
        int iMin = (int) ((cVarJ != null ? Math.min(cVarJ.f8637e, this.f9741W) : 0.0f) * ((i8 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            d(false);
            scrollTo(iMin, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f9743b0) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final boolean s() {
        this.f9756o0 = -1;
        this.f9747f0 = false;
        this.f9748g0 = false;
        VelocityTracker velocityTracker = this.f9757p0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f9757p0 = null;
        }
        this.f9762u0.onRelease();
        this.f9763v0.onRelease();
        return this.f9762u0.isFinished() || this.f9763v0.isFinished();
    }

    public void setAdapter(p003a2.a aVar) {
        ArrayList arrayList;
        p003a2.a aVar2 = this.f9729K;
        if (aVar2 != null) {
            synchronized (aVar2) {
            }
            this.f9729K.e(this);
            int i8 = 0;
            while (true) {
                arrayList = this.f9726H;
                if (i8 >= arrayList.size()) {
                    break;
                }
                c cVar = (c) arrayList.get(i8);
                p003a2.a aVar3 = this.f9729K;
                int i9 = cVar.f8634b;
                aVar3.a(cVar.f8633a);
                i8++;
            }
            this.f9729K.b();
            arrayList.clear();
            int i10 = 0;
            while (i10 < getChildCount()) {
                if (!((p003a2.d) getChildAt(i10).getLayoutParams()).f8638a) {
                    removeViewAt(i10);
                    i10--;
                }
                i10++;
            }
            this.f9730L = 0;
            scrollTo(0, 0);
        }
        this.f9729K = aVar;
        this.f9725G = 0;
        if (aVar != null) {
            if (this.f9735Q == null) {
                this.f9735Q = new J0(this, 1);
            }
            this.f9729K.d();
            this.f9745d0 = false;
            boolean z7 = this.f9764w0;
            this.f9764w0 = true;
            this.f9725G = this.f9729K.c();
            if (this.f9731M >= 0) {
                this.f9729K.getClass();
                u(this.f9731M, 0, false, true);
                this.f9731M = -1;
            } else if (z7) {
                requestLayout();
            } else {
                p();
            }
        }
        ArrayList arrayList2 = this.f9722B0;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.f9722B0.size();
        for (int i11 = 0; i11 < size; i11++) {
            p145s4.a aVar4 = (p145s4.a) this.f9722B0.get(i11);
            TabLayout tabLayout = aVar4.f30090b;
            if (tabLayout.f24190q0 == this) {
                tabLayout.h(aVar, aVar4.f30089a);
            }
        }
    }

    public void setCurrentItem(int i8) {
        this.f9745d0 = false;
        u(i8, 0, !this.f9764w0, false);
    }

    public void setOffscreenPageLimit(int i8) {
        if (i8 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i8 + " too small; defaulting to 1");
            i8 = 1;
        }
        if (i8 != this.f9746e0) {
            this.f9746e0 = i8;
            p();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(p003a2.f fVar) {
        this.f9721A0 = fVar;
    }

    public void setPageMargin(int i8) {
        int i9 = this.f9736R;
        this.f9736R = i8;
        int width = getWidth();
        r(width, width, i8, i9);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f9737S = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i8) {
        if (this.f9724D0 == i8) {
            return;
        }
        this.f9724D0 = i8;
        p003a2.f fVar = this.f9721A0;
        if (fVar != null) {
            g gVar = (g) fVar;
            gVar.f30116b = gVar.f30117c;
            gVar.f30117c = i8;
        }
        ArrayList arrayList = this.f9767z0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                p003a2.f fVar2 = (p003a2.f) this.f9767z0.get(i9);
                if (fVar2 != null) {
                    g gVar2 = (g) fVar2;
                    gVar2.f30116b = gVar2.f30117c;
                    gVar2.f30117c = i8;
                }
            }
        }
    }

    public final void t(int i8, int i9, boolean z7, boolean z8) {
        int iMax;
        int scrollX;
        int iAbs;
        c cVarJ = j(i8);
        if (cVarJ != null) {
            iMax = (int) (Math.max(this.f9740V, Math.min(cVarJ.f8637e, this.f9741W)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (!z7) {
            if (z8) {
                f(i8);
            }
            d(false);
            scrollTo(iMax, 0);
            n(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.f9733O;
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                scrollX = this.f9734P ? this.f9733O.getCurrX() : this.f9733O.getStartX();
                this.f9733O.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i10 = scrollX;
            int scrollY = getScrollY();
            int i11 = iMax - i10;
            int i12 = 0 - scrollY;
            if (i11 == 0 && i12 == 0) {
                d(false);
                p();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i13 = clientWidth / 2;
                float f8 = clientWidth;
                float f9 = i13;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i11) * 1.0f) / f8) - 0.5f) * 0.47123894f)) * f9) + f9;
                int iAbs2 = Math.abs(i9);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    this.f9729K.getClass();
                    iAbs = (int) (((Math.abs(i11) / ((f8 * 1.0f) + this.f9736R)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.f9734P = false;
                this.f9733O.startScroll(i10, scrollY, i11, i12, iMin);
                WeakHashMap weakHashMap = N.f4843a;
                postInvalidateOnAnimation();
            }
        }
        if (z8) {
            f(i8);
        }
    }

    public final void u(int i8, int i9, boolean z7, boolean z8) {
        p003a2.a aVar = this.f9729K;
        if (aVar == null || aVar.c() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.f9726H;
        if (!z8 && this.f9730L == i8 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i8 < 0) {
            i8 = 0;
        } else if (i8 >= this.f9729K.c()) {
            i8 = this.f9729K.c() - 1;
        }
        int i10 = this.f9746e0;
        int i11 = this.f9730L;
        if (i8 > i11 + i10 || i8 < i11 - i10) {
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                ((c) arrayList.get(i12)).f8635c = true;
            }
        }
        boolean z9 = this.f9730L != i8;
        if (!this.f9764w0) {
            q(i8);
            t(i8, i9, z7, z9);
        } else {
            this.f9730L = i8;
            if (z9) {
                f(i8);
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f9737S;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        p003a2.d dVar = new p003a2.d(context, attributeSet);
        dVar.f8640c = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f9718E0);
        dVar.f8639b = typedArrayObtainStyledAttributes.getInteger(0, 48);
        typedArrayObtainStyledAttributes.recycle();
        return dVar;
    }

    public void setPageMarginDrawable(int i8) {
        setPageMarginDrawable(getContext().getDrawable(i8));
    }
}
