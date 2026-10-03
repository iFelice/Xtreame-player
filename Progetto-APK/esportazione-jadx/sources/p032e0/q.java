package p032e0;

import I6.k;
import com.google.protobuf.U2;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f24759a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f24760b = new HashMap();

    public static void a(Constructor constructor, Object obj) {
        try {
            Object objNewInstance = constructor.newInstance(obj);
            q0.g(objNewInstance, "{\n            constructo…tance(`object`)\n        }");
            U2.u(objNewInstance);
            throw null;
        } catch (IllegalAccessException e8) {
            throw new RuntimeException(e8);
        } catch (InstantiationException e9) {
            throw new RuntimeException(e9);
        } catch (InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0104 A[PHI: r3
      0x0104: PHI (r3v4 java.util.ArrayList) = (r3v3 java.util.ArrayList), (r3v3 java.util.ArrayList), (r3v11 java.util.ArrayList) binds: [B:50:0x00e2, B:52:0x00e8, B:56:0x00f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:59:0x0110  */
    /* JADX WARN: Code duplicated, block: B:61:0x0114  */
    /* JADX WARN: Code duplicated, block: B:71:0x013d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0139 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static int b(Class cls) {
        Constructor declaredConstructor;
        Class superclass;
        Class<?>[] interfaces;
        int length;
        Class<?> cls2;
        int i8 = 1;
        HashMap map = f24759a;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r7 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r7 != null ? r7.getName() : HttpUrl.FRAGMENT_ENCODE_SET;
                q0.g(name, "fullPackage");
                if (name.length() != 0) {
                    q0.g(canonicalName, "name");
                    canonicalName = canonicalName.substring(name.length() + 1);
                    q0.g(canonicalName, "this as java.lang.String).substring(startIndex)");
                }
                q0.g(canonicalName, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
                String strConcat = k.R0(canonicalName, ".", "_").concat("_LifecycleAdapter");
                if (name.length() != 0) {
                    strConcat = name + '.' + strConcat;
                }
                declaredConstructor = Class.forName(strConcat).getDeclaredConstructor(cls);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                declaredConstructor = null;
            } catch (NoSuchMethodException e8) {
                throw new RuntimeException(e8);
            }
            HashMap map2 = f24760b;
            if (declaredConstructor != null) {
                map2.put(cls, v.o(declaredConstructor));
            } else {
                C2975c c2975c = C2975c.f24735c;
                HashMap map3 = c2975c.f24737b;
                Boolean bool = (Boolean) map3.get(cls);
                if (bool == null) {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        for (Method method : declaredMethods) {
                            if (((x) method.getAnnotation(x.class)) != null) {
                                c2975c.a(cls, declaredMethods);
                            }
                        }
                        map3.put(cls, Boolean.FALSE);
                        superclass = cls.getSuperclass();
                        if (superclass == null) {
                            interfaces = cls.getInterfaces();
                            q0.g(interfaces, "klass.interfaces");
                            length = interfaces.length;
                            for (int i9 = 0; i9 < length; i9++) {
                                cls2 = interfaces[i9];
                                if (cls2 == null) {
                                }
                            }
                            if (arrayList != null) {
                                map2.put(cls, arrayList);
                            }
                        } else {
                            interfaces = cls.getInterfaces();
                            q0.g(interfaces, "klass.interfaces");
                            length = interfaces.length;
                            while (i9 < length) {
                                cls2 = interfaces[i9];
                                if (cls2 == null) {
                                }
                            }
                            if (arrayList != null) {
                                map2.put(cls, arrayList);
                            }
                        }
                    } catch (NoClassDefFoundError e9) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e9);
                    }
                } else if (!bool.booleanValue()) {
                    superclass = cls.getSuperclass();
                    if (superclass == null && InterfaceC2984l.class.isAssignableFrom(superclass)) {
                        q0.g(superclass, "superclass");
                        if (b(superclass) != 1) {
                            Object obj = map2.get(superclass);
                            q0.e(obj);
                            arrayList = new ArrayList((Collection) obj);
                            interfaces = cls.getInterfaces();
                            q0.g(interfaces, "klass.interfaces");
                            length = interfaces.length;
                            while (i9 < length) {
                                cls2 = interfaces[i9];
                                if (cls2 == null) {
                                }
                            }
                            if (arrayList != null) {
                                map2.put(cls, arrayList);
                            }
                        }
                    } else {
                        interfaces = cls.getInterfaces();
                        q0.g(interfaces, "klass.interfaces");
                        length = interfaces.length;
                        while (i9 < length) {
                            cls2 = interfaces[i9];
                            if (cls2 == null && InterfaceC2984l.class.isAssignableFrom(cls2)) {
                                q0.g(cls2, "intrface");
                                if (b(cls2) != 1) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    Object obj2 = map2.get(cls2);
                                    q0.e(obj2);
                                    arrayList.addAll((Collection) obj2);
                                }
                            }
                        }
                        if (arrayList != null) {
                            map2.put(cls, arrayList);
                        }
                    }
                }
            }
            i8 = 2;
        }
        map.put(cls, Integer.valueOf(i8));
        return i8;
    }
}
