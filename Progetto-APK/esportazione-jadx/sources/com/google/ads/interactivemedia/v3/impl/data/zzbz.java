package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzag.class)
public abstract class zzbz {
    public static final String UNKNOWN_CONTENT_TYPE = "unknown";

    private static zzbz create(String str, String str2, String str3, int i8) {
        return new zzag(str, str2, str3, i8);
    }

    public static zzbz forError(String str, int i8) {
        return create(str, HttpUrl.FRAGMENT_ENCODE_SET, UNKNOWN_CONTENT_TYPE, i8);
    }

    public static zzbz forResponse(String str, String str2) {
        return forResponse(str, str2, UNKNOWN_CONTENT_TYPE);
    }

    public abstract String content();

    public abstract String contentType();

    public abstract int errorCode();

    public abstract String id();

    public static zzbz forResponse(String str, String str2, String str3) {
        return create(str, str2, str3, 0);
    }
}
