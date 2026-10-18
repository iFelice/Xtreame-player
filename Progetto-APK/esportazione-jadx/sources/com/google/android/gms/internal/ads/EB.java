package com.google.android.gms.internal.ads;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public final class EB extends Q3.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Unsafe f12948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f12949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f12950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f12951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f12952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final long f12953h;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new DB());
            }
            try {
                f12950e = unsafe.objectFieldOffset(GB.class.getDeclaredField("I"));
                f12949d = unsafe.objectFieldOffset(GB.class.getDeclaredField("H"));
                f12951f = unsafe.objectFieldOffset(GB.class.getDeclaredField("G"));
                f12952g = unsafe.objectFieldOffset(FB.class.getDeclaredField("a"));
                f12953h = unsafe.objectFieldOffset(FB.class.getDeclaredField("b"));
                f12948c = unsafe;
            } catch (NoSuchFieldException e8) {
                throw new RuntimeException(e8);
            }
        } catch (PrivilegedActionException e9) {
            throw new RuntimeException("Could not initialize intrinsics", e9.getCause());
        }
    }

    @Override // Q3.b
    public final C2230xB B(GB gb) {
        C2230xB c2230xB;
        C2230xB c2230xB2 = C2230xB.f21851d;
        do {
            c2230xB = gb.f13490H;
            if (c2230xB2 == c2230xB) {
                break;
            }
        } while (!T(gb, c2230xB, c2230xB2));
        return c2230xB;
    }

    @Override // Q3.b
    public final FB F(GB gb) {
        FB fb;
        FB fb2 = FB.f13328c;
        do {
            fb = gb.f13491I;
            if (fb2 == fb) {
                break;
            }
        } while (!Z(gb, fb, fb2));
        return fb;
    }

    @Override // Q3.b
    public final void M(FB fb, FB fb2) {
        f12948c.putObject(fb, f12953h, fb2);
    }

    @Override // Q3.b
    public final void P(FB fb, Thread thread) {
        f12948c.putObject(fb, f12952g, thread);
    }

    @Override // Q3.b
    public final boolean T(GB gb, C2230xB c2230xB, C2230xB c2230xB2) {
        return HB.a(f12948c, gb, f12949d, c2230xB, c2230xB2);
    }

    @Override // Q3.b
    public final boolean W(GB gb, Object obj, Object obj2) {
        return HB.a(f12948c, gb, f12951f, obj, obj2);
    }

    @Override // Q3.b
    public final boolean Z(GB gb, FB fb, FB fb2) {
        return HB.a(f12948c, gb, f12950e, fb, fb2);
    }
}
