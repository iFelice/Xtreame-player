package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.Executor;
import p052g4.b;
import p052g4.h;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
public final class zznt {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzf = 1;
    private final Context zzb;
    private final Executor zzc;
    private final h zzd;
    private final boolean zze;

    public zznt(Context context, Executor executor, h hVar, boolean z7) {
        this.zzb = context;
        this.zzc = executor;
        this.zzd = hVar;
        this.zze = z7;
    }

    public static zznt zza(final Context context, Executor executor, boolean z7) {
        final i iVar = new i();
        if (z7) {
            executor.execute(new Runnable() { // from class: com.google.ads.interactivemedia.v3.internal.zznr
                @Override // java.lang.Runnable
                public final void run() {
                    iVar.b(zzpj.zzb(context, "GLAS", null));
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.ads.interactivemedia.v3.internal.zzns
                @Override // java.lang.Runnable
                public final void run() {
                    iVar.b(zzpj.zzc());
                }
            });
        }
        return new zznt(context, executor, iVar.f25345a, z7);
    }

    public static void zzg(int i8) {
        zzf = i8;
    }

    private final h zzh(final int i8, long j8, Exception exc, String str, Map map, String str2) {
        if (!this.zze) {
            return this.zzd.d(this.zzc, new b() { // from class: com.google.ads.interactivemedia.v3.internal.zznp
                @Override // p052g4.b
                public final Object then(h hVar) {
                    return Boolean.valueOf(hVar.h());
                }
            });
        }
        Context context = this.zzb;
        final zzq zzqVarZza = zzv.zza();
        zzqVarZza.zza(context.getPackageName());
        zzqVarZza.zze(j8);
        zzqVarZza.zzg(zzf);
        if (exc != null) {
            zzqVarZza.zzf(zzqo.zza(exc));
            zzqVarZza.zzd(exc.getClass().getName());
        }
        if (str2 != null) {
            zzqVarZza.zzb(str2);
        }
        if (str != null) {
            zzqVarZza.zzc(str);
        }
        return this.zzd.d(this.zzc, new b() { // from class: com.google.ads.interactivemedia.v3.internal.zznq
            @Override // p052g4.b
            public final Object then(h hVar) {
                if (!hVar.h()) {
                    return Boolean.FALSE;
                }
                int i9 = i8;
                zzpi zzpiVarZza = ((zzpj) hVar.f()).zza(((zzv) zzqVarZza.zzal()).zzav());
                zzpiVarZza.zza(i9);
                zzpiVarZza.zzc();
                return Boolean.TRUE;
            }
        });
    }

    public final h zzb(int i8, String str) {
        return zzh(i8, 0L, null, null, null, str);
    }

    public final h zzc(int i8, long j8, Exception exc) {
        return zzh(i8, j8, exc, null, null, null);
    }

    public final h zzd(int i8, long j8) {
        return zzh(i8, j8, null, null, null, null);
    }

    public final h zze(int i8, long j8, String str) {
        return zzh(i8, j8, null, null, null, str);
    }

    public final h zzf(int i8, long j8, String str, Map map) {
        return zzh(i8, j8, null, str, null, null);
    }
}
