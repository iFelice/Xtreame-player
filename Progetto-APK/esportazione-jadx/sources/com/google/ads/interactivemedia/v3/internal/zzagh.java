package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
abstract class zzagh {
    private static volatile int zza = 100;

    public abstract Object zza(Object obj);

    public abstract Object zzb();

    public abstract Object zzc(Object obj);

    public abstract void zzd(Object obj, int i8, int i9);

    public abstract void zze(Object obj, int i8, long j8);

    public abstract void zzf(Object obj, int i8, Object obj2);

    public abstract void zzg(Object obj, int i8, zzacw zzacwVar);

    public abstract void zzh(Object obj, int i8, long j8);

    public abstract void zzi(Object obj);

    public abstract void zzj(Object obj, Object obj2);

    public final boolean zzk(Object obj, zzafl zzaflVar, int i8) throws zzaeg {
        int iZzd = zzaflVar.zzd();
        int i9 = iZzd >>> 3;
        int i10 = iZzd & 7;
        if (i10 == 0) {
            zzh(obj, i9, zzaflVar.zzl());
            return true;
        }
        if (i10 == 1) {
            zze(obj, i9, zzaflVar.zzk());
            return true;
        }
        if (i10 == 2) {
            zzg(obj, i9, zzaflVar.zzp());
            return true;
        }
        if (i10 != 3) {
            if (i10 == 4) {
                return false;
            }
            if (i10 != 5) {
                throw new zzaef("Protocol message tag had invalid wire type.");
            }
            zzd(obj, i9, zzaflVar.zzf());
            return true;
        }
        Object objZzb = zzb();
        int i11 = i9 << 3;
        int i12 = i8 + 1;
        if (i12 >= zza) {
            throw new zzaeg("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (zzaflVar.zzc() != Integer.MAX_VALUE && zzk(objZzb, zzaflVar, i12)) {
        }
        if ((i11 | 4) != zzaflVar.zzd()) {
            throw new zzaeg("Protocol message end-group tag did not match expected tag.");
        }
        zzf(obj, i9, zzc(objZzb));
        return true;
    }
}
