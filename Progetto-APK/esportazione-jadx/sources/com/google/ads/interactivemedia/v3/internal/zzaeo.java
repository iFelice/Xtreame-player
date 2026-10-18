package com.google.ads.interactivemedia.v3.internal;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzaeo {
    public static final List zza(Object obj, long j8) {
        zzaed zzaedVar = (zzaed) zzago.zzf(obj, j8);
        if (zzaedVar.zzc()) {
            return zzaedVar;
        }
        int size = zzaedVar.size();
        zzaed zzaedVarZzd = zzaedVar.zzd(size == 0 ? 10 : size + size);
        zzago.zzs(obj, j8, zzaedVarZzd);
        return zzaedVarZzd;
    }
}
