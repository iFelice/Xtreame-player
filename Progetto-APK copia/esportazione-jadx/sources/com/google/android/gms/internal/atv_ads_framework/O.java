package com.google.android.gms.internal.atv_ads_framework;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public abstract class O {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f22281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Uri f22282b;

    static {
        Uri uriBuild = new Uri.Builder().scheme("content").appendPath("signals").build();
        f22281a = uriBuild.buildUpon().authority("com.google.android.apps.tv.launcherx.ads.signals.AdsSignalsContentProvider").build();
        f22282b = uriBuild.buildUpon().authority("com.google.android.tvrecommendations.ads.signals.AdsSignalsContentProvider").build();
        r.s(2, "atv_atcrc", "atv_atcrc_tva");
    }
}
