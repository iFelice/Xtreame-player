package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class I4 {
    static {
        AbstractC2848w4[] abstractC2848w4Arr = {new K3(15, InterfaceC2871z3.class)};
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
        int i9 = C2858x6.f24070a;
        try {
            a();
        } catch (GeneralSecurityException e8) {
            throw new ExceptionInInitializerError(e8);
        }
    }

    public static void a() {
        F3.f(new K4());
        F3.e(new M3(13));
        if (U3.a()) {
            return;
        }
        F3.e(new M3(12));
        C2840v4 c2840v4 = H4.f23544a;
        C2824t4 c2824t4 = C2824t4.f24014b;
        C2840v4 c2840v5 = H4.f23544a;
        synchronized (c2824t4) {
            p096m2.i iVar = new p096m2.i((B4) c2824t4.f24015a.get());
            iVar.y(c2840v5);
            c2824t4.f24015a.set(new B4(iVar));
        }
        c2824t4.c(H4.f23545b);
        c2824t4.b(H4.f23546c);
        c2824t4.a(H4.f23547d);
    }
}
