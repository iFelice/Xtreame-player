package p086l;

import H.c;
import H.d;
import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: renamed from: l.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3054t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f26384a = {R.attr.state_checked};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f26385b = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Rect f26386c = new Rect();

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i8 = Build.VERSION.SDK_INT;
        int[] iArr = f26384a;
        int[] iArr2 = f26385b;
        if (i8 == 21 && "android.graphics.drawable.VectorDrawable".equals(name)) {
            int[] state = drawable.getState();
            if (state == null || state.length == 0) {
                drawable.setState(iArr);
            } else {
                drawable.setState(iArr2);
            }
            drawable.setState(state);
            return;
        }
        if (i8 < 29 || i8 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state2 = drawable.getState();
        if (state2 == null || state2.length == 0) {
            drawable.setState(iArr);
        } else {
            drawable.setState(iArr2);
        }
        drawable.setState(state2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Rect b(Drawable drawable) {
        Object obj;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            Insets insetsA = AbstractC3052s0.a(drawable);
            return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
        }
        if (drawable instanceof c) {
            obj = drawable;
            obj = ((d) ((c) drawable)).f3420L;
        }
        if (i8 >= 29) {
            boolean z7 = AbstractC3050r0.f26350a;
        } else if (AbstractC3050r0.f26350a) {
            try {
                Object objInvoke = AbstractC3050r0.f26351b.invoke(obj, new Object[0]);
                if (objInvoke != null) {
                    return new Rect(AbstractC3050r0.f26352c.getInt(objInvoke), AbstractC3050r0.f26353d.getInt(objInvoke), AbstractC3050r0.f26354e.getInt(objInvoke), AbstractC3050r0.f26355f.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f26386c;
    }

    public static PorterDuff.Mode c(int i8, PorterDuff.Mode mode) {
        if (i8 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i8 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i8 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i8) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
