package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.protobuf.U2;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzzp extends zzzl {
    static final Map zza;
    private final Constructor zzb;
    private final Object[] zzc;
    private final Map zzd;

    static {
        HashMap map = new HashMap();
        map.put(Byte.TYPE, (byte) 0);
        map.put(Short.TYPE, (short) 0);
        map.put(Integer.TYPE, 0);
        map.put(Long.TYPE, 0L);
        map.put(Float.TYPE, Float.valueOf(0.0f));
        map.put(Double.TYPE, Double.valueOf(0.0d));
        map.put(Character.TYPE, (char) 0);
        map.put(Boolean.TYPE, Boolean.FALSE);
        zza = map;
    }

    public zzzp(Class cls, zzzo zzzoVar, boolean z7) {
        super(zzzoVar);
        this.zzd = new HashMap();
        Constructor constructorZzg = zzabp.zzg(cls);
        this.zzb = constructorZzg;
        if (z7) {
            zzzq.zzb(null, constructorZzg);
        } else {
            zzabp.zzi(constructorZzg);
        }
        String[] strArrZzl = zzabp.zzl(cls);
        for (int i8 = 0; i8 < strArrZzl.length; i8++) {
            this.zzd.put(strArrZzl[i8], Integer.valueOf(i8));
        }
        Class<?>[] parameterTypes = this.zzb.getParameterTypes();
        this.zzc = new Object[parameterTypes.length];
        for (int i9 = 0; i9 < parameterTypes.length; i9++) {
            this.zzc[i9] = zza.get(parameterTypes[i9]);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzl
    public final /* bridge */ /* synthetic */ Object zza() {
        return (Object[]) this.zzc.clone();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzl
    public final /* bridge */ /* synthetic */ void zzc(Object obj, zzacc zzaccVar, zzzm zzzmVar) {
        Object[] objArr = (Object[]) obj;
        Integer num = (Integer) this.zzd.get(zzzmVar.zzi);
        if (num != null) {
            zzzmVar.zza(zzaccVar, num.intValue(), objArr);
        } else {
            Constructor constructor = this.zzb;
            throw new IllegalStateException(O.C("Could not find the index in the constructor '", zzabp.zzc(constructor), "' for field with name '", zzzmVar.zzi, "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters."));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzl
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final Object zzb(Object[] objArr) {
        try {
            return this.zzb.newInstance(objArr);
        } catch (IllegalAccessException e8) {
            throw zzabp.zzb(e8);
        } catch (IllegalArgumentException e9) {
            e = e9;
            throw new RuntimeException(U2.m("Failed to invoke constructor '", zzabp.zzc(this.zzb), "' with args ", Arrays.toString(objArr)), e);
        } catch (InstantiationException e10) {
            e = e10;
            throw new RuntimeException(U2.m("Failed to invoke constructor '", zzabp.zzc(this.zzb), "' with args ", Arrays.toString(objArr)), e);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(U2.m("Failed to invoke constructor '", zzabp.zzc(this.zzb), "' with args ", Arrays.toString(objArr)), e11.getCause());
        }
    }
}
