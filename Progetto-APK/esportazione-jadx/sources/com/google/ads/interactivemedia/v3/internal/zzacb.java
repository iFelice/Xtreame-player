package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzacb extends zzxp {
    @Override // com.google.ads.interactivemedia.v3.internal.zzxp
    public final void zza(zzacc zzaccVar) throws IOException {
        if (zzaccVar instanceof zzyz) {
            ((zzyz) zzaccVar).zzn();
            return;
        }
        int iZzs = zzaccVar.zza;
        if (iZzs == 0) {
            iZzs = zzaccVar.zzs();
        }
        if (iZzs == 13) {
            zzaccVar.zza = 9;
        } else if (iZzs == 12) {
            zzaccVar.zza = 8;
        } else {
            if (iZzs != 14) {
                throw zzaccVar.zzz("a name");
            }
            zzaccVar.zza = 10;
        }
    }
}
