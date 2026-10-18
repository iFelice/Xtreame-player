package com.google.ads.interactivemedia.v3.impl;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AdsLoaderImpl_MarketAppInfo extends zzw {
    private final int appVersion;
    private final String packageName;

    public AutoValue_AdsLoaderImpl_MarketAppInfo(int i8, String str) {
        this.appVersion = i8;
        if (str == null) {
            throw new NullPointerException("Null packageName");
        }
        this.packageName = str;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzw
    public int appVersion() {
        return this.appVersion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzw) {
            zzw zzwVar = (zzw) obj;
            if (this.appVersion == zzwVar.appVersion() && this.packageName.equals(zzwVar.packageName())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.appVersion ^ 1000003) * 1000003) ^ this.packageName.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzw
    public String packageName() {
        return this.packageName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MarketAppInfo{appVersion=");
        sb.append(this.appVersion);
        sb.append(", packageName=");
        return r.j(sb, this.packageName, "}");
    }
}
