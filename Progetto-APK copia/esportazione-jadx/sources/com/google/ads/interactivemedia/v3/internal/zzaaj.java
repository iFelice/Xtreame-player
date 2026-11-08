package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
final class zzaaj extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        if (strZzh.equals("null")) {
            return null;
        }
        return new URL(strZzh);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        URL url = (URL) obj;
        zzaceVar.zzl(url == null ? null : url.toExternalForm());
    }
}
