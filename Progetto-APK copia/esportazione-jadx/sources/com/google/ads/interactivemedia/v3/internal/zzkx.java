package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzkx implements Callable {
    protected final zzjj zza;
    protected final String zzb;
    protected final String zzc;
    protected final zzan zzd;
    protected Method zze;
    protected final int zzf;
    protected final int zzg;

    public zzkx(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        this.zza = zzjjVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = zzanVar;
        this.zzf = i8;
        this.zzg = i9;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        zze();
        return null;
    }

    public abstract void zza();

    public Void zze() {
        int i8;
        try {
            long jNanoTime = System.nanoTime();
            Method methodZzj = this.zza.zzj(this.zzb, this.zzc);
            this.zze = methodZzj;
            if (methodZzj == null) {
                return null;
            }
            zza();
            zzhz zzhzVarZzd = this.zza.zzd();
            if (zzhzVarZzd == null || (i8 = this.zzf) == Integer.MIN_VALUE) {
                return null;
            }
            zzhzVarZzd.zzc(this.zzg, i8, (System.nanoTime() - jNanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }
}
