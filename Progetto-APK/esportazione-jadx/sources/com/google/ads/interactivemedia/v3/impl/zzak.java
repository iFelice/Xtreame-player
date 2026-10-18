package com.google.ads.interactivemedia.v3.impl;

import F.i;
import android.app.Application;
import android.content.Context;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdProgressInfo;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;
import com.google.ads.interactivemedia.v3.api.BaseManager;
import com.google.ads.interactivemedia.v3.api.FriendlyObstruction;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.internal.zzel;
import com.google.ads.interactivemedia.v3.internal.zzem;
import com.google.ads.interactivemedia.v3.internal.zzen;
import com.google.ads.interactivemedia.v3.internal.zzfk;
import com.google.ads.interactivemedia.v3.internal.zzgi;
import com.google.ads.interactivemedia.v3.internal.zzrp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p153t4.b;
import p153t4.c;
import p153t4.d;

/* JADX INFO: loaded from: classes.dex */
abstract class zzak implements BaseManager, zzem {
    private final zzba zza;
    private final String zzb;
    private final List zzc;
    private final zzat zzd;
    private final Context zze;
    private final zzb zzf;
    private final zzbt zzg;
    private final zzcc zzh;
    private final zzam zzi;
    private com.google.ads.interactivemedia.v3.impl.data.zzc zzj;
    private com.google.ads.interactivemedia.v3.api.zza zzk;
    private AdProgressInfo zzl;
    private AdsRenderingSettings zzm;
    private boolean zzn;
    private final zzgi zzo;
    private zzen zzp;

    public zzak(String str, zzba zzbaVar, zzcc zzccVar, BaseDisplayContainer baseDisplayContainer, zzb zzbVar, zzbt zzbtVar, zzat zzatVar, ExecutorService executorService, Context context, boolean z7) {
        ArrayList arrayList = new ArrayList(1);
        this.zzc = arrayList;
        this.zzn = false;
        this.zzb = str;
        this.zza = zzbaVar;
        this.zzh = zzccVar;
        this.zze = context;
        this.zzd = zzatVar;
        com.google.ads.interactivemedia.v3.impl.data.zzh zzhVar = new com.google.ads.interactivemedia.v3.impl.data.zzh();
        this.zzm = zzhVar;
        zzgi zzgiVar = new zzgi(context, zzhVar);
        this.zzo = zzgiVar;
        zzaf zzafVar = (zzaf) baseDisplayContainer;
        this.zzi = new zzam(context, executorService, str, zzafVar, zzatVar, zzgiVar, zzbaVar);
        this.zzf = zzbVar;
        zzbVar.zzh(z7);
        this.zzg = zzbtVar;
        if (zzbtVar != null) {
            zzbtVar.zze(str);
            zzbtVar.zzb(zzafVar.getAdContainer());
            arrayList.add(zzbtVar);
            zzatVar.zza(zzbtVar);
            Iterator it = zzafVar.zzb().iterator();
            while (it.hasNext()) {
                zzbtVar.zza((FriendlyObstruction) it.next());
            }
            zzafVar.zzc(zzbtVar);
        }
        zzbaVar.zzi(str, JavaScriptMessage.MsgChannel.adsManager, new zzah(this));
        zzbaVar.zzi(str, JavaScriptMessage.MsgChannel.nativeUi, new zzaj(this));
        zzbaVar.zzi(str, JavaScriptMessage.MsgChannel.videoDisplay1, this.zzh);
        zzbaVar.zzi(str, JavaScriptMessage.MsgChannel.videoDisplay2, this.zzh);
        zzbaVar.zzi(str, JavaScriptMessage.MsgChannel.displayContainer, new zzai(this));
        zzbaVar.zzh(this.zzf, str);
        Application applicationZzb = zzel.zzb(context);
        if (applicationZzb != null) {
            zzen zzenVar = new zzen(applicationZzb);
            this.zzp = zzenVar;
            zzenVar.zza(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(AdError.AdErrorType adErrorType, AdError.AdErrorCode adErrorCode, String str) {
        this.zzl = null;
        this.zzd.zzc(new zzd(new AdError(adErrorType, adErrorCode, str)));
    }

    private final void zzt(String str) {
        if (zzel.zzd(this.zze, this.zza.zza)) {
            this.zza.zzb().requestFocus();
            this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.userInteraction, JavaScriptMessage.MsgType.focusUiElement, str, null));
        }
    }

    private final boolean zzu() {
        return this.zzm.getFocusSkipButtonWhenAvailable();
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void addAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener) {
        this.zzd.zza(adErrorListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void addAdEventListener(AdEvent.AdEventListener adEventListener) {
        this.zzc.add(adEventListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public void destroy() {
        this.zzn = true;
        zzbt zzbtVar = this.zzg;
        if (zzbtVar != null) {
            zzbtVar.zzg();
        }
        this.zza.zzl(this.zzb);
        this.zzf.zzi();
        zzen zzenVar = this.zzp;
        if (zzenVar != null) {
            zzenVar.zzb();
        }
        this.zzh.zzc();
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void focus() {
        zzt(this.zzb);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.AdProgressProvider
    public final VideoProgressUpdate getAdProgress() {
        return this.zzn ? VideoProgressUpdate.VIDEO_TIME_NOT_READY : this.zzh.getAdProgress();
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final AdProgressInfo getAdProgressInfo() {
        return this.zzl;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final Ad getCurrentAd() {
        return this.zzj;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void init() {
        this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.init, this.zzb, zzb(this.zzm)));
        this.zzh.zzd();
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void removeAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener) {
        this.zzd.zzd(adErrorListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void removeAdEventListener(AdEvent.AdEventListener adEventListener) {
        this.zzc.remove(adEventListener);
    }

    public Map zzb(AdsRenderingSettings adsRenderingSettings) {
        HashMap map = new HashMap();
        map.put("adsRenderingSettings", com.google.ads.interactivemedia.v3.impl.data.zzg.builder(adsRenderingSettings).build());
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0109  */
    public void zzc(zzag zzagVar) {
        AdEvent.AdEventType adEventType = AdEvent.AdEventType.ALL_ADS_COMPLETED;
        JavaScriptMessage.MsgType msgType = JavaScriptMessage.MsgType.activate;
        AdEvent.AdEventType adEventType2 = zzagVar.zza;
        int iOrdinal = adEventType2.ordinal();
        com.google.ads.interactivemedia.v3.impl.data.zzc zzcVar = zzagVar.zzb;
        if (iOrdinal == 3) {
            this.zzl = null;
        } else if (iOrdinal != 17) {
            if (iOrdinal == 24) {
                this.zzl = null;
            } else if (iOrdinal == 5) {
                this.zzf.zzg();
            } else if (iOrdinal == 6) {
                this.zzf.zzi();
            } else if (iOrdinal == 20) {
                zzs(zzcVar);
            } else if (iOrdinal != 21) {
                switch (iOrdinal) {
                    case 13:
                        if (zzu()) {
                            zzt(this.zzb);
                        }
                        break;
                    case 14:
                        this.zzl = null;
                        break;
                    case 15:
                        if (zzcVar != null) {
                            zzs(zzcVar);
                        }
                        if (zzu()) {
                            zzt(this.zzb);
                        }
                        break;
                }
            } else {
                this.zzl = zzagVar.zze;
            }
        } else if (zzagVar.zzf == null || !zzel.zzc(this.zze, null)) {
            zzfk.zzd("Received ICON_TAPPED event without icon click fallback image list.");
        } else {
            List<com.google.ads.interactivemedia.v3.impl.data.zzbk> list = zzagVar.zzf;
            try {
                i iVar = new i(this.zze);
                ArrayList arrayList = new ArrayList(1);
                for (com.google.ads.interactivemedia.v3.impl.data.zzbk zzbkVar : list) {
                    int iWidth = zzbkVar.width();
                    int iHeight = zzbkVar.height();
                    byte b8 = (byte) (((byte) (((byte) (((byte) 1) | 2)) | 1)) | 2);
                    String strAlternateText = zzbkVar.alternateText();
                    String strImageUrl = zzbkVar.imageUrl();
                    String strCreativeType = zzbkVar.creativeType();
                    if (b8 != 3) {
                        StringBuilder sb = new StringBuilder();
                        if ((b8 & 1) == 0) {
                            sb.append(" width");
                        }
                        if ((b8 & 2) == 0) {
                            sb.append(" height");
                        }
                        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
                    }
                    arrayList.add(new c(iWidth, iHeight, strAlternateText, strCreativeType, strImageUrl));
                }
                List list2 = b.a(arrayList).f4008G;
                if (list2 == null) {
                    throw new IllegalStateException("Missing required properties: iconClickFallbackImageList");
                }
                iVar.o(new d(list2));
            } catch (RuntimeException e8) {
                zzfk.zzb("Failed to handle icon fallback image click.", e8);
            }
        }
        zze zzeVar = new zze(adEventType2, this.zzj, zzagVar.zzc, zzagVar.zze);
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            ((AdEvent.AdEventListener) it.next()).onAdEvent(zzeVar);
        }
        if (adEventType2 == AdEvent.AdEventType.COMPLETED || adEventType2 == AdEvent.AdEventType.SKIPPED) {
            zzs(null);
        }
    }

    public final zzcc zzg() {
        return this.zzh;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzem
    public final void zzk() {
        this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.appBackgrounding, this.zzb, null));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzem
    public final void zzl() {
        this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.appForegrounding, this.zzb, null));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzem
    public final void zzm() {
        zzc(new zzag(AdEvent.AdEventType.ICON_FALLBACK_IMAGE_CLOSED, this.zzj));
    }

    public final void zzn(String str) {
        if (this.zzo.zzb(str)) {
            return;
        }
        zzq(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.navigationRequestedFailed, zzrp.zze("url", str));
    }

    public final void zzo(com.google.ads.interactivemedia.v3.api.zza zzaVar) {
        this.zzk = zzaVar;
        com.google.ads.interactivemedia.v3.impl.data.zzc zzcVar = this.zzj;
        if (zzcVar != null) {
            zzcVar.setAdUi(zzaVar);
        }
    }

    public final void zzp() {
        this.zza.zzm(this.zzb);
        this.zzc.clear();
        this.zzd.zzb();
    }

    public final void zzq(JavaScriptMessage.MsgChannel msgChannel, JavaScriptMessage.MsgType msgType, Object obj) {
        this.zza.zzn(new JavaScriptMessage(msgChannel, msgType, this.zzb, obj));
    }

    public final void zzr(JavaScriptMessage.MsgType msgType) {
        this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.adsManager, msgType, this.zzb, null));
    }

    public final void zzs(com.google.ads.interactivemedia.v3.impl.data.zzc zzcVar) {
        this.zzj = zzcVar;
        if (zzcVar != null) {
            zzcVar.setAdUi(this.zzk);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final void init(AdsRenderingSettings adsRenderingSettings) {
        if (adsRenderingSettings != null) {
            this.zzm = adsRenderingSettings;
            this.zzo.zza(adsRenderingSettings);
        }
        Map mapZzb = zzb(this.zzm);
        this.zza.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.init, this.zzb, mapZzb));
        this.zzh.zzd();
    }
}
