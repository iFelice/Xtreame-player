package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.internal.zzqf;
import com.google.ads.interactivemedia.v3.internal.zzrm;
import com.google.ads.interactivemedia.v3.internal.zzrp;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
abstract class zzx {
    public static zzx zza() {
        return new zzad(zzqf.zzf(), HttpUrl.FRAGMENT_ENCODE_SET, zzrm.zzm(), zzrp.zzd());
    }

    public abstract zzqf zzb();

    public abstract zzrm zzc();

    public abstract zzrp zzd();

    public abstract String zze();
}
