package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
final class zzym implements zzwk {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        Type genericComponentType;
        Type typeZzd = zzacaVar.zzd();
        if (typeZzd instanceof GenericArrayType) {
            genericComponentType = ((GenericArrayType) typeZzd).getGenericComponentType();
        } else {
            if (!(typeZzd instanceof Class)) {
                return null;
            }
            Class cls = (Class) typeZzd;
            if (!cls.isArray()) {
                return null;
            }
            genericComponentType = cls.getComponentType();
        }
        return new zzyn(zzvrVar, zzvrVar.zza(zzaca.zzb(genericComponentType)), zzwr.zza(genericComponentType));
    }
}
