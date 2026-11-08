package com.google.android.gms.ads;

import com.bumptech.glide.c;
import p090l3.J0;

/* JADX INFO: loaded from: classes.dex */
public class MobileAds {
    private static void setPlugin(String str) {
        synchronized (J0.a().f26486a) {
            c.j("MobileAds.initialize() must be called prior to setting the plugin.", false);
            throw null;
        }
    }
}
