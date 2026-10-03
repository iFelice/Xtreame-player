package com.google.android.material.bottomsheet;

import B.a;
import N.E;
import N.N;
import T.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.WeakHashMap;
import p000a.g;
import p098m4.b;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f24112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f24113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f24115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f24118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f24120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f24121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f24122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f24123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c f24124m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f24125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f24126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f24127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f24128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public WeakReference f24129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public WeakReference f24130s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public VelocityTracker f24131t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f24132u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f24133v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f24134w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public HashMap f24135x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final p098m4.a f24136y;

    public BottomSheetBehavior() {
        this.f24112a = true;
        this.f24123l = 4;
        this.f24136y = new p098m4.a(this);
    }

    public static View s(View view) {
        WeakHashMap weakHashMap = N.f4843a;
        if (E.h(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View viewS = s(viewGroup.getChildAt(i8));
            if (viewS != null) {
                return viewS;
            }
        }
        return null;
    }

    @Override // B.a
    public final boolean e(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        c cVar;
        if (!view.isShown()) {
            this.f24125n = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f24132u = -1;
            VelocityTracker velocityTracker = this.f24131t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f24131t = null;
            }
        }
        if (this.f24131t == null) {
            this.f24131t = VelocityTracker.obtain();
        }
        this.f24131t.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x7 = (int) motionEvent.getX();
            this.f24133v = (int) motionEvent.getY();
            WeakReference weakReference = this.f24130s;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && coordinatorLayout.o(view2, x7, this.f24133v)) {
                this.f24132u = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.f24134w = true;
            }
            this.f24125n = this.f24132u == -1 && !coordinatorLayout.o(view, x7, this.f24133v);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f24134w = false;
            this.f24132u = -1;
            if (this.f24125n) {
                this.f24125n = false;
                return false;
            }
        }
        if (!this.f24125n && (cVar = this.f24124m) != null && cVar.p(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.f24130s;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.f24125n || this.f24123l == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f24124m == null || Math.abs(((float) this.f24133v) - motionEvent.getY()) <= ((float) this.f24124m.f6491b)) ? false : true;
    }

    @Override // B.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, int i8) {
        WeakHashMap weakHashMap = N.f4843a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i8);
        this.f24128q = coordinatorLayout.getHeight();
        if (this.f24115d) {
            if (this.f24116e == 0) {
                this.f24116e = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            this.f24117f = Math.max(this.f24116e, this.f24128q - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.f24117f = this.f24114c;
        }
        int iMax = Math.max(0, this.f24128q - view.getHeight());
        this.f24118g = iMax;
        int i9 = this.f24128q;
        this.f24119h = i9 / 2;
        if (this.f24112a) {
            this.f24120i = Math.max(i9 - this.f24117f, iMax);
        } else {
            this.f24120i = i9 - this.f24117f;
        }
        int i10 = this.f24123l;
        if (i10 == 3) {
            N.i(view, t());
        } else if (i10 == 6) {
            N.i(view, this.f24119h);
        } else if (this.f24121j && i10 == 5) {
            N.i(view, this.f24128q);
        } else if (i10 == 4) {
            N.i(view, this.f24120i);
        } else if (i10 == 1 || i10 == 2) {
            N.i(view, top - view.getTop());
        }
        if (this.f24124m == null) {
            this.f24124m = new c(coordinatorLayout.getContext(), coordinatorLayout, this.f24136y);
        }
        this.f24129r = new WeakReference(view);
        this.f24130s = new WeakReference(s(view));
        return true;
    }

    @Override // B.a
    public final boolean h(View view) {
        return view == this.f24130s.get() && this.f24123l != 3;
    }

    @Override // B.a
    public final void i(View view, View view2, int i8, int[] iArr, int i9) {
        if (i9 != 1 && view2 == ((View) this.f24130s.get())) {
            int top = view.getTop();
            int i10 = top - i8;
            if (i8 > 0) {
                if (i10 < t()) {
                    int iT = top - t();
                    iArr[1] = iT;
                    N.i(view, -iT);
                    v(3);
                } else {
                    iArr[1] = i8;
                    N.i(view, -i8);
                    v(1);
                }
            } else if (i8 < 0 && !view2.canScrollVertically(-1)) {
                int i11 = this.f24120i;
                if (i10 <= i11 || this.f24121j) {
                    iArr[1] = i8;
                    N.i(view, -i8);
                    v(1);
                } else {
                    int i12 = top - i11;
                    iArr[1] = i12;
                    N.i(view, -i12);
                    v(4);
                }
            }
            view.getTop();
            this.f24126o = i8;
            this.f24127p = true;
        }
    }

    @Override // B.a
    public final void m(View view, Parcelable parcelable) {
        int i8 = ((b) parcelable).f27285I;
        if (i8 == 1 || i8 == 2) {
            this.f24123l = 4;
        } else {
            this.f24123l = i8;
        }
    }

    @Override // B.a
    public final Parcelable n(View view) {
        return new b(View.BaseSavedState.EMPTY_STATE, this.f24123l);
    }

    @Override // B.a
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i8, int i9) {
        this.f24126o = 0;
        this.f24127p = false;
        return (i8 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:29:0x006b  */
    /* JADX WARN: Code duplicated, block: B:30:0x006e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0072  */
    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:36:0x0081  */
    /* JADX WARN: Code duplicated, block: B:37:0x0083  */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:41:0x0096  */
    /* JADX WARN: Code duplicated, block: B:42:0x0099  */
    /* JADX WARN: Code duplicated, block: B:44:0x009e  */
    @Override // B.a
    public final void q(View view, View view2, int i8) {
        int iT;
        int i9;
        int top;
        int i10;
        float yVelocity;
        int i11 = 3;
        if (view.getTop() == t()) {
            v(3);
            return;
        }
        if (view2 == this.f24130s.get() && this.f24127p) {
            if (this.f24126o > 0) {
                iT = t();
                i9 = 3;
            } else if (this.f24121j) {
                VelocityTracker velocityTracker = this.f24131t;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f24113b);
                    yVelocity = this.f24131t.getYVelocity(this.f24132u);
                }
                if (w(view, yVelocity)) {
                    iT = this.f24128q;
                    i9 = 5;
                } else if (this.f24126o == 0) {
                    top = view.getTop();
                    if (this.f24112a) {
                        i10 = this.f24119h;
                        if (top < i10) {
                            if (top < Math.abs(top - this.f24120i)) {
                                iT = 0;
                            } else {
                                iT = this.f24119h;
                            }
                        } else if (Math.abs(top - i10) < Math.abs(top - this.f24120i)) {
                            iT = this.f24119h;
                        } else {
                            iT = this.f24120i;
                            i11 = 4;
                        }
                        i11 = 6;
                    } else if (Math.abs(top - this.f24118g) < Math.abs(top - this.f24120i)) {
                        iT = this.f24118g;
                    } else {
                        iT = this.f24120i;
                        i11 = 4;
                    }
                    i9 = i11;
                } else {
                    iT = this.f24120i;
                    i9 = 4;
                }
            } else if (this.f24126o == 0) {
                top = view.getTop();
                if (this.f24112a) {
                    i10 = this.f24119h;
                    if (top < i10) {
                        if (top < Math.abs(top - this.f24120i)) {
                            iT = 0;
                        } else {
                            iT = this.f24119h;
                        }
                    } else if (Math.abs(top - i10) < Math.abs(top - this.f24120i)) {
                        iT = this.f24119h;
                    } else {
                        iT = this.f24120i;
                        i11 = 4;
                    }
                    i11 = 6;
                } else if (Math.abs(top - this.f24118g) < Math.abs(top - this.f24120i)) {
                    iT = this.f24118g;
                } else {
                    iT = this.f24120i;
                    i11 = 4;
                }
                i9 = i11;
            } else {
                iT = this.f24120i;
                i9 = 4;
            }
            c cVar = this.f24124m;
            int left = view.getLeft();
            cVar.f6507r = view;
            cVar.f6492c = -1;
            boolean zH = cVar.h(left, iT, 0, 0);
            if (!zH && cVar.f6490a == 0 && cVar.f6507r != null) {
                cVar.f6507r = null;
            }
            if (zH) {
                v(2);
                g gVar = new g(this, view, i9, 9, 0);
                WeakHashMap weakHashMap = N.f4843a;
                view.postOnAnimation(gVar);
            } else {
                v(i9);
            }
            this.f24127p = false;
        }
    }

    @Override // B.a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f24123l == 1 && actionMasked == 0) {
            return true;
        }
        c cVar = this.f24124m;
        if (cVar != null) {
            cVar.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.f24132u = -1;
            VelocityTracker velocityTracker = this.f24131t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f24131t = null;
            }
        }
        if (this.f24131t == null) {
            this.f24131t = VelocityTracker.obtain();
        }
        this.f24131t.addMovement(motionEvent);
        if (actionMasked == 2 && !this.f24125n) {
            float fAbs = Math.abs(this.f24133v - motionEvent.getY());
            c cVar2 = this.f24124m;
            if (fAbs > cVar2.f6491b) {
                cVar2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.f24125n;
    }

    public final int t() {
        if (this.f24112a) {
            return this.f24118g;
        }
        return 0;
    }

    public final void u(int i8) {
        WeakReference weakReference;
        View view;
        if (i8 == -1) {
            if (this.f24115d) {
                return;
            } else {
                this.f24115d = true;
            }
        } else {
            if (!this.f24115d && this.f24114c == i8) {
                return;
            }
            this.f24115d = false;
            this.f24114c = Math.max(0, i8);
            this.f24120i = this.f24128q - i8;
        }
        if (this.f24123l != 4 || (weakReference = this.f24129r) == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        view.requestLayout();
    }

    public final void v(int i8) {
        if (this.f24123l == i8) {
            return;
        }
        this.f24123l = i8;
        if (i8 == 6 || i8 == 3) {
            x(true);
        } else if (i8 == 5 || i8 == 4) {
            x(false);
        }
    }

    public final boolean w(View view, float f8) {
        if (this.f24122k) {
            return true;
        }
        if (view.getTop() < this.f24120i) {
            return false;
        }
        return Math.abs(((f8 * 0.1f) + ((float) view.getTop())) - ((float) this.f24120i)) / ((float) this.f24114c) > 0.5f;
    }

    public final void x(boolean z7) {
        WeakReference weakReference = this.f24129r;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z7) {
                if (this.f24135x != null) {
                    return;
                } else {
                    this.f24135x = new HashMap(childCount);
                }
            }
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt = coordinatorLayout.getChildAt(i8);
                if (childAt != this.f24129r.get()) {
                    if (z7) {
                        this.f24135x.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap weakHashMap = N.f4843a;
                        childAt.setImportantForAccessibility(4);
                    } else {
                        HashMap map = this.f24135x;
                        if (map != null && map.containsKey(childAt)) {
                            int iIntValue = ((Integer) this.f24135x.get(childAt)).intValue();
                            WeakHashMap weakHashMap2 = N.f4843a;
                            childAt.setImportantForAccessibility(iIntValue);
                        }
                    }
                }
            }
            if (z7) {
                return;
            }
            this.f24135x = null;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i8;
        this.f24112a = true;
        this.f24123l = 4;
        this.f24136y = new p098m4.a(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p060h4.a.f25408a);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(2);
        if (typedValuePeekValue != null && (i8 = typedValuePeekValue.data) == -1) {
            u(i8);
        } else {
            u(typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.f24121j = typedArrayObtainStyledAttributes.getBoolean(1, false);
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(0, true);
        if (this.f24112a != z7) {
            this.f24112a = z7;
            if (this.f24129r != null) {
                if (z7) {
                    this.f24120i = Math.max(this.f24128q - this.f24117f, this.f24118g);
                } else {
                    this.f24120i = this.f24128q - this.f24117f;
                }
            }
            v((this.f24112a && this.f24123l == 6) ? 3 : this.f24123l);
        }
        this.f24122k = typedArrayObtainStyledAttributes.getBoolean(3, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f24113b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
