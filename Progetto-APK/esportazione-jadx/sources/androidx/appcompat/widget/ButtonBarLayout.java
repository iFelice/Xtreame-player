package androidx.appcompat.widget;

import N.N;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import p031e.a;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f8833G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f8834H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f8835I;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8835I = -1;
        int[] iArr = a.f24696k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        N.l(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0);
        this.f8833G = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f8833G);
        }
    }

    private void setStacked(boolean z7) {
        if (this.f8834H != z7) {
            if (!z7 || this.f8833G) {
                this.f8834H = z7;
                setOrientation(z7 ? 1 : 0);
                setGravity(z7 ? 8388613 : 80);
                View viewFindViewById = findViewById(R.id.spacer);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(z7 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:0x005f A[LOOP:0: B:26:0x0051->B:31:0x005f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x0082  */
    /* JADX WARN: Code duplicated, block: B:38:0x0089  */
    /* JADX WARN: Code duplicated, block: B:41:0x0095 A[LOOP:1: B:37:0x0087->B:41:0x0095, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x009a  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:52:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0063 A[EDGE_INSN: B:53:0x0063->B:33:0x0063 BREAK  A[LOOP:0: B:26:0x0051->B:31:0x005f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        int iMakeMeasureSpec;
        boolean z7;
        int childCount;
        int i10;
        int i11;
        int measuredHeight;
        int i12;
        int childCount2;
        int size = View.MeasureSpec.getSize(i8);
        int paddingBottom = 0;
        if (this.f8833G) {
            if (size > this.f8835I && this.f8834H) {
                setStacked(false);
            }
            this.f8835I = size;
        }
        if (this.f8834H || View.MeasureSpec.getMode(i8) != 1073741824) {
            iMakeMeasureSpec = i8;
            z7 = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z7 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i9);
        if (!this.f8833G || this.f8834H || (getMeasuredWidthAndState() & (-16777216)) != 16777216) {
            if (z7) {
            }
            childCount = getChildCount();
            i10 = 0;
            while (true) {
                i11 = -1;
                if (i10 < childCount) {
                    i10 = -1;
                    break;
                } else if (getChildAt(i10).getVisibility() == 0) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 >= 0) {
                View childAt = getChildAt(i10);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin;
                if (this.f8834H) {
                    childCount2 = getChildCount();
                    for (i12 = i10 + 1; i12 < childCount2; i12++) {
                        if (getChildAt(i12).getVisibility() == 0) {
                            i11 = i12;
                            break;
                        }
                    }
                    if (i11 >= 0) {
                        paddingBottom = getChildAt(i11).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + measuredHeight;
                    } else {
                        paddingBottom = measuredHeight;
                    }
                } else {
                    paddingBottom = getPaddingBottom() + measuredHeight;
                }
            }
            WeakHashMap weakHashMap = N.f4843a;
            if (getMinimumHeight() != paddingBottom) {
                setMinimumHeight(paddingBottom);
                if (i9 == 0) {
                    super.onMeasure(i8, i9);
                }
            }
        }
        setStacked(true);
        super.onMeasure(i8, i9);
        childCount = getChildCount();
        i10 = 0;
        while (true) {
            i11 = -1;
            if (i10 < childCount) {
                i10 = -1;
                break;
            } else {
                if (getChildAt(i10).getVisibility() == 0) {
                    break;
                    break;
                }
                i10++;
            }
        }
        if (i10 >= 0) {
            View childAt2 = getChildAt(i10);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) childAt2.getLayoutParams();
            measuredHeight = childAt2.getMeasuredHeight() + getPaddingTop() + layoutParams2.topMargin + layoutParams2.bottomMargin;
            if (this.f8834H) {
                childCount2 = getChildCount();
                while (i12 < childCount2) {
                    if (getChildAt(i12).getVisibility() == 0) {
                        i11 = i12;
                        break;
                    }
                }
                if (i11 >= 0) {
                    paddingBottom = getChildAt(i11).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + measuredHeight;
                } else {
                    paddingBottom = measuredHeight;
                }
            } else {
                paddingBottom = getPaddingBottom() + measuredHeight;
            }
        }
        WeakHashMap weakHashMap2 = N.f4843a;
        if (getMinimumHeight() != paddingBottom) {
            setMinimumHeight(paddingBottom);
            if (i9 == 0) {
                super.onMeasure(i8, i9);
            }
        }
    }

    public void setAllowStacking(boolean z7) {
        if (this.f8833G != z7) {
            this.f8833G = z7;
            if (!z7 && this.f8834H) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
