package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: loaded from: classes.dex */
final class zzzx extends zzwj {
    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        zzaccVar.zzi();
        while (zzaccVar.zzp()) {
            try {
                arrayList.add(Integer.valueOf(zzaccVar.zzb()));
            } catch (NumberFormatException e8) {
                throw new zzwe(e8);
            }
        }
        zzaccVar.zzk();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i8 = 0; i8 < size; i8++) {
            atomicIntegerArray.set(i8, ((Integer) arrayList.get(i8)).intValue());
        }
        return atomicIntegerArray;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
        zzaceVar.zzb();
        int length = atomicIntegerArray.length();
        for (int i8 = 0; i8 < length; i8++) {
            zzaceVar.zzi(atomicIntegerArray.get(i8));
        }
        zzaceVar.zzd();
    }
}
