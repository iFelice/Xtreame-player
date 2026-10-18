package com.google.ads.interactivemedia.v3.api;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface StreamManager extends BaseManager {
    @Deprecated
    double getContentTimeForStreamTime(double d6);

    long getContentTimeMsForStreamTimeMs(long j8);

    List<CuePoint> getCuePoints();

    @Deprecated
    CuePoint getPreviousCuePointForStreamTime(double d6);

    CuePoint getPreviousCuePointForStreamTimeMs(long j8);

    String getStreamId();

    @Deprecated
    double getStreamTimeForContentTime(double d6);

    long getStreamTimeMsForContentTimeMs(long j8);

    void loadThirdPartyStream(String str, List<? extends Map<String, String>> list);

    void replaceAdTagParameters(Map<String, String> map);
}
