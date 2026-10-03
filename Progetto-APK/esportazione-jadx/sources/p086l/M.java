package p086l;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class M extends SeekBar {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final N f26126G;

    public M(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        c1.a(getContext(), this);
        N n7 = new N(this);
        this.f26126G = n7;
        n7.a(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        N n7 = this.f26126G;
        Drawable drawable = n7.f26156e;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        SeekBar seekBar = n7.f26155d;
        if (drawable.setState(seekBar.getDrawableState())) {
            seekBar.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f26126G.f26156e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f26126G.d(canvas);
    }
}
