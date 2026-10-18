package com.google.ads.interactivemedia.v3.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzma {
    private final int zza;
    private final String zzb;
    private final Object zzc;
    private final Object zzd;

    public /* synthetic */ zzma(int i8, String str, Object obj, Object obj2, zzlz zzlzVar) {
        this.zza = i8;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        zzls.zza().zzb(this);
    }

    public static zzma zze(int i8, String str, float f8, float f9) {
        return new zzlx(1, str, Float.valueOf(f8), Float.valueOf(f9));
    }

    public static zzma zzf(int i8, String str, int i9, int i10) {
        return new zzlv(1, str, Integer.valueOf(i9), Integer.valueOf(i10));
    }

    public static zzma zzg(int i8, String str, long j8, long j9) {
        return new zzlw(1, str, Long.valueOf(j8), Long.valueOf(j9));
    }

    public static zzma zzh(int i8, String str) {
        zzly zzlyVar = new zzly(1, "gads:sdk_core_constants:experiment_id", null, null);
        zzls.zza().zza(zzlyVar);
        return zzlyVar;
    }

    public abstract Object zza(JSONObject jSONObject);

    public abstract Object zzb(Bundle bundle);

    public abstract Object zzc(SharedPreferences sharedPreferences);

    public final int zzd() {
        return this.zza;
    }

    public final Object zzi() {
        return zzls.zzc().zzd() ? this.zzd : this.zzc;
    }

    public final String zzj() {
        return this.zzb;
    }
}
