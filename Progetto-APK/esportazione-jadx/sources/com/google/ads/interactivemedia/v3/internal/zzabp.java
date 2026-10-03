package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.protobuf.U2;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzabp {
    private static final zzabk zza;

    static {
        zzabk zzabmVar;
        try {
            zzabmVar = new zzabo(null);
        } catch (ReflectiveOperationException unused) {
            zzabmVar = new zzabm(null);
        }
        zza = zzabmVar;
    }

    public static /* bridge */ /* synthetic */ RuntimeException zza(ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.10.1). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", reflectiveOperationException);
    }

    public static RuntimeException zzb(IllegalAccessException illegalAccessException) {
        throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", illegalAccessException);
    }

    public static String zzc(Constructor constructor) {
        StringBuilder sb = new StringBuilder(constructor.getDeclaringClass().getName());
        zzn(constructor, sb);
        return sb.toString();
    }

    public static String zzd(Field field) {
        return U2.l(field.getDeclaringClass().getName(), MqttTopic.MULTI_LEVEL_WILDCARD, field.getName());
    }

    public static String zze(AccessibleObject accessibleObject, boolean z7) {
        String strG;
        if (accessibleObject instanceof Field) {
            strG = r.g("field '", zzd((Field) accessibleObject), "'");
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb = new StringBuilder(method.getName());
            zzn(method, sb);
            strG = O.C("method '", method.getDeclaringClass().getName(), MqttTopic.MULTI_LEVEL_WILDCARD, sb.toString(), "'");
        } else {
            strG = accessibleObject instanceof Constructor ? r.g("constructor '", zzc((Constructor) accessibleObject), "'") : "<unknown AccessibleObject> ".concat(String.valueOf(accessibleObject.toString()));
        }
        if (!z7 || !Character.isLowerCase(strG.charAt(0))) {
            return strG;
        }
        return Character.toUpperCase(strG.charAt(0)) + strG.substring(1);
    }

    public static String zzf(Constructor constructor) {
        try {
            constructor.setAccessible(true);
            return null;
        } catch (Exception e8) {
            return O.C("Failed making constructor '", zzc(constructor), "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ", e8.getMessage(), zzm(e8));
        }
    }

    public static Constructor zzg(Class cls) {
        return zza.zza(cls);
    }

    public static Method zzh(Class cls, Field field) {
        return zza.zzb(cls, field);
    }

    public static void zzi(AccessibleObject accessibleObject) {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e8) {
            throw new zzvx(U2.m("Failed making ", zze(accessibleObject, false), " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type.", zzm(e8)), e8);
        }
    }

    public static boolean zzj(Class cls) {
        if (Modifier.isStatic(cls.getModifiers())) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    public static boolean zzk(Class cls) {
        return zza.zzc(cls);
    }

    public static String[] zzl(Class cls) {
        return zza.zzd(cls);
    }

    private static String zzm(Exception exc) {
        if (!exc.getClass().getName().equals("java.lang.reflect.InaccessibleObjectException")) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        String message = exc.getMessage();
        return "\nSee ".concat("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat((message == null || !message.contains("to module com.google.gson")) ? "reflection-inaccessible" : "reflection-inaccessible-to-module-gson"));
    }

    private static void zzn(AccessibleObject accessibleObject, StringBuilder sb) {
        sb.append('(');
        Class<?>[] parameterTypes = accessibleObject instanceof Method ? ((Method) accessibleObject).getParameterTypes() : ((Constructor) accessibleObject).getParameterTypes();
        for (int i8 = 0; i8 < parameterTypes.length; i8++) {
            if (i8 > 0) {
                sb.append(", ");
            }
            sb.append(parameterTypes[i8].getSimpleName());
        }
        sb.append(')');
    }
}
