package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public final class D1 extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Unsafe f22433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f22434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f22435g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final long f22436h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f22437i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f22438j;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new C1());
            }
            try {
                f22435g = unsafe.objectFieldOffset(F1.class.getDeclaredField("I"));
                f22434f = unsafe.objectFieldOffset(F1.class.getDeclaredField("H"));
                f22436h = unsafe.objectFieldOffset(F1.class.getDeclaredField("G"));
                f22437i = unsafe.objectFieldOffset(E1.class.getDeclaredField("a"));
                f22438j = unsafe.objectFieldOffset(E1.class.getDeclaredField("b"));
                f22433e = unsafe;
            } catch (NoSuchFieldException e8) {
                throw new RuntimeException(e8);
            } catch (RuntimeException e9) {
                throw e9;
            }
        } catch (PrivilegedActionException e10) {
            throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final C2523z1 p(F1 f8) {
        C2523z1 c2523z1;
        C2523z1 c2523z2 = C2523z1.f22856d;
        do {
            c2523z1 = f8.f22461H;
            if (c2523z2 == c2523z1) {
                break;
            }
        } while (!v(f8, c2523z1, c2523z2));
        return c2523z1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final E1 q(F1 f8) {
        E1 e8;
        E1 e9 = E1.f22441c;
        do {
            e8 = f8.f22462I;
            if (e9 == e8) {
                break;
            }
        } while (!x(f8, e8, e9));
        return e8;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void t(E1 e8, E1 e9) {
        f22433e.putObject(e8, f22438j, e9);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void u(E1 e8, Thread thread) {
        f22433e.putObject(e8, f22437i, thread);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean v(F1 f8, C2523z1 c2523z1, C2523z1 c2523z2) {
        return G1.a(f22433e, f8, f22434f, c2523z1, c2523z2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean w(F1 f8, Object obj, Object obj2) {
        return G1.a(f22433e, f8, f22436h, obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean x(F1 f8, E1 e8, E1 e9) {
        return G1.a(f22433e, f8, f22435g, e8, e9);
    }
}
