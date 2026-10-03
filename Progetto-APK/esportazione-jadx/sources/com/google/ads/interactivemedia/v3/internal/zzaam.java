package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
final class zzaam extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        try {
            return UUID.fromString(strZzh);
        } catch (IllegalArgumentException e8) {
            throw new zzwe(U2.m("Failed parsing '", strZzh, "' as UUID; at path ", zzaccVar.zzf()), e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        UUID uuid = (UUID) obj;
        zzaceVar.zzl(uuid == null ? null : uuid.toString());
    }
}
