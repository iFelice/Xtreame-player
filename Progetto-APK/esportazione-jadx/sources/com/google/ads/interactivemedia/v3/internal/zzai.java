package com.google.ads.interactivemedia.v3.internal;

import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;

/* JADX INFO: loaded from: classes.dex */
public final class zzai extends zzady implements zzafc {
    private static final zzai zzb;
    private int zzd;
    private boolean zze;
    private int zzf = DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT;
    private boolean zzg;
    private boolean zzh;

    static {
        zzai zzaiVar = new zzai();
        zzb = zzaiVar;
        zzady.zzaM(zzai.class, zzaiVar);
    }

    private zzai() {
    }

    public static zzah zzb() {
        return (zzah) zzb.zzay();
    }

    public static zzai zzd() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzai zzaiVar, boolean z7) {
        zzaiVar.zzd |= 1;
        zzaiVar.zze = true;
    }

    public final int zza() {
        return this.zzf;
    }

    public final boolean zzf() {
        return this.zze;
    }

    public final boolean zzg() {
        return this.zzh;
    }

    public final boolean zzh() {
        return this.zzg;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0004\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001ဇ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new zzai();
        }
        zzag zzagVar = null;
        if (i9 == 4) {
            return new zzah(zzagVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
