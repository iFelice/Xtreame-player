package N;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class E {
    public static void a(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static i0 b(View view, i0 i0Var, Rect rect) {
        WindowInsets windowInsetsG = i0Var.g();
        if (windowInsetsG != null) {
            return i0.h(view.computeSystemWindowInsets(windowInsetsG, rect), view);
        }
        rect.setEmpty();
        return i0Var;
    }

    public static ColorStateList c(View view) {
        return view.getBackgroundTintList();
    }

    public static PorterDuff.Mode d(View view) {
        return view.getBackgroundTintMode();
    }

    public static i0 e(View view) {
        a0 y7;
        if (!W.f4867d || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            Object obj = W.f4864a.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            Rect rect = (Rect) W.f4865b.get(obj);
            Rect rect2 = (Rect) W.f4866c.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 30) {
                y7 = new Z();
            } else {
                y7 = i8 >= 29 ? new Y() : new X();
            }
            y7.c(G.b.a(rect.left, rect.top, rect.right, rect.bottom));
            y7.d(G.b.a(rect2.left, rect2.top, rect2.right, rect2.bottom));
            i0 i0VarB = y7.b();
            i0VarB.f4901a.l(i0VarB);
            i0VarB.f4901a.d(view.getRootView());
            return i0VarB;
        } catch (IllegalAccessException e8) {
            Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e8.getMessage(), e8);
            return null;
        }
    }

    public static String f(View view) {
        return view.getTransitionName();
    }

    public static float g(View view) {
        return view.getZ();
    }

    public static boolean h(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void i(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void j(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void k(View view, float f8) {
        view.setElevation(f8);
    }

    public static void l(View view, InterfaceC0269s interfaceC0269s) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, interfaceC0269s);
        }
        if (interfaceC0269s == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new D(view, interfaceC0269s));
        }
    }

    public static void m(View view, String str) {
        view.setTransitionName(str);
    }

    public static void n(View view, float f8) {
        view.setZ(f8);
    }

    public static void o(View view) {
        view.stopNestedScroll();
    }
}
