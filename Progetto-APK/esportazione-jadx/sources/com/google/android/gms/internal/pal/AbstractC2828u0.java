package com.google.android.gms.internal.pal;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2828u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Unsafe f24020a;

    public AbstractC2828u0(Unsafe unsafe) {
        this.f24020a = unsafe;
    }

    public final int a(Class cls) {
        return this.f24020a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f24020a.arrayIndexScale(cls);
    }

    public final int c(Object obj, long j8) {
        return this.f24020a.getInt(obj, j8);
    }

    public final long d(Object obj, long j8) {
        return this.f24020a.getLong(obj, j8);
    }

    public final void e(Field field) {
        this.f24020a.objectFieldOffset(field);
    }

    public final Object f(Object obj, long j8) {
        return this.f24020a.getObject(obj, j8);
    }

    public final void g(Object obj, int i8, long j8) {
        this.f24020a.putInt(obj, j8, i8);
    }

    public final void h(Object obj, long j8, long j9) {
        this.f24020a.putLong(obj, j8, j9);
    }

    public final void i(Object obj, long j8, Object obj2) {
        this.f24020a.putObject(obj, j8, obj2);
    }
}
