package com.google.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class L1 {
    public static p096m2.i a(Object obj) {
        return ((J1) obj).f24264a;
    }

    public static K1 b(Object obj) {
        return (K1) obj;
    }

    public static int c(int i8, Object obj, Object obj2) {
        K1 k8 = (K1) obj;
        J1 j8 = (J1) obj2;
        int iS0 = 0;
        if (!k8.isEmpty()) {
            for (Map.Entry entry : k8.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                j8.getClass();
                int iQ0 = AbstractC2970z.q0(i8);
                int iA = J1.a(j8.f24264a, key, value);
                iS0 += AbstractC2970z.s0(iA) + iA + iQ0;
            }
        }
        return iS0;
    }

    public static boolean d(Object obj) {
        return !((K1) obj).f24268G;
    }

    public static K1 e(Object obj, Object obj2) {
        K1 k1C = (K1) obj;
        K1 k8 = (K1) obj2;
        if (!k8.isEmpty()) {
            if (!k1C.f24268G) {
                k1C = k1C.c();
            }
            k1C.b();
            if (!k8.isEmpty()) {
                k1C.putAll(k8);
            }
        }
        return k1C;
    }

    public static K1 f() {
        return K1.f24267H.c();
    }

    public static void g(Object obj) {
        ((K1) obj).f24268G = false;
    }
}
