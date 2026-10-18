package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.internal.zzps;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzad.class)
public abstract class zzbr {
    public static zzbr create(long j8, AdErrorEvent adErrorEvent) {
        return create(j8, (zzbp) null, (zzbq) null, adErrorEvent, (zzbw) null);
    }

    public abstract AdErrorEvent adErrorEvent();

    public abstract zzbp component();

    public abstract Long latency();

    public abstract String latencyMeasurementProtoBase64String();

    public abstract zzbw loggableException();

    public abstract zzbq method();

    public abstract long timestamp();

    public static zzbr create(long j8, zzbp zzbpVar, zzbq zzbqVar) {
        return create(j8, zzbpVar, zzbqVar, (AdErrorEvent) null, (zzbw) null);
    }

    private static zzbr create(long j8, zzbp zzbpVar, zzbq zzbqVar, AdErrorEvent adErrorEvent, zzbw zzbwVar) {
        return new zzad(j8, zzbpVar, zzbqVar, adErrorEvent, zzbwVar, null, null);
    }

    public static zzbr create(long j8, zzbp zzbpVar, zzbq zzbqVar, String str) {
        return new zzad(j8, zzbpVar, zzbqVar, null, null, null, str);
    }

    public static zzbr create(long j8, zzbp zzbpVar, zzbq zzbqVar, long j9) {
        return new zzad(j8, zzbpVar, zzbqVar, null, null, Long.valueOf(j9), null);
    }

    public static zzbr create(long j8, zzbp zzbpVar, zzbq zzbqVar, Throwable th) {
        return create(j8, zzbpVar, zzbqVar, (AdErrorEvent) null, zzbw.create(th));
    }

    public static zzbr create(long j8, zzbp zzbpVar, zzbq zzbqVar, long j9, String str) {
        return new zzad(j8, zzbpVar, zzbqVar, null, null, Long.valueOf(j9), str);
    }
}
