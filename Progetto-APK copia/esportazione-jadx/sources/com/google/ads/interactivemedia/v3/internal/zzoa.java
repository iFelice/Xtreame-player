package com.google.ads.interactivemedia.v3.internal;

import J3.b;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzoa implements InterfaceC0626b, InterfaceC0627c {
    protected final zzoo zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue zzd;
    private final HandlerThread zze;

    public zzoa(Context context, String str, String str2) {
        this.zzb = str;
        this.zzc = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.zze = handlerThread;
        handlerThread.start();
        zzoo zzooVar = new zzoo(context, handlerThread.getLooper(), this, this, 9200000);
        this.zza = zzooVar;
        this.zzd = new LinkedBlockingQueue();
        zzooVar.checkAvailabilityAndConnect();
    }

    public static zzbp zza() {
        zzan zzanVarZza = zzbp.zza();
        zzanVarZza.zzD(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        return (zzbp) zzanVarZza.zzal();
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        zzot zzotVarZzd = zzd();
        if (zzotVarZzd != null) {
            try {
                try {
                    this.zzd.put(zzotVarZzd.zze(new zzop(this.zzb, this.zzc)).zza());
                } catch (InterruptedException unused) {
                } finally {
                    zzc();
                    this.zze.quit();
                }
            } catch (Throwable unused2) {
                this.zzd.put(zza());
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(b bVar) {
        try {
            this.zzd.put(zza());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        try {
            this.zzd.put(zza());
        } catch (InterruptedException unused) {
        }
    }

    public final zzbp zzb(int i8) {
        zzbp zzbpVar;
        try {
            zzbpVar = (zzbp) this.zzd.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzbpVar = null;
        }
        return zzbpVar == null ? zza() : zzbpVar;
    }

    public final void zzc() {
        zzoo zzooVar = this.zza;
        if (zzooVar != null) {
            if (zzooVar.isConnected() || this.zza.isConnecting()) {
                this.zza.disconnect();
            }
        }
    }

    public final zzot zzd() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }
}
