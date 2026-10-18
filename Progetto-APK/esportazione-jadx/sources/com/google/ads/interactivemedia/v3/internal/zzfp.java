package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.os.Build;
import com.google.ads.interactivemedia.pal.PlatformSignalCollector;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.android.gms.internal.ads.Cw;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import p021c4.A;
import p052g4.e;
import p052g4.f;
import p052g4.h;
import p052g4.i;
import p052g4.j;
import p052g4.q;
import p052g4.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzfp {
    private final Context zza;
    private final ExecutorService zzb;
    private final PlatformSignalCollector zzc;
    private final zzfd zzd;
    private final i zze;

    public zzfp(Context context, ExecutorService executorService, zzfd zzfdVar, TestingConfiguration testingConfiguration) {
        A a8 = null;
        if (Build.VERSION.SDK_INT >= 26 && zzel.zzc(context, testingConfiguration)) {
            a8 = new A(25);
        }
        this.zze = new i();
        this.zza = context;
        this.zzb = executorService;
        this.zzd = zzfdVar;
        this.zzc = a8;
    }

    public final h zza() {
        return this.zze.f25345a;
    }

    public final void zzb(Integer num) {
        PlatformSignalCollector platformSignalCollector = this.zzc;
        if (platformSignalCollector == null || num == null) {
            this.zze.b(null);
            return;
        }
        r rVarQ = Cw.q(platformSignalCollector.collectSignals(this.zza, this.zzb), num.intValue(), TimeUnit.MILLISECONDS);
        final i iVar = this.zze;
        Objects.requireNonNull(iVar);
        f fVar = new f() { // from class: com.google.ads.interactivemedia.v3.internal.zzfn
            @Override // p052g4.f
            public final void onSuccess(Object obj) {
                iVar.b((Map) obj);
            }
        };
        rVarQ.getClass();
        q qVar = j.f25346a;
        rVarQ.c(qVar, fVar);
        rVarQ.b(qVar, new e() { // from class: com.google.ads.interactivemedia.v3.internal.zzfo
            @Override // p052g4.e
            public final void onFailure(Exception exc) {
                this.zza.zzc(exc);
            }
        });
    }

    public final /* synthetic */ void zzc(Exception exc) {
        this.zzd.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.PLATFORM_SIGNAL_COLLECTOR, com.google.ads.interactivemedia.v3.impl.data.zzbq.PLATFORM_COLLECT_SIGNALS, exc);
        this.zze.a(exc);
    }
}
