package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.protobuf.U2;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzzq implements zzwk {
    private final zzxl zza;
    private final zzxn zzb;
    private final zzyx zzc;
    private final List zzd;
    private final int zze;

    public zzzq(zzxl zzxlVar, int i8, zzxn zzxnVar, zzyx zzyxVar, List list) {
        this.zza = zzxlVar;
        this.zze = i8;
        this.zzb = zzxnVar;
        this.zzc = zzyxVar;
        this.zzd = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* bridge */ /* synthetic */ void zzb(Object obj, AccessibleObject accessibleObject) {
        if (true == Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (!zzyf.zza(accessibleObject, obj)) {
            throw new zzvx(zzabp.zze(accessibleObject, true).concat(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x01d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x01f3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:? A[LOOP:2: B:90:0x01bf->B:120:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x007f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0089  */
    /* JADX WARN: Code duplicated, block: B:34:0x008d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0093  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:53:0x00da  */
    /* JADX WARN: Code duplicated, block: B:55:0x00de  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:65:0x0120  */
    /* JADX WARN: Code duplicated, block: B:68:0x0129  */
    /* JADX WARN: Code duplicated, block: B:71:0x0135  */
    /* JADX WARN: Code duplicated, block: B:74:0x013e  */
    /* JADX WARN: Code duplicated, block: B:77:0x014b  */
    /* JADX WARN: Code duplicated, block: B:78:0x016a  */
    /* JADX WARN: Code duplicated, block: B:80:0x0179  */
    /* JADX WARN: Code duplicated, block: B:81:0x0181  */
    /* JADX WARN: Code duplicated, block: B:83:0x0186 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x0195  */
    /* JADX WARN: Code duplicated, block: B:89:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:92:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:99:0x01e1  */
    private final zzzo zzc(zzvr zzvrVar, zzaca zzacaVar, Class cls, boolean z7, boolean z8) {
        boolean z9;
        boolean z10;
        Method methodZzh;
        zzwm zzwmVar;
        String strZza;
        String[] strArrZzb;
        int length;
        List list;
        List listSingletonList;
        zzaca zzacaVarZzb;
        Class clsZzc;
        boolean z11;
        int modifiers;
        boolean z12;
        zzwl zzwlVar;
        zzaca zzacaVar2;
        zzwj zzwjVarZzb;
        zzaca zzacaVar3;
        zzwj zzwjVarZza;
        zzwj zzzwVar;
        zzzk zzzkVar;
        List<String> list2;
        Field[] fieldArr;
        Class cls2;
        zzzm zzzmVar;
        zzzm zzzmVar2;
        int i8;
        if (cls.isInterface()) {
            return zzzo.zza;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        zzaca zzacaVarZzb2 = zzacaVar;
        boolean z13 = z7;
        Class clsZzc2 = cls;
        while (clsZzc2 != Object.class) {
            Field[] declaredFields = clsZzc2.getDeclaredFields();
            boolean z14 = true;
            boolean z15 = false;
            if (clsZzc2 == cls || declaredFields.length <= 0) {
                z9 = z13;
            } else {
                int iZzb = zzyf.zzb(this.zzd, clsZzc2);
                if (iZzb == 4) {
                    throw new zzvx(O.C("ReflectionAccessFilter does not permit using reflection for ", String.valueOf(clsZzc2), " (supertype of ", String.valueOf(cls), "). Register a TypeAdapter for this type or adjust the access filter."));
                }
                z9 = iZzb == 3;
            }
            int length2 = declaredFields.length;
            int i9 = 0;
            while (i9 < length2) {
                Field field = declaredFields[i9];
                boolean zZze = this.zze(field, z14);
                boolean zZze2 = this.zze(field, z15);
                if (zZze) {
                    if (z8) {
                        z10 = zZze2;
                        methodZzh = null;
                    } else if (Modifier.isStatic(field.getModifiers())) {
                        methodZzh = null;
                        z10 = false;
                    } else {
                        methodZzh = zzabp.zzh(clsZzc2, field);
                        if (!z9) {
                            zzabp.zzi(methodZzh);
                        }
                        if (methodZzh.getAnnotation(zzwm.class) == null && field.getAnnotation(zzwm.class) == null) {
                            throw new zzvx(r.g("@SerializedName on ", zzabp.zze(methodZzh, z15), " is not supported"));
                        }
                        z10 = zZze2;
                    }
                    if (!z9 && methodZzh == null) {
                        zzabp.zzi(field);
                    }
                    Type typeZze = zzwr.zze(zzacaVarZzb2.zzd(), clsZzc2, field.getGenericType());
                    zzwmVar = (zzwm) field.getAnnotation(zzwm.class);
                    if (zzwmVar == null) {
                        i8 = this.zze;
                        if (i8 != 0) {
                            throw null;
                        }
                        if (i8 - 1 == 0) {
                            throw null;
                        }
                        listSingletonList = Collections.singletonList(field.getName());
                    } else {
                        strZza = zzwmVar.zza();
                        strArrZzb = zzwmVar.zzb();
                        length = strArrZzb.length;
                        if (length == 0) {
                            listSingletonList = Collections.singletonList(strZza);
                        } else {
                            ArrayList arrayList = new ArrayList(length + 1);
                            arrayList.add(strZza);
                            Collections.addAll(arrayList, strArrZzb);
                            list = arrayList;
                        }
                        String str = (String) list.get(0);
                        zzacaVarZzb = zzaca.zzb(typeZze);
                        clsZzc = zzacaVarZzb.zzc();
                        if ((clsZzc instanceof Class) || !clsZzc.isPrimitive()) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        modifiers = field.getModifiers();
                        if (Modifier.isStatic(modifiers) || !Modifier.isFinal(modifiers)) {
                            z12 = false;
                        } else {
                            z12 = true;
                        }
                        zzwlVar = (zzwl) field.getAnnotation(zzwl.class);
                        if (zzwlVar != null) {
                            zzacaVar2 = zzacaVarZzb;
                            zzwjVarZzb = this.zzc.zzb(this.zza, zzvrVar, zzacaVar2, zzwlVar, false);
                        } else {
                            zzacaVar2 = zzacaVarZzb;
                            zzwjVarZzb = null;
                        }
                        if (zzwjVarZzb == null) {
                            zzacaVar3 = zzacaVar2;
                            zzwjVarZza = zzvrVar.zza(zzacaVar3);
                        } else {
                            zzacaVar3 = zzacaVar2;
                            zzwjVarZza = zzwjVarZzb;
                        }
                        if (zZze || zzwjVarZzb != null) {
                            zzzwVar = zzwjVarZza;
                        } else {
                            zzzwVar = new zzzw(zzvrVar, zzwjVarZza, zzacaVar3.zzd());
                        }
                        list2 = list;
                        fieldArr = declaredFields;
                        cls2 = clsZzc2;
                        zzzkVar = new zzzk(this, str, field, z9, methodZzh, zzzwVar, zzwjVarZza, z11, z12);
                        if (z10) {
                            for (String str2 : list2) {
                                zzzmVar2 = (zzzm) linkedHashMap.put(str2, zzzkVar);
                                if (zzzmVar2 == null) {
                                    throw zzd(cls, str2, zzzmVar2.zzh, field);
                                }
                            }
                        }
                        if (zZze && (zzzmVar = (zzzm) linkedHashMap2.put(str, zzzkVar)) != null) {
                            throw zzd(cls, str, zzzmVar.zzh, field);
                        }
                    }
                    list = listSingletonList;
                    String str3 = (String) list.get(0);
                    zzacaVarZzb = zzaca.zzb(typeZze);
                    clsZzc = zzacaVarZzb.zzc();
                    if (clsZzc instanceof Class) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    modifiers = field.getModifiers();
                    if (Modifier.isStatic(modifiers)) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    zzwlVar = (zzwl) field.getAnnotation(zzwl.class);
                    if (zzwlVar != null) {
                        zzacaVar2 = zzacaVarZzb;
                        zzwjVarZzb = this.zzc.zzb(this.zza, zzvrVar, zzacaVar2, zzwlVar, false);
                    } else {
                        zzacaVar2 = zzacaVarZzb;
                        zzwjVarZzb = null;
                    }
                    if (zzwjVarZzb == null) {
                        zzacaVar3 = zzacaVar2;
                        zzwjVarZza = zzvrVar.zza(zzacaVar3);
                    } else {
                        zzacaVar3 = zzacaVar2;
                        zzwjVarZza = zzwjVarZzb;
                    }
                    if (zZze) {
                        zzzwVar = zzwjVarZza;
                    } else {
                        zzzwVar = zzwjVarZza;
                    }
                    list2 = list;
                    fieldArr = declaredFields;
                    cls2 = clsZzc2;
                    zzzkVar = new zzzk(this, str3, field, z9, methodZzh, zzzwVar, zzwjVarZza, z11, z12);
                    if (z10) {
                        while (r0.hasNext()) {
                            zzzmVar2 = (zzzm) linkedHashMap.put(str2, zzzkVar);
                            if (zzzmVar2 == null) {
                                throw zzd(cls, str2, zzzmVar2.zzh, field);
                            }
                        }
                    }
                    if (zZze) {
                        continue;
                    }
                } else if (zZze2) {
                    zZze2 = true;
                    if (z8) {
                        z10 = zZze2;
                        methodZzh = null;
                    } else if (Modifier.isStatic(field.getModifiers())) {
                        methodZzh = null;
                        z10 = false;
                    } else {
                        methodZzh = zzabp.zzh(clsZzc2, field);
                        if (!z9) {
                            zzabp.zzi(methodZzh);
                        }
                        if (methodZzh.getAnnotation(zzwm.class) == null) {
                        }
                        z10 = zZze2;
                    }
                    if (!z9) {
                        zzabp.zzi(field);
                    }
                    Type typeZze2 = zzwr.zze(zzacaVarZzb2.zzd(), clsZzc2, field.getGenericType());
                    zzwmVar = (zzwm) field.getAnnotation(zzwm.class);
                    if (zzwmVar == null) {
                        i8 = this.zze;
                        if (i8 != 0) {
                            throw null;
                        }
                        if (i8 - 1 == 0) {
                            throw null;
                        }
                        listSingletonList = Collections.singletonList(field.getName());
                    } else {
                        strZza = zzwmVar.zza();
                        strArrZzb = zzwmVar.zzb();
                        length = strArrZzb.length;
                        if (length == 0) {
                            listSingletonList = Collections.singletonList(strZza);
                        } else {
                            ArrayList arrayList2 = new ArrayList(length + 1);
                            arrayList2.add(strZza);
                            Collections.addAll(arrayList2, strArrZzb);
                            list = arrayList2;
                        }
                        String str4 = (String) list.get(0);
                        zzacaVarZzb = zzaca.zzb(typeZze2);
                        clsZzc = zzacaVarZzb.zzc();
                        if (clsZzc instanceof Class) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        modifiers = field.getModifiers();
                        if (Modifier.isStatic(modifiers)) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        zzwlVar = (zzwl) field.getAnnotation(zzwl.class);
                        if (zzwlVar != null) {
                            zzacaVar2 = zzacaVarZzb;
                            zzwjVarZzb = this.zzc.zzb(this.zza, zzvrVar, zzacaVar2, zzwlVar, false);
                        } else {
                            zzacaVar2 = zzacaVarZzb;
                            zzwjVarZzb = null;
                        }
                        if (zzwjVarZzb == null) {
                            zzacaVar3 = zzacaVar2;
                            zzwjVarZza = zzvrVar.zza(zzacaVar3);
                        } else {
                            zzacaVar3 = zzacaVar2;
                            zzwjVarZza = zzwjVarZzb;
                        }
                        if (zZze) {
                            zzzwVar = zzwjVarZza;
                        } else {
                            zzzwVar = zzwjVarZza;
                        }
                        list2 = list;
                        fieldArr = declaredFields;
                        cls2 = clsZzc2;
                        zzzkVar = new zzzk(this, str4, field, z9, methodZzh, zzzwVar, zzwjVarZza, z11, z12);
                        if (z10) {
                            while (r0.hasNext()) {
                                zzzmVar2 = (zzzm) linkedHashMap.put(str2, zzzkVar);
                                if (zzzmVar2 == null) {
                                    throw zzd(cls, str2, zzzmVar2.zzh, field);
                                }
                            }
                        }
                        if (zZze) {
                            continue;
                        }
                    }
                    list = listSingletonList;
                    String str5 = (String) list.get(0);
                    zzacaVarZzb = zzaca.zzb(typeZze2);
                    clsZzc = zzacaVarZzb.zzc();
                    if (clsZzc instanceof Class) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    modifiers = field.getModifiers();
                    if (Modifier.isStatic(modifiers)) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    zzwlVar = (zzwl) field.getAnnotation(zzwl.class);
                    if (zzwlVar != null) {
                        zzacaVar2 = zzacaVarZzb;
                        zzwjVarZzb = this.zzc.zzb(this.zza, zzvrVar, zzacaVar2, zzwlVar, false);
                    } else {
                        zzacaVar2 = zzacaVarZzb;
                        zzwjVarZzb = null;
                    }
                    if (zzwjVarZzb == null) {
                        zzacaVar3 = zzacaVar2;
                        zzwjVarZza = zzvrVar.zza(zzacaVar3);
                    } else {
                        zzacaVar3 = zzacaVar2;
                        zzwjVarZza = zzwjVarZzb;
                    }
                    if (zZze) {
                        zzzwVar = zzwjVarZza;
                    } else {
                        zzzwVar = zzwjVarZza;
                    }
                    list2 = list;
                    fieldArr = declaredFields;
                    cls2 = clsZzc2;
                    zzzkVar = new zzzk(this, str5, field, z9, methodZzh, zzzwVar, zzwjVarZza, z11, z12);
                    if (z10) {
                        while (r0.hasNext()) {
                            zzzmVar2 = (zzzm) linkedHashMap.put(str2, zzzkVar);
                            if (zzzmVar2 == null) {
                                throw zzd(cls, str2, zzzmVar2.zzh, field);
                            }
                        }
                    }
                    if (zZze) {
                        continue;
                    }
                } else {
                    i9 = i9;
                    length2 = length2;
                    fieldArr = declaredFields;
                    cls2 = clsZzc2;
                }
                i9++;
                z15 = false;
                z14 = true;
                this = this;
                clsZzc2 = cls2;
                declaredFields = fieldArr;
                length2 = length2;
            }
            Class cls3 = clsZzc2;
            zzacaVarZzb2 = zzaca.zzb(zzwr.zze(zzacaVarZzb2.zzd(), cls3, cls3.getGenericSuperclass()));
            clsZzc2 = zzacaVarZzb2.zzc();
            z13 = z9;
        }
        return new zzzo(linkedHashMap, new ArrayList(linkedHashMap2.values()));
    }

    private static IllegalArgumentException zzd(Class cls, String str, Field field, Field field2) {
        String name = cls.getName();
        String strZzd = zzabp.zzd(field);
        String strZzd2 = zzabp.zzd(field2);
        StringBuilder sbQ = U2.q("Class ", name, " declares multiple JSON fields named '", str, "'; conflict is caused by fields ");
        sbQ.append(strZzd);
        sbQ.append(" and ");
        sbQ.append(strZzd2);
        sbQ.append("\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#duplicate-fields");
        throw new IllegalArgumentException(sbQ.toString());
    }

    private final boolean zze(Field field, boolean z7) {
        return !this.zzb.zzd(field, z7);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Class clsZzc = zzacaVar.zzc();
        if (!Object.class.isAssignableFrom(clsZzc)) {
            return null;
        }
        if (zzabp.zzj(clsZzc)) {
            return new zzzj(this);
        }
        int iZzb = zzyf.zzb(this.zzd, clsZzc);
        if (iZzb == 4) {
            throw new zzvx(r.g("ReflectionAccessFilter does not permit using reflection for ", String.valueOf(clsZzc), ". Register a TypeAdapter for this type or adjust the access filter."));
        }
        boolean z7 = iZzb == 3;
        return zzabp.zzk(clsZzc) ? new zzzp(clsZzc, zzc(zzvrVar, zzacaVar, clsZzc, z7, true), z7) : new zzzn(this.zza.zza(zzacaVar), zzc(zzvrVar, zzacaVar, clsZzc, z7, false));
    }
}
