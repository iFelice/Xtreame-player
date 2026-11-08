package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzan extends zzce {
    private final Integer height;
    private final Integer width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Integer f11606x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Integer f11607y;

    public zzan(Integer num, Integer num2, Integer num3, Integer num4) {
        if (num == null) {
            throw new NullPointerException("Null x");
        }
        this.f11606x = num;
        if (num2 == null) {
            throw new NullPointerException("Null y");
        }
        this.f11607y = num2;
        if (num3 == null) {
            throw new NullPointerException("Null width");
        }
        this.width = num3;
        if (num4 == null) {
            throw new NullPointerException("Null height");
        }
        this.height = num4;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzce) {
            zzce zzceVar = (zzce) obj;
            if (this.f11606x.equals(zzceVar.x()) && this.f11607y.equals(zzceVar.y()) && this.width.equals(zzceVar.width()) && this.height.equals(zzceVar.height())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f11606x.hashCode() ^ 1000003) * 1000003) ^ this.f11607y.hashCode()) * 1000003) ^ this.width.hashCode()) * 1000003) ^ this.height.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzce
    public Integer height() {
        return this.height;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzce
    public Integer width() {
        return this.width;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzce
    public Integer x() {
        return this.f11606x;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzce
    public Integer y() {
        return this.f11607y;
    }
}
