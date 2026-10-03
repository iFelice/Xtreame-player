package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1718nI {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f20153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f20154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AbstractC1666mI f20155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f20156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f20157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f20158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f20159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f20160h;

    /* JADX WARN: Code duplicated, block: B:11:0x004a  */
    /* JADX WARN: Code duplicated, block: B:4:0x001f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0184 A[PHI: r0
      0x0184: PHI (r0v47 java.lang.reflect.Field) = (r0v37 java.lang.reflect.Field), (r0v39 java.lang.reflect.Field) binds: [B:43:0x0171, B:49:0x0182] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        AbstractC1666mI c1562kI;
        Field declaredField;
        boolean z7;
        boolean z8;
        Field declaredField2;
        Field field;
        AbstractC1666mI abstractC1666mI;
        Unsafe unsafeL = l();
        f20153a = unsafeL;
        int i8 = RG.f16232a;
        f20154b = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zV = v(cls);
        boolean zV2 = v(Integer.TYPE);
        if (unsafeL == null) {
            c1562kI = null;
        } else if (zV) {
            c1562kI = new C1614lI(unsafeL);
        } else if (zV2) {
            c1562kI = new C1562kI(unsafeL);
        } else {
            c1562kI = null;
        }
        f20155c = c1562kI;
        if (c1562kI == null) {
            z7 = false;
        } else {
            try {
                Class<?> cls2 = ((Unsafe) c1562kI.f19929G).getClass();
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
                Logger.getLogger(AbstractC1718nI.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
            }
        }
        f20156d = z7;
        AbstractC1666mI abstractC1666mI2 = f20155c;
        if (abstractC1666mI2 == null) {
            z8 = false;
        } else {
            try {
                Class<?> cls3 = ((Unsafe) abstractC1666mI2.f19929G).getClass();
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
                Logger.getLogger(AbstractC1718nI.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
                z8 = false;
            }
        }
        f20157e = z8;
        f20158f = a(byte[].class);
        a(boolean[].class);
        b(boolean[].class);
        a(int[].class);
        b(int[].class);
        a(long[].class);
        b(long[].class);
        a(float[].class);
        b(float[].class);
        a(double[].class);
        b(double[].class);
        a(Object[].class);
        b(Object[].class);
        int i9 = RG.f16232a;
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
        long jObjectFieldOffset = -1;
        if (field != null && (abstractC1666mI = f20155c) != null) {
            jObjectFieldOffset = ((Unsafe) abstractC1666mI.f19929G).objectFieldOffset(field);
        }
        f20159g = jObjectFieldOffset;
        f20160h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static int a(Class cls) {
        if (f20157e) {
            return ((Unsafe) f20155c.f19929G).arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void b(Class cls) {
        if (f20157e) {
            ((Unsafe) f20155c.f19929G).arrayIndexScale(cls);
        }
    }

    public static void c(Object obj, long j8, byte b8) {
        AbstractC1666mI abstractC1666mI = f20155c;
        long j9 = (-4) & j8;
        int i8 = ((Unsafe) abstractC1666mI.f19929G).getInt(obj, j9);
        int i9 = ((~((int) j8)) & 3) << 3;
        ((Unsafe) abstractC1666mI.f19929G).putInt(obj, j9, ((255 & b8) << i9) | (i8 & (~(255 << i9))));
    }

    public static void d(Object obj, long j8, byte b8) {
        AbstractC1666mI abstractC1666mI = f20155c;
        long j9 = (-4) & j8;
        int i8 = (((int) j8) & 3) << 3;
        ((Unsafe) abstractC1666mI.f19929G).putInt(obj, j9, ((255 & b8) << i8) | (((Unsafe) abstractC1666mI.f19929G).getInt(obj, j9) & (~(255 << i8))));
    }

    public static double e(Object obj, long j8) {
        return f20155c.M(obj, j8);
    }

    public static float f(Object obj, long j8) {
        return f20155c.Q0(obj, j8);
    }

    public static int g(Object obj, long j8) {
        return ((Unsafe) f20155c.f19929G).getInt(obj, j8);
    }

    public static long h(ByteBuffer byteBuffer) {
        return ((Unsafe) f20155c.f19929G).getLong(byteBuffer, f20159g);
    }

    public static long i(Object obj, long j8) {
        return ((Unsafe) f20155c.f19929G).getLong(obj, j8);
    }

    public static Object j(Class cls) {
        try {
            return f20153a.allocateInstance(cls);
        } catch (InstantiationException e8) {
            throw new IllegalStateException(e8);
        }
    }

    public static Object k(Object obj, long j8) {
        return ((Unsafe) f20155c.f19929G).getObject(obj, j8);
    }

    public static Unsafe l() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C1510jI());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void m(Object obj, long j8, boolean z7) {
        f20155c.S0(obj, j8, z7);
    }

    public static void n(byte[] bArr, long j8, byte b8) {
        f20155c.T0(bArr, f20158f + j8, b8);
    }

    public static void o(Object obj, long j8, double d6) {
        f20155c.U0(obj, j8, d6);
    }

    public static void p(Object obj, long j8, float f8) {
        f20155c.V0(obj, j8, f8);
    }

    public static void q(Object obj, int i8, long j8) {
        ((Unsafe) f20155c.f19929G).putInt(obj, j8, i8);
    }

    public static void r(Object obj, long j8, long j9) {
        ((Unsafe) f20155c.f19929G).putLong(obj, j8, j9);
    }

    public static void s(Object obj, long j8, Object obj2) {
        ((Unsafe) f20155c.f19929G).putObject(obj, j8, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean t(Object obj, long j8) {
        return ((byte) ((((Unsafe) f20155c.f19929G).getInt(obj, (-4) & j8) >>> ((int) (((~j8) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean u(Object obj, long j8) {
        return ((byte) ((((Unsafe) f20155c.f19929G).getInt(obj, (-4) & j8) >>> ((int) ((j8 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean v(Class cls) {
        int i8 = RG.f16232a;
        try {
            Class cls2 = f20154b;
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

    public static boolean w(Object obj, long j8) {
        return f20155c.W0(obj, j8);
    }
}
