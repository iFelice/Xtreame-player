package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zztx extends zzty {
    final /* synthetic */ zztz zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zztx(zztz zztzVar, Callable callable, Executor executor) {
        super(zztzVar, executor);
        this.zza = zztzVar;
        this.zzc = callable;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final Object zza() {
        return this.zzc.call();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzus
    public final String zzb() {
        return this.zzc.toString();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzty
    public final void zzc(Object obj) {
        this.zza.zzc(obj);
    }
}
