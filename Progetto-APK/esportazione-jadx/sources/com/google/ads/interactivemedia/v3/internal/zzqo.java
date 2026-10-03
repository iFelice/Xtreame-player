package com.google.ads.interactivemedia.v3.internal;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class zzqo {
    private static final Object zza;

    static {
        Object objZzb = zzb();
        zza = objZzb;
        if (objZzb != null) {
            zzc("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (objZzb == null) {
            return;
        }
        zzd(objZzb);
    }

    public static String zza(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private static Object zzb() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e8) {
            throw e8;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method zzc(String str, Class... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e8) {
            throw e8;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method zzd(Object obj) {
        try {
            Method methodZzc = zzc("getStackTraceDepth", Throwable.class);
            if (methodZzc == null) {
                return null;
            }
            methodZzc.invoke(obj, new Throwable());
            return methodZzc;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }
}
