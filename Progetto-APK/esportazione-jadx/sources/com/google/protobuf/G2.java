package com.google.protobuf;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public abstract class G2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Unsafe f24251a;

    public G2(Unsafe unsafe) {
        this.f24251a = unsafe;
    }

    public final int a(Class cls) {
        return this.f24251a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f24251a.arrayIndexScale(cls);
    }

    public abstract void c(long j8, byte[] bArr, long j9);

    public abstract boolean d(Object obj, long j8);

    public abstract byte e(long j8);

    public abstract byte f(Object obj, long j8);

    public abstract double g(Object obj, long j8);

    public abstract float h(Object obj, long j8);

    public final int i(Object obj, long j8) {
        return this.f24251a.getInt(obj, j8);
    }

    public final long j(Object obj, long j8) {
        return this.f24251a.getLong(obj, j8);
    }

    public final Object k(Object obj, long j8) {
        return this.f24251a.getObject(obj, j8);
    }

    public final long l(java.lang.reflect.Field field) {
        return this.f24251a.objectFieldOffset(field);
    }

    public abstract void m(Object obj, long j8, boolean z7);

    public abstract void n(Object obj, long j8, byte b8);

    public abstract void o(Object obj, long j8, double d6);

    public abstract void p(Object obj, long j8, float f8);

    public final void q(Object obj, int i8, long j8) {
        this.f24251a.putInt(obj, j8, i8);
    }

    public final void r(Object obj, long j8, long j9) {
        this.f24251a.putLong(obj, j8, j9);
    }

    public final void s(Object obj, long j8, Object obj2) {
        this.f24251a.putObject(obj, j8, obj2);
    }

    public boolean t() {
        Unsafe unsafe = this.f24251a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            return true;
        } catch (Throwable th) {
            H2.a(th);
            return false;
        }
    }

    public abstract boolean u();
}
