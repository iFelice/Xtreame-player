package com.google.ads.interactivemedia.v3.impl.data;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
final class zzao extends zzcf {
    private final zzcg adapterVersion;
    private final Boolean isPublisherCreated;
    private final String name;
    private final zzcg sdkVersion;
    private final String signals;

    public zzao(zzcg zzcgVar, zzcg zzcgVar2, String str, String str2, Boolean bool) {
        this.adapterVersion = zzcgVar;
        this.sdkVersion = zzcgVar2;
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.name = str;
        if (str2 == null) {
            throw new NullPointerException("Null signals");
        }
        this.signals = str2;
        if (bool == null) {
            throw new NullPointerException("Null isPublisherCreated");
        }
        this.isPublisherCreated = bool;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcf
    public zzcg adapterVersion() {
        return this.adapterVersion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcf) {
            zzcf zzcfVar = (zzcf) obj;
            zzcg zzcgVar = this.adapterVersion;
            if (zzcgVar != null ? zzcgVar.equals(zzcfVar.adapterVersion()) : zzcfVar.adapterVersion() == null) {
                zzcg zzcgVar2 = this.sdkVersion;
                if (zzcgVar2 != null ? zzcgVar2.equals(zzcfVar.sdkVersion()) : zzcfVar.sdkVersion() == null) {
                    if (this.name.equals(zzcfVar.name()) && this.signals.equals(zzcfVar.signals()) && this.isPublisherCreated.equals(zzcfVar.isPublisherCreated())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        zzcg zzcgVar = this.adapterVersion;
        int iHashCode = zzcgVar == null ? 0 : zzcgVar.hashCode();
        zzcg zzcgVar2 = this.sdkVersion;
        return ((((((((iHashCode ^ 1000003) * 1000003) ^ (zzcgVar2 != null ? zzcgVar2.hashCode() : 0)) * 1000003) ^ this.name.hashCode()) * 1000003) ^ this.signals.hashCode()) * 1000003) ^ this.isPublisherCreated.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcf
    public Boolean isPublisherCreated() {
        return this.isPublisherCreated;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcf
    public String name() {
        return this.name;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcf
    public zzcg sdkVersion() {
        return this.sdkVersion;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcf
    public String signals() {
        return this.signals;
    }

    public String toString() {
        StringBuilder sbQ = U2.q("SecureSignalsData{adapterVersion=", String.valueOf(this.adapterVersion), ", sdkVersion=", String.valueOf(this.sdkVersion), ", name=");
        sbQ.append(this.name);
        sbQ.append(", signals=");
        sbQ.append(this.signals);
        sbQ.append(", isPublisherCreated=");
        sbQ.append(this.isPublisherCreated);
        sbQ.append("}");
        return sbQ.toString();
    }
}
