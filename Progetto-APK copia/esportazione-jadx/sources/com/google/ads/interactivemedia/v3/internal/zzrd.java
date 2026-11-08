package com.google.ads.interactivemedia.v3.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class zzrd implements Iterator {
    final /* synthetic */ zzre zza;
    private int zzb;
    private int zzc = -1;
    private int zzd;
    private int zze;

    public zzrd(zzre zzreVar) {
        this.zza = zzreVar;
        this.zzb = zzreVar.zzb.zzi;
        zzrf zzrfVar = zzreVar.zzb;
        this.zzd = zzrfVar.zzd;
        this.zze = zzrfVar.zzc;
    }

    private final void zza() {
        if (this.zza.zzb.zzd != this.zzd) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zzb != -2 && this.zze > 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objZza = this.zza.zza(this.zzb);
        this.zzc = this.zzb;
        this.zzb = this.zza.zzb.zzl[this.zzb];
        this.zze--;
        return objZza;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zza();
        zzqh.zzi(this.zzc != -1, "no calls to next() since the last call to remove()");
        int i8 = this.zzc;
        zzrf zzrfVar = this.zza.zzb;
        zzrfVar.zzl(i8, zzrg.zzc(zzrfVar.zza[i8]));
        zzre zzreVar = this.zza;
        int i9 = this.zzb;
        zzrf zzrfVar2 = zzreVar.zzb;
        if (i9 == zzrfVar2.zzc) {
            this.zzb = this.zzc;
        }
        this.zzc = -1;
        this.zzd = zzrfVar2.zzd;
    }
}
