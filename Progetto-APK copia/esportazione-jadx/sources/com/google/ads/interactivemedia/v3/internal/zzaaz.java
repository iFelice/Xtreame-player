package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzaaz extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        int iZzr = zzaccVar.zzr();
        if (iZzr != 9) {
            return iZzr == 6 ? Boolean.valueOf(Boolean.parseBoolean(zzaccVar.zzh())) : Boolean.valueOf(zzaccVar.zzq());
        }
        zzaccVar.zzm();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        zzaceVar.zzj((Boolean) obj);
    }
}
