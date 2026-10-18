package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.internal.zzfk;
import com.google.ads.interactivemedia.v3.internal.zzug;

/* JADX INFO: loaded from: classes.dex */
final class zzbn implements zzug {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbs zzb;

    public zzbn(zzbs zzbsVar, String str) {
        this.zza = str;
        this.zzb = zzbsVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzug
    public final void zza(Throwable th) {
        zzfk.zzb("Failure to make Native-layer network request", th);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzug
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zzb.zzb.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.nativeXhr, JavaScriptMessage.MsgType.nativeResponse, this.zza, (com.google.ads.interactivemedia.v3.impl.data.zzbz) obj));
    }
}
