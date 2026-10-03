package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzet implements zzeu {
    private final com.google.ads.interactivemedia.v3.impl.zzba zza;
    private final Context zzb;
    private final ExecutorService zzc;
    private final zzes zze;
    private final zzfd zzf;
    private Future zzd = null;
    private SharedPreferences.OnSharedPreferenceChangeListener zzg = null;

    public zzet(com.google.ads.interactivemedia.v3.impl.zzba zzbaVar, Context context, ExecutorService executorService, zzes zzesVar, zzfd zzfdVar) {
        this.zza = zzbaVar;
        this.zzb = context;
        this.zzc = executorService;
        this.zze = zzesVar;
        this.zzf = zzfdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Future zzf() {
        if (!this.zze.zzb) {
            return zzuk.zzb(Boolean.FALSE);
        }
        return zzuk.zzc(this.zza.zzd(zza()), new zzpz() { // from class: com.google.ads.interactivemedia.v3.internal.zzeq
            @Override // com.google.ads.interactivemedia.v3.internal.zzpz
            public final Object zza(Object obj) {
                return (Boolean) ((zzqf) obj).zza(new zzpz() { // from class: com.google.ads.interactivemedia.v3.internal.zzep
                    @Override // com.google.ads.interactivemedia.v3.internal.zzpz
                    public final Object zza(Object obj2) {
                        return Boolean.valueOf(Boolean.parseBoolean((String) obj2));
                    }
                }).zzc(Boolean.TRUE);
            }
        }, this.zzc);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:13:0x005c  */
    public final Map zza() {
        HashMap map = new HashMap();
        Context context = this.zzb;
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        if (sharedPreferences != null) {
            zzss it = this.zze.zzc.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (sharedPreferences.contains(str)) {
                    try {
                        str2.getClass();
                        switch (str2) {
                            case "Number":
                                map.put(str, String.valueOf(sharedPreferences.getInt(str, -1)));
                                break;
                            case "String":
                                map.put(str, sharedPreferences.getString(str, HttpUrl.FRAGMENT_ENCODE_SET));
                                break;
                            case "Boolean":
                                map.put(str, String.valueOf(sharedPreferences.getBoolean(str, false)));
                                break;
                        }
                    } catch (ClassCastException e8) {
                        this.zzf.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.IDENTITY_MANAGER, com.google.ads.interactivemedia.v3.impl.data.zzbq.GET_CONSENT_SETTINGS, e8);
                    }
                }
            }
        }
        return map;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzeu
    public final Future zzc() {
        if (this.zzd == null) {
            this.zzf.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.IDENTITY_MANAGER, com.google.ads.interactivemedia.v3.impl.data.zzbq.GET_IDLESS_STATE, new IllegalStateException("idLessState must be defined"));
            zze();
        }
        return this.zzd;
    }

    public final void zze() {
        this.zzd = zzf();
        Context applicationContext = this.zzb.getApplicationContext();
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(applicationContext.getPackageName() + "_preferences", 0);
        zzer zzerVar = new zzer(this);
        this.zzg = zzerVar;
        sharedPreferences.registerOnSharedPreferenceChangeListener(zzerVar);
    }
}
