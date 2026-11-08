package H;

import android.content.res.ColorStateList;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class e extends d {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static Method f3421N;

    public static void e() {
        if (f3421N == null) {
            try {
                f3421N = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e8) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e8);
            }
        }
    }

    @Override // H.d
    public final boolean a() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f3420L;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f3420L.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f3420L.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        Drawable drawable = this.f3420L;
        if (drawable != null && (method = f3421N) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception e8) {
                Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e8);
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f8, float f9) {
        this.f3420L.setHotspot(f8, f9);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i8, int i9, int i10, int i11) {
        this.f3420L.setHotspotBounds(i8, i9, i10, i11);
    }

    @Override // H.d, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // H.d, android.graphics.drawable.Drawable
    public final void setTint(int i8) {
        if (a()) {
            super.setTint(i8);
        } else {
            this.f3420L.setTint(i8);
        }
    }

    @Override // H.d, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (a()) {
            super.setTintList(colorStateList);
        } else {
            this.f3420L.setTintList(colorStateList);
        }
    }

    @Override // H.d, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (a()) {
            super.setTintMode(mode);
        } else {
            this.f3420L.setTintMode(mode);
        }
    }
}
