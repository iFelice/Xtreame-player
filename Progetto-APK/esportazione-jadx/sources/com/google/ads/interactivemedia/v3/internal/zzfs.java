package com.google.ads.interactivemedia.v3.internal;

import com.google.ads.interactivemedia.v3.api.signals.SecureSignalsCollectSignalsCallback;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
final class zzfs implements SecureSignalsCollectSignalsCallback {
    final /* synthetic */ i zza;
    final /* synthetic */ zzft zzb;

    public zzfs(zzft zzftVar, i iVar) {
        this.zza = iVar;
        this.zzb = zzftVar;
    }

    @Override // com.google.ads.interactivemedia.v3.api.signals.SecureSignalsCollectSignalsCallback
    public final void onFailure(Exception exc) {
        this.zza.c(exc);
    }

    @Override // com.google.ads.interactivemedia.v3.api.signals.SecureSignalsCollectSignalsCallback
    public final void onSuccess(String str) {
        this.zza.d(com.google.ads.interactivemedia.v3.impl.data.zzcf.createBy3rdPartyData(this.zzb.zza.getVersion(), this.zzb.zza.getSDKVersion(), this.zzb.zze(), str));
    }
}
