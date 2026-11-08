package com.google.ads.interactivemedia.pal;

import com.google.android.gms.internal.pal.R2;

/* JADX INFO: loaded from: classes.dex */
public final class zzax {
    private final zzs zza;
    private final String zzb;

    public zzax(zzs zzsVar, String str) {
        this.zza = zzsVar;
        this.zzb = str;
    }

    public final void zza(int i8, String str) {
        if (str == null) {
            str = "null";
        }
        R2 r7 = new R2();
        r7.a(zzaw.DEVICE_TYPE.zza(), String.valueOf(4));
        r7.a(zzaw.EVENT_TYPE.zza(), String.valueOf(i8 - 1));
        r7.a(zzaw.SPAM_CORRELATOR.zza(), this.zzb);
        r7.a(zzaw.SPAM_SIGNAL.zza(), str);
        this.zza.zza("asscs", "116", r7.c());
    }
}
