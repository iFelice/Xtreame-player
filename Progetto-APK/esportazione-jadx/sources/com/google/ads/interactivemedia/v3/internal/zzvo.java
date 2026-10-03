package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
final class zzvo extends zzwj {
    final /* synthetic */ zzwj zza;

    public zzvo(zzwj zzwjVar) {
        this.zza = zzwjVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) {
        return new AtomicLong(((Number) this.zza.read(zzaccVar)).longValue());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) {
        this.zza.write(zzaceVar, Long.valueOf(((AtomicLong) obj).get()));
    }
}
