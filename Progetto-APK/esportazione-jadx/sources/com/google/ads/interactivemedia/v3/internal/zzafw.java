package com.google.ads.interactivemedia.v3.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzafw extends zzagd {
    public zzafw() {
        super(null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagd
    public final void zza() {
        if (!zzj()) {
            for (int i8 = 0; i8 < zzc(); i8++) {
                Map.Entry entryZzg = zzg(i8);
                if (((zzado) ((zzafx) entryZzg).zza()).zze()) {
                    entryZzg.setValue(Collections.unmodifiableList((List) entryZzg.getValue()));
                }
            }
            for (Map.Entry entry : zzd()) {
                if (((zzado) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
