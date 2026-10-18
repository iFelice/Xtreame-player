package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.CompanionAd;
import com.google.ads.interactivemedia.v3.internal.zzaho;
import com.google.ads.interactivemedia.v3.internal.zzahr;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class zzbc implements CompanionAd {
    private String apiFramework;
    private String resourceValue;
    private zzch size = zzch.create(0, 0);

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return zzaho.zzf(this, obj, false, null, false, new String[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAd
    public String getApiFramework() {
        return this.apiFramework;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAd
    public int getHeight() {
        return this.size.height().intValue();
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAd
    public String getResourceValue() {
        return this.resourceValue;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CompanionAd
    public int getWidth() {
        return this.size.width().intValue();
    }

    public int hashCode() {
        return zzahr.zza(this, new String[0]);
    }

    public void setApiFramework(String str) {
        this.apiFramework = str;
    }

    public void setResourceValue(String str) {
        this.resourceValue = str;
    }

    public void setSize(zzch zzchVar) {
        this.size = zzchVar;
    }

    public String toString() {
        String str = this.apiFramework;
        String str2 = this.resourceValue;
        Integer numWidth = this.size.width();
        Integer numHeight = this.size.height();
        StringBuilder sbQ = U2.q("CompanionAd [apiFramework=", str, ", resourceUrl=", str2, ", width=");
        sbQ.append(numWidth);
        sbQ.append(", height=");
        sbQ.append(numHeight);
        sbQ.append("]");
        return sbQ.toString();
    }
}
