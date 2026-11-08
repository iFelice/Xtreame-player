package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.content.pm.PackageInfo;

/* JADX INFO: loaded from: classes.dex */
final class zzjh implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzjj zzb;

    public zzjh(zzjj zzjjVar, int i8, boolean z7) {
        this.zza = i8;
        this.zzb = zzjjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbp zzbpVarZza;
        int i8 = this.zza;
        zzjj zzjjVar = this.zzb;
        if (i8 > 0) {
            try {
                Thread.sleep(i8 * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = zzjjVar.zza.getPackageManager().getPackageInfo(zzjjVar.zza.getPackageName(), 0);
            Context context = zzjjVar.zza;
            zzbpVarZza = zzob.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            zzbpVarZza = null;
        }
        this.zzb.zzm = zzbpVarZza;
        if (this.zza < 4) {
            if (zzbpVarZza != null && zzbpVarZza.zzaj() && !zzbpVarZza.zzg().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzbpVarZza.zzak() && zzbpVarZza.zze().zzd() && zzbpVarZza.zze().zza() != -2) {
                return;
            }
            this.zzb.zzo(this.zza + 1, true);
        }
    }
}
