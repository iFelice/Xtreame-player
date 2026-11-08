package com.google.ads.interactivemedia.v3.impl.data;

import java.util.List;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzab extends zzbm {
    private final List<zzbl> icons;

    public zzab(List<zzbl> list) {
        if (list == null) {
            throw new NullPointerException("Null icons");
        }
        this.icons = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbm) {
            return this.icons.equals(((zzbm) obj).icons());
        }
        return false;
    }

    public int hashCode() {
        return this.icons.hashCode() ^ 1000003;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbm
    public List<zzbl> icons() {
        return this.icons;
    }

    public String toString() {
        return r.g("IconsViewData{icons=", String.valueOf(this.icons), "}");
    }
}
