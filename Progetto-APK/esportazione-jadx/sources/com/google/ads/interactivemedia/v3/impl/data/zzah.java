package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzrm;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzah extends zzca {
    private zzrm<zzcc> obstructions;

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzca
    public zzcd build() {
        zzrm<zzcc> zzrmVar = this.obstructions;
        if (zzrmVar != null) {
            return new zzaj(zzrmVar);
        }
        throw new IllegalStateException("Missing required properties: obstructions");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzca
    public zzca obstructions(List<zzcc> list) {
        this.obstructions = zzrm.zzk(list);
        return this;
    }
}
