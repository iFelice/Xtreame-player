package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzvq<T> extends zzzr<T> {
    private zzwj zza = null;

    private final zzwj zzc() {
        zzwj zzwjVar = this.zza;
        if (zzwjVar != null) {
            return zzwjVar;
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final T read(zzacc zzaccVar) {
        return (T) zzc().read(zzaccVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwj
    public final void write(zzace zzaceVar, T t7) {
        zzc().write(zzaceVar, t7);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzzr
    public final zzwj zza() {
        return zzc();
    }

    public final void zzb(zzwj zzwjVar) {
        if (this.zza != null) {
            throw new AssertionError("Delegate is already set");
        }
        this.zza = zzwjVar;
    }
}
