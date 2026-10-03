package com.google.ads.interactivemedia.pal;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzar implements Runnable {
    public final /* synthetic */ NonceManager zza;

    public /* synthetic */ zzar(NonceManager nonceManager) {
        this.zza = nonceManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        NonceManager nonceManager = this.zza;
        nonceManager.zzg.zza(7, nonceManager.zzk);
    }
}
