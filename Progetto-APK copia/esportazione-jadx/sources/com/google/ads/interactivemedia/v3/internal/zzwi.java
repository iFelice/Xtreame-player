package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzwi extends zzwj {
    final /* synthetic */ zzwj zza;

    public zzwi(zzwj zzwjVar) {
        this.zza = zzwjVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() != 9) {
            return this.zza.read(zzaccVar);
        }
        zzaccVar.zzm();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final void write(zzace zzaceVar, Object obj) throws IOException {
        if (obj == null) {
            zzaceVar.zzg();
        } else {
            this.zza.write(zzaceVar, obj);
        }
    }
}
