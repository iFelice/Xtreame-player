package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import com.google.ads.interactivemedia.v3.api.signals.SecureSignalsAdapter;
import p052g4.h;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
final class zzft {
    private final SecureSignalsAdapter zza;
    private final Context zzb;
    private final String zzc;
    private final i zzd = new i();

    public zzft(SecureSignalsAdapter secureSignalsAdapter, String str, Context context) {
        this.zza = secureSignalsAdapter;
        this.zzc = str;
        this.zzb = context;
    }

    public final h zzb() {
        i iVar = new i();
        this.zza.collectSignals(this.zzb, new zzfs(this, iVar));
        return iVar.f25345a;
    }

    public final h zzc() {
        this.zza.initialize(this.zzb, new zzfr(this));
        return this.zzd.f25345a;
    }

    public final String zze() {
        return this.zzc;
    }

    public final String zzf() {
        return this.zza.getVersion().toString();
    }
}
