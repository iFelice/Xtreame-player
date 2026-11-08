package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC1863q7 implements InterfaceC1976sH {
    AD_FORMAT_TYPE_UNSPECIFIED(0),
    BANNER(1),
    INTERSTITIAL(2),
    NATIVE_EXPRESS(3),
    NATIVE_CONTENT(4),
    NATIVE_APP_INSTALL(5),
    NATIVE_CUSTOM_TEMPLATE(6),
    DFP_BANNER(7),
    DFP_INTERSTITIAL(8),
    REWARD_BASED_VIDEO_AD(9),
    BANNER_SEARCH_ADS(10);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f20546G;

    EnumC1863q7(int i8) {
        this.f20546G = i8;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f20546G);
    }
}
