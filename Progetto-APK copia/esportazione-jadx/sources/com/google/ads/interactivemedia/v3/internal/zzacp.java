package com.google.ads.interactivemedia.v3.internal;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class zzacp extends zzacq {
    final /* synthetic */ zzacw zza;
    private int zzb = 0;
    private final int zzc;

    public zzacp(zzacw zzacwVar) {
        this.zza = zzacwVar;
        this.zzc = zzacwVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacs
    public final byte zza() {
        int i8 = this.zzb;
        if (i8 >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i8 + 1;
        return this.zza.zzb(i8);
    }
}
