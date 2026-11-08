package N;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class X extends a0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f4868c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f4869d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Constructor f4870e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f4871f = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowInsets f4872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public G.b f4873b;

    public X() {
        this.f4872a = e();
    }

    private static WindowInsets e() {
        if (!f4869d) {
            try {
                f4868c = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e8) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e8);
            }
            f4869d = true;
        }
        Field field = f4868c;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e9) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e9);
            }
        }
        if (!f4871f) {
            try {
                f4870e = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e10) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e10);
            }
            f4871f = true;
        }
        Constructor constructor = f4870e;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e11) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e11);
            }
        }
        return null;
    }

    @Override // N.a0
    public i0 b() {
        a();
        i0 i0VarH = i0.h(this.f4872a, null);
        h0 h0Var = i0VarH.f4901a;
        h0Var.k(null);
        h0Var.m(this.f4873b);
        return i0VarH;
    }

    @Override // N.a0
    public void c(G.b bVar) {
        this.f4873b = bVar;
    }

    @Override // N.a0
    public void d(G.b bVar) {
        WindowInsets windowInsets = this.f4872a;
        if (windowInsets != null) {
            this.f4872a = windowInsets.replaceSystemWindowInsets(bVar.f3275a, bVar.f3276b, bVar.f3277c, bVar.f3278d);
        }
    }

    public X(i0 i0Var) {
        super(i0Var);
        this.f4872a = i0Var.g();
    }
}
