package androidx.appcompat.widget;

import U4.b;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import com.google.android.gms.common.api.d;
import p039f.S;
import p079k.C;
import p079k.m;
import p079k.n;
import p079k.o;
import p079k.q;
import p079k.z;
import p086l.C3032i;
import p086l.C3040m;
import p086l.C3042n;
import p086l.C3046p;
import p086l.D0;
import p086l.E0;
import p086l.InterfaceC3044o;
import p086l.InterfaceC3048q;
import p086l.w1;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends E0 implements n, C {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public o f8820V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public Context f8821W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f8822a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f8823b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public C3042n f8824c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public z f8825d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public m f8826e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f8827f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f8828g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f8829h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final int f8830i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public InterfaceC3048q f8831j0;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f8 = context.getResources().getDisplayMetrics().density;
        this.f8829h0 = (int) (56.0f * f8);
        this.f8830i0 = (int) (f8 * 4.0f);
        this.f8821W = context;
        this.f8822a0 = 0;
    }

    public static C3046p j() {
        C3046p c3046p = new C3046p(-2, -2);
        c3046p.f26338a = false;
        ((LinearLayout.LayoutParams) c3046p).gravity = 16;
        return c3046p;
    }

    public static C3046p k(ViewGroup.LayoutParams layoutParams) {
        C3046p c3046p;
        if (layoutParams == null) {
            return j();
        }
        if (layoutParams instanceof C3046p) {
            C3046p c3046p2 = (C3046p) layoutParams;
            c3046p = new C3046p(c3046p2);
            c3046p.f26338a = c3046p2.f26338a;
        } else {
            c3046p = new C3046p(layoutParams);
        }
        if (((LinearLayout.LayoutParams) c3046p).gravity <= 0) {
            ((LinearLayout.LayoutParams) c3046p).gravity = 16;
        }
        return c3046p;
    }

    @Override // p079k.n
    public final boolean a(q qVar) {
        return this.f8820V.q(qVar, null, 0);
    }

    @Override // p079k.C
    public final void b(o oVar) {
        this.f8820V = oVar;
    }

    @Override // p086l.E0, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C3046p;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // p086l.E0
    /* JADX INFO: renamed from: f */
    public final /* bridge */ /* synthetic */ D0 generateDefaultLayoutParams() {
        return j();
    }

    @Override // p086l.E0
    /* JADX INFO: renamed from: g */
    public final D0 generateLayoutParams(AttributeSet attributeSet) {
        return new C3046p(getContext(), attributeSet);
    }

    @Override // p086l.E0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return j();
    }

    @Override // p086l.E0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public Menu getMenu() {
        if (this.f8820V == null) {
            Context context = getContext();
            o oVar = new o(context);
            this.f8820V = oVar;
            oVar.f25825e = new S(this, 5);
            C3042n c3042n = new C3042n(context);
            this.f8824c0 = c3042n;
            c3042n.f26306R = true;
            c3042n.f26307S = true;
            z bVar = this.f8825d0;
            if (bVar == null) {
                bVar = new b();
            }
            c3042n.f26299K = bVar;
            this.f8820V.b(c3042n, this.f8821W);
            C3042n c3042n2 = this.f8824c0;
            c3042n2.f26302N = this;
            this.f8820V = c3042n2.f26297I;
        }
        return this.f8820V;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C3042n c3042n = this.f8824c0;
        C3040m c3040m = c3042n.f26303O;
        if (c3040m != null) {
            return c3040m.getDrawable();
        }
        if (c3042n.f26305Q) {
            return c3042n.f26304P;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f8822a0;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // p086l.E0
    /* JADX INFO: renamed from: h */
    public final /* bridge */ /* synthetic */ D0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public final boolean l(int i8) {
        boolean zA = false;
        if (i8 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i8 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i8);
        if (i8 < getChildCount() && (childAt instanceof InterfaceC3044o)) {
            zA = ((InterfaceC3044o) childAt).a();
        }
        return (i8 <= 0 || !(childAt2 instanceof InterfaceC3044o)) ? zA : zA | ((InterfaceC3044o) childAt2).b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C3042n c3042n = this.f8824c0;
        if (c3042n != null) {
            c3042n.i();
            if (this.f8824c0.j()) {
                this.f8824c0.h();
                this.f8824c0.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C3042n c3042n = this.f8824c0;
        if (c3042n != null) {
            c3042n.h();
            C3032i c3032i = c3042n.f26314Z;
            if (c3032i == null || !c3032i.b()) {
                return;
            }
            c3032i.f25898j.dismiss();
        }
    }

    @Override // p086l.E0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int width;
        int paddingLeft;
        if (!this.f8827f0) {
            super.onLayout(z7, i8, i9, i10, i11);
            return;
        }
        int childCount = getChildCount();
        int i12 = (i11 - i9) / 2;
        int dividerWidth = getDividerWidth();
        int i13 = i10 - i8;
        int paddingRight = (i13 - getPaddingRight()) - getPaddingLeft();
        boolean z8 = w1.f26407a;
        boolean z9 = getLayoutDirection() == 1;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                C3046p c3046p = (C3046p) childAt.getLayoutParams();
                if (c3046p.f26338a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (l(i16)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z9) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) c3046p).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c3046p).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i17 = i12 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i17, width, measuredHeight + i17);
                    paddingRight -= measuredWidth;
                    i14 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c3046p).leftMargin) + ((LinearLayout.LayoutParams) c3046p).rightMargin;
                    l(i16);
                    i15++;
                }
            }
        }
        if (childCount == 1 && i14 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i18 = (i13 / 2) - (measuredWidth2 / 2);
            int i19 = i12 - (measuredHeight2 / 2);
            childAt2.layout(i18, i19, measuredWidth2 + i18, measuredHeight2 + i19);
            return;
        }
        int i20 = i15 - (i14 ^ 1);
        int iMax = Math.max(0, i20 > 0 ? paddingRight / i20 : 0);
        if (z9) {
            int width2 = getWidth() - getPaddingRight();
            for (int i21 = 0; i21 < childCount; i21++) {
                View childAt3 = getChildAt(i21);
                C3046p c3046p2 = (C3046p) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c3046p2.f26338a) {
                    int i22 = width2 - ((LinearLayout.LayoutParams) c3046p2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i23 = i12 - (measuredHeight3 / 2);
                    childAt3.layout(i22 - measuredWidth3, i23, i22, measuredHeight3 + i23);
                    width2 = i22 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c3046p2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i24 = 0; i24 < childCount; i24++) {
            View childAt4 = getChildAt(i24);
            C3046p c3046p3 = (C3046p) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c3046p3.f26338a) {
                int i25 = paddingLeft2 + ((LinearLayout.LayoutParams) c3046p3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i26 = i12 - (measuredHeight4 / 2);
                childAt4.layout(i25, i26, i25 + measuredWidth4, measuredHeight4 + i26);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) c3046p3).rightMargin + iMax + i25;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v26 */
    @Override // p086l.E0, android.view.View
    public final void onMeasure(int i8, int i9) {
        int i10;
        int i11;
        boolean z7;
        int i12;
        int i13;
        ?? r7;
        int i14;
        o oVar;
        boolean z8 = this.f8827f0;
        boolean z9 = View.MeasureSpec.getMode(i8) == 1073741824;
        this.f8827f0 = z9;
        if (z8 != z9) {
            this.f8828g0 = 0;
        }
        int size = View.MeasureSpec.getSize(i8);
        if (this.f8827f0 && (oVar = this.f8820V) != null && size != this.f8828g0) {
            this.f8828g0 = size;
            oVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.f8827f0 || childCount <= 0) {
            for (int i15 = 0; i15 < childCount; i15++) {
                C3046p c3046p = (C3046p) getChildAt(i15).getLayoutParams();
                ((LinearLayout.LayoutParams) c3046p).rightMargin = 0;
                ((LinearLayout.LayoutParams) c3046p).leftMargin = 0;
            }
            super.onMeasure(i8, i9);
            return;
        }
        int mode = View.MeasureSpec.getMode(i9);
        int size2 = View.MeasureSpec.getSize(i8);
        int size3 = View.MeasureSpec.getSize(i9);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i9, paddingBottom, -2);
        int i16 = size2 - paddingRight;
        int i17 = this.f8829h0;
        int i18 = i16 / i17;
        int i19 = i16 % i17;
        if (i18 == 0) {
            setMeasuredDimension(i16, 0);
            return;
        }
        int i20 = (i19 / i18) + i17;
        int childCount2 = getChildCount();
        int i21 = 0;
        int iMax = 0;
        int i22 = 0;
        boolean z10 = false;
        long j8 = 0;
        int i23 = 0;
        int iMax2 = 0;
        while (true) {
            i10 = this.f8830i0;
            if (i22 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i22);
            int i24 = size3;
            if (childAt.getVisibility() != 8) {
                boolean z11 = childAt instanceof ActionMenuItemView;
                int i25 = i21 + 1;
                if (z11) {
                    childAt.setPadding(i10, 0, i10, 0);
                }
                C3046p c3046p2 = (C3046p) childAt.getLayoutParams();
                c3046p2.f26343f = false;
                c3046p2.f26340c = 0;
                c3046p2.f26339b = 0;
                c3046p2.f26341d = false;
                ((LinearLayout.LayoutParams) c3046p2).leftMargin = 0;
                ((LinearLayout.LayoutParams) c3046p2).rightMargin = 0;
                c3046p2.f26342e = z11 && (TextUtils.isEmpty(((ActionMenuItemView) childAt).getText()) ^ true);
                int i26 = c3046p2.f26338a ? 1 : i18;
                C3046p c3046p3 = (C3046p) childAt.getLayoutParams();
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z11 ? (ActionMenuItemView) childAt : null;
                boolean z12 = actionMenuItemView != null && (TextUtils.isEmpty(actionMenuItemView.getText()) ^ true);
                if (i26 <= 0 || (z12 && i26 < 2)) {
                    i14 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i26 * i20, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i14 = measuredWidth / i20;
                    if (measuredWidth % i20 != 0) {
                        i14++;
                    }
                    if (z12 && i14 < 2) {
                        i14 = 2;
                    }
                }
                c3046p3.f26341d = !c3046p3.f26338a && z12;
                c3046p3.f26339b = i14;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i14 * i20, 1073741824), iMakeMeasureSpec);
                iMax = Math.max(iMax, i14);
                if (c3046p2.f26341d) {
                    i23++;
                }
                if (c3046p2.f26338a) {
                    z10 = true;
                }
                i18 -= i14;
                iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
                if (i14 == 1) {
                    j8 |= (long) (1 << i22);
                }
                i21 = i25;
            }
            i22++;
            size3 = i24;
            paddingBottom = paddingBottom;
            i16 = i16;
        }
        int i27 = i16;
        int i28 = size3;
        int i29 = iMax2;
        boolean z13 = z10 && i21 == 2;
        boolean z14 = false;
        while (true) {
            if (i23 <= 0 || i18 <= 0) {
                i11 = i29;
                z7 = z14;
                break;
            }
            int i30 = d.API_PRIORITY_OTHER;
            int i31 = 0;
            int i32 = 0;
            long j9 = 0;
            while (i32 < childCount2) {
                int i33 = i29;
                C3046p c3046p4 = (C3046p) getChildAt(i32).getLayoutParams();
                boolean z15 = z14;
                if (c3046p4.f26341d) {
                    int i34 = c3046p4.f26339b;
                    if (i34 < i30) {
                        j9 = 1 << i32;
                        i30 = i34;
                        i31 = 1;
                    } else if (i34 == i30) {
                        i31++;
                        j9 |= 1 << i32;
                    }
                }
                i32++;
                z14 = z15;
                i29 = i33;
            }
            i11 = i29;
            z7 = z14;
            j8 |= j9;
            if (i31 > i18) {
                break;
            }
            int i35 = i30 + 1;
            int i36 = 0;
            while (i36 < childCount2) {
                View childAt2 = getChildAt(i36);
                C3046p c3046p5 = (C3046p) childAt2.getLayoutParams();
                int i37 = mode;
                int i38 = childMeasureSpec;
                int i39 = childCount2;
                long j10 = 1 << i36;
                if ((j9 & j10) != 0) {
                    if (z13 && c3046p5.f26342e) {
                        r7 = 1;
                        r7 = 1;
                        if (i18 == 1) {
                            childAt2.setPadding(i10 + i20, 0, i10, 0);
                        }
                    } else {
                        r7 = 1;
                    }
                    c3046p5.f26339b += r7;
                    c3046p5.f26343f = r7;
                    i18--;
                } else if (c3046p5.f26339b == i35) {
                    j8 |= j10;
                }
                i36++;
                childMeasureSpec = i38;
                mode = i37;
                childCount2 = i39;
            }
            i29 = i11;
            z14 = true;
        }
        int i40 = childMeasureSpec;
        int i41 = childCount2;
        boolean z16 = !z10 && i21 == 1;
        if (i18 <= 0 || j8 == 0 || (i18 >= i21 - 1 && !z16 && iMax <= 1)) {
            i12 = i41;
        } else {
            float fBitCount = Long.bitCount(j8);
            if (!z16) {
                if ((j8 & 1) != 0 && !((C3046p) getChildAt(0).getLayoutParams()).f26342e) {
                    fBitCount -= 0.5f;
                }
                int i42 = i41 - 1;
                if ((j8 & ((long) (1 << i42))) != 0 && !((C3046p) getChildAt(i42).getLayoutParams()).f26342e) {
                    fBitCount -= 0.5f;
                }
            }
            int i43 = fBitCount > 0.0f ? (int) ((i18 * i20) / fBitCount) : 0;
            i12 = i41;
            for (int i44 = 0; i44 < i12; i44++) {
                if ((j8 & ((long) (1 << i44))) != 0) {
                    View childAt3 = getChildAt(i44);
                    C3046p c3046p6 = (C3046p) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c3046p6.f26340c = i43;
                        c3046p6.f26343f = true;
                        if (i44 == 0 && !c3046p6.f26342e) {
                            ((LinearLayout.LayoutParams) c3046p6).leftMargin = (-i43) / 2;
                        }
                    } else if (c3046p6.f26338a) {
                        c3046p6.f26340c = i43;
                        c3046p6.f26343f = true;
                        ((LinearLayout.LayoutParams) c3046p6).rightMargin = (-i43) / 2;
                    } else {
                        if (i44 != 0) {
                            ((LinearLayout.LayoutParams) c3046p6).leftMargin = i43 / 2;
                        }
                        if (i44 != i12 - 1) {
                            ((LinearLayout.LayoutParams) c3046p6).rightMargin = i43 / 2;
                        }
                    }
                    z7 = true;
                }
            }
        }
        if (z7) {
            int i45 = 0;
            while (i45 < i12) {
                View childAt4 = getChildAt(i45);
                C3046p c3046p7 = (C3046p) childAt4.getLayoutParams();
                if (c3046p7.f26343f) {
                    i13 = i40;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c3046p7.f26339b * i20) + c3046p7.f26340c, 1073741824), i13);
                } else {
                    i13 = i40;
                }
                i45++;
                i40 = i13;
            }
        }
        setMeasuredDimension(i27, mode != 1073741824 ? i11 : i28);
    }

    public void setExpandedActionViewsExclusive(boolean z7) {
        this.f8824c0.f26311W = z7;
    }

    public void setOnMenuItemClickListener(InterfaceC3048q interfaceC3048q) {
        this.f8831j0 = interfaceC3048q;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C3042n c3042n = this.f8824c0;
        C3040m c3040m = c3042n.f26303O;
        if (c3040m != null) {
            c3040m.setImageDrawable(drawable);
        } else {
            c3042n.f26305Q = true;
            c3042n.f26304P = drawable;
        }
    }

    public void setOverflowReserved(boolean z7) {
        this.f8823b0 = z7;
    }

    public void setPopupTheme(int i8) {
        if (this.f8822a0 != i8) {
            this.f8822a0 = i8;
            if (i8 == 0) {
                this.f8821W = getContext();
            } else {
                this.f8821W = new ContextThemeWrapper(getContext(), i8);
            }
        }
    }

    public void setPresenter(C3042n c3042n) {
        this.f8824c0 = c3042n;
        c3042n.f26302N = this;
        this.f8820V = c3042n.f26297I;
    }

    @Override // p086l.E0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C3046p(getContext(), attributeSet);
    }
}
