package com.google.ads.interactivemedia.v3.internal;

import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
final class zzaby extends zzwj {
    static final zzwk zza = new zzabw();
    private final zzwj zzb;

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) {
        Date date = (Date) this.zzb.read(zzaccVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* synthetic */ void write(zzace zzaceVar, Object obj) {
        this.zzb.write(zzaceVar, (Timestamp) obj);
    }
}
