package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzxx implements Map.Entry {
    zzxx zza;
    zzxx zzb;
    zzxx zzc;
    zzxx zzd;
    zzxx zze;
    final Object zzf;
    final boolean zzg;
    Object zzh;
    int zzi;

    public zzxx(boolean z7) {
        this.zzf = null;
        this.zzg = z7;
        this.zze = this;
        this.zzd = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.zzf;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.zzh;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zzf;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzh;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.zzf;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.zzh;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.zzg) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.zzh;
        this.zzh = obj;
        return obj2;
    }

    public final String toString() {
        return U2.l(String.valueOf(this.zzf), "=", String.valueOf(this.zzh));
    }

    public zzxx(boolean z7, zzxx zzxxVar, Object obj, zzxx zzxxVar2, zzxx zzxxVar3) {
        this.zza = zzxxVar;
        this.zzf = obj;
        this.zzg = z7;
        this.zzi = 1;
        this.zzd = zzxxVar2;
        this.zze = zzxxVar3;
        zzxxVar3.zzd = this;
        zzxxVar2.zze = this;
    }
}
