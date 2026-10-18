package com.google.ads.interactivemedia.v3.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzqz extends AbstractMap implements Serializable, zzqs {
    private final zzrf zza;
    private transient Set zzb;

    public zzqz(zzrf zzrfVar) {
        this.zza = zzrfVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.zza.containsValue(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.zzb;
        if (set != null) {
            return set;
        }
        zzra zzraVar = new zzra(this.zza);
        this.zzb = zzraVar;
        return zzraVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        int iZzc = zzrg.zzc(obj);
        zzrf zzrfVar = this.zza;
        int iZzd = zzrfVar.zzd(obj, iZzc);
        if (iZzd == -1) {
            return null;
        }
        return zzrfVar.zza[iZzd];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return this.zza.values();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.zza.zzh(obj, obj2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        int iZzc = zzrg.zzc(obj);
        zzrf zzrfVar = this.zza;
        int iZzd = zzrfVar.zzd(obj, iZzc);
        if (iZzd == -1) {
            return null;
        }
        Object obj2 = zzrfVar.zza[iZzd];
        zzrfVar.zzm(iZzd, iZzc);
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zza.zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Collection values() {
        return this.zza.keySet();
    }
}
