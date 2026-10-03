package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzaaa extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() != 9) {
            return Double.valueOf(zzaccVar.zza());
        }
        zzaccVar.zzm();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        Number number = (Number) obj;
        if (number == null) {
            zzaceVar.zzg();
        } else {
            zzaceVar.zzh(number.doubleValue());
        }
    }
}
