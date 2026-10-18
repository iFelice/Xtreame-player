package com.google.ads.interactivemedia.v3.internal;

import android.app.AppOpsManager;

/* JADX INFO: loaded from: classes.dex */
final class zzjr implements AppOpsManager.OnOpActiveChangedListener {
    final /* synthetic */ zzjs zza;

    public zzjr(zzjs zzjsVar) {
        this.zza = zzjsVar;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i8, String str2, boolean z7) {
        if (z7) {
            this.zza.zzb = System.currentTimeMillis();
            this.zza.zze = true;
            return;
        }
        zzjs zzjsVar = this.zza;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (zzjsVar.zzc > 0) {
            zzjs zzjsVar2 = this.zza;
            if (jCurrentTimeMillis >= zzjsVar2.zzc) {
                zzjsVar2.zzd = jCurrentTimeMillis - zzjsVar2.zzc;
            }
        }
        this.zza.zze = false;
    }
}
