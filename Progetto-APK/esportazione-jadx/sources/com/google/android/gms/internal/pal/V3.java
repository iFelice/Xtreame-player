package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class V3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23676a;

    static {
        AbstractC2848w4[] abstractC2848w4Arr = {new K3(9, InterfaceC2776n3.class)};
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
        f23676a = "type.googleapis.com/google.crypto.tink.AesSivKey";
        int i9 = C2858x6.f24070a;
        try {
            F3.f(new X3());
            if (U3.a()) {
                return;
            }
            F3.e(new M3(9));
        } catch (GeneralSecurityException e8) {
            throw new ExceptionInInitializerError(e8);
        }
    }
}
