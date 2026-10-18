package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdEvent;

/* JADX INFO: loaded from: classes.dex */
final class zzai implements zzbh {
    final /* synthetic */ zzak zza;

    public zzai(zzak zzakVar) {
        this.zza = zzakVar;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzbh
    public final void zza(JavaScriptMessage javaScriptMessage) {
        JavaScriptMessage.MsgType msgTypeZzb = javaScriptMessage.zzb();
        com.google.ads.interactivemedia.v3.impl.data.zzbu zzbuVar = (com.google.ads.interactivemedia.v3.impl.data.zzbu) javaScriptMessage.zzc();
        AdEvent.AdEventType adEventType = AdEvent.AdEventType.ALL_ADS_COMPLETED;
        JavaScriptMessage.MsgType msgType = JavaScriptMessage.MsgType.activate;
        int iOrdinal = msgTypeZzb.ordinal();
        if (iOrdinal == 28) {
            this.zza.zzi.zza(zzbuVar);
        } else if (iOrdinal == 62) {
            this.zza.zzh.zzf(zzbuVar.resizeAndPositionVideo);
        } else {
            if (iOrdinal != 63) {
                return;
            }
            this.zza.zzh.zzg();
        }
    }
}
