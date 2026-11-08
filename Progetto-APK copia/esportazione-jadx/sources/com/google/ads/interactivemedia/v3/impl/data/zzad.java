package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import p000a.r;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
final class zzad extends zzbr {
    private final AdErrorEvent adErrorEvent;
    private final zzbp component;
    private final Long latency;
    private final String latencyMeasurementProtoBase64String;
    private final zzbw loggableException;
    private final zzbq method;
    private final long timestamp;

    public zzad(long j8, zzbp zzbpVar, zzbq zzbqVar, AdErrorEvent adErrorEvent, zzbw zzbwVar, Long l4, String str) {
        this.timestamp = j8;
        this.component = zzbpVar;
        this.method = zzbqVar;
        this.adErrorEvent = adErrorEvent;
        this.loggableException = zzbwVar;
        this.latency = l4;
        this.latencyMeasurementProtoBase64String = str;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public AdErrorEvent adErrorEvent() {
        return this.adErrorEvent;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public zzbp component() {
        return this.component;
    }

    public boolean equals(Object obj) {
        zzbp zzbpVar;
        zzbq zzbqVar;
        AdErrorEvent adErrorEvent;
        zzbw zzbwVar;
        Long l4;
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbr) {
            zzbr zzbrVar = (zzbr) obj;
            if (this.timestamp == zzbrVar.timestamp() && ((zzbpVar = this.component) != null ? zzbpVar.equals(zzbrVar.component()) : zzbrVar.component() == null) && ((zzbqVar = this.method) != null ? zzbqVar.equals(zzbrVar.method()) : zzbrVar.method() == null) && ((adErrorEvent = this.adErrorEvent) != null ? adErrorEvent.equals(zzbrVar.adErrorEvent()) : zzbrVar.adErrorEvent() == null) && ((zzbwVar = this.loggableException) != null ? zzbwVar.equals(zzbrVar.loggableException()) : zzbrVar.loggableException() == null) && ((l4 = this.latency) != null ? l4.equals(zzbrVar.latency()) : zzbrVar.latency() == null) && ((str = this.latencyMeasurementProtoBase64String) != null ? str.equals(zzbrVar.latencyMeasurementProtoBase64String()) : zzbrVar.latencyMeasurementProtoBase64String() == null)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        zzbp zzbpVar = this.component;
        int iHashCode = zzbpVar == null ? 0 : zzbpVar.hashCode();
        long j8 = this.timestamp;
        zzbq zzbqVar = this.method;
        int iHashCode2 = zzbqVar == null ? 0 : zzbqVar.hashCode();
        int i8 = iHashCode ^ ((((int) (j8 ^ (j8 >>> 32))) ^ 1000003) * 1000003);
        AdErrorEvent adErrorEvent = this.adErrorEvent;
        int iHashCode3 = ((((i8 * 1000003) ^ iHashCode2) * 1000003) ^ (adErrorEvent == null ? 0 : adErrorEvent.hashCode())) * 1000003;
        zzbw zzbwVar = this.loggableException;
        int iHashCode4 = (iHashCode3 ^ (zzbwVar == null ? 0 : zzbwVar.hashCode())) * 1000003;
        Long l4 = this.latency;
        int iHashCode5 = (iHashCode4 ^ (l4 == null ? 0 : l4.hashCode())) * 1000003;
        String str = this.latencyMeasurementProtoBase64String;
        return iHashCode5 ^ (str != null ? str.hashCode() : 0);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public Long latency() {
        return this.latency;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public String latencyMeasurementProtoBase64String() {
        return this.latencyMeasurementProtoBase64String;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public zzbw loggableException() {
        return this.loggableException;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public zzbq method() {
        return this.method;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbr
    public long timestamp() {
        return this.timestamp;
    }

    public String toString() {
        zzbw zzbwVar = this.loggableException;
        AdErrorEvent adErrorEvent = this.adErrorEvent;
        zzbq zzbqVar = this.method;
        String strValueOf = String.valueOf(this.component);
        String strValueOf2 = String.valueOf(zzbqVar);
        String strValueOf3 = String.valueOf(adErrorEvent);
        String strValueOf4 = String.valueOf(zzbwVar);
        StringBuilder sb = new StringBuilder("InstrumentationData{timestamp=");
        sb.append(this.timestamp);
        sb.append(", component=");
        sb.append(strValueOf);
        a.h(sb, ", method=", strValueOf2, ", adErrorEvent=", strValueOf3);
        sb.append(", loggableException=");
        sb.append(strValueOf4);
        sb.append(", latency=");
        sb.append(this.latency);
        sb.append(", latencyMeasurementProtoBase64String=");
        return r.j(sb, this.latencyMeasurementProtoBase64String, "}");
    }
}
