package com.google.ads.interactivemedia.v3.impl.data;

import A0.O;
import com.google.ads.interactivemedia.v3.api.AdPodInfo;
import com.google.ads.interactivemedia.v3.internal.zzaho;
import com.google.ads.interactivemedia.v3.internal.zzahr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzd implements AdPodInfo {
    public int podIndex;
    public double timeOffset;
    public int totalAds = 1;
    public int adPosition = 1;
    public boolean isBumper = false;
    public double maxDuration = -1.0d;
    public List<Long> adsDurationsMs = new ArrayList();

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return zzaho.zzf(this, obj, false, null, false, new String[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdPodInfo
    public int getAdPosition() {
        return this.adPosition;
    }

    public List<Long> getAdsDurationsMs() {
        return this.adsDurationsMs;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdPodInfo
    public double getMaxDuration() {
        return this.maxDuration;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdPodInfo
    public int getPodIndex() {
        return this.podIndex;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdPodInfo
    public double getTimeOffset() {
        return this.timeOffset;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdPodInfo
    public int getTotalAds() {
        return this.totalAds;
    }

    public int hashCode() {
        return zzahr.zza(this, new String[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdPodInfo
    public boolean isBumper() {
        return this.isBumper;
    }

    public String toString() {
        int i8 = this.totalAds;
        int i9 = this.adPosition;
        boolean z7 = this.isBumper;
        double d6 = this.maxDuration;
        String strValueOf = String.valueOf(this.adsDurationsMs);
        int i10 = this.podIndex;
        double d8 = this.timeOffset;
        StringBuilder sbD = O.D("AdPodInfo [totalAds=", i8, ", adPosition=", i9, ", isBumper=");
        sbD.append(z7);
        sbD.append(", maxDuration=");
        sbD.append(d6);
        sbD.append(", adsDurationsMs=");
        sbD.append(strValueOf);
        sbD.append(", podIndex=");
        sbD.append(i10);
        sbD.append(", timeOffset=");
        sbD.append(d8);
        sbD.append("]");
        return sbD.toString();
    }
}
