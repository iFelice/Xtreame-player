package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.y6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2277y6 implements InterfaceC2028tH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2277y6 f21994a = new C2277y6();

    @Override // com.google.android.gms.internal.ads.InterfaceC2028tH
    public final boolean zza(int i8) {
        EnumC2329z6 enumC2329z6;
        switch (i8) {
            case 0:
                enumC2329z6 = EnumC2329z6.AD_INITIATER_UNSPECIFIED;
                break;
            case 1:
                enumC2329z6 = EnumC2329z6.BANNER;
                break;
            case 2:
                enumC2329z6 = EnumC2329z6.DFP_BANNER;
                break;
            case 3:
                enumC2329z6 = EnumC2329z6.INTERSTITIAL;
                break;
            case 4:
                enumC2329z6 = EnumC2329z6.DFP_INTERSTITIAL;
                break;
            case 5:
                enumC2329z6 = EnumC2329z6.NATIVE_EXPRESS;
                break;
            case 6:
                enumC2329z6 = EnumC2329z6.AD_LOADER;
                break;
            case 7:
                enumC2329z6 = EnumC2329z6.REWARD_BASED_VIDEO_AD;
                break;
            case 8:
                enumC2329z6 = EnumC2329z6.BANNER_SEARCH_ADS;
                break;
            case 9:
                enumC2329z6 = EnumC2329z6.GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                break;
            case 10:
                enumC2329z6 = EnumC2329z6.APP_OPEN;
                break;
            case 11:
                enumC2329z6 = EnumC2329z6.REWARDED_INTERSTITIAL;
                break;
            default:
                enumC2329z6 = null;
                break;
        }
        return enumC2329z6 != null;
    }
}
