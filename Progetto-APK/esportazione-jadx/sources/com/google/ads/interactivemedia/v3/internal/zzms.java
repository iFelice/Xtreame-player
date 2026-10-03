package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzms {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicReference zzb = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    public static zzmq zza() {
        return (zzmq) zza.get();
    }

    public static zzmr zzb() {
        return (zzmr) zzb.get();
    }

    public static void zzc(zzmq zzmqVar) {
        zza.set(zzmqVar);
    }
}
