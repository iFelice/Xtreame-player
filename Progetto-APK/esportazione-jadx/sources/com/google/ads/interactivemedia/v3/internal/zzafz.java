package com.google.ads.interactivemedia.v3.internal;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzafz implements Iterator {
    final /* synthetic */ zzagd zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    public /* synthetic */ zzafz(zzagd zzagdVar, zzafy zzafyVar) {
        this.zza = zzagdVar;
    }

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzc.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8 = this.zzb + 1;
        zzagd zzagdVar = this.zza;
        if (i8 >= zzagdVar.zzb) {
            return !zzagdVar.zzc.isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.zzc = true;
        int i8 = this.zzb + 1;
        this.zzb = i8;
        zzagd zzagdVar = this.zza;
        return i8 < zzagdVar.zzb ? (zzafx) zzagdVar.zza[i8] : (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzc = false;
        this.zza.zzo();
        int i8 = this.zzb;
        zzagd zzagdVar = this.zza;
        if (i8 >= zzagdVar.zzb) {
            zza().remove();
        } else {
            this.zzb = i8 - 1;
            zzagdVar.zzm(i8);
        }
    }
}
