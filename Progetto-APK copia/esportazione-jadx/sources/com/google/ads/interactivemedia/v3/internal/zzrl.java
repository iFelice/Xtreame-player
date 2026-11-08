package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzrl extends zzrm {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzrm zzc;

    public zzrl(zzrm zzrmVar, int i8, int i9) {
        this.zzc = zzrmVar;
        this.zza = i8;
        this.zzb = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        zzqh.zza(i8, this.zzb, "index");
        return this.zzc.get(i8 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrm, java.util.List
    /* JADX INFO: renamed from: zzi */
    public final zzrm subList(int i8, int i9) {
        zzqh.zzh(i8, i9, this.zzb);
        int i10 = this.zza;
        return this.zzc.subList(i8 + i10, i9 + i10);
    }
}
