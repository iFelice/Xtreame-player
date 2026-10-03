package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f8940G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f8941H;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8940G = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_min_padding);
        this.f8941H = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f8940G * 2), this.f8941H), 1073741824), i9);
    }
}
