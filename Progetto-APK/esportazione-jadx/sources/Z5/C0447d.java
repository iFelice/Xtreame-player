package Z5;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: Z5.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0447d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f8448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8450c;

    public /* synthetic */ C0447d(Object obj, Object obj2, Object obj3) {
        this.f8448a = obj;
        this.f8449b = obj2;
        this.f8450c = obj3;
    }

    public static Method b(Class cls, String str, Class[] clsArr) {
        if (cls == null) {
            return null;
        }
        try {
            if ((cls.getModifiers() & 1) == 0) {
                return b(cls.getSuperclass(), str, clsArr);
            }
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public final Method a(Class cls) {
        Class cls2;
        String str = (String) this.f8449b;
        if (str == null) {
            return null;
        }
        Method methodB = b(cls, str, (Class[]) this.f8450c);
        if (methodB == null || (cls2 = (Class) this.f8448a) == null || cls2.isAssignableFrom(methodB.getReturnType())) {
            return methodB;
        }
        return null;
    }

    public final Object c(Object[] objArr, Object obj) {
        Method methodA = a(obj.getClass());
        if (methodA == null) {
            throw new AssertionError("Method " + ((String) this.f8449b) + " not supported for object " + obj);
        }
        try {
            return methodA.invoke(obj, objArr);
        } catch (IllegalAccessException e8) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e8);
            throw assertionError;
        }
    }

    public final void d(Object[] objArr, Object obj) {
        try {
            Method methodA = a(obj.getClass());
            if (methodA == null) {
                return;
            }
            try {
                methodA.invoke(obj, objArr);
            } catch (IllegalAccessException unused) {
            }
        } catch (InvocationTargetException e8) {
            Throwable targetException = e8.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public final Object e(Object[] objArr, Object obj) {
        try {
            return c(objArr, obj);
        } catch (InvocationTargetException e8) {
            Throwable targetException = e8.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
