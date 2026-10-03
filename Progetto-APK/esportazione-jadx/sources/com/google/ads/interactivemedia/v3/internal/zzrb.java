package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzrb extends zzre {
    final /* synthetic */ zzrf zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzrb(zzrf zzrfVar) {
        super(zzrfVar);
        this.zza = zzrfVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzrf zzrfVar = this.zza;
        int iZzc = zzrg.zzc(obj);
        int iZzc2 = zzrfVar.zzc(obj, iZzc);
        if (iZzc2 == -1) {
            return false;
        }
        this.zza.zzl(iZzc2, iZzc);
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzre
    public final Object zza(int i8) {
        return this.zza.zza[i8];
    }
}
