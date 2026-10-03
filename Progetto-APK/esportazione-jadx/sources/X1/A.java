package X1;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class A extends U1.f {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static Method f7527H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static boolean f7528I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static Method f7529J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static boolean f7530K;

    public A() {
        super(3, null);
    }

    @Override // U1.f
    public final float g(View view) {
        if (!f7530K) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f7529J = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e8);
            }
            f7530K = true;
        }
        Method method = f7529J;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e9) {
                throw new RuntimeException(e9.getCause());
            }
        }
        return super.g(view);
    }

    public final void j(View view, float f8) {
        if (!f7528I) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                f7527H = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e8);
            }
            f7528I = true;
        }
        Method method = f7527H;
        if (method == null) {
            view.setAlpha(f8);
            return;
        }
        try {
            method.invoke(view, Float.valueOf(f8));
        } catch (IllegalAccessException unused) {
        } catch (InvocationTargetException e9) {
            throw new RuntimeException(e9.getCause());
        }
    }
}
