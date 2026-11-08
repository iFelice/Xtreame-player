package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import com.google.ads.interactivemedia.v3.impl.JavaScriptMessage;

/* JADX INFO: loaded from: classes.dex */
public final class zzfl implements com.google.ads.interactivemedia.v3.impl.zzbh {
    private final Context zza;
    private boolean zzb = false;

    private zzfl(Context context, zzfm zzfmVar) {
        this.zza = context;
    }

    public static zzfl zzb(Context context) {
        return new zzfl(context, new zzfm());
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzbh
    public final void zza(JavaScriptMessage javaScriptMessage) {
        boolean z7;
        JavaScriptMessage.MsgType msgType = JavaScriptMessage.MsgType.activate;
        int iOrdinal = javaScriptMessage.zzb().ordinal();
        if (iOrdinal == 53) {
            zzcj.zza(this.zza);
            z7 = true;
        } else if (iOrdinal != 54) {
            return;
        } else {
            z7 = false;
        }
        this.zzb = z7;
    }

    public final boolean zzc() {
        return this.zzb;
    }
}
