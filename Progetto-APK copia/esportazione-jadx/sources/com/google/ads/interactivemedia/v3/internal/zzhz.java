package com.google.ads.interactivemedia.v3.internal;

import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public final class zzhz {
    protected volatile Boolean zzb;
    private final zzjj zze;
    private static final ConditionVariable zzc = new ConditionVariable();
    protected static volatile zzpj zza = null;
    private static volatile Random zzd = null;

    public zzhz(zzjj zzjjVar) {
        this.zze = zzjjVar;
        zzjjVar.zzk().execute(new zzhy(this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (zzd == null) {
                synchronized (zzhz.class) {
                    try {
                        if (zzd == null) {
                            zzd = new Random();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return zzd.nextInt();
        }
    }

    public final void zzc(int i8, int i9, long j8, String str, Exception exc) {
        try {
            zzc.block();
            if (!this.zzb.booleanValue() || zza == null) {
                return;
            }
            zzq zzqVarZza = zzv.zza();
            zzqVarZza.zza(this.zze.zza.getPackageName());
            zzqVarZza.zze(j8);
            if (str != null) {
                zzqVarZza.zzb(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                zzqVarZza.zzf(stringWriter.toString());
                zzqVarZza.zzd(exc.getClass().getName());
            }
            zzpi zzpiVarZza = zza.zza(((zzv) zzqVarZza.zzal()).zzav());
            zzpiVarZza.zza(i8);
            if (i9 != -1) {
                zzpiVarZza.zzb(i9);
            }
            zzpiVarZza.zzc();
        } catch (Exception unused) {
        }
    }
}
