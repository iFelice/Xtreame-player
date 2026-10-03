package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzax extends zzco {
    private byte set$0;
    private float volume;

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzco
    public zzcp build() {
        if (this.set$0 == 1) {
            return new zzaz(this.volume);
        }
        throw new IllegalStateException("Missing required properties: volume");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzco
    public zzco volume(float f8) {
        this.volume = f8;
        this.set$0 = (byte) (this.set$0 | 1);
        return this;
    }
}
