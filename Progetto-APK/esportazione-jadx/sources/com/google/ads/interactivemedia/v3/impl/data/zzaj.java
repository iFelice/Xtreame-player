package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzrm;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzaj extends zzcd {
    private final zzrm<zzcc> obstructions;

    private zzaj(zzrm<zzcc> zzrmVar) {
        this.obstructions = zzrmVar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcd) {
            return this.obstructions.equals(((zzcd) obj).obstructions());
        }
        return false;
    }

    public int hashCode() {
        return this.obstructions.hashCode() ^ 1000003;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcd
    public zzrm<zzcc> obstructions() {
        return this.obstructions;
    }

    public String toString() {
        return r.g("ObstructionListData{obstructions=", String.valueOf(this.obstructions), "}");
    }
}
