package com.google.android.gms.internal.pal;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.h3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2728h3 extends AbstractC2864y4 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final Unsafe f23837Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final long f23838R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final long f23839S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final long f23840T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final long f23841U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final long f23842V;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new C2720g3());
            }
            try {
                f23839S = unsafe.objectFieldOffset(AbstractFutureC2744j3.class.getDeclaredField("S"));
                f23838R = unsafe.objectFieldOffset(AbstractFutureC2744j3.class.getDeclaredField("R"));
                f23840T = unsafe.objectFieldOffset(AbstractFutureC2744j3.class.getDeclaredField("Q"));
                f23841U = unsafe.objectFieldOffset(C2736i3.class.getDeclaredField("a"));
                f23842V = unsafe.objectFieldOffset(C2736i3.class.getDeclaredField("b"));
                f23837Q = unsafe;
            } catch (NoSuchFieldException e8) {
                throw new RuntimeException(e8);
            } catch (RuntimeException e9) {
                throw e9;
            }
        } catch (PrivilegedActionException e10) {
            throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final C2736i3 E(AbstractFutureC2744j3 abstractFutureC2744j3) {
        C2736i3 c2736i3;
        C2736i3 c2736i4 = C2736i3.f23854c;
        do {
            c2736i3 = abstractFutureC2744j3.f23883S;
            if (c2736i4 == c2736i3) {
                return c2736i3;
            }
        } while (!p0(abstractFutureC2744j3, c2736i3, c2736i4));
        return c2736i3;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final void W(C2736i3 c2736i3, C2736i3 c2736i4) {
        f23837Q.putObject(c2736i3, f23842V, c2736i4);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final void e0(C2736i3 c2736i3, Thread thread) {
        f23837Q.putObject(c2736i3, f23841U, thread);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final C2696d3 f(AbstractFutureC2744j3 abstractFutureC2744j3) {
        C2696d3 c2696d3;
        C2696d3 c2696d4 = C2696d3.f23776b;
        do {
            c2696d3 = abstractFutureC2744j3.f23882R;
            if (c2696d4 == c2696d3) {
                break;
            }
        } while (!AbstractC2752k3.a(f23837Q, abstractFutureC2744j3, f23838R, c2696d3, c2696d4));
        return c2696d3;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final boolean l0(AbstractFutureC2744j3 abstractFutureC2744j3, Object obj, Object obj2) {
        return AbstractC2752k3.a(f23837Q, abstractFutureC2744j3, f23840T, obj, obj2);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final boolean p0(AbstractFutureC2744j3 abstractFutureC2744j3, C2736i3 c2736i3, C2736i3 c2736i4) {
        return AbstractC2752k3.a(f23837Q, abstractFutureC2744j3, f23839S, c2736i3, c2736i4);
    }
}
