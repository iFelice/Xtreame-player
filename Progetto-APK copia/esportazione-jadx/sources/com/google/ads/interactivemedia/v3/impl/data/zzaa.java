package com.google.ads.interactivemedia.v3.impl.data;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzaa extends zzbl {
    private final String alternateText;
    private final int duration;
    private final List<zzbk> fallbackImages;
    private final int height;
    private final int id;
    private final String imageUrl;
    private final int offset;
    private final double pixelRatio;
    private final int width;
    private final String xPosition;
    private final String yPosition;

    public zzaa(int i8, int i9, int i10, double d6, String str, String str2, int i11, int i12, String str3, String str4, List<zzbk> list) {
        this.id = i8;
        this.width = i9;
        this.height = i10;
        this.pixelRatio = d6;
        if (str == null) {
            throw new NullPointerException("Null xPosition");
        }
        this.xPosition = str;
        if (str2 == null) {
            throw new NullPointerException("Null yPosition");
        }
        this.yPosition = str2;
        this.offset = i11;
        this.duration = i12;
        if (str3 == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.imageUrl = str3;
        if (str4 == null) {
            throw new NullPointerException("Null alternateText");
        }
        this.alternateText = str4;
        if (list == null) {
            throw new NullPointerException("Null fallbackImages");
        }
        this.fallbackImages = list;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public String alternateText() {
        return this.alternateText;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public int duration() {
        return this.duration;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbl) {
            zzbl zzblVar = (zzbl) obj;
            if (this.id == zzblVar.id() && this.width == zzblVar.width() && this.height == zzblVar.height() && Double.doubleToLongBits(this.pixelRatio) == Double.doubleToLongBits(zzblVar.pixelRatio()) && this.xPosition.equals(zzblVar.xPosition()) && this.yPosition.equals(zzblVar.yPosition()) && this.offset == zzblVar.offset() && this.duration == zzblVar.duration() && this.imageUrl.equals(zzblVar.imageUrl()) && this.alternateText.equals(zzblVar.alternateText()) && this.fallbackImages.equals(zzblVar.fallbackImages())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public List<zzbk> fallbackImages() {
        return this.fallbackImages;
    }

    public int hashCode() {
        long jDoubleToLongBits = (Double.doubleToLongBits(this.pixelRatio) >>> 32) ^ Double.doubleToLongBits(this.pixelRatio);
        return ((((((((((((((((((((this.id ^ 1000003) * 1000003) ^ this.width) * 1000003) ^ this.height) * 1000003) ^ ((int) jDoubleToLongBits)) * 1000003) ^ this.xPosition.hashCode()) * 1000003) ^ this.yPosition.hashCode()) * 1000003) ^ this.offset) * 1000003) ^ this.duration) * 1000003) ^ this.imageUrl.hashCode()) * 1000003) ^ this.alternateText.hashCode()) * 1000003) ^ this.fallbackImages.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public int height() {
        return this.height;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public int id() {
        return this.id;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public String imageUrl() {
        return this.imageUrl;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public int offset() {
        return this.offset;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public double pixelRatio() {
        return this.pixelRatio;
    }

    public String toString() {
        return "IconData{id=" + this.id + ", width=" + this.width + ", height=" + this.height + ", pixelRatio=" + this.pixelRatio + ", xPosition=" + this.xPosition + ", yPosition=" + this.yPosition + ", offset=" + this.offset + ", duration=" + this.duration + ", imageUrl=" + this.imageUrl + ", alternateText=" + this.alternateText + ", fallbackImages=" + String.valueOf(this.fallbackImages) + "}";
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public int width() {
        return this.width;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public String xPosition() {
        return this.xPosition;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbl
    public String yPosition() {
        return this.yPosition;
    }
}
