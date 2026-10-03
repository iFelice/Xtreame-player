package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class zzabo extends zzabk {
    private final Method zza;
    private final Method zzb;
    private final Method zzc;
    private final Method zzd;

    private zzabo() throws ClassNotFoundException {
        super(null);
        this.zza = Class.class.getMethod("isRecord", new Class[0]);
        this.zzb = Class.class.getMethod("getRecordComponents", new Class[0]);
        Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
        this.zzc = cls.getMethod("getName", new Class[0]);
        this.zzd = cls.getMethod("getType", new Class[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzabk
    public final Constructor zza(Class cls) {
        try {
            Object[] objArr = (Object[]) this.zzb.invoke(cls, new Object[0]);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i8 = 0; i8 < objArr.length; i8++) {
                clsArr[i8] = (Class) this.zzd.invoke(objArr[i8], new Object[0]);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e8) {
            throw zzabp.zza(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzabk
    public final Method zzb(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), new Class[0]);
        } catch (ReflectiveOperationException e8) {
            throw zzabp.zza(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzabk
    public final boolean zzc(Class cls) {
        try {
            return ((Boolean) this.zza.invoke(cls, new Object[0])).booleanValue();
        } catch (ReflectiveOperationException e8) {
            throw zzabp.zza(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzabk
    public final String[] zzd(Class cls) {
        try {
            Object[] objArr = (Object[]) this.zzb.invoke(cls, new Object[0]);
            String[] strArr = new String[objArr.length];
            for (int i8 = 0; i8 < objArr.length; i8++) {
                strArr[i8] = (String) this.zzc.invoke(objArr[i8], new Object[0]);
            }
            return strArr;
        } catch (ReflectiveOperationException e8) {
            throw zzabp.zza(e8);
        }
    }

    public /* synthetic */ zzabo(zzabn zzabnVar) throws ClassNotFoundException {
        super(null);
        this.zza = Class.class.getMethod("isRecord", new Class[0]);
        this.zzb = Class.class.getMethod("getRecordComponents", new Class[0]);
        Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
        this.zzc = cls.getMethod("getName", new Class[0]);
        this.zzd = cls.getMethod("getType", new Class[0]);
    }
}
