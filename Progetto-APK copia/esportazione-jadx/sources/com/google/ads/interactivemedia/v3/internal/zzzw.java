package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes.dex */
final class zzzw<T> extends zzwj<T> {
    private final zzvr zza;
    private final zzwj zzb;
    private final Type zzc;

    public zzzw(zzvr zzvrVar, zzwj zzwjVar, Type type) {
        this.zza = zzvrVar;
        this.zzb = zzwjVar;
        this.zzc = type;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final T read(zzacc zzaccVar) {
        return (T) this.zzb.read(zzaccVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final void write(zzace zzaceVar, T t7) {
        zzwj zzwjVarZza;
        Type type = this.zzc;
        Type type2 = (t7 == null || !((type instanceof Class) || (type instanceof TypeVariable))) ? type : t7.getClass();
        zzwj zzwjVarZza2 = this.zzb;
        if (type2 != type) {
            zzwjVarZza2 = this.zza.zza(zzaca.zzb(type2));
            if (zzwjVarZza2 instanceof zzzl) {
                zzwj zzwjVar = this.zzb;
                while ((zzwjVar instanceof zzzr) && (zzwjVarZza = ((zzzr) zzwjVar).zza()) != zzwjVar) {
                    zzwjVar = zzwjVarZza;
                }
                if (!(zzwjVar instanceof zzzl)) {
                    zzwjVarZza2 = this.zzb;
                }
            }
        }
        zzwjVarZza2.write(zzaceVar, t7);
    }
}
