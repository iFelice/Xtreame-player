package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import p136r3.d;
import p144s3.a;
import p144s3.c;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface CustomEventInterstitial extends a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestInterstitialAd(Context context, c cVar, String str, d dVar, Bundle bundle);

    void showInterstitial();
}
