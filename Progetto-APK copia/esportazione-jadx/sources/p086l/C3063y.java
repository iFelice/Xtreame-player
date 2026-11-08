package p086l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;

/* JADX INFO: renamed from: l.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3063y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f26418b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static C3063y f26419c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public V0 f26420a;

    public static synchronized C3063y a() {
        try {
            if (f26419c == null) {
                c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f26419c;
    }

    public static synchronized void c() {
        if (f26419c == null) {
            C3063y c3063y = new C3063y();
            f26419c = c3063y;
            c3063y.f26420a = V0.d();
            f26419c.f26420a.l(new C3061x(0));
        }
    }

    public static void d(Drawable drawable, e1 e1Var, int[] iArr) {
        PorterDuff.Mode mode = V0.f26182h;
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z7 = e1Var.f26252c;
        if (z7 || e1Var.f26251b) {
            PorterDuffColorFilter porterDuffColorFilterH = null;
            ColorStateList colorStateList = z7 ? (ColorStateList) e1Var.f26253d : null;
            PorterDuff.Mode mode2 = e1Var.f26251b ? (PorterDuff.Mode) e1Var.f26254e : V0.f26182h;
            if (colorStateList != null && mode2 != null) {
                porterDuffColorFilterH = V0.h(colorStateList.getColorForState(iArr, 0), mode2);
            }
            drawable.setColorFilter(porterDuffColorFilterH);
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public final synchronized Drawable b(Context context, int i8) {
        return this.f26420a.f(context, i8);
    }
}
