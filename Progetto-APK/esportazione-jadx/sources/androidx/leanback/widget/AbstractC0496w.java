package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: androidx.leanback.widget.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0496w extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Drawable f9385G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f9386H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Rect f9387I;

    public AbstractC0496w(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9387I = new Rect();
        if (context.getApplicationInfo().targetSdkVersion < 23 || Build.VERSION.SDK_INT < 23) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.foreground});
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 23) {
                    if (i8 >= 23) {
                        setForeground(drawable);
                    }
                } else if (this.f9385G != drawable) {
                    this.f9385G = drawable;
                    this.f9386H = true;
                    setWillNotDraw(false);
                    this.f9385G.setCallback(this);
                    if (this.f9385G.isStateful()) {
                        this.f9385G.setState(getDrawableState());
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f9385G;
        if (drawable != null) {
            if (this.f9386H) {
                this.f9386H = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                Rect rect = this.f9387I;
                rect.set(0, 0, right, bottom);
                drawable.setBounds(rect);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f9385G;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f9385G.setState(getDrawableState());
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f9385G;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        this.f9386H = z7 | this.f9386H;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f9385G;
    }
}
