package com.google.ads.interactivemedia.v3.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzlw extends zzma {
    public zzlw(int i8, String str, Long l4, Long l8) {
        super(1, str, l4, l8, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzma
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(zzj(), ((Long) zzi()).longValue()));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzma
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzj())) ? Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(zzj()))) : (Long) zzi();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzma
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(zzj(), ((Long) zzi()).longValue()));
    }
}
