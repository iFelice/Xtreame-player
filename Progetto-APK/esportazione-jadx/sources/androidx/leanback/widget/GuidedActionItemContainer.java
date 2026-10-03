package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class GuidedActionItemContainer extends AbstractC0496w {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f9112J;

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9112J = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i8) {
        if (this.f9112J || !E3.f.r(this, view)) {
            return super.focusSearch(view, i8);
        }
        View viewFocusSearch = super.focusSearch(view, i8);
        if (E3.f.r(this, viewFocusSearch)) {
            return viewFocusSearch;
        }
        return null;
    }
}
