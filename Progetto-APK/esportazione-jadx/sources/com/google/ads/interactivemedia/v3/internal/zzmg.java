package com.google.ads.interactivemedia.v3.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
final class zzmg implements zzmq {
    final /* synthetic */ SharedPreferences zza;

    public zzmg(zzmh zzmhVar, SharedPreferences sharedPreferences) {
        this.zza = sharedPreferences;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzmq
    public final Boolean zza(String str, boolean z7) {
        try {
            return Boolean.valueOf(this.zza.getBoolean(str, z7));
        } catch (ClassCastException unused) {
            return Boolean.valueOf(this.zza.getString(str, String.valueOf(z7)));
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzmq
    public final Long zzb(String str, long j8) {
        try {
            return Long.valueOf(this.zza.getLong(str, j8));
        } catch (ClassCastException unused) {
            return Long.valueOf(this.zza.getInt(str, (int) j8));
        }
    }
}
