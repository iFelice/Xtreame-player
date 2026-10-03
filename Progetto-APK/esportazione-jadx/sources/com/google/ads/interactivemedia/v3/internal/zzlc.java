package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzlc extends zzady implements zzafc {
    private static final zzlc zzb;
    private int zzd;
    private zzlf zze;
    private zzacw zzf;
    private zzacw zzg;

    static {
        zzlc zzlcVar = new zzlc();
        zzb = zzlcVar;
        zzady.zzaM(zzlc.class, zzlcVar);
    }

    private zzlc() {
        zzacw zzacwVar = zzacw.zzb;
        this.zzf = zzacwVar;
        this.zzg = zzacwVar;
    }

    public static zzlc zzb(zzacw zzacwVar, zzadk zzadkVar) {
        return (zzlc) zzady.zzaD(zzb, zzacwVar, zzadkVar);
    }

    public final zzlf zzc() {
        zzlf zzlfVar = this.zze;
        return zzlfVar == null ? zzlf.zzf() : zzlfVar;
    }

    public final zzacw zzd() {
        return this.zzg;
    }

    public final zzacw zze() {
        return this.zzf;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new zzlc();
        }
        zzla zzlaVar = null;
        if (i9 == 4) {
            return new zzlb(zzlaVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
