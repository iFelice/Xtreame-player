package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
final class zzaal extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() != 9) {
            return InetAddress.getByName(zzaccVar.zzh());
        }
        zzaccVar.zzm();
        return null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        InetAddress inetAddress = (InetAddress) obj;
        zzaceVar.zzl(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}
