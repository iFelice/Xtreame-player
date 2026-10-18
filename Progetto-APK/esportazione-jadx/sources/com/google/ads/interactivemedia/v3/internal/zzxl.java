package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzxl {
    private final Map zza;
    private final List zzb;

    public zzxl(Map map, boolean z7, List list) {
        this.zza = map;
        this.zzb = list;
    }

    public static String zzb(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            return r.g("Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: ", cls.getName(), "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#r8-abstract-class");
        }
        return null;
    }

    public final String toString() {
        return this.zza.toString();
    }

    public final zzya zza(zzaca zzacaVar) {
        zzya zzxhVar;
        zzya zzxkVar;
        Map map = this.zza;
        Type typeZzd = zzacaVar.zzd();
        Class clsZzc = zzacaVar.zzc();
        zzvt zzvtVar = (zzvt) map.get(typeZzd);
        if (zzvtVar != null) {
            return new zzxc(this, zzvtVar, typeZzd);
        }
        zzvt zzvtVar2 = (zzvt) this.zza.get(clsZzc);
        if (zzvtVar2 != null) {
            return new zzxd(this, zzvtVar2, typeZzd);
        }
        zzya zzxaVar = null;
        if (EnumSet.class.isAssignableFrom(clsZzc)) {
            zzxhVar = new zzxg(typeZzd);
        } else {
            zzxhVar = clsZzc == EnumMap.class ? new zzxh(typeZzd) : null;
        }
        if (zzxhVar != null) {
            return zzxhVar;
        }
        int iZzb = zzyf.zzb(this.zzb, clsZzc);
        if (Modifier.isAbstract(clsZzc.getModifiers())) {
            zzxkVar = null;
        } else {
            try {
                Constructor declaredConstructor = clsZzc.getDeclaredConstructor(new Class[0]);
                if (iZzb != 1 && (!zzye.zzb.zza(declaredConstructor, null) || (iZzb == 4 && !Modifier.isPublic(declaredConstructor.getModifiers())))) {
                    zzxkVar = new zzxi(r.g("Unable to invoke no-args constructor of ", String.valueOf(clsZzc), "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."));
                } else if (iZzb != 1) {
                    zzxkVar = new zzxk(declaredConstructor);
                } else {
                    String strZzf = zzabp.zzf(declaredConstructor);
                    if (strZzf != null) {
                        zzxkVar = new zzxj(strZzf);
                    } else {
                        iZzb = 1;
                        zzxkVar = new zzxk(declaredConstructor);
                    }
                }
            } catch (NoSuchMethodException unused) {
                zzxkVar = null;
            }
        }
        if (zzxkVar != null) {
            return zzxkVar;
        }
        if (Collection.class.isAssignableFrom(clsZzc)) {
            if (SortedSet.class.isAssignableFrom(clsZzc)) {
                zzxaVar = new zzws();
            } else if (Set.class.isAssignableFrom(clsZzc)) {
                zzxaVar = new zzwt();
            } else {
                zzxaVar = Queue.class.isAssignableFrom(clsZzc) ? new zzwu() : new zzwv();
            }
        } else if (Map.class.isAssignableFrom(clsZzc)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(clsZzc)) {
                zzxaVar = new zzww();
            } else if (ConcurrentMap.class.isAssignableFrom(clsZzc)) {
                zzxaVar = new zzwx();
            } else if (SortedMap.class.isAssignableFrom(clsZzc)) {
                zzxaVar = new zzwy();
            } else {
                zzxaVar = (!(typeZzd instanceof ParameterizedType) || String.class.isAssignableFrom(zzaca.zzb(((ParameterizedType) typeZzd).getActualTypeArguments()[0]).zzc())) ? new zzxa() : new zzwz();
            }
        }
        if (zzxaVar != null) {
            return zzxaVar;
        }
        String strZzb = zzb(clsZzc);
        if (strZzb != null) {
            return new zzxe(this, strZzb);
        }
        return iZzb == 1 ? new zzxb(this, clsZzc) : new zzxf(this, r.g("Unable to create instance of ", String.valueOf(clsZzc), "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."));
    }
}
