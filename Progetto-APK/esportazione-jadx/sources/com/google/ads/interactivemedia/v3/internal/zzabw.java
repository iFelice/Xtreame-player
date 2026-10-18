package com.google.ads.interactivemedia.v3.internal;

import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
final class zzabw implements zzwk {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwk
    public final zzwj zza(zzvr zzvrVar, zzaca zzacaVar) {
        if (zzacaVar.zzc() == Timestamp.class) {
            return new zzaby(zzvrVar.zza(zzaca.zza(Date.class)), null);
        }
        return null;
    }
}
