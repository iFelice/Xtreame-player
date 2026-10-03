package com.google.ads.interactivemedia.v3.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzro {
    Object[] zza;
    int zzb;
    zzrn zzc;

    public zzro() {
        this(4);
    }

    private final void zzd(int i8) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i9 = i8 + i8;
        if (i9 > length) {
            this.zza = Arrays.copyOf(objArr, zzrh.zza(length, i9));
        }
    }

    public final zzro zza(Object obj, Object obj2) {
        zzd(this.zzb + 1);
        zzqt.zzb(obj, obj2);
        Object[] objArr = this.zza;
        int i8 = this.zzb;
        int i9 = i8 + i8;
        objArr[i9] = obj;
        objArr[i9 + 1] = obj2;
        this.zzb = i8 + 1;
        return this;
    }

    public final zzro zzb(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzd(((Collection) iterable).size() + this.zzb);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzrp zzc() {
        zzrn zzrnVar = this.zzc;
        if (zzrnVar != null) {
            throw zzrnVar.zza();
        }
        zzsj zzsjVarZzl = zzsj.zzl(this.zzb, this.zza, this);
        zzrn zzrnVar2 = this.zzc;
        if (zzrnVar2 == null) {
            return zzsjVarZzl;
        }
        throw zzrnVar2.zza();
    }

    public zzro(int i8) {
        this.zza = new Object[i8 + i8];
        this.zzb = 0;
    }
}
