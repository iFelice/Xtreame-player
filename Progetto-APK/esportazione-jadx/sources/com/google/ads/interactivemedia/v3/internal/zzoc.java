package com.google.ads.interactivemedia.v3.internal;

import J3.b;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzoc implements InterfaceC0626b, InterfaceC0627c {
    protected final zzoo zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue zzd;
    private final HandlerThread zze;
    private final zznt zzf;
    private final long zzg;
    private final int zzh;

    public zzoc(Context context, int i8, int i9, String str, String str2, String str3, zznt zzntVar) {
        this.zzb = str;
        this.zzh = i9;
        this.zzc = str2;
        this.zzf = zzntVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zze = handlerThread;
        handlerThread.start();
        this.zzg = System.currentTimeMillis();
        zzoo zzooVar = new zzoo(context, handlerThread.getLooper(), this, this, 19621000);
        this.zza = zzooVar;
        this.zzd = new LinkedBlockingQueue();
        zzooVar.checkAvailabilityAndConnect();
    }

    private final void zzd(int i8, long j8, Exception exc) {
        this.zzf.zzc(i8, System.currentTimeMillis() - j8, exc);
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        zzot zzotVarZzc = zzc();
        if (zzotVarZzc != null) {
            try {
                zzpa zzpaVarZzf = zzotVarZzc.zzf(new zzoy(1, this.zzh, this.zzb, this.zzc));
                zzd(5011, this.zzg, null);
                this.zzd.put(zzpaVarZzf);
            } catch (Throwable th) {
                try {
                    zzd(2010, this.zzg, new Exception(th));
                } finally {
                    zzb();
                    this.zze.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(b bVar) {
        try {
            zzd(4012, this.zzg, null);
            this.zzd.put(new zzpa(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        try {
            zzd(4011, this.zzg, null);
            this.zzd.put(new zzpa(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    public final zzpa zza(int i8) {
        zzpa zzpaVar;
        try {
            zzpaVar = (zzpa) this.zzd.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e8) {
            zzd(2009, this.zzg, e8);
            zzpaVar = null;
        }
        zzd(3004, this.zzg, null);
        if (zzpaVar != null) {
            if (zzpaVar.zzc == 7) {
                zznt.zzg(3);
            } else {
                zznt.zzg(2);
            }
        }
        return zzpaVar == null ? new zzpa(null, 1) : zzpaVar;
    }

    public final void zzb() {
        zzoo zzooVar = this.zza;
        if (zzooVar != null) {
            if (zzooVar.isConnected() || this.zza.isConnecting()) {
                this.zza.disconnect();
            }
        }
    }

    public final zzot zzc() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }
}
