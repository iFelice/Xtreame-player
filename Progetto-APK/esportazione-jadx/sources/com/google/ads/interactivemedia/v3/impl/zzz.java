package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.data.zzcj;
import com.google.ads.interactivemedia.v3.internal.zzfk;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzz extends zzak implements AdsManager, AdErrorEvent.AdErrorListener {
    private final List zza;
    private zzcd zzb;
    private zzaq zzc;
    private zzar zzd;

    private zzz(String str, zzba zzbaVar, AdDisplayContainer adDisplayContainer, List list, zzbl zzblVar, zzar zzarVar, zzb zzbVar, zzcd zzcdVar, zzbt zzbtVar, zzat zzatVar, ExecutorService executorService, Context context, boolean z7) {
        super(str, zzbaVar, zzblVar, adDisplayContainer, zzbVar, zzbtVar, zzatVar, executorService, context, z7);
        this.zza = list;
        this.zzd = zzarVar;
        this.zzb = zzcdVar;
    }

    public static zzz zza(String str, zzba zzbaVar, zzcd zzcdVar, AdDisplayContainer adDisplayContainer, zzar zzarVar, List list, SortedSet sortedSet, zzbt zzbtVar, zzat zzatVar, ExecutorService executorService, Context context, boolean z7) {
        zzz zzzVar;
        zzz zzzVar2 = new zzz(str, zzbaVar, adDisplayContainer, list, new zzbl(str, zzbaVar, zzatVar, adDisplayContainer, context), zzarVar, new zzb(str, zzbaVar, adDisplayContainer.getAdContainer()), zzcdVar, zzbtVar, zzatVar, executorService, context, z7);
        zzar zzarVar2 = zzzVar2.zzd;
        if (zzarVar2 != null) {
            zzz zzzVar3 = zzzVar2;
            zzaq zzaqVar = new zzaq(zzbaVar, sortedSet, str);
            zzzVar3.zzc = zzaqVar;
            zzarVar2.zzc(zzaqVar);
            zzzVar3.zzd.zze();
            zzzVar = zzzVar3;
        } else {
            zzzVar = zzzVar2;
        }
        zzzVar.addAdErrorListener(zzzVar);
        return zzzVar;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void clicked() {
        zzr(JavaScriptMessage.MsgType.click);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzak, com.google.ads.interactivemedia.v3.api.BaseManager
    public final void destroy() {
        super.destroy();
        zzar zzarVar = this.zzd;
        if (zzarVar != null) {
            zzarVar.zzf();
            this.zzd = null;
        }
        zzcd zzcdVar = this.zzb;
        if (zzcdVar != null) {
            zzcdVar.zza();
            this.zzb = null;
        }
        zzr(JavaScriptMessage.MsgType.destroy);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void discardAdBreak() {
        zzr(JavaScriptMessage.MsgType.discardAdBreak);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final List<Float> getAdCuePoints() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final boolean isCustomPlaybackUsed() {
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener
    public final void onAdError(AdErrorEvent adErrorEvent) {
        zzcd zzcdVar = this.zzb;
        if (zzcdVar != null) {
            zzcdVar.zza();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void pause() {
        zzr(JavaScriptMessage.MsgType.pause);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void requestNextAdBreak() {
        zzar zzarVar = this.zzd;
        if (zzarVar != null) {
            zzq(JavaScriptMessage.MsgChannel.contentTimeUpdate, JavaScriptMessage.MsgType.contentTimeUpdate, zzcj.create(zzarVar.zza()));
            zzr(JavaScriptMessage.MsgType.requestNextAdBreak);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void resume() {
        zzr(JavaScriptMessage.MsgType.resume);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void skip() {
        zzr(JavaScriptMessage.MsgType.skip);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public final void start() {
        zzr(JavaScriptMessage.MsgType.start);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzak
    public final Map zzb(AdsRenderingSettings adsRenderingSettings) {
        Map mapZzb = super.zzb(adsRenderingSettings);
        zzar zzarVar = this.zzd;
        if (zzarVar != null) {
            VideoProgressUpdate videoProgressUpdateZza = zzarVar.zza();
            if (!videoProgressUpdateZza.equals(VideoProgressUpdate.VIDEO_TIME_NOT_READY)) {
                float currentTimeMs = videoProgressUpdateZza.getCurrentTimeMs();
                StringBuilder sb = new StringBuilder("AdsManager.init -> Setting contentStartTime ");
                double d6 = currentTimeMs / 1000.0f;
                sb.append(d6);
                zzfk.zzc(sb.toString());
                mapZzb.put("contentStartTime", Double.valueOf(d6));
            }
        }
        return mapZzb;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzak
    public final void zzc(zzag zzagVar) {
        zzcd zzcdVar;
        zzbl zzblVar = (zzbl) zzg();
        AdEvent.AdEventType adEventType = AdEvent.AdEventType.ALL_ADS_COMPLETED;
        int iOrdinal = zzagVar.zza.ordinal();
        if (iOrdinal == 0) {
            super.destroy();
            zzar zzarVar = this.zzd;
            if (zzarVar != null) {
                zzarVar.zzf();
                this.zzd = null;
            }
            zzcd zzcdVar2 = this.zzb;
            if (zzcdVar2 != null) {
                zzcdVar2.zza();
                this.zzb = null;
            }
            zzr(JavaScriptMessage.MsgType.destroy);
            super.zzc(zzagVar);
            zzp();
            return;
        }
        if (iOrdinal == 5) {
            zzar zzarVar2 = this.zzd;
            if (zzarVar2 != null) {
                zzarVar2.zzf();
            }
        } else if (iOrdinal == 6) {
            zzcd zzcdVar3 = this.zzb;
            if (zzcdVar3 != null) {
                zzcdVar3.zza();
            }
            zzblVar.zze();
            zzar zzarVar3 = this.zzd;
            if (zzarVar3 != null) {
                zzarVar3.zze();
            }
        } else if (iOrdinal == 14) {
            zzcd zzcdVar4 = this.zzb;
            if (zzcdVar4 != null) {
                zzcdVar4.zza();
            }
        } else if (iOrdinal == 15 && (zzcdVar = this.zzb) != null) {
            zzcdVar.zzb();
        }
        super.zzc(zzagVar);
    }
}
