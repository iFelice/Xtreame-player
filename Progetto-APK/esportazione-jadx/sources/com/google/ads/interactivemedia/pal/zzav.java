package com.google.ads.interactivemedia.pal;

import android.os.Handler;
import com.google.android.gms.internal.pal.A0;

/* JADX INFO: loaded from: classes.dex */
public final class zzav {
    private final Handler zza;
    private final A0 zzb;
    private Runnable zzc;

    public zzav(Handler handler, A0 a8) {
        this.zza = handler;
        this.zzb = a8;
    }

    public final void finalize() throws Throwable {
        zzd();
        super.finalize();
    }

    public final void zzc(Runnable runnable) {
        if (this.zzc != null) {
            return;
        }
        zzau zzauVar = new zzau(this, runnable);
        this.zzc = zzauVar;
        this.zza.postDelayed(zzauVar, this.zzb.f23477G);
    }

    public final void zzd() {
        Runnable runnable = this.zzc;
        if (runnable == null) {
            return;
        }
        this.zza.removeCallbacks(runnable);
        this.zzc = null;
    }
}
