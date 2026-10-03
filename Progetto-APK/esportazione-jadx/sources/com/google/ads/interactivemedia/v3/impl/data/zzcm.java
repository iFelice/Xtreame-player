package com.google.ads.interactivemedia.v3.impl.data;

import A0.O;
import com.google.ads.interactivemedia.v3.api.UniversalAdId;
import com.google.ads.interactivemedia.v3.internal.zzaho;
import com.google.ads.interactivemedia.v3.internal.zzahr;

/* JADX INFO: loaded from: classes.dex */
public final class zzcm implements UniversalAdId {
    private String adIdValue = zzbz.UNKNOWN_CONTENT_TYPE;
    private String adIdRegistry = zzbz.UNKNOWN_CONTENT_TYPE;

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return zzaho.zzf(this, obj, false, null, false, new String[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.api.UniversalAdId
    public String getAdIdRegistry() {
        return this.adIdRegistry;
    }

    @Override // com.google.ads.interactivemedia.v3.api.UniversalAdId
    public String getAdIdValue() {
        return this.adIdValue;
    }

    public int hashCode() {
        return zzahr.zza(this, new String[0]);
    }

    public void setAdIdRegistry(String str) {
        this.adIdRegistry = str;
    }

    public void setAdIdValue(String str) {
        this.adIdValue = str;
    }

    public String toString() {
        return O.C("UniversalAdId [adIdValue=", this.adIdValue, ", adIdRegistry=", this.adIdRegistry, "]");
    }
}
