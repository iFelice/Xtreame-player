package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2858x6 f23718a;

    static {
        AbstractC2848w4[] abstractC2848w4Arr = {new K3(11, InterfaceC2792p3.class)};
        HashMap map = new HashMap();
        for (int i8 = 0; i8 <= 0; i8++) {
            AbstractC2848w4 abstractC2848w4 = abstractC2848w4Arr[i8];
            boolean zContainsKey = map.containsKey(abstractC2848w4.f24055a);
            Class cls = abstractC2848w4.f24055a;
            if (zContainsKey) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls.getCanonicalName())));
            }
            map.put(cls, abstractC2848w4);
        }
        Class cls2 = abstractC2848w4Arr[0].f24055a;
        Collections.unmodifiableMap(map);
        AbstractC2848w4[] abstractC2848w4Arr2 = {new K3(10, InterfaceC2784o3.class)};
        HashMap map2 = new HashMap();
        for (int i9 = 0; i9 <= 0; i9++) {
            AbstractC2848w4 abstractC2848w5 = abstractC2848w4Arr2[i9];
            boolean zContainsKey2 = map2.containsKey(abstractC2848w5.f24055a);
            Class cls3 = abstractC2848w5.f24055a;
            if (zContainsKey2) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls3.getCanonicalName())));
            }
            map2.put(cls3, abstractC2848w5);
        }
        Class cls4 = abstractC2848w4Arr2[0].f24055a;
        Collections.unmodifiableMap(map2);
        f23718a = C2858x6.m();
        try {
            a();
        } catch (GeneralSecurityException e8) {
            throw new ExceptionInInitializerError(e8);
        }
    }

    public static void a() {
        F3.f(new C2673a4());
        F3.f(new C2689c4());
        H3.a();
        if (U3.a()) {
            return;
        }
        F3.d(new Y3(), new M3(10));
        F3.d(new C2729h4(C2675a6.class, new K3(12, InterfaceC2784o3.class)), new M3(11));
    }
}
