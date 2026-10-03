package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzaba extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() != 9) {
            return Boolean.valueOf(zzaccVar.zzh());
        }
        zzaccVar.zzm();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        Boolean bool = (Boolean) obj;
        zzaceVar.zzl(bool == null ? "null" : bool.toString());
    }
}
