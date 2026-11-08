package p136r3;

import B0.w0;
import android.content.Context;
import android.os.RemoteException;
import java.util.List;
import p043f3.q;
import p096m2.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public abstract q getSDKVersionInfo();

    public abstract q getVersionInfo();

    public abstract void initialize(Context context, b bVar, List<e> list);

    public void loadAppOpenAd(f fVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support app open ads."), "com.google.android.gms.ads"));
    }

    public void loadBannerAd(g gVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support banner ads."), "com.google.android.gms.ads"));
    }

    public void loadInterscrollerAd(g gVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }

    public void loadInterstitialAd(i iVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support interstitial ads."), "com.google.android.gms.ads"));
    }

    @Deprecated
    public void loadNativeAd(k kVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support native ads."), "com.google.android.gms.ads"));
    }

    public void loadNativeAdMapper(k kVar, c cVar) {
        throw new RemoteException("Method is not found");
    }

    public void loadRewardedAd(m mVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support rewarded ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedInterstitialAd(m mVar, c cVar) {
        cVar.c(new w0(7, getClass().getSimpleName().concat(" does not support rewarded interstitial ads."), "com.google.android.gms.ads"));
    }
}
