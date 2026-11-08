package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ScaleFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public float f9186G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public float f9187H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public float f9188I;

    public ScaleFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9186G = 1.0f;
        this.f9187H = 1.0f;
        this.f9188I = 1.0f;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i8, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i8, layoutParams);
        view.setScaleX(this.f9188I);
        view.setScaleY(this.f9188I);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i8, ViewGroup.LayoutParams layoutParams, boolean z7) {
        boolean zAddViewInLayout = super.addViewInLayout(view, i8, layoutParams, z7);
        if (zAddViewInLayout) {
            view.setScaleX(this.f9188I);
            view.setScaleY(this.f9188I);
        }
        return zAddViewInLayout;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00de  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int paddingLeft;
        int i12;
        int paddingRight;
        int paddingTop;
        int i13;
        int paddingBottom;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        ScaleFrameLayout scaleFrameLayout = this;
        int childCount = getChildCount();
        int layoutDirection = getLayoutDirection();
        float width = layoutDirection == 1 ? getWidth() - getPivotX() : getPivotX();
        if (scaleFrameLayout.f9186G != 1.0f) {
            int paddingLeft2 = getPaddingLeft();
            float f8 = scaleFrameLayout.f9186G;
            paddingLeft = paddingLeft2 + ((int) ((width - (width / f8)) + 0.5f));
            i12 = (int) ((((i10 - i8) - width) / f8) + width + 0.5f);
            paddingRight = getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
            i12 = i10 - i8;
            paddingRight = getPaddingRight();
        }
        int i20 = i12 - paddingRight;
        float pivotY = getPivotY();
        if (scaleFrameLayout.f9187H != 1.0f) {
            int paddingTop2 = getPaddingTop();
            float f9 = scaleFrameLayout.f9187H;
            paddingTop = paddingTop2 + ((int) ((pivotY - (pivotY / f9)) + 0.5f));
            i13 = (int) ((((i11 - i9) - pivotY) / f9) + pivotY + 0.5f);
            paddingBottom = getPaddingBottom();
        } else {
            paddingTop = getPaddingTop();
            i13 = i11 - i9;
            paddingBottom = getPaddingBottom();
        }
        int i21 = i13 - paddingBottom;
        int i22 = 0;
        while (i22 < childCount) {
            View childAt = scaleFrameLayout.getChildAt(i22);
            if (childAt.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i23 = layoutParams.gravity;
                if (i23 == -1) {
                    i23 = 8388659;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i23, layoutDirection);
                int i24 = i23 & 112;
                int i25 = absoluteGravity & 7;
                if (i25 != 1) {
                    if (i25 != 5) {
                        i16 = layoutParams.leftMargin + paddingLeft;
                    } else {
                        i14 = i20 - measuredWidth;
                        i15 = layoutParams.rightMargin;
                    }
                    if (i24 == 16) {
                        i17 = (((i21 - paddingTop) - measuredHeight) / 2) + paddingTop + layoutParams.topMargin;
                        i18 = layoutParams.bottomMargin;
                    } else if (i24 == 48 && i24 == 80) {
                        i17 = i21 - measuredHeight;
                        i18 = layoutParams.bottomMargin;
                    } else {
                        i19 = i + paddingTop;
                        childAt.layout(i16, i19, measuredWidth + i16, measuredHeight + i19);
                        childAt.setPivotX(width - i16);
                        childAt.setPivotY(pivotY - i19);
                    }
                    i19 = i17 - i18;
                    childAt.layout(i16, i19, measuredWidth + i16, measuredHeight + i19);
                    childAt.setPivotX(width - i16);
                    childAt.setPivotY(pivotY - i19);
                } else {
                    i14 = (((i20 - paddingLeft) - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                    i15 = layoutParams.rightMargin;
                }
                i16 = i14 - i15;
                if (i24 == 16) {
                    int i26 = i24 == 48 ? layoutParams.topMargin : layoutParams.topMargin;
                    i19 = i26 + paddingTop;
                    childAt.layout(i16, i19, measuredWidth + i16, measuredHeight + i19);
                    childAt.setPivotX(width - i16);
                    childAt.setPivotY(pivotY - i19);
                } else {
                    i17 = (((i21 - paddingTop) - measuredHeight) / 2) + paddingTop + layoutParams.topMargin;
                    i18 = layoutParams.bottomMargin;
                }
                i19 = i17 - i18;
                childAt.layout(i16, i19, measuredWidth + i16, measuredHeight + i19);
                childAt.setPivotX(width - i16);
                childAt.setPivotY(pivotY - i19);
            }
            i22++;
            scaleFrameLayout = this;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        float f8 = this.f9186G;
        if (f8 == 1.0f && this.f9187H == 1.0f) {
            super.onMeasure(i8, i9);
            return;
        }
        if (f8 != 1.0f) {
            i8 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i8) / f8) + 0.5f), View.MeasureSpec.getMode(i8));
        }
        float f9 = this.f9187H;
        if (f9 != 1.0f) {
            i9 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i9) / f9) + 0.5f), View.MeasureSpec.getMode(i9));
        }
        super.onMeasure(i8, i9);
        setMeasuredDimension((int) ((getMeasuredWidth() * this.f9186G) + 0.5f), (int) ((getMeasuredHeight() * this.f9187H) + 0.5f));
    }

    public void setChildScale(float f8) {
        if (this.f9188I != f8) {
            this.f9188I = f8;
            for (int i8 = 0; i8 < getChildCount(); i8++) {
                getChildAt(i8).setScaleX(f8);
                getChildAt(i8).setScaleY(f8);
            }
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        throw new UnsupportedOperationException();
    }

    public void setLayoutScaleX(float f8) {
        if (f8 != this.f9186G) {
            this.f9186G = f8;
            requestLayout();
        }
    }

    public void setLayoutScaleY(float f8) {
        if (f8 != this.f9187H) {
            this.f9187H = f8;
            requestLayout();
        }
    }
}
