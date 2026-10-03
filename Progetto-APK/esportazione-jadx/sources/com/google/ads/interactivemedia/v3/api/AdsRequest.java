package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface AdsRequest extends BaseRequest {
    String getAdTagUrl();

    String getAdsResponse();

    ContentProgressProvider getContentProgressProvider();

    @Deprecated
    String getExtraParameter(String str);

    @Deprecated
    Map<String, String> getExtraParameters();

    void setAdTagUrl(String str);

    void setAdWillAutoPlay(boolean z7);

    void setAdWillPlayMuted(boolean z7);

    void setAdsResponse(String str);

    void setContentDuration(float f8);

    void setContentKeywords(List<String> list);

    void setContentProgressProvider(ContentProgressProvider contentProgressProvider);

    void setContentTitle(String str);

    void setContinuousPlayback(boolean z7);

    @Deprecated
    void setExtraParameter(String str, String str2);

    void setLiveStreamPrefetchSeconds(float f8);

    void setVastLoadTimeout(float f8);
}
