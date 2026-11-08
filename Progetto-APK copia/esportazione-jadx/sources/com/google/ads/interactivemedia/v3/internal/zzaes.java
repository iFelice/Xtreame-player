package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzaes implements zzaez {
    private final zzaez[] zza;

    public zzaes(zzaez... zzaezVarArr) {
        this.zza = zzaezVarArr;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaez
    public final zzaey zzb(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            zzaez zzaezVar = this.zza[i8];
            if (zzaezVar.zzc(cls)) {
                return zzaezVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzaez
    public final boolean zzc(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            if (this.zza[i8].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
