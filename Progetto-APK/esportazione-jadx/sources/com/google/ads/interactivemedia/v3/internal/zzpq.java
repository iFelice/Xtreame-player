package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
final class zzpq extends zztg {
    Object zza;

    public zzpq(Object obj, Runnable runnable) {
        this.zza = obj;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final String zza() {
        Object obj = this.zza;
        return obj == null ? HttpUrl.FRAGMENT_ENCODE_SET : obj.toString();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final void zzb() {
        this.zza = null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final boolean zzc(Object obj) {
        return super.zzc(obj);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final boolean zzd(Throwable th) {
        return super.zzd(th);
    }
}
