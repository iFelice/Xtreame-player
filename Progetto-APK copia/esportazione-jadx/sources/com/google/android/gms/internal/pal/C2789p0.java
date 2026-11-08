package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2789p0 {
    public static int a(C2781o0 c2781o0) {
        return c2781o0.a();
    }

    public static C2781o0 b(Object obj) {
        return ((D) obj).zzc;
    }

    public static void c(C2781o0 c2781o0, C2843w c2843w) {
        c2781o0.d(c2843w);
    }

    public static boolean d(Object obj, C2827u c2827u) throws L {
        int i8 = c2827u.f24017b;
        int i9 = i8 >>> 3;
        int i10 = i8 & 7;
        C2819t c2819t = c2827u.f24016a;
        if (i10 == 0) {
            c2827u.q(0);
            ((C2781o0) obj).c(i9 << 3, Long.valueOf(c2819t.f()));
        } else if (i10 == 1) {
            c2827u.q(1);
            ((C2781o0) obj).c((i9 << 3) | 1, Long.valueOf(c2819t.e()));
        } else if (i10 == 2) {
            ((C2781o0) obj).c((i9 << 3) | 2, c2827u.s());
        } else if (i10 == 3) {
            C2781o0 c2781o0B = C2781o0.b();
            int i11 = i9 << 3;
            int i12 = i11 | 4;
            while (c2827u.r() != Integer.MAX_VALUE && d(c2781o0B, c2827u)) {
            }
            if (i12 != c2827u.f24017b) {
                throw new L("Protocol message end-group tag did not match expected tag.");
            }
            c2781o0B.f23974e = false;
            ((C2781o0) obj).c(i11 | 3, c2781o0B);
        } else {
            if (i10 == 4) {
                return false;
            }
            if (i10 != 5) {
                throw L.a();
            }
            c2827u.q(5);
            ((C2781o0) obj).c((i9 << 3) | 5, Integer.valueOf(c2819t.b()));
        }
        return true;
    }
}
