package A6;

import java.lang.reflect.Method;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f657a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        q0.e(methods);
        int length = methods.length;
        int i8 = 0;
        while (true) {
            method = null;
            if (i8 >= length) {
                break;
            }
            Method method2 = methods[i8];
            if (q0.c(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                q0.g(parameterTypes, "getParameterTypes(...)");
                if (q0.c(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i8++;
        }
        f657a = method;
        int length2 = methods.length;
        for (int i9 = 0; i9 < length2 && !q0.c(methods[i9].getName(), "getSuppressed"); i9++) {
        }
    }
}
