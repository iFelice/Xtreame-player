package com.google.ads.interactivemedia.v3.internal;

import J3.j;
import Q3.c;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzmh implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    volatile boolean zza = false;
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();
    private boolean zzi = false;
    private boolean zzj = false;

    private final void zze(final SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return;
        }
        try {
            this.zzh = new JSONObject((String) zzmk.zza(new zzqn() { // from class: com.google.ads.interactivemedia.v3.internal.zzme
                @Override // com.google.ads.interactivemedia.v3.internal.zzqn
                public final Object zza() {
                    return sharedPreferences.getString("flag_configuration", "{}");
                }
            }));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zze(sharedPreferences);
        }
    }

    public final Object zza(final zzma zzmaVar) {
        if (!this.zzc.block(5000L)) {
            synchronized (this.zzb) {
                try {
                    if (!this.zza) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (!this.zzd || this.zze == null || this.zzj) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null && !this.zzj) {
                }
                return zzmaVar.zzi();
            }
        }
        if (zzmaVar.zzd() != 2) {
            return (zzmaVar.zzd() == 1 && this.zzh.has(zzmaVar.zzj())) ? zzmaVar.zza(this.zzh) : zzmk.zza(new zzqn() { // from class: com.google.ads.interactivemedia.v3.internal.zzmf
                @Override // com.google.ads.interactivemedia.v3.internal.zzqn
                public final Object zza() {
                    return this.zza.zzb(zzmaVar);
                }
            });
        }
        Bundle bundle = this.zzf;
        return bundle == null ? zzmaVar.zzi() : zzmaVar.zzb(bundle);
    }

    public final /* synthetic */ Object zzb(zzma zzmaVar) {
        return zzmaVar.zzc(this.zze);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0122 A[Catch: all -> 0x000e, TRY_ENTER, TryCatch #2 {all -> 0x000e, blocks: (B:7:0x0008, B:9:0x000c, B:13:0x0011, B:15:0x0016, B:16:0x0018, B:18:0x002a, B:19:0x002e, B:20:0x0030, B:42:0x009e, B:43:0x00a5, B:52:0x00d4, B:53:0x00db, B:69:0x0122, B:70:0x0129, B:78:0x0150, B:79:0x0157, B:81:0x0159, B:82:0x0160, B:22:0x0045, B:25:0x004f, B:31:0x005c, B:34:0x0067, B:35:0x006f, B:37:0x0075, B:39:0x0085, B:41:0x009a, B:45:0x00a7, B:47:0x00ab, B:49:0x00bb, B:51:0x00d0, B:55:0x00dd, B:65:0x011c, B:72:0x012b, B:74:0x0142, B:76:0x0146, B:77:0x0149, B:58:0x00ee, B:60:0x00fc, B:62:0x0104, B:63:0x010f), top: B:89:0x0008, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x012b A[Catch: all -> 0x0057, TRY_ENTER, TryCatch #0 {all -> 0x0057, blocks: (B:22:0x0045, B:25:0x004f, B:31:0x005c, B:34:0x0067, B:35:0x006f, B:37:0x0075, B:39:0x0085, B:41:0x009a, B:45:0x00a7, B:47:0x00ab, B:49:0x00bb, B:51:0x00d0, B:55:0x00dd, B:65:0x011c, B:72:0x012b, B:74:0x0142, B:76:0x0146, B:77:0x0149, B:58:0x00ee, B:60:0x00fc, B:62:0x0104, B:63:0x010f), top: B:86:0x0045, outer: #2 }] */
    public final void zzc(Context context) {
        SharedPreferences sharedPreferencesZza;
        final SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        if (this.zzd) {
            return;
        }
        synchronized (this.zzb) {
            try {
                if (this.zzd) {
                    return;
                }
                if (!this.zza) {
                    this.zza = true;
                }
                this.zzi = TextUtils.equals(context.getPackageName(), "com.google.android.gms");
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.zzg = context;
                try {
                    this.zzf = c.a(context).b(128, this.zzg.getPackageName()).metaData;
                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                }
                try {
                    Context context2 = this.zzg;
                    Context contextA = j.a(context2);
                    if (contextA != null || context2 == null || (contextA = context2.getApplicationContext()) != null) {
                        context2 = contextA;
                    }
                    if (context2 != null) {
                        zzls.zzb();
                        sharedPreferencesZza = zzmc.zza(context2);
                    } else {
                        sharedPreferencesZza = null;
                    }
                    if (sharedPreferencesZza != null) {
                        zzms.zzc(new zzmg(this, sharedPreferencesZza));
                    }
                    if (!this.zzi) {
                        zzml zzmlVar = zzmm.zza;
                        if (((Long) zzmlVar.zzc()).longValue() > 0 && zzlt.zza(this.zzg) >= ((Long) zzmlVar.zzc()).longValue()) {
                            this.zzj = true;
                            this.zzd = true;
                            this.zza = false;
                            this.zzc.open();
                            return;
                        }
                    }
                    if (!this.zzi) {
                        zzml zzmlVar2 = zzmm.zzb;
                        if (((Long) zzmlVar2.zzc()).longValue() > 0 && zzlt.zzb(this.zzg) >= ((Long) zzmlVar2.zzc()).longValue()) {
                            this.zzj = true;
                            this.zzd = true;
                            this.zza = false;
                            this.zzc.open();
                            return;
                        }
                    }
                    Context context3 = this.zzg;
                    if (!((Boolean) zzmn.zzb.zzc()).booleanValue()) {
                        if (((Boolean) zzmn.zzc.zzc()).booleanValue() && (sharedPreferences = context3.getSharedPreferences("admob", 0)) != null) {
                            try {
                                if (new JSONObject((String) zzmk.zza(new zzqn() { // from class: com.google.ads.interactivemedia.v3.internal.zzmd
                                    @Override // com.google.ads.interactivemedia.v3.internal.zzqn
                                    public final Object zza() {
                                        return sharedPreferences.getString("app_settings_json", "{}");
                                    }
                                })).optBoolean("local_flags_enabled")) {
                                }
                            } catch (JSONException unused2) {
                            }
                        }
                        if (context2 == null) {
                            this.zza = false;
                            this.zzc.open();
                            return;
                        }
                        zzls.zzb();
                        this.zze = zzmc.zza(context2);
                        if (!((Boolean) zzmn.zza.zzc()).booleanValue() && (sharedPreferences2 = this.zze) != null) {
                            sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                        }
                        zze(this.zze);
                        this.zzd = true;
                        this.zza = false;
                        this.zzc.open();
                    }
                    context2 = this.zzg;
                    if (context2 == null) {
                        this.zza = false;
                        this.zzc.open();
                        return;
                    }
                    zzls.zzb();
                    this.zze = zzmc.zza(context2);
                    if (!((Boolean) zzmn.zza.zzc()).booleanValue()) {
                        sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                    }
                    zze(this.zze);
                    this.zzd = true;
                    this.zza = false;
                    this.zzc.open();
                } catch (Throwable th) {
                    this.zza = false;
                    this.zzc.open();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzd() {
        return this.zzi;
    }
}
