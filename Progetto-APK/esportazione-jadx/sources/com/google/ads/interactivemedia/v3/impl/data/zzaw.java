package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzaw extends zzcn {
    private final Integer downloadBandwidthKbps;
    private final boolean rendersUiNatively;

    public zzaw(Integer num, boolean z7) {
        this.downloadBandwidthKbps = num;
        this.rendersUiNatively = z7;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcn
    public Integer downloadBandwidthKbps() {
        return this.downloadBandwidthKbps;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcn) {
            zzcn zzcnVar = (zzcn) obj;
            Integer num = this.downloadBandwidthKbps;
            if (num != null ? num.equals(zzcnVar.downloadBandwidthKbps()) : zzcnVar.downloadBandwidthKbps() == null) {
                if (this.rendersUiNatively == zzcnVar.rendersUiNatively()) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.downloadBandwidthKbps;
        return (((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ (true != this.rendersUiNatively ? 1237 : 1231);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcn
    public boolean rendersUiNatively() {
        return this.rendersUiNatively;
    }

    public String toString() {
        return "VideoEnvironmentData{downloadBandwidthKbps=" + this.downloadBandwidthKbps + ", rendersUiNatively=" + this.rendersUiNatively + "}";
    }
}
