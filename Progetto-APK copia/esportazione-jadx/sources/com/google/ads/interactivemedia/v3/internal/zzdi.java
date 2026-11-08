package com.google.ads.interactivemedia.v3.internal;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
final class zzdi implements Runnable {
    final /* synthetic */ zzdj zza;
    private final WebView zzb;

    public zzdi(zzdj zzdjVar) {
        this.zza = zzdjVar;
        this.zzb = zzdjVar.zza;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.destroy();
    }
}
