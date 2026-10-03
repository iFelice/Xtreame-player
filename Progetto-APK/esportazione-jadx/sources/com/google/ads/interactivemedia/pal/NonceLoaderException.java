package com.google.ads.interactivemedia.pal;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class NonceLoaderException extends Exception {
    private final int zza;

    public NonceLoaderException(int i8, Exception exc) {
        super(r.f("NonceLoader exception, errorCode : ", i8), exc);
        this.zza = i8;
    }

    public static NonceLoaderException zzb(int i8) {
        return new NonceLoaderException(i8, new Exception());
    }

    public final int zza() {
        return this.zza;
    }
}
