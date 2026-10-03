package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzaf.class)
public abstract class zzby {
    public static zzby create(zzbx zzbxVar, String str, String str2, String str3, String str4, int i8, int i9) {
        return new zzaf(zzbxVar, str, str2, str4, str3, i8, i9);
    }

    public abstract int connectionTimeoutMs();

    public abstract String content();

    public abstract String id();

    public abstract int readTimeoutMs();

    public abstract zzbx requestType();

    public abstract String url();

    public abstract String userAgent();
}
