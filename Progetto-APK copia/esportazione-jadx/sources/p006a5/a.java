package p006a5;

import W4.f;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import p000a.r;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f8699G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final float f8700H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final DisplayMetrics f8701I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f8702J;

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8702J = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, f.f7491a, 0, 0);
        try {
            this.f8699G = typedArrayObtainStyledAttributes.getFloat(1, -1.0f);
            this.f8700H = typedArrayObtainStyledAttributes.getFloat(0, -1.0f);
            typedArrayObtainStyledAttributes.recycle();
            this.f8701I = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static int d(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return view.getMeasuredHeight();
    }

    public static int e(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return view.getMeasuredWidth();
    }

    public static void f(View view, int i8, int i9, int i10, int i11) {
        k.U("\tleft, right", i8, i10);
        k.U("\ttop, bottom", i9, i11);
        view.layout(i8, i9, i10, i11);
    }

    public final int a(int i8) {
        if (getMaxHeightPct() <= 0.0f) {
            k.S("Height: restrict by spec");
            return View.MeasureSpec.getSize(i8);
        }
        k.S("Height: restrict by pct");
        return Math.round(((int) (getMaxHeightPct() * getDisplayMetrics().heightPixels)) / 4) * 4;
    }

    public final int b(int i8) {
        if (getMaxWidthPct() <= 0.0f) {
            k.S("Width: restrict by spec");
            return View.MeasureSpec.getSize(i8);
        }
        k.S("Width: restrict by pct");
        return Math.round(((int) (getMaxWidthPct() * getDisplayMetrics().widthPixels)) / 4) * 4;
    }

    public final View c(int i8) {
        View viewFindViewById = findViewById(i8);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalStateException(r.f("No such child: ", i8));
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.f8701I;
    }

    public float getMaxHeightPct() {
        return this.f8700H;
    }

    public float getMaxWidthPct() {
        return this.f8699G;
    }

    public List<View> getVisibleChildren() {
        return this.f8702J;
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i8, int i9, int i10, int i11) {
        k.U("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        super.measureChildWithMargins(view, i8, i9, i10, i11);
        k.U("\tactual  (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        k.S("============ BEGIN LAYOUT ============");
        k.S("onLayout: l: " + i8 + ", t: " + i9 + ", r: " + i10 + ", b: " + i11);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i8, int i9) {
        k.S("============ BEGIN MEASURE ============");
        k.U("Display", getDisplayMetrics().widthPixels, getDisplayMetrics().heightPixels);
        ArrayList arrayList = this.f8702J;
        arrayList.clear();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                arrayList.add(childAt);
            } else {
                k.T("Skipping GONE child", i10);
            }
        }
    }
}
