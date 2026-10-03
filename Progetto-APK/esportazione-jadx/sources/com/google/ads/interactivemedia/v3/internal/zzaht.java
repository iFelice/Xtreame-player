package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzaht {
    private final Object zza;
    private final int zzb;

    public zzaht(Object obj) {
        this.zzb = System.identityHashCode(obj);
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaht)) {
            return false;
        }
        zzaht zzahtVar = (zzaht) obj;
        return this.zzb == zzahtVar.zzb && this.zza == zzahtVar.zza;
    }

    public final int hashCode() {
        return this.zzb;
    }
}
