package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.CuePoint;

/* JADX INFO: loaded from: classes.dex */
public final class zzas implements CuePoint {
    private final double zza;
    private final double zzb;
    private final boolean zzc;

    public zzas(double d6, double d8, boolean z7) {
        this.zza = d6;
        this.zzb = d8;
        this.zzc = z7;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CuePoint
    public final double getEndTime() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CuePoint
    public final long getEndTimeMs() {
        return (long) Math.floor(this.zzb * 1000.0d);
    }

    @Override // com.google.ads.interactivemedia.v3.api.CuePoint
    public final double getStartTime() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.api.CuePoint
    public final long getStartTimeMs() {
        return (long) Math.floor(this.zza * 1000.0d);
    }

    @Override // com.google.ads.interactivemedia.v3.api.CuePoint
    public final boolean isPlayed() {
        return this.zzc;
    }
}
