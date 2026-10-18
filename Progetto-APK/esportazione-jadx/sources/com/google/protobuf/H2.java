package com.google.protobuf;

import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public abstract class H2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f24253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f24254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final G2 f24255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f24256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f24257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f24258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f24259g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f24260h;

    static {
        Unsafe unsafeJ = j();
        f24253a = unsafeJ;
        f24254b = AbstractC2887d.f24421a;
        boolean zF = f(Long.TYPE);
        boolean zF2 = f(Integer.TYPE);
        boolean z7 = true;
        int i8 = 0;
        G2 f8 = null;
        if (unsafeJ != null) {
            if (!AbstractC2887d.a()) {
                f8 = new F2(unsafeJ);
            } else if (zF) {
                f8 = new E2(unsafeJ, z7 ? 1 : 0);
            } else if (zF2) {
                f8 = new E2(unsafeJ, i8);
            }
        }
        f24255c = f8;
        f24256d = f8 == null ? false : f8.u();
        f24257e = f8 == null ? false : f8.t();
        f24258f = c(byte[].class);
        c(boolean[].class);
        d(boolean[].class);
        c(int[].class);
        d(int[].class);
        c(long[].class);
        d(long[].class);
        c(float[].class);
        d(float[].class);
        c(double[].class);
        d(double[].class);
        c(Object[].class);
        d(Object[].class);
        java.lang.reflect.Field fieldE = e();
        f24259g = (fieldE == null || f8 == null) ? -1L : f8.l(fieldE);
        f24260h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Throwable th) {
        Logger.getLogger(H2.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static Object b(Class cls) {
        try {
            return f24253a.allocateInstance(cls);
        } catch (InstantiationException e8) {
            throw new IllegalStateException(e8);
        }
    }

    public static int c(Class cls) {
        if (f24257e) {
            return f24255c.a(cls);
        }
        return -1;
    }

    public static void d(Class cls) {
        if (f24257e) {
            f24255c.b(cls);
        }
    }

    public static java.lang.reflect.Field e() {
        java.lang.reflect.Field declaredField;
        java.lang.reflect.Field declaredField2;
        if (AbstractC2887d.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean f(Class cls) {
        if (!AbstractC2887d.a()) {
            return false;
        }
        try {
            Class cls2 = f24254b;
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

    public static byte g(long j8, byte[] bArr) {
        return f24255c.f(bArr, f24258f + j8);
    }

    public static byte h(Object obj, long j8) {
        return (byte) ((f24255c.i(obj, (-4) & j8) >>> ((int) (((~j8) & 3) << 3))) & 255);
    }

    public static byte i(Object obj, long j8) {
        return (byte) ((f24255c.i(obj, (-4) & j8) >>> ((int) ((j8 & 3) << 3))) & 255);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new D2());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(Object obj, long j8, boolean z7) {
        f24255c.m(obj, j8, z7);
    }

    public static void l(byte[] bArr, long j8, byte b8) {
        f24255c.n(bArr, f24258f + j8, b8);
    }

    public static void m(Object obj, long j8, byte b8) {
        long j9 = (-4) & j8;
        int i8 = f24255c.i(obj, j9);
        int i9 = ((~((int) j8)) & 3) << 3;
        q(obj, ((255 & b8) << i9) | (i8 & (~(255 << i9))), j9);
    }

    public static void n(Object obj, long j8, byte b8) {
        long j9 = (-4) & j8;
        int i8 = (((int) j8) & 3) << 3;
        q(obj, ((255 & b8) << i8) | (f24255c.i(obj, j9) & (~(255 << i8))), j9);
    }

    public static void o(Object obj, long j8, double d6) {
        f24255c.o(obj, j8, d6);
    }

    public static void p(Object obj, long j8, float f8) {
        f24255c.p(obj, j8, f8);
    }

    public static void q(Object obj, int i8, long j8) {
        f24255c.q(obj, i8, j8);
    }

    public static void r(Object obj, long j8, long j9) {
        f24255c.r(obj, j8, j9);
    }

    public static void s(Object obj, long j8, Object obj2) {
        f24255c.s(obj, j8, obj2);
    }
}
