package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdProgressInfo;
import com.google.ads.interactivemedia.v3.internal.zzqe;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zze implements AdEvent {
    private final AdEvent.AdEventType zza;
    private final Ad zzb;
    private final Map zzc;
    private final AdProgressInfo zzd;

    public zze(AdEvent.AdEventType adEventType, Ad ad, Map map, AdProgressInfo adProgressInfo) {
        this.zza = adEventType;
        this.zzb = ad;
        this.zzc = map;
        this.zzd = adProgressInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return this.zza == zzeVar.zza && zzqe.zza(this.zzb, zzeVar.zzb) && zzqe.zza(this.zzc, zzeVar.zzc) && zzqe.zza(this.zzd, zzeVar.zzd);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdEvent
    public final Ad getAd() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdEvent
    public final Map<String, String> getAdData() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdEvent
    public final AdEvent.AdEventType getType() {
        return this.zza;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb, this.zzc, this.zzd});
    }

    public final String toString() {
        String str = String.format("AdEvent[type=%s, ad=%s, adProgressInfo=%s", this.zza, this.zzb, this.zzd);
        String strG = "]";
        if (this.zzc != null) {
            StringBuilder sb = new StringBuilder("{");
            Iterator it = this.zzc.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                sb.append((String) entry.getKey());
                sb.append(": ");
                sb.append((String) entry.getValue());
                if (it.hasNext()) {
                    sb.append(", ");
                }
            }
            sb.append("}");
            strG = r.g(", adData=", sb.toString(), "]");
        }
        return str.concat(strG);
    }
}
