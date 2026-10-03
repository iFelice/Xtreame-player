package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.CuePoint;
import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.StreamManager;
import com.google.ads.interactivemedia.v3.internal.zzro;
import com.google.api.Service;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzby extends zzak implements StreamManager {
    private final String zza;
    private List zzb;

    public zzby(String str, zzba zzbaVar, StreamDisplayContainer streamDisplayContainer, zzcb zzcbVar, zzb zzbVar, zzbt zzbtVar, zzat zzatVar, ExecutorService executorService, Context context, String str2, boolean z7) {
        super(str, zzbaVar, zzcbVar, streamDisplayContainer, zzbVar, zzbtVar, zzatVar, executorService, context, z7);
        this.zzb = new ArrayList();
        this.zza = str2;
        zzcbVar.zzj();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzak, com.google.ads.interactivemedia.v3.api.BaseManager
    public final void destroy() {
        super.destroy();
        zzr(JavaScriptMessage.MsgType.contentComplete);
        zzp();
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final double getContentTimeForStreamTime(double d6) {
        double endTime = d6;
        for (CuePoint cuePoint : this.zzb) {
            if (cuePoint.getStartTime() > cuePoint.getEndTime()) {
                return 0.0d;
            }
            if (d6 >= cuePoint.getEndTime()) {
                endTime -= cuePoint.getEndTime() - cuePoint.getStartTime();
            } else if (d6 < cuePoint.getEndTime() && d6 > cuePoint.getStartTime()) {
                endTime -= d6 - cuePoint.getStartTime();
            }
        }
        return endTime;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final long getContentTimeMsForStreamTimeMs(long j8) {
        long endTimeMs = j8;
        for (CuePoint cuePoint : this.zzb) {
            if (cuePoint.getStartTimeMs() > cuePoint.getEndTimeMs()) {
                return 0L;
            }
            if (j8 >= cuePoint.getEndTimeMs()) {
                endTimeMs -= cuePoint.getEndTimeMs() - cuePoint.getStartTimeMs();
            } else if (j8 < cuePoint.getEndTimeMs() && j8 > cuePoint.getStartTimeMs()) {
                endTimeMs -= j8 - cuePoint.getStartTimeMs();
            }
        }
        return endTimeMs;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final List<CuePoint> getCuePoints() {
        return Collections.unmodifiableList(this.zzb);
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final CuePoint getPreviousCuePointForStreamTime(double d6) {
        CuePoint cuePoint = null;
        for (CuePoint cuePoint2 : this.zzb) {
            if (cuePoint2.getStartTime() < d6) {
                cuePoint = cuePoint2;
            }
        }
        return cuePoint;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final CuePoint getPreviousCuePointForStreamTimeMs(long j8) {
        CuePoint cuePoint = null;
        for (CuePoint cuePoint2 : this.zzb) {
            if (cuePoint2.getStartTimeMs() < j8) {
                cuePoint = cuePoint2;
            }
        }
        return cuePoint;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final String getStreamId() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final double getStreamTimeForContentTime(double d6) {
        double endTime = d6;
        double startTime = 0.0d;
        double endTime2 = 0.0d;
        for (CuePoint cuePoint : this.zzb) {
            if (cuePoint.getStartTime() > cuePoint.getEndTime()) {
                return 0.0d;
            }
            startTime += cuePoint.getStartTime() - endTime2;
            if (startTime > d6) {
                return endTime;
            }
            endTime += cuePoint.getEndTime() - cuePoint.getStartTime();
            endTime2 = cuePoint.getEndTime();
        }
        return endTime;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final long getStreamTimeMsForContentTimeMs(long j8) {
        long endTimeMs = j8;
        long startTimeMs = 0;
        long endTimeMs2 = 0;
        for (CuePoint cuePoint : this.zzb) {
            if (cuePoint.getStartTimeMs() > cuePoint.getEndTimeMs()) {
                return 0L;
            }
            startTimeMs += cuePoint.getStartTimeMs() - endTimeMs2;
            if (startTimeMs > j8) {
                return endTimeMs;
            }
            endTimeMs += cuePoint.getEndTimeMs() - cuePoint.getStartTimeMs();
            endTimeMs2 = cuePoint.getEndTimeMs();
        }
        return endTimeMs;
    }

    @Override // com.google.ads.interactivemedia.v3.api.BaseManager
    public final boolean isCustomPlaybackUsed() {
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final void loadThirdPartyStream(String str, List<? extends Map<String, String>> list) {
        zzro zzroVar = new zzro();
        zzroVar.zza("streamUrl", str);
        zzroVar.zza("subtitles", list);
        zzq(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.loadStreamMetadata, zzroVar.zzc());
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamManager
    public final void replaceAdTagParameters(Map<String, String> map) {
        if (map == null) {
            return;
        }
        HashMap map2 = new HashMap();
        map2.put("adTagParameters", map);
        zzq(JavaScriptMessage.MsgChannel.adsManager, JavaScriptMessage.MsgType.replaceAdTagParameters, map2);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzak
    public final void zzc(zzag zzagVar) {
        zzcb zzcbVar = (zzcb) zzg();
        AdEvent.AdEventType adEventType = AdEvent.AdEventType.ALL_ADS_COMPLETED;
        int iOrdinal = zzagVar.zza.ordinal();
        if (iOrdinal == 3) {
            zzcbVar.zzm();
        } else if (iOrdinal == 4) {
            this.zzb = zzagVar.zzd;
        } else if (iOrdinal == 14) {
            Log.i("IMASDK", "Seek time when ad is skipped: " + zzagVar.zzg);
            zzcbVar.zzk(Math.round(zzagVar.zzg * 1000.0d));
        } else if (iOrdinal != 15) {
            switch (iOrdinal) {
                case 23:
                    zzcbVar.zze();
                    break;
                case 24:
                    zzcbVar.zzb();
                    break;
                case 25:
                    zzcbVar.zzi();
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    zzcbVar.zzh();
                    break;
            }
        } else {
            zzcbVar.zzl(zzagVar.zzb);
        }
        super.zzc(zzagVar);
    }
}
