package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes.dex */
class InnerZoneDrawable extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f11733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f11734b;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f11734b > 0.0f) {
            throw null;
        }
        canvas.drawCircle(0.0f, 0.0f, this.f11733a * 0.0f, null);
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
    public void setPulseAlpha(float f8) {
        this.f11734b = f8;
        invalidateSelf();
    }

    @Keep
    public void setPulseScale(float f8) {
        invalidateSelf();
    }

    @Keep
    public void setScale(float f8) {
        this.f11733a = f8;
        invalidateSelf();
    }
}
