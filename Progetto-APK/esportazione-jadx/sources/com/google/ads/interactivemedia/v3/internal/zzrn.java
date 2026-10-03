package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
final class zzrn {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzrn(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        Object obj = this.zzc;
        Object obj2 = this.zzb;
        Object obj3 = this.zza;
        String strValueOf = String.valueOf(obj3);
        String strValueOf2 = String.valueOf(obj2);
        return new IllegalArgumentException(U2.n(U2.q("Multiple entries with same key: ", strValueOf, "=", strValueOf2, " and "), String.valueOf(obj3), "=", String.valueOf(obj)));
    }
}
