package com.google.ads.interactivemedia.v3.impl.data;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzag extends zzbz {
    private final String content;
    private final String contentType;
    private final int errorCode;
    private final String id;

    public zzag(String str, String str2, String str3, int i8) {
        if (str == null) {
            throw new NullPointerException("Null id");
        }
        this.id = str;
        if (str2 == null) {
            throw new NullPointerException("Null content");
        }
        this.content = str2;
        if (str3 == null) {
            throw new NullPointerException("Null contentType");
        }
        this.contentType = str3;
        this.errorCode = i8;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbz
    public String content() {
        return this.content;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbz
    public String contentType() {
        return this.contentType;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbz) {
            zzbz zzbzVar = (zzbz) obj;
            if (this.id.equals(zzbzVar.id()) && this.content.equals(zzbzVar.content()) && this.contentType.equals(zzbzVar.contentType()) && this.errorCode == zzbzVar.errorCode()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbz
    public int errorCode() {
        return this.errorCode;
    }

    public int hashCode() {
        return ((((((this.id.hashCode() ^ 1000003) * 1000003) ^ this.content.hashCode()) * 1000003) ^ this.contentType.hashCode()) * 1000003) ^ this.errorCode;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbz
    public String id() {
        return this.id;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NetworkResponseData{id=");
        sb.append(this.id);
        sb.append(", content=");
        sb.append(this.content);
        sb.append(", contentType=");
        sb.append(this.contentType);
        sb.append(", errorCode=");
        return r.h(sb, this.errorCode, "}");
    }
}
