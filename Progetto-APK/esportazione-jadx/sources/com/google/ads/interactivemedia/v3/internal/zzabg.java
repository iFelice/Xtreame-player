package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzabg extends zzwj {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();

    public zzabg(Class cls) {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            ArrayList arrayList = new ArrayList(declaredFields.length);
            for (Field field : declaredFields) {
                if (field.isEnumConstant()) {
                    arrayList.add(field);
                }
            }
            Field[] fieldArr = (Field[]) arrayList.toArray(new Field[0]);
            AccessibleObject.setAccessible(fieldArr, true);
            for (Field field2 : fieldArr) {
                Enum r7 = (Enum) field2.get(null);
                String strName = r7.name();
                String string = r7.toString();
                zzwm zzwmVar = (zzwm) field2.getAnnotation(zzwm.class);
                if (zzwmVar != null) {
                    strName = zzwmVar.zza();
                    for (String str : zzwmVar.zzb()) {
                        this.zza.put(str, r7);
                    }
                }
                this.zza.put(strName, r7);
                this.zzb.put(string, r7);
                this.zzc.put(r7, strName);
            }
        } catch (IllegalAccessException e8) {
            throw new AssertionError(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        Enum r7 = (Enum) this.zza.get(strZzh);
        return r7 != null ? r7 : (Enum) this.zzb.get(strZzh);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        Enum r7 = (Enum) obj;
        zzaceVar.zzl(r7 == null ? null : (String) this.zzc.get(r7));
    }
}
