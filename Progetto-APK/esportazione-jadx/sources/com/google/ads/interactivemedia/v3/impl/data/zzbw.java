package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;
import com.google.ads.interactivemedia.v3.internal.zzqo;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzae.class)
public abstract class zzbw {
    public static zzbw create(String str, String str2, String str3) {
        return new zzae(str, str2, str3);
    }

    public abstract String message();

    public abstract String name();

    public abstract String stackTrace();

    public static zzbw create(Throwable th) {
        return new zzae(th.getClass().getName(), th.getMessage(), zzqo.zza(th));
    }
}
