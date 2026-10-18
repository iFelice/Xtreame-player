package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzac.class)
public abstract class zzbn {
    public static zzbn create(String str, String str2, boolean z7, String str3, int i8, String str4) {
        return new zzac(str, str2, z7, str3, i8, str4);
    }

    public abstract String adsIdentityToken();

    public abstract String appSetId();

    public abstract int appSetIdScope();

    public abstract String deviceId();

    public abstract String idType();

    public abstract boolean isLimitedAdTracking();
}
