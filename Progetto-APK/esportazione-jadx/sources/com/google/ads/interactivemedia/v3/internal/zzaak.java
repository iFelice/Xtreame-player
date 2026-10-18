package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
final class zzaak extends zzwj {
    public static final URI zza(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        try {
            String strZzh = zzaccVar.zzh();
            if (strZzh.equals("null")) {
                return null;
            }
            return new URI(strZzh);
        } catch (URISyntaxException e8) {
            throw new zzvx(e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) {
        return zza(zzaccVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        URI uri = (URI) obj;
        zzaceVar.zzl(uri == null ? null : uri.toASCIIString());
    }
}
