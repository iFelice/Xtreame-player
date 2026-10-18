package X1;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class C extends B {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static Method f7535P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static boolean f7536Q;

    @Override // U1.f
    public final void i(View view, int i8, int i9, int i10, int i11) {
        if (!f7536Q) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setLeftTopRightBottom", cls, cls, cls, cls);
                f7535P = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e8);
            }
            f7536Q = true;
        }
        Method method = f7535P;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e9) {
                throw new RuntimeException(e9.getCause());
            }
        }
    }
}
