package p106n4;

import android.graphics.ColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;

/* JADX INFO: loaded from: classes.dex */
public final class b extends RippleDrawable {
    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (getDrawable(0) != null) {
            ((GradientDrawable) ((LayerDrawable) ((InsetDrawable) getDrawable(0)).getDrawable()).getDrawable(0)).setColorFilter(colorFilter);
        }
    }
}
