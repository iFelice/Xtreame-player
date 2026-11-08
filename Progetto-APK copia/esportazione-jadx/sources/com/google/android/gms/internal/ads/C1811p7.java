package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.p7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1811p7 implements InterfaceC2028tH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C1811p7 f20420a = new C1811p7();

    @Override // com.google.android.gms.internal.ads.InterfaceC2028tH
    public final boolean zza(int i8) {
        EnumC1863q7 enumC1863q7;
        switch (i8) {
            case 0:
                enumC1863q7 = EnumC1863q7.AD_FORMAT_TYPE_UNSPECIFIED;
                break;
            case 1:
                enumC1863q7 = EnumC1863q7.BANNER;
                break;
            case 2:
                enumC1863q7 = EnumC1863q7.INTERSTITIAL;
                break;
            case 3:
                enumC1863q7 = EnumC1863q7.NATIVE_EXPRESS;
                break;
            case 4:
                enumC1863q7 = EnumC1863q7.NATIVE_CONTENT;
                break;
            case 5:
                enumC1863q7 = EnumC1863q7.NATIVE_APP_INSTALL;
                break;
            case 6:
                enumC1863q7 = EnumC1863q7.NATIVE_CUSTOM_TEMPLATE;
                break;
            case 7:
                enumC1863q7 = EnumC1863q7.DFP_BANNER;
                break;
            case 8:
                enumC1863q7 = EnumC1863q7.DFP_INTERSTITIAL;
                break;
            case 9:
                enumC1863q7 = EnumC1863q7.REWARD_BASED_VIDEO_AD;
                break;
            case 10:
                enumC1863q7 = EnumC1863q7.BANNER_SEARCH_ADS;
                break;
            default:
                enumC1863q7 = null;
                break;
        }
        return enumC1863q7 != null;
    }
}
