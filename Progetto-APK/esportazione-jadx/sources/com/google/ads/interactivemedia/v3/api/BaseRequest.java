package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.signals.SecureSignals;
import com.google.ads.interactivemedia.v3.internal.zzex;
import com.google.ads.interactivemedia.v3.internal.zzqf;

/* JADX INFO: loaded from: classes.dex */
public interface BaseRequest {
    String getContentUrl();

    SecureSignals getSecureSignals();

    Object getUserRequestContext();

    void setContentUrl(String str);

    void setSecureSignals(SecureSignals secureSignals);

    void setUserRequestContext(Object obj);

    zzex zza();

    zzqf zzb();

    void zzc(long j8);
}
