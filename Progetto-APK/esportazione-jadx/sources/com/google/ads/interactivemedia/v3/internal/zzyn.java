package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzyn extends zzwj {
    public static final zzwk zza = new zzym();
    private final Class zzb;
    private final zzwj zzc;

    public zzyn(zzvr zzvrVar, zzwj zzwjVar, Class cls) {
        this.zzc = new zzzw(zzvrVar, zzwjVar, cls);
        this.zzb = cls;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final Object read(zzacc zzaccVar) throws IOException {
        if (zzaccVar.zzr() == 9) {
            zzaccVar.zzm();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        zzaccVar.zzi();
        while (zzaccVar.zzp()) {
            arrayList.add(this.zzc.read(zzaccVar));
        }
        zzaccVar.zzk();
        int size = arrayList.size();
        if (!this.zzb.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) this.zzb, size));
        }
        Object objNewInstance = Array.newInstance((Class<?>) this.zzb, size);
        for (int i8 = 0; i8 < size; i8++) {
            Array.set(objNewInstance, i8, arrayList.get(i8));
        }
        return objNewInstance;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final void write(zzace zzaceVar, Object obj) throws IOException {
        if (obj == null) {
            zzaceVar.zzg();
            return;
        }
        zzaceVar.zzb();
        int length = Array.getLength(obj);
        for (int i8 = 0; i8 < length; i8++) {
            this.zzc.write(zzaceVar, Array.get(obj, i8));
        }
        zzaceVar.zzd();
    }
}
