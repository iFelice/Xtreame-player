package p121p4;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import p086l.E0;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends E0 {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public Drawable f28219V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final Rect f28220W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Rect f28221a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f28222b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final boolean f28223c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f28224d0;

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28220W = new Rect();
        this.f28221a0 = new Rect();
        this.f28222b0 = 119;
        this.f28223c0 = true;
        this.f28224d0 = false;
        TypedArray typedArrayB = b.b(context, attributeSet, p060h4.a.f25410c, 0, 0, new int[0]);
        this.f28222b0 = typedArrayB.getInt(1, this.f28222b0);
        Drawable drawable = typedArrayB.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f28223c0 = typedArrayB.getBoolean(2, true);
        typedArrayB.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f28219V;
        if (drawable != null) {
            if (this.f28224d0) {
                this.f28224d0 = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z7 = this.f28223c0;
                Rect rect = this.f28220W;
                if (z7) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i8 = this.f28222b0;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f28221a0;
                Gravity.apply(i8, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f8, float f9) {
        super.drawableHotspotChanged(f8, f9);
        Drawable drawable = this.f28219V;
        if (drawable != null) {
            drawable.setHotspot(f8, f9);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f28219V;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f28219V.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f28219V;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f28222b0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f28219V;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // p086l.E0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        this.f28224d0 = z7 | this.f28224d0;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i8, int i9, int i10, int i11) {
        super.onSizeChanged(i8, i9, i10, i11);
        this.f28224d0 = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f28219V;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f28219V);
            }
            this.f28219V = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f28222b0 == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i8) {
        if (this.f28222b0 != i8) {
            if ((8388615 & i8) == 0) {
                i8 |= 8388611;
            }
            if ((i8 & 112) == 0) {
                i8 |= 48;
            }
            this.f28222b0 = i8;
            if (i8 == 119 && this.f28219V != null) {
                this.f28219V.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f28219V;
    }
}
