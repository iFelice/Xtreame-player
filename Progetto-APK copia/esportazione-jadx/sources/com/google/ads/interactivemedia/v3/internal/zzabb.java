package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzabb extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        try {
            int iZzb = zzaccVar.zzb();
            if (iZzb <= 255 && iZzb >= -128) {
                return Byte.valueOf((byte) iZzb);
            }
            throw new zzwe("Lossy conversion from " + iZzb + " to byte; at path " + zzaccVar.zzf());
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
            zzaceVar.zzi(number.byteValue());
        }
    }
}
