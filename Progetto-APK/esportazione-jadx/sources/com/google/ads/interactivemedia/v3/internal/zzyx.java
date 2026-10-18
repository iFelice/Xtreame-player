package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzyx implements zzwk {
    private static final zzwk zza;
    private static final zzwk zzb;
    private final zzxl zzc;
    private final ConcurrentMap zzd = new ConcurrentHashMap();

    static {
        zzyv zzyvVar = null;
        zza = new zzyw(zzyvVar);
        zzb = new zzyw(zzyvVar);
    }

    public zzyx(zzxl zzxlVar) {
        this.zzc = zzxlVar;
    }

    private final zzwk zzd(Class cls, zzwk zzwkVar) {
        zzwk zzwkVar2 = (zzwk) this.zzd.putIfAbsent(cls, zzwkVar);
        return zzwkVar2 != null ? zzwkVar2 : zzwkVar;
    }

    private static zzwl zze(Class cls) {
        return (zzwl) cls.getAnnotation(zzwl.class);
    }

    private static Object zzf(zzxl zzxlVar, Class cls) {
        return zzxlVar.zza(zzaca.zza(cls)).zza();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        zzwl zzwlVarZze = zze(zzacaVar.zzc());
        if (zzwlVarZze == null) {
            return null;
        }
        return zzb(this.zzc, zzvrVar, zzacaVar, zzwlVarZze, true);
    }

    public final zzwj zzb(zzxl zzxlVar, zzvr zzvrVar, zzaca zzacaVar, zzwl zzwlVar, boolean z7) {
        zzwd zzwdVar;
        zzwj zzzvVar;
        Object objZzf = zzf(zzxlVar, zzwlVar.zza());
        boolean z8 = objZzf instanceof zzwj;
        boolean zZzb = zzwlVar.zzb();
        if (z8) {
            zzzvVar = (zzwj) objZzf;
        } else if (objZzf instanceof zzwk) {
            zzwk zzwkVarZzd = (zzwk) objZzf;
            if (z7) {
                zzwkVarZzd = zzd(zzacaVar.zzc(), zzwkVarZzd);
            }
            zzzvVar = zzwkVarZzd.zza(zzvrVar, zzacaVar);
        } else {
            if (objZzf instanceof zzwd) {
                zzwdVar = (zzwd) objZzf;
            } else {
                if (!(objZzf instanceof zzvv)) {
                    throw new IllegalArgumentException(O.C("Invalid attempt to bind an instance of ", objZzf.getClass().getName(), " as a @JsonAdapter for ", zzacaVar.toString(), ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."));
                }
                zzwdVar = null;
            }
            zzzvVar = new zzzv(zzwdVar, objZzf instanceof zzvv ? (zzvv) objZzf : null, zzvrVar, zzacaVar, z7 ? zza : zzb, zZzb);
            zZzb = false;
        }
        return (zzzvVar == null || !zZzb) ? zzzvVar : zzzvVar.nullSafe();
    }

    public final boolean zzc(zzaca zzacaVar, zzwk zzwkVar) {
        Objects.requireNonNull(zzacaVar);
        Objects.requireNonNull(zzwkVar);
        if (zzwkVar == zza) {
            return true;
        }
        Class clsZzc = zzacaVar.zzc();
        zzwk zzwkVar2 = (zzwk) this.zzd.get(clsZzc);
        if (zzwkVar2 != null) {
            return zzwkVar2 == zzwkVar;
        }
        zzwl zzwlVarZze = zze(clsZzc);
        if (zzwlVarZze == null) {
            return false;
        }
        Class clsZza = zzwlVarZze.zza();
        return zzwk.class.isAssignableFrom(clsZza) && zzd(clsZzc, (zzwk) zzf(this.zzc, clsZza)) == zzwkVar;
    }
}
