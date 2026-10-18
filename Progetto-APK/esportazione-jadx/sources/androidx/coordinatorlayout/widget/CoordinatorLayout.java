package androidx.coordinatorlayout.widget;

import A.a;
import B.b;
import B.c;
import B.e;
import B.f;
import B.g;
import M.d;
import N.C;
import N.E;
import N.InterfaceC0267p;
import N.N;
import N.i0;
import N.r;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import org.videolan.libvlc.MediaDiscoverer;
import p039f.S;
import p096m2.i;
import p132r.m;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC0267p {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final String f8966b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final Class[] f8967c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final ThreadLocal f8968d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final f f8969e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final d f8970f0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f8971G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f8972H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f8973I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f8974J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int[] f8975K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f8976L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f8977M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int[] f8978N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public View f8979O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public View f8980P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public M2.d f8981Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f8982R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public i0 f8983S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f8984T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Drawable f8985U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f8986V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public S f8987W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final r f8988a0;

    static {
        int i8 = 0;
        Package r7 = CoordinatorLayout.class.getPackage();
        f8966b0 = r7 != null ? r7.getName() : null;
        f8969e0 = new f(i8);
        f8967c0 = new Class[]{Context.class, AttributeSet.class};
        f8968d0 = new ThreadLocal();
        f8970f0 = new d(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f8971G = new ArrayList();
        this.f8972H = new i(2);
        this.f8973I = new ArrayList();
        this.f8974J = new ArrayList();
        this.f8975K = new int[2];
        this.f8988a0 = new r();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f0a, R.attr.coordinatorLayoutStyle, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f8978N = intArray;
            float f8 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i8 = 0; i8 < length; i8++) {
                int[] iArr = this.f8978N;
                iArr[i8] = (int) (iArr[i8] * f8);
            }
        }
        this.f8985U = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        w();
        super.setOnHierarchyChangeListener(new c(this));
    }

    public static Rect g() {
        Rect rect = (Rect) f8970f0.h();
        return rect == null ? new Rect() : rect;
    }

    public static void l(int i8, Rect rect, Rect rect2, B.d dVar, int i9, int i10) {
        int iWidth;
        int iHeight;
        int i11 = dVar.f661c;
        if (i11 == 0) {
            i11 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i11, i8);
        int i12 = dVar.f662d;
        if ((i12 & 7) == 0) {
            i12 |= 8388611;
        }
        if ((i12 & 112) == 0) {
            i12 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i12, i8);
        int i13 = absoluteGravity & 7;
        int i14 = absoluteGravity & 112;
        int i15 = absoluteGravity2 & 7;
        int i16 = absoluteGravity2 & 112;
        if (i15 != 1) {
            iWidth = i15 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i16 != 16) {
            iHeight = i16 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i13 == 1) {
            iWidth -= i9 / 2;
        } else if (i13 != 5) {
            iWidth -= i9;
        }
        if (i14 == 16) {
            iHeight -= i10 / 2;
        } else if (i14 != 80) {
            iHeight -= i10;
        }
        rect2.set(iWidth, iHeight, i9 + iWidth, i10 + iHeight);
    }

    public static B.d n(View view) {
        B.d dVar = (B.d) view.getLayoutParams();
        if (!dVar.f660b) {
            b bVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                bVar = (b) superclass.getAnnotation(b.class);
                if (bVar != null) {
                    break;
                }
            }
            if (bVar != null) {
                try {
                    B.a aVar = (B.a) bVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (dVar.f659a != aVar) {
                        dVar.f659a = aVar;
                        dVar.f660b = true;
                        if (aVar != null) {
                            aVar.c(dVar);
                        }
                    }
                } catch (Exception e8) {
                    Log.e("CoordinatorLayout", "Default behavior class " + bVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e8);
                }
            }
            dVar.f660b = true;
        }
        return dVar;
    }

    public static void u(View view, int i8) {
        B.d dVar = (B.d) view.getLayoutParams();
        int i9 = dVar.f667i;
        if (i9 != i8) {
            N.h(view, i8 - i9);
            dVar.f667i = i8;
        }
    }

    public static void v(View view, int i8) {
        B.d dVar = (B.d) view.getLayoutParams();
        int i9 = dVar.f668j;
        if (i9 != i8) {
            N.i(view, i8 - i9);
            dVar.f668j = i8;
        }
    }

    @Override // N.InterfaceC0267p
    public final void b(View view, int i8, int i9, int i10, int i11, int i12) {
        B.a aVar;
        int childCount = getChildCount();
        boolean z7 = false;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                B.d dVar = (B.d) childAt.getLayoutParams();
                if (dVar.a(i12) && (aVar = dVar.f659a) != null) {
                    aVar.k(this, childAt, view, i8, i9, i10, i11, i12);
                    z7 = true;
                }
            }
        }
        if (z7) {
            p(1);
        }
    }

    @Override // N.InterfaceC0267p
    public final boolean c(View view, View view2, int i8, int i9) {
        int childCount = getChildCount();
        boolean z7 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                B.d dVar = (B.d) childAt.getLayoutParams();
                B.a aVar = dVar.f659a;
                if (aVar != null) {
                    boolean zP = aVar.p(this, childAt, view, view2, i8, i9);
                    z7 |= zP;
                    if (i9 == 0) {
                        dVar.f672n = zP;
                    } else if (i9 == 1) {
                        dVar.f673o = zP;
                    }
                } else if (i9 == 0) {
                    dVar.f672n = false;
                } else if (i9 == 1) {
                    dVar.f673o = false;
                }
            }
        }
        return z7;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof B.d) && super.checkLayoutParams(layoutParams);
    }

    @Override // N.InterfaceC0267p
    public final void d(View view, View view2, int i8, int i9) {
        r rVar = this.f8988a0;
        if (i9 == 1) {
            rVar.f4920I = i8;
        } else {
            rVar.f4919H = i8;
        }
        this.f8980P = view2;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            ((B.d) getChildAt(i10).getLayoutParams()).getClass();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j8) {
        B.a aVar = ((B.d) view.getLayoutParams()).f659a;
        if (aVar != null) {
            aVar.getClass();
        }
        return super.drawChild(canvas, view, j8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f8985U;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // N.InterfaceC0267p
    public final void e(View view, int i8) {
        r rVar = this.f8988a0;
        if (i8 == 1) {
            rVar.f4920I = 0;
        } else {
            rVar.f4919H = 0;
        }
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            B.d dVar = (B.d) childAt.getLayoutParams();
            if (dVar.a(i8)) {
                B.a aVar = dVar.f659a;
                if (aVar != null) {
                    aVar.q(childAt, view, i8);
                }
                if (i8 == 0) {
                    dVar.f672n = false;
                } else if (i8 == 1) {
                    dVar.f673o = false;
                }
                dVar.getClass();
            }
        }
        this.f8980P = null;
    }

    @Override // N.InterfaceC0267p
    public final void f(View view, int i8, int i9, int[] iArr, int i10) {
        B.a aVar;
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        boolean z7 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                B.d dVar = (B.d) childAt.getLayoutParams();
                if (dVar.a(i10) && (aVar = dVar.f659a) != null) {
                    int[] iArr2 = this.f8975K;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    aVar.i(childAt, view, i9, iArr2, i10);
                    iMax = i8 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i9 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z7 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z7) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new B.d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new B.d(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        s();
        return Collections.unmodifiableList(this.f8971G);
    }

    public final i0 getLastWindowInsets() {
        return this.f8983S;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        r rVar = this.f8988a0;
        return rVar.f4920I | rVar.f4919H;
    }

    public Drawable getStatusBarBackground() {
        return this.f8985U;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(B.d dVar, Rect rect, int i8, int i9) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i8) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i9) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(iMax, iMax2, i8 + iMax, i9 + iMax2);
    }

    public final void i(View view, Rect rect, boolean z7) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z7) {
            k(rect, view);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final ArrayList j(View view) {
        i iVar = this.f8972H;
        int i8 = ((m) iVar.f27225I).f29684I;
        ArrayList arrayList = null;
        for (int i9 = 0; i9 < i8; i9++) {
            ArrayList arrayList2 = (ArrayList) ((m) iVar.f27225I).j(i9);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(((m) iVar.f27225I).f(i9));
            }
        }
        ArrayList arrayList3 = this.f8974J;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void k(Rect rect, View view) {
        ThreadLocal threadLocal = g.f677a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = g.f677a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        g.a(this, view, matrix);
        ThreadLocal threadLocal3 = g.f678b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int m(int i8) {
        int[] iArr = this.f8978N;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i8);
            return 0;
        }
        if (i8 >= 0 && i8 < iArr.length) {
            return iArr[i8];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i8 + " out of range for " + this);
        return 0;
    }

    public final boolean o(View view, int i8, int i9) {
        d dVar = f8970f0;
        Rect rectG = g();
        k(rectG, view);
        try {
            return rectG.contains(i8, i9);
        } finally {
            rectG.setEmpty();
            dVar.a(rectG);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        t(false);
        if (this.f8982R) {
            if (this.f8981Q == null) {
                this.f8981Q = new M2.d(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f8981Q);
        }
        if (this.f8983S == null) {
            WeakHashMap weakHashMap = N.f4843a;
            if (getFitsSystemWindows()) {
                C.c(this);
            }
        }
        this.f8977M = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t(false);
        if (this.f8982R && this.f8981Q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f8981Q);
        }
        View view = this.f8980P;
        if (view != null) {
            e(view, 0);
        }
        this.f8977M = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f8984T || this.f8985U == null) {
            return;
        }
        i0 i0Var = this.f8983S;
        int iD = i0Var != null ? i0Var.d() : 0;
        if (iD > 0) {
            this.f8985U.setBounds(0, 0, getWidth(), iD);
            this.f8985U.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            t(true);
        }
        boolean zR = r(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            t(true);
        }
        return zR;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        B.a aVar;
        WeakHashMap weakHashMap = N.f4843a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f8971G;
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) arrayList.get(i12);
            if (view.getVisibility() != 8 && ((aVar = ((B.d) view.getLayoutParams()).f659a) == null || !aVar.f(this, view, layoutDirection))) {
                q(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0163  */
    /* JADX WARN: Code duplicated, block: B:79:0x0185  */
    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        boolean z7;
        int i10;
        int i11;
        int iMax;
        int i12;
        int i13;
        B.a aVar;
        int i14;
        int i15;
        s();
        int childCount = getChildCount();
        int i16 = 0;
        loop0: while (true) {
            if (i16 >= childCount) {
                z7 = false;
                break;
            }
            View childAt = getChildAt(i16);
            i iVar = this.f8972H;
            int i17 = ((m) iVar.f27225I).f29684I;
            for (int i18 = 0; i18 < i17; i18++) {
                ArrayList arrayList = (ArrayList) ((m) iVar.f27225I).j(i18);
                if (arrayList != null && arrayList.contains(childAt)) {
                    z7 = true;
                    break loop0;
                }
            }
            i16++;
        }
        if (z7 != this.f8982R) {
            if (z7) {
                if (this.f8977M) {
                    if (this.f8981Q == null) {
                        this.f8981Q = new M2.d(this);
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.f8981Q);
                }
                this.f8982R = true;
            } else {
                if (this.f8977M && this.f8981Q != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f8981Q);
                }
                this.f8982R = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = N.f4843a;
        int layoutDirection = getLayoutDirection();
        boolean z8 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i8);
        int size = View.MeasureSpec.getSize(i8);
        int mode2 = View.MeasureSpec.getMode(i9);
        int size2 = View.MeasureSpec.getSize(i9);
        int i19 = paddingLeft + paddingRight;
        int i20 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z9 = this.f8983S != null && getFitsSystemWindows();
        ArrayList arrayList2 = this.f8971G;
        int size3 = arrayList2.size();
        int i21 = suggestedMinimumWidth;
        int i22 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i23 = 0;
        while (i23 < size3) {
            ArrayList arrayList3 = arrayList2;
            View view = (View) arrayList2.get(i23);
            int i24 = iCombineMeasuredStates;
            if (view.getVisibility() == 8) {
                size3 = size3;
                paddingLeft = paddingLeft;
                iCombineMeasuredStates = i24;
                i14 = i23;
            } else {
                B.d dVar = (B.d) view.getLayoutParams();
                int i25 = dVar.f663e;
                if (i25 < 0 || mode == 0) {
                    i10 = i23;
                    i11 = i22;
                } else {
                    int iM = m(i25);
                    i10 = i23;
                    int i26 = dVar.f661c;
                    if (i26 == 0) {
                        i26 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i26, layoutDirection) & 7;
                    i11 = i22;
                    if ((absoluteGravity == 3 && !z8) || (absoluteGravity == 5 && z8)) {
                        iMax = Math.max(0, (size - paddingRight) - iM);
                    } else if ((absoluteGravity == 5 && !z8) || (absoluteGravity == 3 && z8)) {
                        iMax = Math.max(0, iM - paddingLeft);
                    }
                    if (z9 || view.getFitsSystemWindows()) {
                        i12 = i8;
                        i13 = i9;
                    } else {
                        int iC = this.f8983S.c() + this.f8983S.b();
                        int iA = this.f8983S.a() + this.f8983S.d();
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iC, mode);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iA, mode2);
                        i12 = iMakeMeasureSpec;
                        i13 = iMakeMeasureSpec2;
                    }
                    aVar = dVar.f659a;
                    if (aVar == null && aVar.g(this, view)) {
                        i15 = i24;
                        i14 = i10;
                    } else {
                        i14 = i10;
                        i15 = i24;
                        measureChildWithMargins(view, i12, iMax, i13, 0);
                    }
                    int iMax2 = Math.max(i21, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax3 = Math.max(i11, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    i21 = iMax2;
                    iCombineMeasuredStates = View.combineMeasuredStates(i15, view.getMeasuredState());
                    i22 = iMax3;
                }
                iMax = 0;
                if (z9) {
                    i12 = i8;
                    i13 = i9;
                } else {
                    i12 = i8;
                    i13 = i9;
                }
                aVar = dVar.f659a;
                if (aVar == null) {
                    i14 = i10;
                    i15 = i24;
                    measureChildWithMargins(view, i12, iMax, i13, 0);
                } else {
                    i14 = i10;
                    i15 = i24;
                    measureChildWithMargins(view, i12, iMax, i13, 0);
                }
                int iMax4 = Math.max(i21, view.getMeasuredWidth() + i19 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                int iMax5 = Math.max(i11, view.getMeasuredHeight() + i20 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                i21 = iMax4;
                iCombineMeasuredStates = View.combineMeasuredStates(i15, view.getMeasuredState());
                i22 = iMax5;
            }
            i23 = i14 + 1;
            size3 = size3;
            arrayList2 = arrayList3;
            paddingLeft = paddingLeft;
        }
        int i27 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i21, i8, (-16777216) & i27), View.resolveSizeAndState(i22, i9, i27 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f8, float f9, boolean z7) {
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                B.d dVar = (B.d) childAt.getLayoutParams();
                if (dVar.a(0)) {
                    B.a aVar = dVar.f659a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f8, float f9) {
        B.a aVar;
        int childCount = getChildCount();
        boolean zH = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                B.d dVar = (B.d) childAt.getLayoutParams();
                if (dVar.a(0) && (aVar = dVar.f659a) != null) {
                    zH |= aVar.h(view);
                }
            }
        }
        return zH;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i8, int i9, int[] iArr) {
        f(view, i8, i9, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i8, int i9, int i10, int i11) {
        b(view, i8, i9, i10, i11, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i8) {
        d(view, view2, i8, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.f6316G);
        SparseArray sparseArray = eVar.f675I;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            int id = childAt.getId();
            B.a aVar = n(childAt).f659a;
            if (id != -1 && aVar != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                aVar.m(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableN;
        e eVar = new e(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            int id = childAt.getId();
            B.a aVar = ((B.d) childAt.getLayoutParams()).f659a;
            if (id != -1 && aVar != null && (parcelableN = aVar.n(childAt)) != null) {
                sparseArray.append(id, parcelableN);
            }
        }
        eVar.f675I = sparseArray;
        return eVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i8) {
        return c(view, view2, i8, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        e(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zR;
        boolean zR2;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f8979O == null) {
            zR = r(motionEvent, 1);
            if (!zR) {
                zR2 = false;
            }
            motionEventObtain = null;
            if (this.f8979O == null) {
                zR2 |= super.onTouchEvent(motionEvent);
            } else if (zR) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                t(false);
            }
            return zR2;
        }
        zR = false;
        B.a aVar = ((B.d) this.f8979O.getLayoutParams()).f659a;
        if (aVar != null) {
            zR2 = aVar.r(this, this.f8979O, motionEvent);
        } else {
            zR2 = false;
        }
        motionEventObtain = null;
        if (this.f8979O == null) {
            zR2 |= super.onTouchEvent(motionEvent);
        } else if (zR) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            t(false);
        } else {
            t(false);
        }
        return zR2;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x027f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e6  */
    public final void p(int i8) {
        int i9;
        Rect rect;
        int i10;
        ArrayList arrayList;
        boolean z7;
        boolean z8;
        int width;
        int i11;
        int i12;
        int i13;
        int height;
        int i14;
        int i15;
        int i16;
        View view;
        d dVar;
        B.a aVar;
        WeakHashMap weakHashMap = N.f4843a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList2 = this.f8971G;
        int size = arrayList2.size();
        Rect rectG = g();
        Rect rectG2 = g();
        Rect rectG3 = g();
        int i17 = 0;
        while (true) {
            d dVar2 = f8970f0;
            if (i17 >= size) {
                Rect rect2 = rectG3;
                rectG.setEmpty();
                dVar2.a(rectG);
                rectG2.setEmpty();
                dVar2.a(rectG2);
                rect2.setEmpty();
                dVar2.a(rect2);
                return;
            }
            View view2 = (View) arrayList2.get(i17);
            B.d dVar3 = (B.d) view2.getLayoutParams();
            if (i8 == 0 && view2.getVisibility() == 8) {
                arrayList = arrayList2;
                i10 = size;
                rect = rectG3;
                i9 = i17;
            } else {
                int i18 = 0;
                while (i18 < i17) {
                    if (dVar3.f670l == ((View) arrayList2.get(i18))) {
                        B.d dVar4 = (B.d) view2.getLayoutParams();
                        if (dVar4.f669k != null) {
                            Rect rectG4 = g();
                            Rect rectG5 = g();
                            Rect rectG6 = g();
                            k(rectG4, dVar4.f669k);
                            i(view2, rectG5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            int measuredHeight = view2.getMeasuredHeight();
                            view = view2;
                            dVar = dVar2;
                            l(layoutDirection, rectG4, rectG6, dVar4, measuredWidth, measuredHeight);
                            boolean z9 = (rectG6.left == rectG5.left && rectG6.top == rectG5.top) ? false : true;
                            h(
                            /*  JADX ERROR: Method code generation error
                                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00af: INVOKE 
                                  (r25v0 'this' androidx.coordinatorlayout.widget.CoordinatorLayout A[IMMUTABLE_TYPE, THIS])
                                  (r16v3 B.d)
                                  (r9v6 'rectG6' android.graphics.Rect)
                                  (r5v17 'measuredWidth' int)
                                  (r10v9 'measuredHeight' int)
                                 VIRTUAL call: androidx.coordinatorlayout.widget.CoordinatorLayout.h(B.d, android.graphics.Rect, int, int):void A[MD:(B.d, android.graphics.Rect, int, int):void (m)] (LINE:176) in method: androidx.coordinatorlayout.widget.CoordinatorLayout.p(int):void, file: classes.dex
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                                	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                                	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                                	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                                	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                                Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r16v3 B.d
                                	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
                                */
                            /*
                                Method dump skipped, instruction units count: 741
                                To view this dump change 'Code comments level' option to 'DEBUG'
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.p(int):void");
                        }

                        public final void q(View view, int i8) {
                            int i9;
                            B.d dVar = (B.d) view.getLayoutParams();
                            View view2 = dVar.f669k;
                            if (view2 == null && dVar.f664f != -1) {
                                throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
                            }
                            d dVar2 = f8970f0;
                            if (view2 != null) {
                                Rect rectG = g();
                                Rect rectG2 = g();
                                try {
                                    k(rectG, view2);
                                    B.d dVar3 = (B.d) view.getLayoutParams();
                                    int measuredWidth = view.getMeasuredWidth();
                                    int measuredHeight = view.getMeasuredHeight();
                                    l(i8, rectG, rectG2, dVar3, measuredWidth, measuredHeight);
                                    h(dVar3, rectG2, measuredWidth, measuredHeight);
                                    view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                                    return;
                                } finally {
                                    rectG.setEmpty();
                                    dVar2.a(rectG);
                                    rectG2.setEmpty();
                                    dVar2.a(rectG2);
                                }
                            }
                            int i10 = dVar.f663e;
                            if (i10 < 0) {
                                B.d dVar4 = (B.d) view.getLayoutParams();
                                Rect rectG3 = g();
                                rectG3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin);
                                if (this.f8983S != null) {
                                    WeakHashMap weakHashMap = N.f4843a;
                                    if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                                        rectG3.left = this.f8983S.b() + rectG3.left;
                                        rectG3.top = this.f8983S.d() + rectG3.top;
                                        rectG3.right -= this.f8983S.c();
                                        rectG3.bottom -= this.f8983S.a();
                                    }
                                }
                                Rect rectG4 = g();
                                int i11 = dVar4.f661c;
                                if ((i11 & 7) == 0) {
                                    i11 |= 8388611;
                                }
                                if ((i11 & 112) == 0) {
                                    i11 |= 48;
                                }
                                Gravity.apply(i11, view.getMeasuredWidth(), view.getMeasuredHeight(), rectG3, rectG4, i8);
                                view.layout(rectG4.left, rectG4.top, rectG4.right, rectG4.bottom);
                                rectG3.setEmpty();
                                dVar2.a(rectG3);
                                rectG4.setEmpty();
                                dVar2.a(rectG4);
                                return;
                            }
                            B.d dVar5 = (B.d) view.getLayoutParams();
                            int i12 = dVar5.f661c;
                            if (i12 == 0) {
                                i12 = 8388661;
                            }
                            int absoluteGravity = Gravity.getAbsoluteGravity(i12, i8);
                            int i13 = absoluteGravity & 7;
                            int i14 = absoluteGravity & 112;
                            int width = getWidth();
                            int height = getHeight();
                            int measuredWidth2 = view.getMeasuredWidth();
                            int measuredHeight2 = view.getMeasuredHeight();
                            if (i8 == 1) {
                                i10 = width - i10;
                            }
                            int iM = m(i10) - measuredWidth2;
                            if (i13 == 1) {
                                iM += measuredWidth2 / 2;
                            } else if (i13 == 5) {
                                iM += measuredWidth2;
                            }
                            if (i14 != 16) {
                                i9 = i14 != 80 ? 0 : measuredHeight2;
                            } else {
                                i9 = measuredHeight2 / 2;
                            }
                            int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar5).leftMargin, Math.min(iM, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar5).rightMargin));
                            int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar5).topMargin, Math.min(i9, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar5).bottomMargin));
                            view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
                        }

                        public final boolean r(MotionEvent motionEvent, int i8) {
                            boolean z7;
                            int actionMasked = motionEvent.getActionMasked();
                            ArrayList arrayList = this.f8973I;
                            arrayList.clear();
                            boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
                            int childCount = getChildCount();
                            for (int i9 = childCount - 1; i9 >= 0; i9--) {
                                arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i9) : i9));
                            }
                            f fVar = f8969e0;
                            if (fVar != null) {
                                Collections.sort(arrayList, fVar);
                            }
                            int size = arrayList.size();
                            MotionEvent motionEventObtain = null;
                            boolean zE = false;
                            boolean z8 = false;
                            for (int i10 = 0; i10 < size; i10++) {
                                View view = (View) arrayList.get(i10);
                                B.d dVar = (B.d) view.getLayoutParams();
                                B.a aVar = dVar.f659a;
                                if (!(zE || z8) || actionMasked == 0) {
                                    if (!zE && aVar != null) {
                                        if (i8 == 0) {
                                            zE = aVar.e(this, view, motionEvent);
                                        } else if (i8 == 1) {
                                            zE = aVar.r(this, view, motionEvent);
                                        }
                                        if (zE) {
                                            this.f8979O = view;
                                        }
                                    }
                                    if (dVar.f659a == null) {
                                        dVar.f671m = false;
                                    }
                                    boolean z9 = dVar.f671m;
                                    if (z9) {
                                        z7 = true;
                                    } else {
                                        dVar.f671m = z9;
                                        z7 = z9;
                                    }
                                    z8 = z7 && !z9;
                                    if (z7 && !z8) {
                                        break;
                                    }
                                } else if (aVar != null) {
                                    if (motionEventObtain == null) {
                                        long jUptimeMillis = SystemClock.uptimeMillis();
                                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                                    }
                                    if (i8 == 0) {
                                        aVar.e(this, view, motionEventObtain);
                                    } else if (i8 == 1) {
                                        aVar.r(this, view, motionEventObtain);
                                    }
                                }
                            }
                            arrayList.clear();
                            return zE;
                        }

                        @Override // android.view.ViewGroup, android.view.ViewParent
                        public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z7) {
                            B.a aVar = ((B.d) view.getLayoutParams()).f659a;
                            if (aVar != null) {
                                aVar.l(this, view);
                            }
                            return super.requestChildRectangleOnScreen(view, rect, z7);
                        }

                        @Override // android.view.ViewGroup, android.view.ViewParent
                        public final void requestDisallowInterceptTouchEvent(boolean z7) {
                            super.requestDisallowInterceptTouchEvent(z7);
                            if (!z7 || this.f8976L) {
                                return;
                            }
                            t(false);
                            this.f8976L = true;
                        }

                        /* JADX WARN: Code duplicated, block: B:102:0x008d A[SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:31:0x0080 A[DONT_INVERT] */
                        /* JADX WARN: Code duplicated, block: B:32:0x0082  */
                        /* JADX WARN: Code duplicated, block: B:34:0x0088  */
                        /* JADX WARN: Code duplicated, block: B:37:0x0095  */
                        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                            jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:38:0x0099
                            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
                            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
                            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
                            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
                            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
                            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
                            */
                        public final void s() {
                            /*
                                Method dump skipped, instruction units count: 466
                                To view this dump change 'Code comments level' option to 'DEBUG'
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.s():void");
                        }

                        @Override // android.view.View
                        public void setFitsSystemWindows(boolean z7) {
                            super.setFitsSystemWindows(z7);
                            w();
                        }

                        @Override // android.view.ViewGroup
                        public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
                            this.f8986V = onHierarchyChangeListener;
                        }

                        public void setStatusBarBackground(Drawable drawable) {
                            Drawable drawable2 = this.f8985U;
                            if (drawable2 != drawable) {
                                if (drawable2 != null) {
                                    drawable2.setCallback(null);
                                }
                                Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
                                this.f8985U = drawableMutate;
                                if (drawableMutate != null) {
                                    if (drawableMutate.isStateful()) {
                                        this.f8985U.setState(getDrawableState());
                                    }
                                    Drawable drawable3 = this.f8985U;
                                    WeakHashMap weakHashMap = N.f4843a;
                                    p102n0.c.l(drawable3, getLayoutDirection());
                                    this.f8985U.setVisible(getVisibility() == 0, false);
                                    this.f8985U.setCallback(this);
                                }
                                WeakHashMap weakHashMap2 = N.f4843a;
                                postInvalidateOnAnimation();
                            }
                        }

                        public void setStatusBarBackgroundColor(int i8) {
                            setStatusBarBackground(new ColorDrawable(i8));
                        }

                        public void setStatusBarBackgroundResource(int i8) {
                            setStatusBarBackground(i8 != 0 ? getContext().getDrawable(i8) : null);
                        }

                        @Override // android.view.View
                        public void setVisibility(int i8) {
                            super.setVisibility(i8);
                            boolean z7 = i8 == 0;
                            Drawable drawable = this.f8985U;
                            if (drawable == null || drawable.isVisible() == z7) {
                                return;
                            }
                            this.f8985U.setVisible(z7, false);
                        }

                        public final void t(boolean z7) {
                            int childCount = getChildCount();
                            for (int i8 = 0; i8 < childCount; i8++) {
                                View childAt = getChildAt(i8);
                                B.a aVar = ((B.d) childAt.getLayoutParams()).f659a;
                                if (aVar != null) {
                                    long jUptimeMillis = SystemClock.uptimeMillis();
                                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                                    if (z7) {
                                        aVar.e(this, childAt, motionEventObtain);
                                    } else {
                                        aVar.r(this, childAt, motionEventObtain);
                                    }
                                    motionEventObtain.recycle();
                                }
                            }
                            for (int i9 = 0; i9 < childCount; i9++) {
                                ((B.d) getChildAt(i9).getLayoutParams()).f671m = false;
                            }
                            this.f8979O = null;
                            this.f8976L = false;
                        }

                        @Override // android.view.View
                        public final boolean verifyDrawable(Drawable drawable) {
                            return super.verifyDrawable(drawable) || drawable == this.f8985U;
                        }

                        public final void w() {
                            WeakHashMap weakHashMap = N.f4843a;
                            if (!getFitsSystemWindows()) {
                                E.l(this, null);
                                return;
                            }
                            if (this.f8987W == null) {
                                this.f8987W = new S(this, 7);
                            }
                            E.l(this, this.f8987W);
                            setSystemUiVisibility(MediaDiscoverer.Event.Started);
                        }

                        @Override // android.view.ViewGroup
                        public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
                            if (layoutParams instanceof B.d) {
                                return new B.d((B.d) layoutParams);
                            }
                            return layoutParams instanceof ViewGroup.MarginLayoutParams ? new B.d((ViewGroup.MarginLayoutParams) layoutParams) : new B.d(layoutParams);
                        }
                    }
