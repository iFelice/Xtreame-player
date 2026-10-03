package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.VersionInfo;
import com.google.ads.interactivemedia.v3.internal.zzps;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzap.class)
public abstract class zzcg {
    public static zzcg create(int i8, int i9, int i10) {
        return new zzap(i8, i9, i10);
    }

    public abstract int major();

    public abstract int micro();

    public abstract int minor();

    public static zzcg create(VersionInfo versionInfo) {
        return create(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }
}
