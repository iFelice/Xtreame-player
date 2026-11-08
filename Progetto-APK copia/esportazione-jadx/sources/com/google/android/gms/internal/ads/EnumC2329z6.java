package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.z6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC2329z6 implements InterfaceC1976sH {
    AD_INITIATER_UNSPECIFIED(0),
    BANNER(1),
    DFP_BANNER(2),
    INTERSTITIAL(3),
    DFP_INTERSTITIAL(4),
    NATIVE_EXPRESS(5),
    AD_LOADER(6),
    REWARD_BASED_VIDEO_AD(7),
    BANNER_SEARCH_ADS(8),
    GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
    APP_OPEN(10),
    REWARDED_INTERSTITIAL(11);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f22131G;

    EnumC2329z6(int i8) {
        this.f22131G = i8;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f22131G);
    }
}
