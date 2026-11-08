package com.google.ads.interactivemedia.v3.impl.data;

import com.google.protobuf.U2;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzaf extends zzby {
    private final int connectionTimeoutMs;
    private final String content;
    private final String id;
    private final int readTimeoutMs;
    private final zzbx requestType;
    private final String url;
    private final String userAgent;

    public zzaf(zzbx zzbxVar, String str, String str2, String str3, String str4, int i8, int i9) {
        if (zzbxVar == null) {
            throw new NullPointerException("Null requestType");
        }
        this.requestType = zzbxVar;
        if (str == null) {
            throw new NullPointerException("Null id");
        }
        this.id = str;
        if (str2 == null) {
            throw new NullPointerException("Null url");
        }
        this.url = str2;
        this.content = str3;
        if (str4 == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.userAgent = str4;
        this.connectionTimeoutMs = i8;
        this.readTimeoutMs = i9;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public int connectionTimeoutMs() {
        return this.connectionTimeoutMs;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public String content() {
        return this.content;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzby) {
            zzby zzbyVar = (zzby) obj;
            if (this.requestType.equals(zzbyVar.requestType()) && this.id.equals(zzbyVar.id()) && this.url.equals(zzbyVar.url()) && ((str = this.content) != null ? str.equals(zzbyVar.content()) : zzbyVar.content() == null) && this.userAgent.equals(zzbyVar.userAgent()) && this.connectionTimeoutMs == zzbyVar.connectionTimeoutMs() && this.readTimeoutMs == zzbyVar.readTimeoutMs()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((this.requestType.hashCode() ^ 1000003) * 1000003) ^ this.id.hashCode()) * 1000003) ^ this.url.hashCode();
        String str = this.content;
        return (((((((iHashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.userAgent.hashCode()) * 1000003) ^ this.connectionTimeoutMs) * 1000003) ^ this.readTimeoutMs;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public String id() {
        return this.id;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public int readTimeoutMs() {
        return this.readTimeoutMs;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public zzbx requestType() {
        return this.requestType;
    }

    public String toString() {
        StringBuilder sbP = U2.p("NetworkRequestData{requestType=", String.valueOf(this.requestType), ", id=");
        sbP.append(this.id);
        sbP.append(", url=");
        sbP.append(this.url);
        sbP.append(", content=");
        sbP.append(this.content);
        sbP.append(", userAgent=");
        sbP.append(this.userAgent);
        sbP.append(", connectionTimeoutMs=");
        sbP.append(this.connectionTimeoutMs);
        sbP.append(", readTimeoutMs=");
        return r.h(sbP, this.readTimeoutMs, "}");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public String url() {
        return this.url;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzby
    public String userAgent() {
        return this.userAgent;
    }
}
