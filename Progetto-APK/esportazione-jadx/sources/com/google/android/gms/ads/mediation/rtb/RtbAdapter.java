package com.google.android.gms.ads.mediation.rtb;

import B0.w0;
import p136r3.a;
import p136r3.c;
import p136r3.f;
import p136r3.g;
import p136r3.i;
import p136r3.k;
import p136r3.m;
import p152t3.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class RtbAdapter extends a {
    public abstract void collectSignals(p152t3.a aVar, b bVar);

    public void loadRtbAppOpenAd(f fVar, c cVar) {
        loadAppOpenAd(fVar, cVar);
    }

    public void loadRtbBannerAd(g gVar, c cVar) {
        loadBannerAd(gVar, cVar);
    }

    public void loadRtbInterscrollerAd(g gVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }

    public void loadRtbInterstitialAd(i iVar, c cVar) {
        loadInterstitialAd(iVar, cVar);
    }

    @Deprecated
    public void loadRtbNativeAd(k kVar, c cVar) {
        loadNativeAd(kVar, cVar);
    }

    public void loadRtbNativeAdMapper(k kVar, c cVar) {
        loadNativeAdMapper(kVar, cVar);
    }

    public void loadRtbRewardedAd(m mVar, c cVar) {
        loadRewardedAd(mVar, cVar);
    }

    public void loadRtbRewardedInterstitialAd(m mVar, c cVar) {
        loadRewardedInterstitialAd(mVar, cVar);
    }
}
