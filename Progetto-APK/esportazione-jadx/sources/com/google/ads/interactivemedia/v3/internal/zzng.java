package com.google.ads.interactivemedia.v3.internal;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzng extends Exception {
    private final int zza;

    public zzng(int i8) {
        super(r.f("Signal SDK error code: ", i8));
        this.zza = i8;
    }

    public final int zza() {
        return this.zza;
    }
}
