package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes.dex */
class OuterHighlightDrawable extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f11735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f11736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11737c;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawCircle(this.f11736b + 0.0f, this.f11737c + 0.0f, 0.0f * this.f11735a, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        throw null;
    }

    @Keep
    public void setScale(float f8) {
        this.f11735a = f8;
        invalidateSelf();
    }

    @Keep
    public void setTranslationX(float f8) {
        this.f11736b = f8;
        invalidateSelf();
    }

    @Keep
    public void setTranslationY(float f8) {
        this.f11737c = f8;
        invalidateSelf();
    }
}
