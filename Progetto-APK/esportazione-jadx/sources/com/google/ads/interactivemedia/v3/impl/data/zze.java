package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.impl.JavaScriptMessage;
import com.google.ads.interactivemedia.v3.internal.zzrz;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zze implements com.google.ads.interactivemedia.v3.api.zza {
    private final List<com.google.ads.interactivemedia.v3.api.zzb> icons;
    private final com.google.ads.interactivemedia.v3.impl.zzba router;
    private final String sessionId;

    public zze(com.google.ads.interactivemedia.v3.impl.zzba zzbaVar, List<com.google.ads.interactivemedia.v3.api.zzb> list, String str) {
        this.router = zzbaVar;
        this.icons = list;
        this.sessionId = str;
    }

    private Map<String, Object> createIconData(com.google.ads.interactivemedia.v3.api.zzb zzbVar) {
        HashMap mapZzb = zzrz.zzb(1);
        mapZzb.put("id", Integer.valueOf(zzbVar.getId()));
        return mapZzb;
    }

    public List<com.google.ads.interactivemedia.v3.api.zzb> getIcons() {
        return this.icons;
    }

    public void iconClicked(com.google.ads.interactivemedia.v3.api.zzb zzbVar) {
        this.router.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.nativeUi, JavaScriptMessage.MsgType.iconClicked, this.sessionId, createIconData(zzbVar)));
    }

    public void iconShown(com.google.ads.interactivemedia.v3.api.zzb zzbVar) {
        this.router.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.nativeUi, JavaScriptMessage.MsgType.iconRendered, this.sessionId, createIconData(zzbVar)));
    }
}
