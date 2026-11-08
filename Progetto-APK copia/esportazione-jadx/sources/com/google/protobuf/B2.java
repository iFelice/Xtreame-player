package com.google.protobuf;

import com.google.android.gms.internal.ads.CO;

/* JADX INFO: loaded from: classes2.dex */
public final class B2 {
    public static A2 a(Object obj) {
        AbstractC2909i1 abstractC2909i1 = (AbstractC2909i1) obj;
        A2 a8 = abstractC2909i1.unknownFields;
        if (a8 != A2.f24234f) {
            return a8;
        }
        A2 a9 = new A2();
        abstractC2909i1.unknownFields = a9;
        return a9;
    }

    public static void b(Object obj) {
        A2 a8 = ((AbstractC2909i1) obj).unknownFields;
        if (a8.f24239e) {
            a8.f24239e = false;
        }
    }

    public static boolean c(int i8, CO co, Object obj) throws C2966x1 {
        int i9 = co.f12628a;
        int i10 = i9 >>> 3;
        int i11 = i9 & 7;
        if (i11 == 0) {
            ((A2) obj).f(i10 << 3, Long.valueOf(co.s()));
            return true;
        }
        if (i11 == 1) {
            ((A2) obj).f((i10 << 3) | 1, Long.valueOf(co.n()));
            return true;
        }
        if (i11 == 2) {
            ((A2) obj).f((i10 << 3) | 2, co.g());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw C2966x1.c();
            }
            ((A2) obj).f(5 | (i10 << 3), Integer.valueOf(co.l()));
            return true;
        }
        A2 a8 = new A2();
        int i12 = i10 << 3;
        int i13 = i12 | 4;
        int i14 = i8 + 1;
        if (i14 >= 100) {
            throw new C2966x1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (co.b() != Integer.MAX_VALUE && c(i14, co, a8)) {
        }
        if (i13 != co.f12628a) {
            throw new C2966x1("Protocol message end-group tag did not match expected tag.");
        }
        if (a8.f24239e) {
            a8.f24239e = false;
        }
        ((A2) obj).f(i12 | 3, a8);
        return true;
    }

    public static void d(Object obj, Object obj2) {
        ((AbstractC2909i1) obj).unknownFields = (A2) obj2;
    }
}
