package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzch extends zzady implements zzafc {
    private static final zzch zzb;
    private int zzd;
    private zzaed zze = zzady.zzaG();
    private zzacw zzf = zzacw.zzb;
    private int zzg = 1;
    private int zzh = 1;

    static {
        zzch zzchVar = new zzch();
        zzb = zzchVar;
        zzady.zzaM(zzch.class, zzchVar);
    }

    private zzch() {
    }

    public static zzcg zza() {
        return (zzcg) zzb.zzay();
    }

    public static /* synthetic */ void zzc(zzch zzchVar, zzacw zzacwVar) {
        zzaed zzaedVar = zzchVar.zze;
        if (!zzaedVar.zzc()) {
            zzchVar.zze = zzady.zzaH(zzaedVar);
        }
        zzchVar.zze.add(zzacwVar);
    }

    public static /* synthetic */ void zzd(zzch zzchVar, zzacw zzacwVar) {
        zzchVar.zzd |= 1;
        zzchVar.zzf = zzacwVar;
    }

    public static /* synthetic */ void zze(zzch zzchVar, int i8) {
        zzchVar.zzh = 4;
        zzchVar.zzd = 4 | zzchVar.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", zzby.zza, "zzh", zzbw.zza});
        }
        if (i9 == 3) {
            return new zzch();
        }
        zzcf zzcfVar = null;
        if (i9 == 4) {
            return new zzcg(zzcfVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
