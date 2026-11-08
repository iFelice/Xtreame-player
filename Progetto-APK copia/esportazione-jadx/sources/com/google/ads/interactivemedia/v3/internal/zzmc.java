package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzmc {
    public static final SharedPreferences zza(Context context) {
        try {
            return context.getSharedPreferences("google_ads_flags", 0);
        } catch (IllegalStateException e8) {
            Log.w("Ads", HttpUrl.FRAGMENT_ENCODE_SET, e8);
            return null;
        }
    }
}
