package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes.dex */
final class zzvp extends zzwj {
    final /* synthetic */ zzwj zza;

    public zzvp(zzwj zzwjVar) {
        this.zza = zzwjVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ Object read(zzacc zzaccVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        zzaccVar.zzi();
        while (zzaccVar.zzp()) {
            arrayList.add(Long.valueOf(((Number) this.zza.read(zzaccVar)).longValue()));
        }
        zzaccVar.zzk();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i8 = 0; i8 < size; i8++) {
            atomicLongArray.set(i8, ((Long) arrayList.get(i8)).longValue());
        }
        return atomicLongArray;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final /* bridge */ /* synthetic */ void write(zzace zzaceVar, Object obj) throws IOException {
        AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
        zzaceVar.zzb();
        int length = atomicLongArray.length();
        for (int i8 = 0; i8 < length; i8++) {
            this.zza.write(zzaceVar, Long.valueOf(atomicLongArray.get(i8)));
        }
        zzaceVar.zzd();
    }
}
