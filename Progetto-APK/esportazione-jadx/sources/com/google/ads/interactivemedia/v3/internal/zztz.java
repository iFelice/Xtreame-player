package com.google.ads.interactivemedia.v3.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zztz extends zztq {
    private zzty zza;

    public zztz(zzri zzriVar, boolean z7, Executor executor, Callable callable) {
        super(zzriVar, false, false);
        this.zza = new zztx(this, callable, executor);
        zzt();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztg
    public final void zzp() {
        zzty zztyVar = this.zza;
        if (zztyVar != null) {
            zztyVar.zzh();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztq
    public final void zzs() {
        zzty zztyVar = this.zza;
        if (zztyVar != null) {
            zztyVar.zzf();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zztq
    public final void zzv(int i8) {
        super.zzv(i8);
        if (i8 == 1) {
            this.zza = null;
        }
    }
}
