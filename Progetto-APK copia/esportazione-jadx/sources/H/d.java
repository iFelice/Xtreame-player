package H;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends Drawable implements Drawable.Callback, c, b {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final PorterDuff.Mode f3414M = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3415G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public PorterDuff.Mode f3416H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f3417I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public f f3418J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f3419K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Drawable f3420L;

    public d(f fVar, Resources resources) {
        Drawable.ConstantState constantState;
        this.f3418J = fVar;
        if (fVar == null || (constantState = fVar.f3423b) == null) {
            return;
        }
        c(constantState.newDrawable(resources));
    }

    public abstract boolean a();

    public final f b() {
        f fVar = this.f3418J;
        f fVar2 = new f();
        fVar2.f3424c = null;
        fVar2.f3425d = f3414M;
        if (fVar != null) {
            fVar2.f3422a = fVar.f3422a;
            fVar2.f3423b = fVar.f3423b;
            fVar2.f3424c = fVar.f3424c;
            fVar2.f3425d = fVar.f3425d;
        }
        return fVar2;
    }

    public final void c(Drawable drawable) {
        Drawable drawable2 = this.f3420L;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3420L = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            f fVar = this.f3418J;
            if (fVar != null) {
                fVar.f3423b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    public final boolean d(int[] iArr) {
        if (!a()) {
            return false;
        }
        f fVar = this.f3418J;
        ColorStateList colorStateList = fVar.f3424c;
        PorterDuff.Mode mode = fVar.f3425d;
        if (colorStateList == null || mode == null) {
            this.f3417I = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f3417I || colorForState != this.f3415G || mode != this.f3416H) {
                setColorFilter(colorForState, mode);
                this.f3415G = colorForState;
                this.f3416H = mode;
                this.f3417I = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f3420L.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        f fVar = this.f3418J;
        return changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0) | this.f3420L.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        f fVar = this.f3418J;
        if (fVar == null || fVar.f3423b == null) {
            return null;
        }
        fVar.f3422a = getChangingConfigurations();
        return this.f3418J;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f3420L.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f3420L.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f3420L.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getLayoutDirection() {
        return p102n0.c.g(this.f3420L);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f3420L.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f3420L.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f3420L.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.f3420L.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final int[] getState() {
        return this.f3420L.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        return this.f3420L.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f3420L.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        f fVar;
        ColorStateList colorStateList = (!a() || (fVar = this.f3418J) == null) ? null : fVar.f3424c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f3420L.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f3420L.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f3419K && super.mutate() == this) {
            this.f3418J = b();
            Drawable drawable = this.f3420L;
            if (drawable != null) {
                drawable.mutate();
            }
            f fVar = this.f3418J;
            if (fVar != null) {
                Drawable drawable2 = this.f3420L;
                fVar.f3423b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f3419K = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3420L;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i8) {
        return p102n0.c.l(this.f3420L, i8);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i8) {
        return this.f3420L.setLevel(i8);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j8) {
        scheduleSelf(runnable, j8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        this.f3420L.setAlpha(i8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        this.f3420L.setAutoMirrored(z7);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i8) {
        this.f3420L.setChangingConfigurations(i8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f3420L.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z7) {
        this.f3420L.setDither(z7);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z7) {
        this.f3420L.setFilterBitmap(z7);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return d(iArr) || this.f3420L.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i8) {
        setTintList(ColorStateList.valueOf(i8));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3418J.f3424c = colorStateList;
        d(this.f3420L.getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3418J.f3425d = mode;
        d(this.f3420L.getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z8) {
        return super.setVisible(z7, z8) || this.f3420L.setVisible(z7, z8);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public d(Drawable drawable) {
        this.f3418J = b();
        c(drawable);
    }
}
