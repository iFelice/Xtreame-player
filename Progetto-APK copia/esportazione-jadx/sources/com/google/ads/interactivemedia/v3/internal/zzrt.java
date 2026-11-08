package com.google.ads.interactivemedia.v3.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzrt extends zzrq {
    final /* synthetic */ zzru zza;

    public zzrt(zzru zzruVar) {
        this.zza = zzruVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri
    /* JADX INFO: renamed from: zze */
    public final zzss iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrq
    public final zzrp zzh() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr
    public final zzrm zzk() {
        return new zzrs(this);
    }
}
