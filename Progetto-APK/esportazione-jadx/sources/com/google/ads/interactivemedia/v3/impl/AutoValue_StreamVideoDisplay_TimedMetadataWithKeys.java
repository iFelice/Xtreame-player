package com.google.ads.interactivemedia.v3.impl;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_StreamVideoDisplay_TimedMetadataWithKeys extends zzca {
    private final String TXXX;

    public AutoValue_StreamVideoDisplay_TimedMetadataWithKeys(String str) {
        if (str == null) {
            throw new NullPointerException("Null TXXX");
        }
        this.TXXX = str;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzca
    public String TXXX() {
        return this.TXXX;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzca) {
            return this.TXXX.equals(((zzca) obj).TXXX());
        }
        return false;
    }

    public int hashCode() {
        return this.TXXX.hashCode() ^ 1000003;
    }

    public String toString() {
        return r.j(new StringBuilder("TimedMetadataWithKeys{TXXX="), this.TXXX, "}");
    }
}
