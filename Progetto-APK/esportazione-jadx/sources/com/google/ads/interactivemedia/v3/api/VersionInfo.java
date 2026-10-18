package com.google.ads.interactivemedia.v3.api;

/* JADX INFO: loaded from: classes.dex */
public final class VersionInfo {
    private final int zza;
    private final int zzb;
    private final int zzc;

    public VersionInfo(int i8, int i9, int i10) {
        this.zza = i8;
        this.zzb = i9;
        this.zzc = i10;
    }

    public int getMajorVersion() {
        return this.zza;
    }

    public int getMicroVersion() {
        return this.zzc;
    }

    public int getMinorVersion() {
        return this.zzb;
    }

    public String toString() {
        return this.zza + "." + this.zzb + "." + this.zzc;
    }
}
