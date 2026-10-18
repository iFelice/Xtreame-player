package com.google.android.gms.internal.pal;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2836v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f24032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f24033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2820t0 f24034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f24035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f24036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f24037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f24038g;

    /* JADX WARN: Code duplicated, block: B:11:0x004a  */
    /* JADX WARN: Code duplicated, block: B:4:0x001f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0180 A[PHI: r0
      0x0180: PHI (r0v41 java.lang.reflect.Field) = (r0v35 java.lang.reflect.Field), (r0v37 java.lang.reflect.Field) binds: [B:43:0x016d, B:49:0x017e] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        C2820t0 c2820t0;
        Field declaredField;
        boolean z7;
        boolean z8;
        Field declaredField2;
        Field field;
        C2820t0 c2820t1;
        Unsafe unsafeJ = j();
        f24032a = unsafeJ;
        f24033b = AbstractC2756l.a();
        Class<?> cls = Long.TYPE;
        boolean zT = t(cls);
        boolean zT2 = t(Integer.TYPE);
        if (unsafeJ == null) {
            c2820t0 = null;
        } else if (zT) {
            c2820t0 = new C2820t0(unsafeJ, 1);
        } else if (zT2) {
            c2820t0 = new C2820t0(unsafeJ, 0);
        } else {
            c2820t0 = null;
        }
        f24034c = c2820t0;
        if (c2820t0 == null) {
            z7 = false;
        } else {
            try {
                Class<?> cls2 = c2820t0.f24020a.getClass();
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
                Logger.getLogger(AbstractC2836v0.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        f24035d = z7;
        C2820t0 c2820t2 = f24034c;
        if (c2820t2 == null) {
            z8 = false;
        } else {
            try {
                Class<?> cls3 = c2820t2.f24020a.getClass();
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
                Logger.getLogger(AbstractC2836v0.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z8 = false;
            }
        }
        f24036e = z8;
        f24037f = v(byte[].class);
        v(boolean[].class);
        a(boolean[].class);
        v(int[].class);
        a(int[].class);
        v(long[].class);
        a(long[].class);
        v(float[].class);
        a(float[].class);
        v(double[].class);
        a(double[].class);
        v(Object[].class);
        a(Object[].class);
        int i8 = AbstractC2756l.f23917a;
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
        if (field != null && (c2820t1 = f24034c) != null) {
            c2820t1.e(field);
        }
        f24038g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Class cls) {
        if (f24036e) {
            f24034c.b(cls);
        }
    }

    public static void b(Object obj, long j8, byte b8) {
        long j9 = (-4) & j8;
        C2820t0 c2820t0 = f24034c;
        int iC = c2820t0.c(obj, j9);
        int i8 = ((~((int) j8)) & 3) << 3;
        c2820t0.g(obj, ((255 & b8) << i8) | (iC & (~(255 << i8))), j9);
    }

    public static void c(Object obj, long j8, byte b8) {
        long j9 = (-4) & j8;
        C2820t0 c2820t0 = f24034c;
        int i8 = (((int) j8) & 3) << 3;
        c2820t0.g(obj, ((255 & b8) << i8) | (c2820t0.c(obj, j9) & (~(255 << i8))), j9);
    }

    public static double d(Object obj, long j8) {
        C2820t0 c2820t0 = f24034c;
        switch (c2820t0.f24010b) {
            case 0:
                break;
            default:
                break;
        }
        return Double.longBitsToDouble(c2820t0.d(obj, j8));
    }

    public static float e(Object obj, long j8) {
        C2820t0 c2820t0 = f24034c;
        switch (c2820t0.f24010b) {
            case 0:
                break;
            default:
                break;
        }
        return Float.intBitsToFloat(c2820t0.c(obj, j8));
    }

    public static int f(Object obj, long j8) {
        return f24034c.c(obj, j8);
    }

    public static long g(Object obj, long j8) {
        return f24034c.d(obj, j8);
    }

    public static Object h(Class cls) {
        try {
            return f24032a.allocateInstance(cls);
        } catch (InstantiationException e8) {
            throw new IllegalStateException(e8);
        }
    }

    public static Object i(Object obj, long j8) {
        return f24034c.f(obj, j8);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C2812s0());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(Object obj, long j8, boolean z7) {
        int i8 = f24034c.f24010b;
        boolean z8 = f24038g;
        switch (i8) {
            case 0:
                if (!z8) {
                    c(obj, j8, z7 ? (byte) 1 : (byte) 0);
                } else {
                    b(obj, j8, z7 ? (byte) 1 : (byte) 0);
                }
                break;
            default:
                if (!z8) {
                    c(obj, j8, z7 ? (byte) 1 : (byte) 0);
                } else {
                    b(obj, j8, z7 ? (byte) 1 : (byte) 0);
                }
                break;
        }
    }

    public static void l(byte[] bArr, long j8, byte b8) {
        long j9 = f24037f + j8;
        int i8 = f24034c.f24010b;
        boolean z7 = f24038g;
        switch (i8) {
            case 0:
                if (!z7) {
                    c(bArr, j9, b8);
                } else {
                    b(bArr, j9, b8);
                }
                break;
            default:
                if (!z7) {
                    c(bArr, j9, b8);
                } else {
                    b(bArr, j9, b8);
                }
                break;
        }
    }

    public static void m(Object obj, long j8, double d6) {
        C2820t0 c2820t0 = f24034c;
        switch (c2820t0.f24010b) {
            case 0:
                c2820t0.h(obj, j8, Double.doubleToLongBits(d6));
                break;
            default:
                c2820t0.h(obj, j8, Double.doubleToLongBits(d6));
                break;
        }
    }

    public static void n(Object obj, long j8, float f8) {
        C2820t0 c2820t0 = f24034c;
        switch (c2820t0.f24010b) {
            case 0:
                c2820t0.g(obj, Float.floatToIntBits(f8), j8);
                break;
            default:
                c2820t0.g(obj, Float.floatToIntBits(f8), j8);
                break;
        }
    }

    public static void o(Object obj, long j8, int i8) {
        f24034c.g(obj, i8, j8);
    }

    public static void p(Object obj, long j8, long j9) {
        f24034c.h(obj, j8, j9);
    }

    public static void q(Object obj, long j8, Object obj2) {
        f24034c.i(obj, j8, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean r(Object obj, long j8) {
        return ((byte) ((f24034c.c(obj, (-4) & j8) >>> ((int) (((~j8) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean s(Object obj, long j8) {
        return ((byte) ((f24034c.c(obj, (-4) & j8) >>> ((int) ((j8 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean t(Class cls) {
        int i8 = AbstractC2756l.f23917a;
        try {
            Class cls2 = f24033b;
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

    public static boolean u(Object obj, long j8) {
        int i8 = f24034c.f24010b;
        boolean z7 = f24038g;
        switch (i8) {
            case 0:
                return z7 ? r(obj, j8) : s(obj, j8);
            default:
                return z7 ? r(obj, j8) : s(obj, j8);
        }
    }

    public static int v(Class cls) {
        if (f24036e) {
            return f24034c.a(cls);
        }
        return -1;
    }
}
