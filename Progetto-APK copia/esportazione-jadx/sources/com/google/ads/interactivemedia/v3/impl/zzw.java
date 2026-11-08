package com.google.ads.interactivemedia.v3.impl;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzw {
    public static zzw create(int i8, String str) {
        return new AutoValue_AdsLoaderImpl_MarketAppInfo(i8, str);
    }

    public abstract int appVersion();

    public abstract String packageName();
}
