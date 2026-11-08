package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzaab extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        String strZzh = zzaccVar.zzh();
        if (strZzh.length() == 1) {
            return Character.valueOf(strZzh.charAt(0));
        }
        throw new zzwe(U2.m("Expecting character, got: ", strZzh, "; at ", zzaccVar.zzf()));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        Character ch = (Character) obj;
        zzaceVar.zzl(ch == null ? null : ch.toString());
    }
}
