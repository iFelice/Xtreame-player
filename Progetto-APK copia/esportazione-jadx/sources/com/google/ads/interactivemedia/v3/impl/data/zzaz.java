package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzaz extends zzcp {
    private final float volume;

    private zzaz(float f8) {
        this.volume = f8;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzcp) && Float.floatToIntBits(this.volume) == Float.floatToIntBits(((zzcp) obj).volume());
    }

    public int hashCode() {
        return Float.floatToIntBits(this.volume) ^ 1000003;
    }

    public String toString() {
        return "VolumeUpdateData{volume=" + this.volume + "}";
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcp
    public float volume() {
        return this.volume;
    }
}
