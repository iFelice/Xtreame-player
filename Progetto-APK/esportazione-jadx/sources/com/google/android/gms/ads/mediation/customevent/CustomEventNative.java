package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import p136r3.n;
import p144s3.a;
import p144s3.d;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface CustomEventNative extends a {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestNativeAd(Context context, d dVar, String str, n nVar, Bundle bundle);
}
