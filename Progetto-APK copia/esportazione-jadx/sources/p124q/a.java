package p124q;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f29426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f29427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f29428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f29429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f29430e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f29433h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f29434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f29435j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f29431f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f29432g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f29436k = PorterDuff.Mode.SRC_IN;

    public a(ColorStateList colorStateList, float f8) {
        this.f29426a = f8;
        Paint paint = new Paint(5);
        this.f29427b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f29433h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f29433h.getDefaultColor()));
        this.f29428c = new RectF();
        this.f29429d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        RectF rectF = this.f29428c;
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
        Rect rect2 = this.f29429d;
        rect2.set(rect);
        if (this.f29431f) {
            rect2.inset((int) Math.ceil(b.a(this.f29430e, this.f29426a, this.f29432g)), (int) Math.ceil(b.b(this.f29430e, this.f29426a, this.f29432g)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z7;
        Paint paint = this.f29427b;
        if (this.f29434i == null || paint.getColorFilter() != null) {
            z7 = false;
        } else {
            paint.setColorFilter(this.f29434i);
            z7 = true;
        }
        RectF rectF = this.f29428c;
        float f8 = this.f29426a;
        canvas.drawRoundRect(rectF, f8, f8, paint);
        if (z7) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f29429d, this.f29426a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f29435j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f29433h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f29433h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f29427b;
        boolean z7 = colorForState != paint.getColor();
        if (z7) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f29435j;
        if (colorStateList2 == null || (mode = this.f29436k) == null) {
            return z7;
        }
        this.f29434i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        this.f29427b.setAlpha(i8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f29427b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f29435j = colorStateList;
        this.f29434i = a(colorStateList, this.f29436k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f29436k = mode;
        this.f29434i = a(this.f29435j, mode);
        invalidateSelf();
    }
}
