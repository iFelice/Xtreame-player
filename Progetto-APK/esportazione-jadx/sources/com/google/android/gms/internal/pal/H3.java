package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public abstract class H3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f23543b;

    static {
        AbstractC2848w4[] abstractC2848w4Arr = {new K3(0, InterfaceC2768m3.class)};
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
        f23542a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
        AbstractC2848w4[] abstractC2848w4Arr2 = {new K3(3, InterfaceC2768m3.class)};
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
        f23543b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
        AbstractC2848w4[] abstractC2848w4Arr3 = {new K3(4, InterfaceC2768m3.class)};
        HashMap map3 = new HashMap();
        for (int i10 = 0; i10 <= 0; i10++) {
            AbstractC2848w4 abstractC2848w6 = abstractC2848w4Arr3[i10];
            boolean zContainsKey3 = map3.containsKey(abstractC2848w6.f24055a);
            Class cls5 = abstractC2848w6.f24055a;
            if (zContainsKey3) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls5.getCanonicalName())));
            }
            map3.put(cls5, abstractC2848w6);
        }
        Class cls6 = abstractC2848w4Arr3[0].f24055a;
        Collections.unmodifiableMap(map3);
        AbstractC2848w4[] abstractC2848w4Arr4 = {new K3(2, InterfaceC2768m3.class)};
        HashMap map4 = new HashMap();
        for (int i11 = 0; i11 <= 0; i11++) {
            AbstractC2848w4 abstractC2848w7 = abstractC2848w4Arr4[i11];
            boolean zContainsKey4 = map4.containsKey(abstractC2848w7.f24055a);
            Class cls7 = abstractC2848w7.f24055a;
            if (zContainsKey4) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls7.getCanonicalName())));
            }
            map4.put(cls7, abstractC2848w7);
        }
        Class cls8 = abstractC2848w4Arr4[0].f24055a;
        Collections.unmodifiableMap(map4);
        AbstractC2848w4[] abstractC2848w4Arr5 = {new K3(6, InterfaceC2768m3.class)};
        HashMap map5 = new HashMap();
        for (int i12 = 0; i12 <= 0; i12++) {
            AbstractC2848w4 abstractC2848w8 = abstractC2848w4Arr5[i12];
            boolean zContainsKey5 = map5.containsKey(abstractC2848w8.f24055a);
            Class cls9 = abstractC2848w8.f24055a;
            if (zContainsKey5) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls9.getCanonicalName())));
            }
            map5.put(cls9, abstractC2848w8);
        }
        Class cls10 = abstractC2848w4Arr5[0].f24055a;
        Collections.unmodifiableMap(map5);
        AbstractC2848w4[] abstractC2848w4Arr6 = {new K3(7, InterfaceC2768m3.class)};
        HashMap map6 = new HashMap();
        for (int i13 = 0; i13 <= 0; i13++) {
            AbstractC2848w4 abstractC2848w9 = abstractC2848w4Arr6[i13];
            boolean zContainsKey6 = map6.containsKey(abstractC2848w9.f24055a);
            Class cls11 = abstractC2848w9.f24055a;
            if (zContainsKey6) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls11.getCanonicalName())));
            }
            map6.put(cls11, abstractC2848w9);
        }
        Class cls12 = abstractC2848w4Arr6[0].f24055a;
        Collections.unmodifiableMap(map6);
        AbstractC2848w4[] abstractC2848w4Arr7 = {new K3(5, InterfaceC2768m3.class)};
        HashMap map7 = new HashMap();
        for (int i14 = 0; i14 <= 0; i14++) {
            AbstractC2848w4 abstractC2848w10 = abstractC2848w4Arr7[i14];
            boolean zContainsKey7 = map7.containsKey(abstractC2848w10.f24055a);
            Class cls13 = abstractC2848w10.f24055a;
            if (zContainsKey7) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls13.getCanonicalName())));
            }
            map7.put(cls13, abstractC2848w10);
        }
        Class cls14 = abstractC2848w4Arr7[0].f24055a;
        Collections.unmodifiableMap(map7);
        AbstractC2848w4[] abstractC2848w4Arr8 = {new K3(8, InterfaceC2768m3.class)};
        HashMap map8 = new HashMap();
        for (int i15 = 0; i15 <= 0; i15++) {
            AbstractC2848w4 abstractC2848w11 = abstractC2848w4Arr8[i15];
            boolean zContainsKey8 = map8.containsKey(abstractC2848w11.f24055a);
            Class cls15 = abstractC2848w11.f24055a;
            if (zContainsKey8) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls15.getCanonicalName())));
            }
            map8.put(cls15, abstractC2848w11);
        }
        Class cls16 = abstractC2848w4Arr8[0].f24055a;
        Collections.unmodifiableMap(map8);
        int i16 = C2858x6.f24070a;
        try {
            a();
        } catch (GeneralSecurityException e8) {
            throw new ExceptionInInitializerError(e8);
        }
    }

    public static void a() {
        F3.f(new J3());
        I4.a();
        F3.e(new M3(0));
        F3.e(new M3(3));
        if (U3.a()) {
            return;
        }
        F3.e(new M3(2));
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            F3.e(new M3(4));
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
        }
        F3.e(new M3(5));
        F3.e(new M3(6));
        F3.e(new M3(7));
        F3.e(new M3(8));
    }
}
