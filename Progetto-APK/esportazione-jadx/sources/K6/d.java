package K6;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    private static volatile Choreographer choreographer;

    static {
        Object objN;
        try {
            objN = new c(a(Looper.getMainLooper()));
        } catch (Throwable th) {
            objN = q0.n(th);
        }
        if (objN instanceof p155t6.d) {
            objN = null;
        }
    }

    public static final Handler a(Looper looper) throws IllegalAccessException, InvocationTargetException {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        q0.f(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) objInvoke;
    }
}
