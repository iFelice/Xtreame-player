package com.google.ads.interactivemedia.v3.internal;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class zzpi {
    final /* synthetic */ zzpj zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzpi(zzpj zzpjVar, byte[] bArr, zzph zzphVar) {
        this.zza = zzpjVar;
        this.zzb = bArr;
    }

    public final zzpi zza(int i8) {
        this.zzd = i8;
        return this;
    }

    public final zzpi zzb(int i8) {
        this.zzc = i8;
        return this;
    }

    public final synchronized void zzc() {
        try {
            zzpj zzpjVar = this.zza;
            if (zzpjVar.zzb) {
                zzpjVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(this.zzc);
                this.zza.zza.zzg(this.zzd);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            }
        } catch (RemoteException e8) {
            Log.d("GASS", "Clearcut log failed", e8);
        }
    }
}
