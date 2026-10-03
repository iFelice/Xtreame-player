package com.google.ads.interactivemedia.v3.internal;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzuz extends zztg.zzi implements Runnable {
    private final Runnable zza;

    public zzuz(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final String zza() {
        return r.g("task=[", this.zza.toString(), "]");
    }
}
