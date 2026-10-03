package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
class CheckableImageView extends ImageView implements Checkable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int[] f9098H = {R.attr.state_checked};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f9099G;

    public CheckableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f9099G;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i8) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i8 + 1);
        if (this.f9099G) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9098H);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z7) {
        if (this.f9099G != z7) {
            this.f9099G = z7;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f9099G);
    }
}
