package com.google.android.gms.internal.atv_ads_framework;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public abstract class I0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f22263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f22264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final H0 f22265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f22266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f22267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f22268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f22269g;

    /* JADX WARN: Code duplicated, block: B:11:0x004a  */
    /* JADX WARN: Code duplicated, block: B:4:0x001f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0180 A[PHI: r0
      0x0180: PHI (r0v42 java.lang.reflect.Field) = (r0v35 java.lang.reflect.Field), (r0v37 java.lang.reflect.Field) binds: [B:43:0x016d, B:49:0x017e] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        H0 f8;
        Field declaredField;
        boolean z7;
        boolean z8;
        Field declaredField2;
        Field field;
        H0 h8;
        Unsafe unsafeJ = j();
        f22263a = unsafeJ;
        int i8 = G.f22257a;
        f22264b = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zP = p(cls);
        boolean zP2 = p(Integer.TYPE);
        if (unsafeJ == null) {
            f8 = null;
        } else if (zP) {
            f8 = new G0(unsafeJ);
        } else if (zP2) {
            f8 = new F0(unsafeJ);
        } else {
            f8 = null;
        }
        f22265c = f8;
        if (f8 == null) {
            z7 = false;
        } else {
            try {
                Class<?> cls2 = f8.f22261a.getClass();
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
                Logger.getLogger(I0.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        f22266d = z7;
        H0 h9 = f22265c;
        if (h9 == null) {
            z8 = false;
        } else {
            try {
                Class<?> cls3 = h9.f22261a.getClass();
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
                Logger.getLogger(I0.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z8 = false;
            }
        }
        f22267e = z8;
        f22268f = r(byte[].class);
        r(boolean[].class);
        a(boolean[].class);
        r(int[].class);
        a(int[].class);
        r(long[].class);
        a(long[].class);
        r(float[].class);
        a(float[].class);
        r(double[].class);
        a(double[].class);
        r(Object[].class);
        a(Object[].class);
        int i9 = G.f22257a;
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
        if (field != null && (h8 = f22265c) != null) {
            h8.f22261a.objectFieldOffset(field);
        }
        f22269g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Class cls) {
        if (f22267e) {
            f22265c.f22261a.arrayIndexScale(cls);
        }
    }

    public static void b(Object obj, long j8, byte b8) {
        H0 h8 = f22265c;
        long j9 = (-4) & j8;
        int i8 = h8.f22261a.getInt(obj, j9);
        int i9 = ((~((int) j8)) & 3) << 3;
        h8.f22261a.putInt(obj, j9, ((255 & b8) << i9) | (i8 & (~(255 << i9))));
    }

    public static void c(Object obj, long j8, byte b8) {
        H0 h8 = f22265c;
        long j9 = (-4) & j8;
        int i8 = (((int) j8) & 3) << 3;
        h8.f22261a.putInt(obj, j9, ((255 & b8) << i8) | (h8.f22261a.getInt(obj, j9) & (~(255 << i8))));
    }

    public static double d(Object obj, long j8) {
        return f22265c.a(obj, j8);
    }

    public static float e(Object obj, long j8) {
        return f22265c.b(obj, j8);
    }

    public static int f(Object obj, long j8) {
        return f22265c.f22261a.getInt(obj, j8);
    }

    public static long g(Object obj, long j8) {
        return f22265c.f22261a.getLong(obj, j8);
    }

    public static Object h(Class cls) {
        try {
            return f22263a.allocateInstance(cls);
        } catch (InstantiationException e8) {
            throw new IllegalStateException(e8);
        }
    }

    public static Object i(Object obj, long j8) {
        return f22265c.f22261a.getObject(obj, j8);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new E0());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(Object obj, long j8, int i8) {
        f22265c.f22261a.putInt(obj, j8, i8);
    }

    public static void l(Object obj, long j8, long j9) {
        f22265c.f22261a.putLong(obj, j8, j9);
    }

    public static void m(Object obj, long j8, Object obj2) {
        f22265c.f22261a.putObject(obj, j8, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean n(Object obj, long j8) {
        return ((byte) ((f22265c.f22261a.getInt(obj, (-4) & j8) >>> ((int) (((~j8) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean o(Object obj, long j8) {
        return ((byte) ((f22265c.f22261a.getInt(obj, (-4) & j8) >>> ((int) ((j8 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean p(Class cls) {
        int i8 = G.f22257a;
        try {
            Class cls2 = f22264b;
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

    public static boolean q(Object obj, long j8) {
        return f22265c.g(obj, j8);
    }

    public static int r(Class cls) {
        if (f22267e) {
            return f22265c.f22261a.arrayBaseOffset(cls);
        }
        return -1;
    }
}
