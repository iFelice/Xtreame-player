package p086l;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class K extends RatingBar {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final I f26121G;

    public K(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.ratingBarStyle);
        c1.a(getContext(), this);
        I i8 = new I(this);
        this.f26121G = i8;
        i8.a(attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        Bitmap bitmap = this.f26121G.f26114b;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i8, 0), getMeasuredHeight());
        }
    }
}
