package com.google.ads.interactivemedia.v3.internal;

import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
final class zzadj {
    private final Object zza;
    private final int zzb;

    public zzadj(Object obj, int i8) {
        this.zza = obj;
        this.zzb = i8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzadj)) {
            return false;
        }
        zzadj zzadjVar = (zzadj) obj;
        return this.zza == zzadjVar.zza && this.zzb == zzadjVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.zzb;
    }
}
