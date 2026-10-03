package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public final class zzahr {
    private static final ThreadLocal zza = new ThreadLocal();
    private int zzb = 17;

    public static int zza(Object obj, String... strArr) {
        Objects.requireNonNull(obj, "object");
        zzahr zzahrVar = new zzahr();
        Class<?> superclass = obj.getClass();
        zze(obj, superclass, zzahrVar, false, strArr);
        while (superclass.getSuperclass() != null) {
            superclass = superclass.getSuperclass();
            zze(obj, superclass, zzahrVar, false, strArr);
        }
        return zzahrVar.zzb;
    }

    public static Set zzb() {
        return (Set) zza.get();
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [com.google.ads.interactivemedia.v3.internal.zzahq] */
    private static void zze(Object obj, Class cls, zzahr zzahrVar, boolean z7, String[] strArr) {
        Set setZzb = zzb();
        if (setZzb == null || !setZzb.contains(new zzaht(obj))) {
            try {
                Set setZzb2 = zzb();
                if (setZzb2 == null) {
                    setZzb2 = new HashSet();
                    zza.set(setZzb2);
                }
                setZzb2.add(new zzaht(obj));
                Field[] declaredFields = cls.getDeclaredFields();
                Arrays.sort(declaredFields, Comparator.comparing(new Function() { // from class: com.google.ads.interactivemedia.v3.internal.zzahq
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return ((Field) obj2).getName();
                    }
                }));
                AccessibleObject.setAccessible(declaredFields, true);
                for (Field field : declaredFields) {
                    if (!zzahl.zza(strArr, field.getName()) && !field.getName().contains("$") && !Modifier.isTransient(field.getModifiers()) && !Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(zzahs.class)) {
                        zzahrVar.zzd(zzahu.zza(field, obj));
                    }
                }
            } finally {
                zzf(obj);
            }
        }
    }

    private static void zzf(Object obj) {
        Set setZzb = zzb();
        if (setZzb != null) {
            setZzb.remove(new zzaht(obj));
            if (setZzb.isEmpty()) {
                zza.remove();
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzahr) && this.zzb == ((zzahr) obj).zzb;
    }

    public final int hashCode() {
        return this.zzb;
    }

    public final zzahr zzc(long j8) {
        this.zzb = (this.zzb * 37) + ((int) (j8 ^ (j8 >> 32)));
        return this;
    }

    public final zzahr zzd(Object obj) {
        if (obj == null) {
            this.zzb *= 37;
        } else if (zzahm.zza(obj)) {
            int i8 = 0;
            if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length = jArr.length;
                while (i8 < length) {
                    zzc(jArr[i8]);
                    i8++;
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int length2 = iArr.length;
                while (i8 < length2) {
                    this.zzb = (this.zzb * 37) + iArr[i8];
                    i8++;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                int length3 = sArr.length;
                while (i8 < length3) {
                    this.zzb = (this.zzb * 37) + sArr[i8];
                    i8++;
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                int length4 = cArr.length;
                while (i8 < length4) {
                    this.zzb = (this.zzb * 37) + cArr[i8];
                    i8++;
                }
            } else if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                int length5 = bArr.length;
                while (i8 < length5) {
                    this.zzb = (this.zzb * 37) + bArr[i8];
                    i8++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length6 = dArr.length;
                while (i8 < length6) {
                    zzc(Double.doubleToLongBits(dArr[i8]));
                    i8++;
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                int length7 = fArr.length;
                while (i8 < length7) {
                    this.zzb = Float.floatToIntBits(fArr[i8]) + (this.zzb * 37);
                    i8++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length8 = zArr.length;
                while (i8 < length8) {
                    this.zzb = (this.zzb * 37) + (!zArr[i8] ? 1 : 0);
                    i8++;
                }
            } else {
                Object[] objArr = (Object[]) obj;
                int length9 = objArr.length;
                while (i8 < length9) {
                    zzd(objArr[i8]);
                    i8++;
                }
            }
        } else {
            this.zzb = obj.hashCode() + (this.zzb * 37);
        }
        return this;
    }
}
