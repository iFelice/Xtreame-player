package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzco {
    public abstract zzcp build();

    public abstract zzco volume(float f8);

    public zzco volumePercentage(int i8) {
        return volume(Math.min(Math.max(i8, 0), 100) / 100.0f);
    }
}
