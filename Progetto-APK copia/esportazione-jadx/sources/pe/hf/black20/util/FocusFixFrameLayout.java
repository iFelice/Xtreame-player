package pe.hf.black20.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class FocusFixFrameLayout extends FrameLayout {
    public FocusFixFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        if (getParent() != null) {
            super.clearFocus();
        }
    }
}
