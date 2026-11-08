package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzaho {
    private static final ThreadLocal zza = new ThreadLocal();
    private boolean zzb = true;
    private final List zzc;
    private String[] zzd;

    public zzaho() {
        ArrayList arrayList = new ArrayList(1);
        this.zzc = arrayList;
        arrayList.add(String.class);
    }

    public static Set zza() {
        return (Set) zza.get();
    }

    public static zzahw zze(Object obj, Object obj2) {
        return zzahv.zzc(new zzaht(obj), new zzaht(obj2));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    /* JADX WARN: Code duplicated, block: B:19:0x0036  */
    public static boolean zzf(Object obj, Object obj2, boolean z7, Class cls, boolean z8, String... strArr) {
        Class<?> superclass;
        if (obj == obj2) {
            return true;
        }
        zzaho zzahoVar = new zzaho();
        zzahoVar.zzd = strArr;
        if (zzahoVar.zzb && obj != obj2) {
            Class<?> cls2 = obj.getClass();
            Class<?> cls3 = obj2.getClass();
            if (cls2.isInstance(obj2)) {
                if (cls3.isInstance(obj)) {
                    superclass = cls2;
                } else {
                    superclass = cls3;
                }
            } else if (!cls3.isInstance(obj)) {
                zzahoVar.zzb = false;
            } else if (cls2.isInstance(obj2)) {
                superclass = cls3;
            } else {
                superclass = cls2;
            }
            try {
                if (superclass.isArray()) {
                    zzahoVar.zzd(obj, obj2);
                } else if (zzahoVar.zzc.contains(cls2) || zzahoVar.zzc.contains(cls3)) {
                    zzahoVar.zzb = obj.equals(obj2);
                } else {
                    zzahoVar.zzg(obj, obj2, superclass);
                    while (superclass.getSuperclass() != null) {
                        superclass = superclass.getSuperclass();
                        zzahoVar.zzg(obj, obj2, superclass);
                    }
                }
            } catch (IllegalArgumentException unused) {
                zzahoVar.zzb = false;
            }
        }
        return zzahoVar.zzb;
    }

    private final void zzg(Object obj, Object obj2, Class cls) {
        Set setZza = zza();
        zzahw zzahwVarZze = zze(obj, obj2);
        zzahv zzahvVar = (zzahv) zzahwVarZze;
        zzahv zzahvVarZzc = zzahv.zzc((zzaht) zzahvVar.zzb, (zzaht) zzahvVar.zza);
        if (setZza == null || !(setZza.contains(zzahwVarZze) || setZza.contains(zzahvVarZzc))) {
            try {
                Set setZza2 = zza();
                if (setZza2 == null) {
                    setZza2 = new HashSet();
                    zza.set(setZza2);
                }
                setZza2.add(zze(obj, obj2));
                Field[] declaredFields = cls.getDeclaredFields();
                AccessibleObject.setAccessible(declaredFields, true);
                for (int i8 = 0; i8 < declaredFields.length && this.zzb; i8++) {
                    Field field = declaredFields[i8];
                    if (!zzahl.zza(this.zzd, field.getName()) && !field.getName().contains("$") && !Modifier.isTransient(field.getModifiers()) && !Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(zzahp.class)) {
                        zzd(zzahu.zza(field, obj), zzahu.zza(field, obj2));
                    }
                }
            } finally {
                zzh(obj, obj2);
            }
        }
    }

    private static void zzh(Object obj, Object obj2) {
        Set setZza = zza();
        if (setZza != null) {
            setZza.remove(zze(obj, obj2));
            if (setZza.isEmpty()) {
                zza.remove();
            }
        }
    }

    public final zzaho zzb(int i8, int i9) {
        if (!this.zzb) {
            return this;
        }
        this.zzb = i8 == i9;
        return this;
    }

    public final zzaho zzc(long j8, long j9) {
        if (!this.zzb) {
            return this;
        }
        this.zzb = j8 == j9;
        return this;
    }

    public final zzaho zzd(Object obj, Object obj2) {
        if (this.zzb && obj != obj2) {
            int i8 = 0;
            if (obj == null || obj2 == null) {
                this.zzb = false;
            } else if (!obj.getClass().isArray()) {
                this.zzb = obj.equals(obj2);
            } else if (obj.getClass() != obj2.getClass()) {
                this.zzb = false;
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                if (this.zzb && jArr != jArr2) {
                    if (jArr.length != jArr2.length) {
                        this.zzb = false;
                    } else {
                        while (i8 < jArr.length && this.zzb) {
                            zzc(jArr[i8], jArr2[i8]);
                            i8++;
                        }
                    }
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int[] iArr2 = (int[]) obj2;
                if (this.zzb && iArr != iArr2) {
                    if (iArr.length != iArr2.length) {
                        this.zzb = false;
                    } else {
                        while (i8 < iArr.length && this.zzb) {
                            zzb(iArr[i8], iArr2[i8]);
                            i8++;
                        }
                    }
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                short[] sArr2 = (short[]) obj2;
                if (this.zzb && sArr != sArr2) {
                    if (sArr.length != sArr2.length) {
                        this.zzb = false;
                    } else {
                        for (int i9 = 0; i9 < sArr.length && this.zzb; i9++) {
                            this.zzb = sArr[i9] == sArr2[i9];
                        }
                    }
                }
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                char[] cArr2 = (char[]) obj2;
                if (this.zzb && cArr != cArr2) {
                    if (cArr.length != cArr2.length) {
                        this.zzb = false;
                    } else {
                        for (int i10 = 0; i10 < cArr.length && this.zzb; i10++) {
                            this.zzb = cArr[i10] == cArr2[i10];
                        }
                    }
                }
            } else if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (this.zzb && bArr != bArr2) {
                    if (bArr.length != bArr2.length) {
                        this.zzb = false;
                    } else {
                        for (int i11 = 0; i11 < bArr.length && this.zzb; i11++) {
                            this.zzb = bArr[i11] == bArr2[i11];
                        }
                    }
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                if (this.zzb && dArr != dArr2) {
                    if (dArr.length != dArr2.length) {
                        this.zzb = false;
                    } else {
                        while (i8 < dArr.length && this.zzb) {
                            zzc(Double.doubleToLongBits(dArr[i8]), Double.doubleToLongBits(dArr2[i8]));
                            i8++;
                        }
                    }
                }
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                float[] fArr2 = (float[]) obj2;
                if (this.zzb && fArr != fArr2) {
                    if (fArr.length != fArr2.length) {
                        this.zzb = false;
                    } else {
                        while (i8 < fArr.length && this.zzb) {
                            zzb(Float.floatToIntBits(fArr[i8]), Float.floatToIntBits(fArr2[i8]));
                            i8++;
                        }
                    }
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                boolean[] zArr2 = (boolean[]) obj2;
                if (this.zzb && zArr != zArr2) {
                    if (zArr.length != zArr2.length) {
                        this.zzb = false;
                    } else {
                        for (int i12 = 0; i12 < zArr.length && this.zzb; i12++) {
                            this.zzb = zArr[i12] == zArr2[i12];
                        }
                    }
                }
            } else {
                Object[] objArr = (Object[]) obj;
                Object[] objArr2 = (Object[]) obj2;
                if (this.zzb && objArr != objArr2) {
                    if (objArr.length != objArr2.length) {
                        this.zzb = false;
                    } else {
                        while (i8 < objArr.length && this.zzb) {
                            zzd(objArr[i8], objArr2[i8]);
                            i8++;
                        }
                    }
                }
            }
        }
        return this;
    }
}
