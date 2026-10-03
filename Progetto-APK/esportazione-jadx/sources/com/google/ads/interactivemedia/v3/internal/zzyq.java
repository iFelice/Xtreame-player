package com.google.ads.interactivemedia.v3.internal;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
final class zzyq implements zzwk {
    public final String toString() {
        return "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY";
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        if (zzacaVar.zzc() == Date.class) {
            return new zzyu(zzys.zza, 2, 2, null);
        }
        return null;
    }
}
