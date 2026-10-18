package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzzi extends zzwj {
    private static final zzwk zza = new zzzg(1);
    private final zzvr zzb;
    private final int zzc;

    public /* synthetic */ zzzi(zzvr zzvrVar, int i8, zzzh zzzhVar) {
        this.zzb = zzvrVar;
        this.zzc = i8;
    }

    public static zzwk zza(int i8) {
        return i8 == 1 ? zza : new zzzg(0);
    }

    private final Object zzb(zzacc zzaccVar, int i8) throws IOException {
        int i9 = i8 - 1;
        if (i9 == 5) {
            return zzaccVar.zzh();
        }
        if (i9 == 6) {
            return zzwh.zza(this.zzc, zzaccVar);
        }
        if (i9 == 7) {
            return Boolean.valueOf(zzaccVar.zzq());
        }
        if (i9 != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(zzacd.zza(i8)));
        }
        zzaccVar.zzm();
        return null;
    }

    private static final Object zzc(zzacc zzaccVar, int i8) throws IOException {
        int i9 = i8 - 1;
        if (i9 == 0) {
            zzaccVar.zzi();
            return new ArrayList();
        }
        if (i9 != 2) {
            return null;
        }
        zzaccVar.zzj();
        return new zzxy();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final Object read(zzacc zzaccVar) throws IOException {
        int iZzr = zzaccVar.zzr();
        Object objZzc = zzc(zzaccVar, iZzr);
        if (objZzc == null) {
            return zzb(zzaccVar, iZzr);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (zzaccVar.zzp()) {
                String strZzg = objZzc instanceof Map ? zzaccVar.zzg() : null;
                int iZzr2 = zzaccVar.zzr();
                Object objZzc2 = zzc(zzaccVar, iZzr2);
                Object objZzb = objZzc2 == null ? zzb(zzaccVar, iZzr2) : objZzc2;
                if (objZzc instanceof List) {
                    ((List) objZzc).add(objZzb);
                } else {
                    ((Map) objZzc).put(strZzg, objZzb);
                }
                if (objZzc2 != null) {
                    arrayDeque.addLast(objZzc);
                    objZzc = objZzb;
                }
            } else {
                if (objZzc instanceof List) {
                    zzaccVar.zzk();
                } else {
                    zzaccVar.zzl();
                }
                if (arrayDeque.isEmpty()) {
                    return objZzc;
                }
                objZzc = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final void write(zzace zzaceVar, Object obj) throws IOException {
        if (obj == null) {
            zzaceVar.zzg();
            return;
        }
        zzwj zzwjVarZza = this.zzb.zza(zzaca.zza(obj.getClass()));
        if (!(zzwjVarZza instanceof zzzi)) {
            zzwjVarZza.write(zzaceVar, obj);
        } else {
            zzaceVar.zzc();
            zzaceVar.zze();
        }
    }
}
