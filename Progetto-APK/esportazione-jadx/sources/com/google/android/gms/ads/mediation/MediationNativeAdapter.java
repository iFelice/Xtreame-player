package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import p136r3.e;
import p136r3.l;
import p136r3.n;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediationNativeAdapter extends e {
    /* synthetic */ void onDestroy();

    /* synthetic */ void onPause();

    /* synthetic */ void onResume();

    void requestNativeAd(Context context, l lVar, Bundle bundle, n nVar, Bundle bundle2);
}
