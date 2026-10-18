package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import p043f3.g;
import p136r3.d;
import p144s3.a;
import p144s3.b;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface CustomEventBanner extends a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestBannerAd(Context context, b bVar, String str, g gVar, d dVar, Bundle bundle);
}
