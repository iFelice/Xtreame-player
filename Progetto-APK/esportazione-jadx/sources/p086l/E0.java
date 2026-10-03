package p086l;

import N.N;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import p031e.a;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public abstract class E0 extends ViewGroup {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f26089G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f26090H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f26091I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f26092J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f26093K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f26094L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public float f26095M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f26096N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int[] f26097O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int[] f26098P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Drawable f26099Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f26100R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f26101S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f26102T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f26103U;

    public E0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f26089G = true;
        this.f26090H = -1;
        this.f26091I = 0;
        this.f26093K = 8388659;
        int[] iArr = a.f24699n;
        u uVarJ = u.J(context, attributeSet, iArr, 0, 0);
        N.l(this, context, iArr, attributeSet, (TypedArray) uVarJ.f27279I, 0);
        int iX = uVarJ.x(1, -1);
        if (iX >= 0) {
            setOrientation(iX);
        }
        int iX2 = uVarJ.x(0, -1);
        if (iX2 >= 0) {
            setGravity(iX2);
        }
        boolean zN = uVarJ.n(2, true);
        if (!zN) {
            setBaselineAligned(zN);
        }
        this.f26095M = ((TypedArray) uVarJ.f27279I).getFloat(4, -1.0f);
        this.f26090H = uVarJ.x(3, -1);
        this.f26096N = uVarJ.n(7, false);
        setDividerDrawable(uVarJ.s(5));
        this.f26102T = uVarJ.x(8, 0);
        this.f26103U = uVarJ.r(6, 0);
        uVarJ.P();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof D0;
    }

    public final void d(Canvas canvas, int i8) {
        this.f26099Q.setBounds(getPaddingLeft() + this.f26103U, i8, (getWidth() - getPaddingRight()) - this.f26103U, this.f26101S + i8);
        this.f26099Q.draw(canvas);
    }

    public final void e(Canvas canvas, int i8) {
        this.f26099Q.setBounds(i8, getPaddingTop() + this.f26103U, this.f26100R + i8, (getHeight() - getPaddingBottom()) - this.f26103U);
        this.f26099Q.draw(canvas);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public D0 generateDefaultLayoutParams() {
        int i8 = this.f26092J;
        if (i8 == 0) {
            return new D0(-2, -2);
        }
        if (i8 == 1) {
            return new D0(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public D0 generateLayoutParams(AttributeSet attributeSet) {
        return new D0(getContext(), attributeSet);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i8;
        if (this.f26090H < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i9 = this.f26090H;
        if (childCount <= i9) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i9);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f26090H == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f26091I;
        if (this.f26092J == 1 && (i8 = this.f26093K & 112) != 48) {
            if (i8 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f26094L) / 2;
            } else if (i8 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f26094L;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((D0) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f26090H;
    }

    public Drawable getDividerDrawable() {
        return this.f26099Q;
    }

    public int getDividerPadding() {
        return this.f26103U;
    }

    public int getDividerWidth() {
        return this.f26100R;
    }

    public int getGravity() {
        return this.f26093K;
    }

    public int getOrientation() {
        return this.f26092J;
    }

    public int getShowDividers() {
        return this.f26102T;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f26095M;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public D0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof D0) {
            return new D0((D0) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new D0((ViewGroup.MarginLayoutParams) layoutParams) : new D0(layoutParams);
    }

    public final boolean i(int i8) {
        if (i8 == 0) {
            return (this.f26102T & 1) != 0;
        }
        if (i8 == getChildCount()) {
            return (this.f26102T & 4) != 0;
        }
        if ((this.f26102T & 2) == 0) {
            return false;
        }
        for (int i9 = i8 - 1; i9 >= 0; i9--) {
            if (getChildAt(i9).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i8;
        int bottom;
        if (this.f26099Q == null) {
            return;
        }
        int i9 = 0;
        if (this.f26092J == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i9 < virtualChildCount) {
                View childAt = getChildAt(i9);
                if (childAt != null && childAt.getVisibility() != 8 && i(i9)) {
                    d(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((D0) childAt.getLayoutParams())).topMargin) - this.f26101S);
                }
                i9++;
            }
            if (i(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                if (childAt2 == null) {
                    bottom = (getHeight() - getPaddingBottom()) - this.f26101S;
                } else {
                    bottom = childAt2.getBottom() + ((LinearLayout.LayoutParams) ((D0) childAt2.getLayoutParams())).bottomMargin;
                }
                d(canvas, bottom);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean z7 = w1.f26407a;
        boolean z8 = getLayoutDirection() == 1;
        while (i9 < virtualChildCount2) {
            View childAt3 = getChildAt(i9);
            if (childAt3 != null && childAt3.getVisibility() != 8 && i(i9)) {
                D0 d6 = (D0) childAt3.getLayoutParams();
                e(canvas, z8 ? childAt3.getRight() + ((LinearLayout.LayoutParams) d6).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) d6).leftMargin) - this.f26100R);
            }
            i9++;
        }
        if (i(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                D0 d8 = (D0) childAt4.getLayoutParams();
                if (z8) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) d8).leftMargin;
                    i8 = this.f26100R;
                    right = left - i8;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) d8).rightMargin;
                }
            } else if (z8) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i8 = this.f26100R;
                right = left - i8;
            }
            e(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:62:0x0158  */
    /* JADX WARN: Code duplicated, block: B:65:0x0161  */
    /* JADX WARN: Code duplicated, block: B:67:0x0165  */
    /* JADX WARN: Code duplicated, block: B:69:0x0169  */
    /* JADX WARN: Code duplicated, block: B:71:0x016e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0176  */
    /* JADX WARN: Code duplicated, block: B:74:0x0184  */
    /* JADX WARN: Code duplicated, block: B:76:0x018a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0193  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a7  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int paddingLeft;
        int i12;
        int i13;
        int i14;
        int i15;
        int baseline;
        int i16;
        int i17;
        int measuredHeight;
        int paddingTop;
        int i18;
        int i19;
        int i20;
        int i21 = 8;
        if (this.f26092J == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i22 = i10 - i8;
            int paddingRight = i22 - getPaddingRight();
            int paddingRight2 = (i22 - paddingLeft2) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i23 = this.f26093K;
            int i24 = i23 & 112;
            int i25 = 8388615 & i23;
            if (i24 != 16) {
                paddingTop = i24 != 80 ? getPaddingTop() : ((getPaddingTop() + i11) - i9) - this.f26094L;
            } else {
                paddingTop = getPaddingTop() + (((i11 - i9) - this.f26094L) / 2);
            }
            int i26 = 0;
            while (i26 < virtualChildCount) {
                View childAt = getChildAt(i26);
                if (childAt != null && childAt.getVisibility() != i21) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    D0 d6 = (D0) childAt.getLayoutParams();
                    int i27 = ((LinearLayout.LayoutParams) d6).gravity;
                    if (i27 < 0) {
                        i27 = i25;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i27, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i20 = ((LinearLayout.LayoutParams) d6).leftMargin + paddingLeft2;
                        } else {
                            i18 = paddingRight - measuredWidth;
                            i19 = ((LinearLayout.LayoutParams) d6).rightMargin;
                        }
                        if (i(i26)) {
                            paddingTop += this.f26101S;
                        }
                        int i28 = paddingTop + ((LinearLayout.LayoutParams) d6).topMargin;
                        childAt.layout(i20, i28, measuredWidth + i20, i28 + measuredHeight2);
                        paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) d6).bottomMargin + i28;
                    } else {
                        i18 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft2 + ((LinearLayout.LayoutParams) d6).leftMargin;
                        i19 = ((LinearLayout.LayoutParams) d6).rightMargin;
                    }
                    i20 = i18 - i19;
                    if (i(i26)) {
                        paddingTop += this.f26101S;
                    }
                    int i29 = paddingTop + ((LinearLayout.LayoutParams) d6).topMargin;
                    childAt.layout(i20, i29, measuredWidth + i20, i29 + measuredHeight2);
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) d6).bottomMargin + i29;
                }
                i26++;
                i21 = 8;
            }
            return;
        }
        boolean z8 = w1.f26407a;
        boolean z9 = getLayoutDirection() == 1;
        int paddingTop2 = getPaddingTop();
        int i30 = i11 - i9;
        int paddingBottom = i30 - getPaddingBottom();
        int paddingBottom2 = (i30 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i31 = this.f26093K;
        int i32 = 8388615 & i31;
        int i33 = i31 & 112;
        boolean z10 = this.f26089G;
        int[] iArr = this.f26097O;
        int[] iArr2 = this.f26098P;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i32, getLayoutDirection());
        if (absoluteGravity2 != 1) {
            paddingLeft = absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i10) - i8) - this.f26094L;
        } else {
            paddingLeft = getPaddingLeft() + (((i10 - i8) - this.f26094L) / 2);
        }
        if (z9) {
            i12 = virtualChildCount2 - 1;
            i13 = -1;
        } else {
            i12 = 0;
            i13 = 1;
        }
        int i34 = 0;
        while (i34 < virtualChildCount2) {
            int i35 = (i13 * i34) + i12;
            View childAt2 = getChildAt(i35);
            if (childAt2 == null) {
                i14 = i12;
            } else {
                i14 = i12;
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight3 = childAt2.getMeasuredHeight();
                    D0 d8 = (D0) childAt2.getLayoutParams();
                    if (z10) {
                        i15 = virtualChildCount2;
                        baseline = ((LinearLayout.LayoutParams) d8).height != -1 ? childAt2.getBaseline() : -1;
                        i16 = ((LinearLayout.LayoutParams) d8).gravity;
                        if (i16 < 0) {
                            i16 = i33;
                        }
                        i17 = i16 & 112;
                        if (i17 != 16) {
                            measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) d8).topMargin) - ((LinearLayout.LayoutParams) d8).bottomMargin;
                        } else if (i17 != 48) {
                            measuredHeight = ((LinearLayout.LayoutParams) d8).topMargin + paddingTop2;
                            if (baseline != -1) {
                                measuredHeight = (iArr[1] - baseline) + measuredHeight;
                            }
                        } else if (i17 != 80) {
                            measuredHeight = paddingTop2;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) d8).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                            }
                        }
                        if (i(i35)) {
                            paddingLeft += this.f26100R;
                        }
                        int i36 = paddingLeft + ((LinearLayout.LayoutParams) d8).leftMargin;
                        childAt2.layout(i36, measuredHeight, i36 + measuredWidth2, measuredHeight + measuredHeight3);
                        paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) d8).rightMargin + i36;
                    } else {
                        i15 = virtualChildCount2;
                    }
                    i16 = ((LinearLayout.LayoutParams) d8).gravity;
                    if (i16 < 0) {
                        i16 = i33;
                    }
                    i17 = i16 & 112;
                    if (i17 != 16) {
                        measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) d8).topMargin) - ((LinearLayout.LayoutParams) d8).bottomMargin;
                    } else if (i17 != 48) {
                        measuredHeight = ((LinearLayout.LayoutParams) d8).topMargin + paddingTop2;
                        if (baseline != -1) {
                            measuredHeight = (iArr[1] - baseline) + measuredHeight;
                        }
                    } else if (i17 != 80) {
                        measuredHeight = paddingTop2;
                    } else {
                        measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) d8).bottomMargin;
                        if (baseline != -1) {
                            measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                        }
                    }
                    if (i(i35)) {
                        paddingLeft += this.f26100R;
                    }
                    int i37 = paddingLeft + ((LinearLayout.LayoutParams) d8).leftMargin;
                    childAt2.layout(i37, measuredHeight, i37 + measuredWidth2, measuredHeight + measuredHeight3);
                    paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) d8).rightMargin + i37;
                }
                i34++;
                i12 = i14;
                i13 = i13;
                virtualChildCount2 = i15;
                i33 = i33;
            }
            i15 = virtualChildCount2;
            i34++;
            i12 = i14;
            i13 = i13;
            virtualChildCount2 = i15;
            i33 = i33;
        }
    }

    /* JADX WARN: Code duplicated, block: B:153:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:213:0x0483  */
    /* JADX WARN: Code duplicated, block: B:214:0x0488  */
    /* JADX WARN: Code duplicated, block: B:217:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:218:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:221:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:222:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:224:0x04db  */
    /* JADX WARN: Code duplicated, block: B:230:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:240:0x0533  */
    /* JADX WARN: Code duplicated, block: B:246:0x0543  */
    /* JADX WARN: Code duplicated, block: B:249:0x054b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:250:0x054d  */
    /* JADX WARN: Code duplicated, block: B:252:0x0556 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:253:0x0558  */
    /* JADX WARN: Code duplicated, block: B:280:0x05df  */
    /* JADX WARN: Code duplicated, block: B:282:0x05e5  */
    /* JADX WARN: Code duplicated, block: B:283:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:286:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:288:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:289:0x0607  */
    /* JADX WARN: Code duplicated, block: B:313:0x068c  */
    /* JADX WARN: Code duplicated, block: B:315:0x0693  */
    /* JADX WARN: Code duplicated, block: B:318:0x06af  */
    /* JADX WARN: Code duplicated, block: B:320:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:322:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:368:0x07c5  */
    /* JADX WARN: Code duplicated, block: B:373:0x07ef  */
    /* JADX WARN: Code duplicated, block: B:381:0x0800  */
    /* JADX WARN: Code duplicated, block: B:388:0x0837  */
    /* JADX WARN: Code duplicated, block: B:391:0x085a  */
    /* JADX WARN: Code duplicated, block: B:393:0x0868  */
    /* JADX WARN: Code duplicated, block: B:395:0x0874  */
    /* JADX WARN: Code duplicated, block: B:397:0x0880  */
    /* JADX WARN: Code duplicated, block: B:398:0x0895  */
    /* JADX WARN: Code duplicated, block: B:429:0x0617 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:437:0x0896 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:442:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    public void onMeasure(int i8, int i9) {
        char c8;
        int iMax;
        int i10;
        float f8;
        int i11;
        int i12;
        int i13;
        char c9;
        int i14;
        View childAt;
        int i15;
        int i16;
        int i17;
        int baseline;
        int i18;
        int iMakeMeasureSpec;
        int i19;
        View childAt2;
        D0 d6;
        int i20;
        View childAt3;
        D0 d8;
        float f9;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        boolean z7;
        boolean z8;
        D0 d9;
        int measuredWidth;
        boolean z9;
        int i27;
        boolean z10;
        int i28;
        int measuredHeight;
        boolean z11;
        int baseline2;
        int i29;
        int i30;
        boolean z12;
        int i31;
        int i32;
        D0 d10;
        boolean z13;
        int i33;
        boolean z14;
        int iMax2;
        int i34 = -2;
        int i35 = 1073741824;
        int i36 = 8;
        int i37 = Integer.MIN_VALUE;
        float f10 = 0.0f;
        if (this.f26092J == 1) {
            this.f26094L = 0;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i8);
            int mode2 = View.MeasureSpec.getMode(i9);
            int i38 = this.f26090H;
            boolean z15 = this.f26096N;
            int i39 = 0;
            float f11 = 0.0f;
            int iMax3 = 0;
            int iMax4 = 0;
            boolean z16 = false;
            int iMax5 = 0;
            int i40 = 0;
            int i41 = 0;
            boolean z17 = true;
            boolean z18 = false;
            while (i39 < virtualChildCount) {
                View childAt4 = getChildAt(i39);
                if (childAt4 == null) {
                    this.f26094L = this.f26094L;
                } else {
                    if (childAt4.getVisibility() != i36) {
                        if (i(i39)) {
                            this.f26094L += this.f26101S;
                        }
                        D0 d11 = (D0) childAt4.getLayoutParams();
                        float f12 = ((LinearLayout.LayoutParams) d11).weight;
                        f11 += f12;
                        if (mode2 == i35 && ((LinearLayout.LayoutParams) d11).height == 0 && f12 > f10) {
                            int i42 = this.f26094L;
                            this.f26094L = Math.max(i42, ((LinearLayout.LayoutParams) d11).topMargin + i42 + ((LinearLayout.LayoutParams) d11).bottomMargin);
                            d10 = d11;
                            z13 = true;
                        } else {
                            if (((LinearLayout.LayoutParams) d11).height != 0 || f12 <= f10) {
                                i32 = Integer.MIN_VALUE;
                            } else {
                                ((LinearLayout.LayoutParams) d11).height = i34;
                                i32 = 0;
                            }
                            int i43 = f11 == f10 ? this.f26094L : 0;
                            d10 = d11;
                            measureChildWithMargins(childAt4, i8, 0, i9, i43);
                            if (i32 != i37) {
                                ((LinearLayout.LayoutParams) d10).height = i32;
                            }
                            int measuredHeight2 = childAt4.getMeasuredHeight();
                            int i44 = this.f26094L;
                            this.f26094L = Math.max(i44, i44 + measuredHeight2 + ((LinearLayout.LayoutParams) d10).topMargin + ((LinearLayout.LayoutParams) d10).bottomMargin);
                            int i45 = iMax5;
                            if (z15) {
                                iMax5 = Math.max(measuredHeight2, i45);
                            }
                            z13 = z16;
                        }
                        if (i38 >= 0 && i38 == i39 + 1) {
                            this.f26091I = this.f26094L;
                        }
                        if (i39 < i38 && ((LinearLayout.LayoutParams) d10).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        i33 = mode;
                        if (i33 == 1073741824 || ((LinearLayout.LayoutParams) d10).width != -1) {
                            z14 = false;
                        } else {
                            z14 = true;
                            z18 = true;
                        }
                        int i46 = ((LinearLayout.LayoutParams) d10).leftMargin + ((LinearLayout.LayoutParams) d10).rightMargin;
                        int measuredWidth2 = childAt4.getMeasuredWidth() + i46;
                        iMax2 = Math.max(i40, measuredWidth2);
                        int iCombineMeasuredStates = View.combineMeasuredStates(i41, childAt4.getMeasuredState());
                        boolean z19 = z17 && ((LinearLayout.LayoutParams) d10).width == -1;
                        if (((LinearLayout.LayoutParams) d10).weight > 0.0f) {
                            if (!z14) {
                                i46 = measuredWidth2;
                            }
                            iMax4 = Math.max(iMax4, i46);
                        } else {
                            int i47 = iMax4;
                            if (!z14) {
                                i46 = measuredWidth2;
                            }
                            iMax3 = Math.max(iMax3, i46);
                            iMax4 = i47;
                        }
                        z16 = z13;
                        i41 = iCombineMeasuredStates;
                        z17 = z19;
                    }
                    i39++;
                    mode = i33;
                    i40 = iMax2;
                    i38 = i38;
                    mode2 = mode2;
                    virtualChildCount = virtualChildCount;
                    i34 = -2;
                    i35 = 1073741824;
                    i36 = 8;
                    i37 = Integer.MIN_VALUE;
                    f10 = 0.0f;
                }
                i38 = i38;
                mode2 = mode2;
                i33 = mode;
                virtualChildCount = virtualChildCount;
                iMax2 = i40;
                i39++;
                mode = i33;
                i40 = iMax2;
                i38 = i38;
                mode2 = mode2;
                virtualChildCount = virtualChildCount;
                i34 = -2;
                i35 = 1073741824;
                i36 = 8;
                i37 = Integer.MIN_VALUE;
                f10 = 0.0f;
            }
            int i48 = mode2;
            int i49 = mode;
            int i50 = virtualChildCount;
            int iMax6 = iMax3;
            int i51 = iMax4;
            int i52 = iMax5;
            int i53 = i40;
            int iCombineMeasuredStates2 = i41;
            if (this.f26094L > 0 && i(i50)) {
                this.f26094L += this.f26101S;
            }
            int i54 = i48;
            if (z15 && (i54 == Integer.MIN_VALUE || i54 == 0)) {
                this.f26094L = 0;
                for (int i55 = 0; i55 < i50; i55++) {
                    View childAt5 = getChildAt(i55);
                    if (childAt5 == null) {
                        this.f26094L = this.f26094L;
                    } else if (childAt5.getVisibility() != 8) {
                        D0 d12 = (D0) childAt5.getLayoutParams();
                        int i56 = this.f26094L;
                        this.f26094L = Math.max(i56, i56 + i52 + ((LinearLayout.LayoutParams) d12).topMargin + ((LinearLayout.LayoutParams) d12).bottomMargin);
                    }
                }
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f26094L;
            this.f26094L = paddingBottom;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i9, 0);
            int i57 = (16777215 & iResolveSizeAndState) - this.f26094L;
            if (z16 || (i57 != 0 && f11 > 0.0f)) {
                float f13 = this.f26095M;
                if (f13 > 0.0f) {
                    f11 = f13;
                }
                this.f26094L = 0;
                int i58 = 0;
                while (i58 < i50) {
                    View childAt6 = getChildAt(i58);
                    if (childAt6.getVisibility() == 8) {
                        i29 = i54;
                    } else {
                        D0 d13 = (D0) childAt6.getLayoutParams();
                        float f14 = ((LinearLayout.LayoutParams) d13).weight;
                        if (f14 > 0.0f) {
                            int i59 = (int) ((i57 * f14) / f11);
                            f11 -= f14;
                            int i60 = i57 - i59;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i8, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) d13).leftMargin + ((LinearLayout.LayoutParams) d13).rightMargin, ((LinearLayout.LayoutParams) d13).width);
                            if (((LinearLayout.LayoutParams) d13).height == 0) {
                                i31 = 1073741824;
                                if (i54 == 1073741824) {
                                    if (i59 <= 0) {
                                        i59 = 0;
                                    }
                                    childAt6.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i59, 1073741824));
                                }
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt6.getMeasuredState() & (-256));
                                i57 = i60;
                            } else {
                                i31 = 1073741824;
                            }
                            int measuredHeight3 = childAt6.getMeasuredHeight() + i59;
                            if (measuredHeight3 < 0) {
                                measuredHeight3 = 0;
                            }
                            childAt6.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight3, i31));
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt6.getMeasuredState() & (-256));
                            i57 = i60;
                        }
                        int i61 = ((LinearLayout.LayoutParams) d13).leftMargin + ((LinearLayout.LayoutParams) d13).rightMargin;
                        int measuredWidth3 = childAt6.getMeasuredWidth() + i61;
                        int iMax7 = Math.max(i53, measuredWidth3);
                        if (i49 != 1073741824) {
                            i29 = i54;
                            i30 = -1;
                            if (((LinearLayout.LayoutParams) d13).width != -1) {
                            }
                            iMax6 = Math.max(iMax6, i61);
                            if (z17 || ((LinearLayout.LayoutParams) d13).width != i30) {
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            int i62 = this.f26094L;
                            this.f26094L = Math.max(i62, childAt6.getMeasuredHeight() + i62 + ((LinearLayout.LayoutParams) d13).topMargin + ((LinearLayout.LayoutParams) d13).bottomMargin);
                            z17 = z12;
                            i53 = iMax7;
                        } else {
                            i29 = i54;
                            i30 = -1;
                        }
                        i61 = measuredWidth3;
                        iMax6 = Math.max(iMax6, i61);
                        if (z17) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        int i63 = this.f26094L;
                        this.f26094L = Math.max(i63, childAt6.getMeasuredHeight() + i63 + ((LinearLayout.LayoutParams) d13).topMargin + ((LinearLayout.LayoutParams) d13).bottomMargin);
                        z17 = z12;
                        i53 = iMax7;
                    }
                    i58++;
                    i54 = i29;
                }
                this.f26094L = getPaddingBottom() + getPaddingTop() + this.f26094L;
            } else {
                iMax6 = Math.max(iMax6, i51);
                if (z15 && i54 != 1073741824) {
                    for (int i64 = 0; i64 < i50; i64++) {
                        View childAt7 = getChildAt(i64);
                        if (childAt7 != null && childAt7.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((D0) childAt7.getLayoutParams())).weight > 0.0f) {
                            childAt7.measure(View.MeasureSpec.makeMeasureSpec(childAt7.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i52, 1073741824));
                        }
                    }
                }
            }
            int i65 = i53;
            if (z17 || i49 == 1073741824) {
                iMax6 = i65;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax6, getSuggestedMinimumWidth()), i8, iCombineMeasuredStates2), iResolveSizeAndState);
            if (z18) {
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i66 = 0; i66 < i50; i66++) {
                    View childAt8 = getChildAt(i66);
                    if (childAt8.getVisibility() != 8) {
                        D0 d14 = (D0) childAt8.getLayoutParams();
                        if (((LinearLayout.LayoutParams) d14).width == -1) {
                            int i67 = ((LinearLayout.LayoutParams) d14).height;
                            ((LinearLayout.LayoutParams) d14).height = childAt8.getMeasuredHeight();
                            measureChildWithMargins(childAt8, iMakeMeasureSpec2, 0, i9, 0);
                            ((LinearLayout.LayoutParams) d14).height = i67;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.f26094L = 0;
        int virtualChildCount2 = getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i8);
        int mode4 = View.MeasureSpec.getMode(i9);
        if (this.f26097O == null || this.f26098P == null) {
            this.f26097O = new int[4];
            this.f26098P = new int[4];
        }
        int[] iArr = this.f26097O;
        int[] iArr2 = this.f26098P;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z20 = this.f26089G;
        boolean z21 = this.f26096N;
        boolean z22 = mode3 == 1073741824;
        int iMax8 = 0;
        float f15 = 0.0f;
        int i68 = 0;
        int i69 = 0;
        int i70 = 0;
        int iMax9 = 0;
        int iMax10 = 0;
        boolean z23 = true;
        boolean z24 = false;
        boolean z25 = false;
        while (i69 < virtualChildCount2) {
            View childAt9 = getChildAt(i69);
            if (childAt9 == null) {
                this.f26094L = this.f26094L;
                i26 = i69;
                z7 = z21;
                z8 = z20;
            } else {
                int i71 = iMax8;
                int i72 = i68;
                if (childAt9.getVisibility() == 8) {
                    z8 = z20;
                    iMax8 = i71;
                    i68 = i72;
                    i26 = i69;
                    z7 = z21;
                } else {
                    if (i(i69)) {
                        this.f26094L += this.f26100R;
                    }
                    D0 d15 = (D0) childAt9.getLayoutParams();
                    float f16 = ((LinearLayout.LayoutParams) d15).weight;
                    float f17 = f15 + f16;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) d15).width == 0 && f16 > 0.0f) {
                        if (z22) {
                            this.f26094L = ((LinearLayout.LayoutParams) d15).leftMargin + ((LinearLayout.LayoutParams) d15).rightMargin + this.f26094L;
                        } else {
                            int i73 = this.f26094L;
                            this.f26094L = Math.max(i73, ((LinearLayout.LayoutParams) d15).leftMargin + i73 + ((LinearLayout.LayoutParams) d15).rightMargin);
                        }
                        if (z20) {
                            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt9.measure(iMakeMeasureSpec3, iMakeMeasureSpec3);
                            d9 = d15;
                            i23 = i71;
                            i24 = i72;
                            i26 = i69;
                            z7 = z21;
                            z8 = z20;
                        } else {
                            d9 = d15;
                            i23 = i71;
                            i24 = i72;
                            i26 = i69;
                            i27 = 1073741824;
                            z7 = z21;
                            z8 = z20;
                            z9 = true;
                        }
                        if (mode4 == i27 && ((LinearLayout.LayoutParams) d9).height == -1) {
                            z10 = true;
                            z25 = true;
                        } else {
                            z10 = false;
                        }
                        i28 = ((LinearLayout.LayoutParams) d9).topMargin + ((LinearLayout.LayoutParams) d9).bottomMargin;
                        measuredHeight = childAt9.getMeasuredHeight() + i28;
                        int iCombineMeasuredStates3 = View.combineMeasuredStates(i70, childAt9.getMeasuredState());
                        if (!z8 && (baseline2 = childAt9.getBaseline()) != -1) {
                            int i74 = ((LinearLayout.LayoutParams) d9).gravity;
                            if (i74 < 0) {
                                i74 = this.f26093K;
                            }
                            int i75 = (((i74 & 112) >> 4) & (-2)) >> 1;
                            iArr[i75] = Math.max(iArr[i75], baseline2);
                            iArr2[i75] = Math.max(iArr2[i75], measuredHeight - baseline2);
                        }
                        int iMax11 = Math.max(i24, measuredHeight);
                        if (z23 || ((LinearLayout.LayoutParams) d9).height != -1) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        if (((LinearLayout.LayoutParams) d9).weight > 0.0f) {
                            if (z10) {
                                measuredHeight = i28;
                            }
                            iMax10 = Math.max(iMax10, measuredHeight);
                            iMax8 = i23;
                        } else {
                            if (z10) {
                                measuredHeight = i28;
                            }
                            iMax8 = Math.max(i23, measuredHeight);
                        }
                        i68 = iMax11;
                        i70 = iCombineMeasuredStates3;
                        z24 = z9;
                        z23 = z11;
                        f15 = f17;
                    } else {
                        int i76 = i69;
                        if (((LinearLayout.LayoutParams) d15).width == 0) {
                            f9 = 0.0f;
                            if (f16 > 0.0f) {
                                ((LinearLayout.LayoutParams) d15).width = -2;
                                i21 = 0;
                            }
                            if (f17 == f9) {
                                i22 = this.f26094L;
                            } else {
                                i22 = 0;
                            }
                            i23 = i71;
                            i24 = i72;
                            i25 = i21;
                            i26 = i76;
                            z7 = z21;
                            z8 = z20;
                            measureChildWithMargins(childAt9, i8, i22, i9, 0);
                            if (i25 != Integer.MIN_VALUE) {
                                d9 = d15;
                                ((LinearLayout.LayoutParams) d9).width = i25;
                            } else {
                                d9 = d15;
                            }
                            measuredWidth = childAt9.getMeasuredWidth();
                            if (z22) {
                                this.f26094L = ((LinearLayout.LayoutParams) d9).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) d9).rightMargin + this.f26094L;
                            } else {
                                int i77 = this.f26094L;
                                this.f26094L = Math.max(i77, i77 + measuredWidth + ((LinearLayout.LayoutParams) d9).leftMargin + ((LinearLayout.LayoutParams) d9).rightMargin);
                            }
                            if (z7) {
                                iMax9 = Math.max(measuredWidth, iMax9);
                            }
                        } else {
                            f9 = 0.0f;
                        }
                        i21 = Integer.MIN_VALUE;
                        if (f17 == f9) {
                            i22 = this.f26094L;
                        } else {
                            i22 = 0;
                        }
                        i23 = i71;
                        i24 = i72;
                        i25 = i21;
                        i26 = i76;
                        z7 = z21;
                        z8 = z20;
                        measureChildWithMargins(childAt9, i8, i22, i9, 0);
                        if (i25 != Integer.MIN_VALUE) {
                            d9 = d15;
                            ((LinearLayout.LayoutParams) d9).width = i25;
                        } else {
                            d9 = d15;
                        }
                        measuredWidth = childAt9.getMeasuredWidth();
                        if (z22) {
                            this.f26094L = ((LinearLayout.LayoutParams) d9).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) d9).rightMargin + this.f26094L;
                        } else {
                            int i78 = this.f26094L;
                            this.f26094L = Math.max(i78, i78 + measuredWidth + ((LinearLayout.LayoutParams) d9).leftMargin + ((LinearLayout.LayoutParams) d9).rightMargin);
                        }
                        if (z7) {
                            iMax9 = Math.max(measuredWidth, iMax9);
                        }
                    }
                    z9 = z24;
                    i27 = 1073741824;
                    if (mode4 == i27) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    i28 = ((LinearLayout.LayoutParams) d9).topMargin + ((LinearLayout.LayoutParams) d9).bottomMargin;
                    measuredHeight = childAt9.getMeasuredHeight() + i28;
                    int iCombineMeasuredStates4 = View.combineMeasuredStates(i70, childAt9.getMeasuredState());
                    if (!z8) {
                    }
                    int iMax12 = Math.max(i24, measuredHeight);
                    if (z23) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    if (((LinearLayout.LayoutParams) d9).weight > 0.0f) {
                        if (z10) {
                            measuredHeight = i28;
                        }
                        iMax10 = Math.max(iMax10, measuredHeight);
                        iMax8 = i23;
                    } else {
                        if (z10) {
                            measuredHeight = i28;
                        }
                        iMax8 = Math.max(i23, measuredHeight);
                    }
                    i68 = iMax12;
                    i70 = iCombineMeasuredStates4;
                    z24 = z9;
                    z23 = z11;
                    f15 = f17;
                }
            }
            i69 = i26 + 1;
            z21 = z7;
            z20 = z8;
        }
        int i79 = i68;
        boolean z26 = z21;
        boolean z27 = z20;
        if (this.f26094L > 0 && i(virtualChildCount2)) {
            this.f26094L += this.f26100R;
        }
        int i80 = iArr[1];
        if (i80 == -1 && iArr[0] == -1 && iArr[2] == -1) {
            c8 = 3;
            if (iArr[3] == -1) {
                iMax = i79;
            }
            if (z26 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
                this.f26094L = 0;
                for (i20 = 0; i20 < virtualChildCount2; i20++) {
                    childAt3 = getChildAt(i20);
                    if (childAt3 == null) {
                        this.f26094L = this.f26094L;
                    } else if (childAt3.getVisibility() == 8) {
                        d8 = (D0) childAt3.getLayoutParams();
                        if (z22) {
                            this.f26094L = ((LinearLayout.LayoutParams) d8).leftMargin + iMax9 + ((LinearLayout.LayoutParams) d8).rightMargin + this.f26094L;
                        } else {
                            int i81 = this.f26094L;
                            this.f26094L = Math.max(i81, i81 + iMax9 + ((LinearLayout.LayoutParams) d8).leftMargin + ((LinearLayout.LayoutParams) d8).rightMargin);
                        }
                    }
                }
            }
            int paddingRight = getPaddingRight() + getPaddingLeft() + this.f26094L;
            this.f26094L = paddingRight;
            int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i8, 0);
            i10 = (16777215 & iResolveSizeAndState2) - this.f26094L;
            if (!z24 || (i10 != 0 && f15 > 0.0f)) {
                f8 = this.f26095M;
                if (f8 > 0.0f) {
                    f15 = f8;
                }
                iArr[3] = -1;
                iArr[2] = -1;
                iArr[1] = -1;
                iArr[0] = -1;
                iArr2[3] = -1;
                iArr2[2] = -1;
                iArr2[1] = -1;
                iArr2[0] = -1;
                this.f26094L = 0;
                int iCombineMeasuredStates5 = i70;
                iMax = -1;
                i11 = 0;
                while (i11 < virtualChildCount2) {
                    childAt = getChildAt(i11);
                    if (childAt != null || childAt.getVisibility() == 8) {
                        i15 = i10;
                        virtualChildCount2 = virtualChildCount2;
                    } else {
                        D0 d16 = (D0) childAt.getLayoutParams();
                        float f18 = ((LinearLayout.LayoutParams) d16).weight;
                        if (f18 > 0.0f) {
                            int i82 = (int) ((i10 * f18) / f15);
                            float f19 = f15 - f18;
                            int i83 = i10 - i82;
                            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i9, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) d16).topMargin + ((LinearLayout.LayoutParams) d16).bottomMargin, ((LinearLayout.LayoutParams) d16).height);
                            if (((LinearLayout.LayoutParams) d16).width == 0) {
                                i18 = 1073741824;
                                if (mode3 == 1073741824) {
                                    if (i82 <= 0) {
                                        i82 = 0;
                                    }
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i82, 1073741824), childMeasureSpec2);
                                }
                                iCombineMeasuredStates5 = View.combineMeasuredStates(iCombineMeasuredStates5, childAt.getMeasuredState() & (-16777216));
                                f15 = f19;
                                i16 = i83;
                            } else {
                                i18 = 1073741824;
                            }
                            int measuredWidth4 = childAt.getMeasuredWidth() + i82;
                            if (measuredWidth4 < 0) {
                                measuredWidth4 = 0;
                            }
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i18), childMeasureSpec2);
                            iCombineMeasuredStates5 = View.combineMeasuredStates(iCombineMeasuredStates5, childAt.getMeasuredState() & (-16777216));
                            f15 = f19;
                            i16 = i83;
                        } else {
                            i16 = i10;
                        }
                        if (z22) {
                            this.f26094L = childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) d16).leftMargin + ((LinearLayout.LayoutParams) d16).rightMargin + this.f26094L;
                        } else {
                            int i84 = this.f26094L;
                            this.f26094L = Math.max(i84, childAt.getMeasuredWidth() + i84 + ((LinearLayout.LayoutParams) d16).leftMargin + ((LinearLayout.LayoutParams) d16).rightMargin);
                        }
                        boolean z28 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) d16).height == -1;
                        int i85 = ((LinearLayout.LayoutParams) d16).topMargin + ((LinearLayout.LayoutParams) d16).bottomMargin;
                        int measuredHeight4 = childAt.getMeasuredHeight() + i85;
                        iMax = Math.max(iMax, measuredHeight4);
                        if (!z28) {
                            i85 = measuredHeight4;
                        }
                        iMax8 = Math.max(iMax8, i85);
                        if (z23) {
                            i17 = -1;
                            boolean z29 = ((LinearLayout.LayoutParams) d16).height == -1;
                            if (!z27 && (baseline = childAt.getBaseline()) != i17) {
                                int i86 = ((LinearLayout.LayoutParams) d16).gravity;
                                if (i86 < 0) {
                                    i86 = this.f26093K;
                                }
                                int i87 = (((i86 & 112) >> 4) & (-2)) >> 1;
                                iArr[i87] = Math.max(iArr[i87], baseline);
                                iArr2[i87] = Math.max(iArr2[i87], measuredHeight4 - baseline);
                            }
                            z23 = z29;
                            i15 = i16;
                            f15 = f15;
                        } else {
                            i17 = -1;
                        }
                        if (!z27) {
                        }
                        z23 = z29;
                        i15 = i16;
                        f15 = f15;
                    }
                    i11++;
                    i10 = i15;
                    virtualChildCount2 = virtualChildCount2;
                }
                i12 = virtualChildCount2;
                this.f26094L = getPaddingRight() + getPaddingLeft() + this.f26094L;
                i13 = iArr[1];
                if (i13 != -1 && iArr[0] == -1 && iArr[2] == -1) {
                    c9 = 3;
                    if (iArr[3] == -1) {
                        i14 = 0;
                    }
                    i70 = iCombineMeasuredStates5;
                } else {
                    c9 = 3;
                }
                i14 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c9], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c9], Math.max(iArr[0], Math.max(i13, iArr[2]))));
                i70 = iCombineMeasuredStates5;
            } else {
                iMax8 = Math.max(iMax8, iMax10);
                if (z26 && mode3 != 1073741824) {
                    for (int i88 = 0; i88 < virtualChildCount2; i88++) {
                        View childAt10 = getChildAt(i88);
                        if (childAt10 != null && childAt10.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((D0) childAt10.getLayoutParams())).weight > 0.0f) {
                            childAt10.measure(View.MeasureSpec.makeMeasureSpec(iMax9, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt10.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
                i12 = virtualChildCount2;
                i14 = 0;
            }
            if (z23 || mode4 == 1073741824) {
                iMax8 = iMax;
            }
            setMeasuredDimension((i70 & (-16777216)) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i9, i70 << 16));
            if (z25) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                i19 = i12;
                while (i14 < i19) {
                    childAt2 = getChildAt(i14);
                    if (childAt2.getVisibility() != 8) {
                        d6 = (D0) childAt2.getLayoutParams();
                        if (((LinearLayout.LayoutParams) d6).height == -1) {
                            int i89 = ((LinearLayout.LayoutParams) d6).width;
                            ((LinearLayout.LayoutParams) d6).width = childAt2.getMeasuredWidth();
                            measureChildWithMargins(childAt2, i8, 0, iMakeMeasureSpec, 0);
                            ((LinearLayout.LayoutParams) d6).width = i89;
                        }
                    }
                    i14++;
                }
            }
        }
        c8 = 3;
        iMax = Math.max(i79, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c8], Math.max(iArr[0], Math.max(i80, iArr[2]))));
        if (z26) {
            this.f26094L = 0;
            while (i20 < virtualChildCount2) {
                childAt3 = getChildAt(i20);
                if (childAt3 == null) {
                    this.f26094L = this.f26094L;
                } else if (childAt3.getVisibility() == 8) {
                    d8 = (D0) childAt3.getLayoutParams();
                    if (z22) {
                        this.f26094L = ((LinearLayout.LayoutParams) d8).leftMargin + iMax9 + ((LinearLayout.LayoutParams) d8).rightMargin + this.f26094L;
                    } else {
                        int i810 = this.f26094L;
                        this.f26094L = Math.max(i810, i810 + iMax9 + ((LinearLayout.LayoutParams) d8).leftMargin + ((LinearLayout.LayoutParams) d8).rightMargin);
                    }
                }
            }
        }
        int paddingRight2 = getPaddingRight() + getPaddingLeft() + this.f26094L;
        this.f26094L = paddingRight2;
        int iResolveSizeAndState3 = View.resolveSizeAndState(Math.max(paddingRight2, getSuggestedMinimumWidth()), i8, 0);
        i10 = (16777215 & iResolveSizeAndState3) - this.f26094L;
        if (z24) {
            f8 = this.f26095M;
            if (f8 > 0.0f) {
                f15 = f8;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f26094L = 0;
            int iCombineMeasuredStates6 = i70;
            iMax = -1;
            i11 = 0;
            while (i11 < virtualChildCount2) {
                childAt = getChildAt(i11);
                if (childAt != null) {
                    i15 = i10;
                    virtualChildCount2 = virtualChildCount2;
                } else {
                    i15 = i10;
                    virtualChildCount2 = virtualChildCount2;
                }
                i11++;
                i10 = i15;
                virtualChildCount2 = virtualChildCount2;
            }
            i12 = virtualChildCount2;
            this.f26094L = getPaddingRight() + getPaddingLeft() + this.f26094L;
            i13 = iArr[1];
            if (i13 != -1) {
                c9 = 3;
                i14 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c9], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c9], Math.max(iArr[0], Math.max(i13, iArr[2]))));
            } else {
                c9 = 3;
                i14 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c9], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c9], Math.max(iArr[0], Math.max(i13, iArr[2]))));
            }
            i70 = iCombineMeasuredStates6;
        } else {
            f8 = this.f26095M;
            if (f8 > 0.0f) {
                f15 = f8;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f26094L = 0;
            int iCombineMeasuredStates7 = i70;
            iMax = -1;
            i11 = 0;
            while (i11 < virtualChildCount2) {
                childAt = getChildAt(i11);
                if (childAt != null) {
                    i15 = i10;
                    virtualChildCount2 = virtualChildCount2;
                } else {
                    i15 = i10;
                    virtualChildCount2 = virtualChildCount2;
                }
                i11++;
                i10 = i15;
                virtualChildCount2 = virtualChildCount2;
            }
            i12 = virtualChildCount2;
            this.f26094L = getPaddingRight() + getPaddingLeft() + this.f26094L;
            i13 = iArr[1];
            if (i13 != -1) {
                c9 = 3;
                i14 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c9], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c9], Math.max(iArr[0], Math.max(i13, iArr[2]))));
            } else {
                c9 = 3;
                i14 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c9], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c9], Math.max(iArr[0], Math.max(i13, iArr[2]))));
            }
            i70 = iCombineMeasuredStates7;
        }
        if (z23) {
            iMax8 = iMax;
        } else {
            iMax8 = iMax;
        }
        setMeasuredDimension((i70 & (-16777216)) | iResolveSizeAndState3, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i9, i70 << 16));
        if (z25) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            i19 = i12;
            while (i14 < i19) {
                childAt2 = getChildAt(i14);
                if (childAt2.getVisibility() != 8) {
                    d6 = (D0) childAt2.getLayoutParams();
                    if (((LinearLayout.LayoutParams) d6).height == -1) {
                        int i811 = ((LinearLayout.LayoutParams) d6).width;
                        ((LinearLayout.LayoutParams) d6).width = childAt2.getMeasuredWidth();
                        measureChildWithMargins(childAt2, i8, 0, iMakeMeasureSpec, 0);
                        ((LinearLayout.LayoutParams) d6).width = i811;
                    }
                }
                i14++;
            }
        }
    }

    public void setBaselineAligned(boolean z7) {
        this.f26089G = z7;
    }

    public void setBaselineAlignedChildIndex(int i8) {
        if (i8 >= 0 && i8 < getChildCount()) {
            this.f26090H = i8;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f26099Q) {
            return;
        }
        this.f26099Q = drawable;
        if (drawable != null) {
            this.f26100R = drawable.getIntrinsicWidth();
            this.f26101S = drawable.getIntrinsicHeight();
        } else {
            this.f26100R = 0;
            this.f26101S = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i8) {
        this.f26103U = i8;
    }

    public void setGravity(int i8) {
        if (this.f26093K != i8) {
            if ((8388615 & i8) == 0) {
                i8 |= 8388611;
            }
            if ((i8 & 112) == 0) {
                i8 |= 48;
            }
            this.f26093K = i8;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i8) {
        int i9 = i8 & 8388615;
        int i10 = this.f26093K;
        if ((8388615 & i10) != i9) {
            this.f26093K = i9 | ((-8388616) & i10);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z7) {
        this.f26096N = z7;
    }

    public void setOrientation(int i8) {
        if (this.f26092J != i8) {
            this.f26092J = i8;
            requestLayout();
        }
    }

    public void setShowDividers(int i8) {
        if (i8 != this.f26102T) {
            requestLayout();
        }
        this.f26102T = i8;
    }

    public void setVerticalGravity(int i8) {
        int i9 = i8 & 112;
        int i10 = this.f26093K;
        if ((i10 & 112) != i9) {
            this.f26093K = i9 | (i10 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f8) {
        this.f26095M = Math.max(0.0f, f8);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
