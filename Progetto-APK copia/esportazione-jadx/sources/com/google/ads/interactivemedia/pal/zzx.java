package com.google.ads.interactivemedia.pal;

import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.R2;
import com.google.android.gms.internal.pal.Z2;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class zzx {
    static final boolean zza;
    private final zzs zzb;
    private final boolean zzc;

    static {
        zza = new Random().nextInt(100) <= 0;
    }

    public zzx(zzs zzsVar, boolean z7) {
        this.zzb = zzsVar;
        this.zzc = z7;
    }

    public final void zza(int i8) {
        if (this.zzc) {
            String strZza = zzu.ERROR_CODE.zza();
            String strValueOf = String.valueOf(i8);
            AbstractC2864y4.t(strZza, strValueOf);
            this.zzb.zza("pal_native", zzt.ERROR_EVENT.zza(), Z2.b(1, new Object[]{strZza, strValueOf}, null));
        }
    }

    public final void zzb(zzw zzwVar) {
        if (this.zzc) {
            R2 r7 = new R2();
            r7.a(zzu.NONCE_LOADER_INIT_TIME.zza(), String.valueOf(zzwVar.zzc().f23477G));
            r7.a(zzu.NONCE_REQUESTED_TIME.zza(), String.valueOf(zzwVar.zzd().f23477G));
            r7.a(zzu.NONCE_LOADED_TIME.zza(), String.valueOf(zzwVar.zzb().f23477G));
            r7.a(zzu.SERVICE_START_TIME.zza(), String.valueOf(zzwVar.zzf().f23477G));
            r7.a(zzu.SERVICE_END_TIME.zza(), String.valueOf(zzwVar.zze().f23477G));
            r7.a(zzu.NONCE_LENGTH.zza(), String.valueOf(zzwVar.zza()));
            this.zzb.zza("pal_native", zzt.NONCE_LOADED.zza(), r7.c());
        }
    }
}
