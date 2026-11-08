package N;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class b0 extends h0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f4879f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Method f4880g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Class f4881h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Field f4882i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Field f4883j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsets f4884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public G.b f4885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public G.b f4886e;

    public b0(i0 i0Var, WindowInsets windowInsets) {
        super(i0Var);
        this.f4885d = null;
        this.f4884c = windowInsets;
    }

    private G.b n(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f4879f) {
            o();
        }
        Method method = f4880g;
        if (method != null && f4881h != null && f4882i != null) {
            try {
                Object objInvoke = method.invoke(view, new Object[0]);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f4882i.get(f4883j.get(objInvoke));
                if (rect != null) {
                    return G.b.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e8) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e8.getMessage(), e8);
            }
        }
        return null;
    }

    private static void o() {
        try {
            f4880g = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f4881h = cls;
            f4882i = cls.getDeclaredField("mVisibleInsets");
            f4883j = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f4882i.setAccessible(true);
            f4883j.setAccessible(true);
        } catch (ReflectiveOperationException e8) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e8.getMessage(), e8);
        }
        f4879f = true;
    }

    @Override // N.h0
    public void d(View view) {
        G.b bVarN = n(view);
        if (bVarN == null) {
            bVarN = G.b.f3274e;
        }
        p(bVarN);
    }

    @Override // N.h0
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f4886e, ((b0) obj).f4886e);
        }
        return false;
    }

    @Override // N.h0
    public final G.b g() {
        if (this.f4885d == null) {
            WindowInsets windowInsets = this.f4884c;
            this.f4885d = G.b.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f4885d;
    }

    @Override // N.h0
    public i0 h(int i8, int i9, int i10, int i11) {
        a0 y7;
        i0 i0VarH = i0.h(this.f4884c, null);
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 30) {
            y7 = new Z(i0VarH);
        } else {
            y7 = i12 >= 29 ? new Y(i0VarH) : new X(i0VarH);
        }
        y7.d(i0.e(g(), i8, i9, i10, i11));
        y7.c(i0.e(f(), i8, i9, i10, i11));
        return y7.b();
    }

    @Override // N.h0
    public boolean j() {
        return this.f4884c.isRound();
    }

    public void p(G.b bVar) {
        this.f4886e = bVar;
    }

    @Override // N.h0
    public void k(G.b[] bVarArr) {
    }

    @Override // N.h0
    public void l(i0 i0Var) {
    }
}
