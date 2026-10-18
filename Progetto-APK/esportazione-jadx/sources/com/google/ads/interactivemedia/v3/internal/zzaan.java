package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.io.IOException;
import java.util.Currency;

/* JADX INFO: loaded from: classes.dex */
final class zzaan extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        String strZzh = zzaccVar.zzh();
        try {
            return Currency.getInstance(strZzh);
        } catch (IllegalArgumentException e8) {
            throw new zzwe(U2.m("Failed parsing '", strZzh, "' as Currency; at path ", zzaccVar.zzf()), e8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        zzaceVar.zzl(((Currency) obj).getCurrencyCode());
    }
}
