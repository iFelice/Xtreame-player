package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes.dex */
final class zzaad extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        try {
            return zzxz.zza(strZzh);
        } catch (NumberFormatException e8) {
            throw new zzwe(U2.m("Failed parsing '", strZzh, "' as BigDecimal; at path ", zzaccVar.zzf()), e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        zzaceVar.zzk((BigDecimal) obj);
    }
}
