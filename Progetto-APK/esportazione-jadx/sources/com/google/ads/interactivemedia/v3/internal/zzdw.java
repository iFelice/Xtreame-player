package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzdw implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        if (zzdz.zzc != null) {
            zzdz.zzc.post(zzdz.zzd);
            zzdz.zzc.postDelayed(zzdz.zze, 200L);
        }
    }
}
