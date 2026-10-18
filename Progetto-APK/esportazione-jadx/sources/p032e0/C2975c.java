package p032e0;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: e0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2975c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2975c f24735c = new C2975c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f24736a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f24737b = new HashMap();

    public static void c(HashMap map, C2974b c2974b, EnumC2981i enumC2981i, Class cls) {
        EnumC2981i enumC2981i2 = (EnumC2981i) map.get(c2974b);
        if (enumC2981i2 == null || enumC2981i == enumC2981i2) {
            if (enumC2981i2 == null) {
                map.put(c2974b, enumC2981i);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c2974b.f24734b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC2981i2 + ", new value " + enumC2981i);
    }

    public final C2973a a(Class cls, Method[] methodArr) {
        int i8;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null) {
            map.putAll(b(superclass).f24732b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : b(cls2).f24732b.entrySet()) {
                c(map, (C2974b) entry.getKey(), (EnumC2981i) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e8) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e8);
            }
        }
        boolean z7 = false;
        for (Method method : methodArr) {
            x xVar = (x) method.getAnnotation(x.class);
            if (xVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i8 = 0;
                } else {
                    if (!m.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i8 = 1;
                }
                EnumC2981i enumC2981iValue = xVar.value();
                if (parameterTypes.length > 1) {
                    if (!EnumC2981i.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (enumC2981iValue != EnumC2981i.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i8 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                c(map, new C2974b(method, i8), enumC2981iValue, cls);
                z7 = true;
            }
        }
        C2973a c2973a = new C2973a(map);
        this.f24736a.put(cls, c2973a);
        this.f24737b.put(cls, Boolean.valueOf(z7));
        return c2973a;
    }

    public final C2973a b(Class cls) {
        C2973a c2973a = (C2973a) this.f24736a.get(cls);
        return c2973a != null ? c2973a : a(cls, null);
    }
}
