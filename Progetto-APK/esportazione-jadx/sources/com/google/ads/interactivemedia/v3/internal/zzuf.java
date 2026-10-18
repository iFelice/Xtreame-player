package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzuf extends zzud implements zzuu {
    @Override // com.google.ads.interactivemedia.v3.internal.zzud
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    public abstract zzuu zzc();

    @Override // com.google.ads.interactivemedia.v3.internal.zzuu
    public final void zzo(Runnable runnable, Executor executor) {
        zzc().zzo(runnable, executor);
    }
}
