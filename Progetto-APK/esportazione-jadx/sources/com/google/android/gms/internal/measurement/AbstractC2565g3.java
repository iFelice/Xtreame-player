package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.g3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2565g3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f23136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f23137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AbstractC2559f3 f23138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f23139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f23140e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f23141f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f23142g;

    /* JADX WARN: Code duplicated, block: B:11:0x004a  */
    /* JADX WARN: Code duplicated, block: B:4:0x001f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0180 A[PHI: r0
      0x0180: PHI (r0v42 java.lang.reflect.Field) = (r0v35 java.lang.reflect.Field), (r0v37 java.lang.reflect.Field) binds: [B:43:0x016d, B:49:0x017e] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        AbstractC2559f3 c2547d3;
        Field declaredField;
        boolean z7;
        boolean z8;
        Field declaredField2;
        Field field;
        AbstractC2559f3 abstractC2559f3;
        Unsafe unsafeJ = j();
        f23136a = unsafeJ;
        int i8 = AbstractC2552e2.f23119a;
        f23137b = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zS = s(cls);
        boolean zS2 = s(Integer.TYPE);
        if (unsafeJ == null) {
            c2547d3 = null;
        } else if (zS) {
            c2547d3 = new C2553e3(unsafeJ);
        } else if (zS2) {
            c2547d3 = new C2547d3(unsafeJ);
        } else {
            c2547d3 = null;
        }
        f23138c = c2547d3;
        if (c2547d3 == null) {
            z7 = false;
        } else {
            try {
                Class<?> cls2 = c2547d3.f23127a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                try {
                    declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
                } catch (Throwable unused) {
                    declaredField = null;
                }
                if (declaredField == null) {
                    try {
                        declaredField = Buffer.class.getDeclaredField("address");
                    } catch (Throwable unused2) {
                        declaredField = null;
                    }
                    if (declaredField == null || declaredField.getType() != Long.TYPE) {
                        declaredField = null;
                    }
                }
                if (declaredField == null) {
                    z7 = false;
                } else {
                    z7 = true;
                }
            } catch (Throwable th) {
                Logger.getLogger(AbstractC2565g3.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        f23139d = z7;
        AbstractC2559f3 abstractC2559f4 = f23138c;
        if (abstractC2559f4 == null) {
            z8 = false;
        } else {
            try {
                Class<?> cls3 = abstractC2559f4.f23127a.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                cls3.getMethod("arrayIndexScale", Class.class);
                Class<?> cls4 = Long.TYPE;
                cls3.getMethod("getInt", Object.class, cls4);
                cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                cls3.getMethod("getLong", Object.class, cls4);
                cls3.getMethod("putLong", Object.class, cls4, cls4);
                cls3.getMethod("getObject", Object.class, cls4);
                cls3.getMethod("putObject", Object.class, cls4, Object.class);
                z8 = true;
            } catch (Throwable th2) {
                Logger.getLogger(AbstractC2565g3.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z8 = false;
            }
        }
        f23140e = z8;
        f23141f = u(byte[].class);
        u(boolean[].class);
        a(boolean[].class);
        u(int[].class);
        a(int[].class);
        u(long[].class);
        a(long[].class);
        u(float[].class);
        a(float[].class);
        u(double[].class);
        a(double[].class);
        u(Object[].class);
        a(Object[].class);
        int i9 = AbstractC2552e2.f23119a;
        try {
            declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused3) {
            declaredField2 = null;
        }
        if (declaredField2 == null) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("address");
            } catch (Throwable unused4) {
                declaredField2 = null;
            }
            if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
                field = null;
            } else {
                field = declaredField2;
            }
        } else {
            field = declaredField2;
        }
        if (field != null && (abstractC2559f3 = f23138c) != null) {
            abstractC2559f3.f23127a.objectFieldOffset(field);
        }
        f23142g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Class cls) {
        if (f23140e) {
            f23138c.f23127a.arrayIndexScale(cls);
        }
    }

    public static void b(Object obj, long j8, byte b8) {
        Unsafe unsafe = f23138c.f23127a;
        long j9 = (-4) & j8;
        int i8 = unsafe.getInt(obj, j9);
        int i9 = ((~((int) j8)) & 3) << 3;
        unsafe.putInt(obj, j9, ((255 & b8) << i9) | (i8 & (~(255 << i9))));
    }

    public static void c(Object obj, long j8, byte b8) {
        Unsafe unsafe = f23138c.f23127a;
        long j9 = (-4) & j8;
        int i8 = (((int) j8) & 3) << 3;
        unsafe.putInt(obj, j9, ((255 & b8) << i8) | (unsafe.getInt(obj, j9) & (~(255 << i8))));
    }

    public static double d(Object obj, long j8) {
        return f23138c.a(obj, j8);
    }

    public static float e(Object obj, long j8) {
        return f23138c.b(obj, j8);
    }

    public static int f(Object obj, long j8) {
        return f23138c.f23127a.getInt(obj, j8);
    }

    public static long g(Object obj, long j8) {
        return f23138c.f23127a.getLong(obj, j8);
    }

    public static Object h(Class cls) {
        try {
            return f23136a.allocateInstance(cls);
        } catch (InstantiationException e8) {
            throw new IllegalStateException(e8);
        }
    }

    public static Object i(Object obj, long j8) {
        return f23138c.f23127a.getObject(obj, j8);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C2541c3());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(Object obj, long j8, boolean z7) {
        f23138c.c(obj, j8, z7);
    }

    public static void l(Object obj, long j8, double d6) {
        f23138c.e(obj, j8, d6);
    }

    public static void m(Object obj, long j8, float f8) {
        f23138c.f(obj, j8, f8);
    }

    public static void n(Object obj, long j8, int i8) {
        f23138c.f23127a.putInt(obj, j8, i8);
    }

    public static void o(Object obj, long j8, long j9) {
        f23138c.f23127a.putLong(obj, j8, j9);
    }

    public static void p(Object obj, long j8, Object obj2) {
        f23138c.f23127a.putObject(obj, j8, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean q(Object obj, long j8) {
        return ((byte) ((f23138c.f23127a.getInt(obj, (-4) & j8) >>> ((int) (((~j8) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean r(Object obj, long j8) {
        return ((byte) ((f23138c.f23127a.getInt(obj, (-4) & j8) >>> ((int) ((j8 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean s(Class cls) {
        int i8 = AbstractC2552e2.f23119a;
        try {
            Class cls2 = f23137b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean t(Object obj, long j8) {
        return f23138c.g(obj, j8);
    }

    public static int u(Class cls) {
        if (f23140e) {
            return f23138c.f23127a.arrayBaseOffset(cls);
        }
        return -1;
    }
}
