package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzkh extends zzkx {
    private final zzjb zzh;

    public zzkh(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9, zzjb zzjbVar) {
        super(zzjjVar, "Fus2TIottASqUG+EGDCyGO+axdDK4SxdbOtAeYlmTQFyRNCoSHhhJulqJwIS8hGd", "ll+J41g6Bvm1JCdBcQ1AcuCOT9Ou/f0f9V5bVMwdM4A=", zzanVar, i8, 94);
        this.zzh = zzjbVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        int iIntValue = ((Integer) this.zze.invoke(null, this.zzh.zza())).intValue();
        synchronized (this.zzd) {
            this.zzd.zzae(zzbc.zza(iIntValue));
        }
    }
}
