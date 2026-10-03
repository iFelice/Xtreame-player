package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzz extends zzbk {
    private final String alternateText;
    private final String creativeType;
    private final int height;
    private final String imageUrl;
    private final int width;

    public zzz(int i8, int i9, String str, String str2, String str3) {
        this.width = i8;
        this.height = i9;
        if (str == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.imageUrl = str;
        if (str2 == null) {
            throw new NullPointerException("Null alternateText");
        }
        this.alternateText = str2;
        if (str3 == null) {
            throw new NullPointerException("Null creativeType");
        }
        this.creativeType = str3;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbk
    public String alternateText() {
        return this.alternateText;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbk
    public String creativeType() {
        return this.creativeType;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbk) {
            zzbk zzbkVar = (zzbk) obj;
            if (this.width == zzbkVar.width() && this.height == zzbkVar.height() && this.imageUrl.equals(zzbkVar.imageUrl()) && this.alternateText.equals(zzbkVar.alternateText()) && this.creativeType.equals(zzbkVar.creativeType())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((this.width ^ 1000003) * 1000003) ^ this.height) * 1000003) ^ this.imageUrl.hashCode()) * 1000003) ^ this.alternateText.hashCode()) * 1000003) ^ this.creativeType.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbk
    public int height() {
        return this.height;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbk
    public String imageUrl() {
        return this.imageUrl;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbk
    public int width() {
        return this.width;
    }
}
