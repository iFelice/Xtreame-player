package X1;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class B extends A {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static Method f7531L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static boolean f7532M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static Method f7533N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static boolean f7534O;

    public final void k(View view, Matrix matrix) {
        if (!f7532M) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
                f7531L = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e8);
            }
            f7532M = true;
        }
        Method method = f7531L;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e9) {
                throw new RuntimeException(e9.getCause());
            }
        }
    }

    public final void l(View view, Matrix matrix) {
        if (!f7534O) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
                f7533N = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e8) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e8);
            }
            f7534O = true;
        }
        Method method = f7533N;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e9) {
                throw new RuntimeException(e9.getCause());
            }
        }
    }
}
