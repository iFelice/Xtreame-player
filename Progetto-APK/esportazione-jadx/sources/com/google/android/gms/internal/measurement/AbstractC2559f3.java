package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.f3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2559f3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Unsafe f23127a;

    public AbstractC2559f3(Unsafe unsafe) {
        this.f23127a = unsafe;
    }

    public abstract double a(Object obj, long j8);

    public abstract float b(Object obj, long j8);

    public abstract void c(Object obj, long j8, boolean z7);

    public abstract void d(Object obj, long j8, byte b8);

    public abstract void e(Object obj, long j8, double d6);

    public abstract void f(Object obj, long j8, float f8);

    public abstract boolean g(Object obj, long j8);
}
