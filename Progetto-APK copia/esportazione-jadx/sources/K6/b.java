package K6;

import J6.C0215n;
import J6.InterfaceC0216o;
import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import p185x6.j;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends p185x6.a implements InterfaceC0216o {
    private volatile Object _preHandler;

    public b() {
        super(C0215n.f4244G);
        this._preHandler = this;
    }

    public void a0(j jVar, Throwable th) {
        Method declaredMethod;
        int i8 = Build.VERSION.SDK_INT;
        if (26 > i8 || i8 >= 28) {
            return;
        }
        Object obj = this._preHandler;
        if (obj != this) {
            declaredMethod = (Method) obj;
        } else {
            try {
                declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
                if (!Modifier.isPublic(declaredMethod.getModifiers()) || !Modifier.isStatic(declaredMethod.getModifiers())) {
                    declaredMethod = null;
                }
            } catch (Throwable unused) {
            }
            this._preHandler = declaredMethod;
        }
        Object objInvoke = declaredMethod != null ? declaredMethod.invoke(null, new Object[0]) : null;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = objInvoke instanceof Thread.UncaughtExceptionHandler ? (Thread.UncaughtExceptionHandler) objInvoke : null;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
    }
}
