package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzzy extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        try {
            return Long.valueOf(zzaccVar.zzc());
        } catch (NumberFormatException e8) {
            throw new zzwe(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        Number number = (Number) obj;
        if (number == null) {
            zzaceVar.zzg();
        } else {
            zzaceVar.zzi(number.longValue());
        }
    }
}
