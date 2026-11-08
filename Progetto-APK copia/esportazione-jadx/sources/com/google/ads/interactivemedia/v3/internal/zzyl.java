package com.google.ads.interactivemedia.v3.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzyl {
    public static final zzyl zzc;

    static {
        zzyl zzykVar;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            zzykVar = new zzyh(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    zzykVar = new zzyi(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    zzykVar = new zzyk();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                zzykVar = new zzyj(declaredMethod3);
            }
        }
        zzc = zzykVar;
    }

    public static /* bridge */ /* synthetic */ void zzb(Class cls) {
        String strZzb = zzxl.zzb(cls);
        if (strZzb != null) {
            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(strZzb));
        }
    }

    public abstract Object zza(Class cls);
}
