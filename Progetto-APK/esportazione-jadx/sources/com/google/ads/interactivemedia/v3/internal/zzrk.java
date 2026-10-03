package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzrk extends zzrm {
    private final transient zzrm zza;

    public zzrk(zzrm zzrmVar) {
        this.zza = zzrmVar;
    }

    private final int zzo(int i8) {
        return (this.zza.size() - 1) - i8;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm, com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i8) {
        zzqh.zza(i8, this.zza.size(), "index");
        return this.zza.get(zzo(i8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm, java.util.List
    public final int indexOf(Object obj) {
        int iLastIndexOf = this.zza.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return zzo(iLastIndexOf);
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm, java.util.List
    public final int lastIndexOf(Object obj) {
        int iIndexOf = this.zza.indexOf(obj);
        if (iIndexOf >= 0) {
            return zzo(iIndexOf);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm
    public final zzrm zzh() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm, java.util.List
    /* JADX INFO: renamed from: zzi */
    public final zzrm subList(int i8, int i9) {
        zzqh.zzh(i8, i9, this.zza.size());
        zzrm zzrmVar = this.zza;
        return zzrmVar.subList(zzrmVar.size() - i9, this.zza.size() - i8).zzh();
    }
}
