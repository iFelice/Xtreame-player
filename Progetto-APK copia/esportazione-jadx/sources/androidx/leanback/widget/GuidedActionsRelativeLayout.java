package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
class GuidedActionsRelativeLayout extends RelativeLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f9113G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f9114H;

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9114H = false;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(p009b0.a.f9807a);
        float f8 = typedArrayObtainStyledAttributes.getFloat(45, 40.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.f9113G = f8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        this.f9114H = false;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        View viewFindViewById;
        int size = View.MeasureSpec.getSize(i9);
        if (size > 0 && (viewFindViewById = findViewById(R.id.guidedactions_sub_list)) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
            if (marginLayoutParams.topMargin < 0 && !this.f9114H) {
                this.f9114H = true;
            }
            if (this.f9114H) {
                marginLayoutParams.topMargin = (int) ((this.f9113G * size) / 100.0f);
            }
        }
        super.onMeasure(i8, i9);
    }
}
