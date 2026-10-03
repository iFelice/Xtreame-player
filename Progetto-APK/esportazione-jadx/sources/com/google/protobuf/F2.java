package com.google.protobuf;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public final class F2 extends G2 {
    @Override // com.google.protobuf.G2
    public final void c(long j8, byte[] bArr, long j9) {
        this.f24251a.copyMemory((Object) null, j8, bArr, H2.f24258f, j9);
    }

    @Override // com.google.protobuf.G2
    public final boolean d(Object obj, long j8) {
        return this.f24251a.getBoolean(obj, j8);
    }

    @Override // com.google.protobuf.G2
    public final byte e(long j8) {
        return this.f24251a.getByte(j8);
    }

    @Override // com.google.protobuf.G2
    public final byte f(Object obj, long j8) {
        return this.f24251a.getByte(obj, j8);
    }

    @Override // com.google.protobuf.G2
    public final double g(Object obj, long j8) {
        return this.f24251a.getDouble(obj, j8);
    }

    @Override // com.google.protobuf.G2
    public final float h(Object obj, long j8) {
        return this.f24251a.getFloat(obj, j8);
    }

    @Override // com.google.protobuf.G2
    public final void m(Object obj, long j8, boolean z7) {
        this.f24251a.putBoolean(obj, j8, z7);
    }

    @Override // com.google.protobuf.G2
    public final void n(Object obj, long j8, byte b8) {
        this.f24251a.putByte(obj, j8, b8);
    }

    @Override // com.google.protobuf.G2
    public final void o(Object obj, long j8, double d6) {
        this.f24251a.putDouble(obj, j8, d6);
    }

    @Override // com.google.protobuf.G2
    public final void p(Object obj, long j8, float f8) {
        this.f24251a.putFloat(obj, j8, f8);
    }

    @Override // com.google.protobuf.G2
    public final boolean t() {
        if (!super.t()) {
            return false;
        }
        try {
            Class<?> cls = this.f24251a.getClass();
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            H2.a(th);
            return false;
        }
    }

    @Override // com.google.protobuf.G2
    public final boolean u() {
        Unsafe unsafe = this.f24251a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getLong", Object.class, cls2);
                if (H2.e() != null) {
                    try {
                        Class<?> cls3 = unsafe.getClass();
                        cls3.getMethod("getByte", cls2);
                        cls3.getMethod("putByte", cls2, Byte.TYPE);
                        cls3.getMethod("getInt", cls2);
                        cls3.getMethod("putInt", cls2, Integer.TYPE);
                        cls3.getMethod("getLong", cls2);
                        cls3.getMethod("putLong", cls2, cls2);
                        cls3.getMethod("copyMemory", cls2, cls2, cls2);
                        cls3.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                        return true;
                    } catch (Throwable th) {
                        H2.a(th);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                H2.a(th2);
            }
        }
        return false;
    }
}
