package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class O7 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Context f15139g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f15133a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConditionVariable f15134b = new ConditionVariable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f15135c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f15136d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SharedPreferences f15137e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bundle f15138f = new Bundle();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public JSONObject f15140h = new JSONObject();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15141i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f15142j = false;

    public final Object a(final K7 k8) {
        if (!this.f15134b.block(5000L)) {
            synchronized (this.f15133a) {
                try {
                    if (!this.f15136d) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (!this.f15135c || this.f15137e == null || this.f15142j) {
            synchronized (this.f15133a) {
                if (this.f15135c && this.f15137e != null && !this.f15142j) {
                }
                return k8.e();
            }
        }
        int i8 = k8.f14303a;
        if (i8 != 2) {
            return (i8 == 1 && this.f15140h.has(k8.f14304b)) ? k8.a(this.f15140h) : Q3.b.C(new Gz() { // from class: com.google.android.gms.internal.ads.M7
                @Override // com.google.android.gms.internal.ads.Gz
                public final Object zza() {
                    SharedPreferences sharedPreferences = this.f14641G.f15137e;
                    J7 j8 = (J7) k8;
                    int i9 = j8.f14125e;
                    String str = j8.f14304b;
                    switch (i9) {
                        case 0:
                            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) j8.e()).booleanValue()));
                        case 1:
                            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) j8.e()).intValue()));
                        case 2:
                            return Long.valueOf(sharedPreferences.getLong(str, ((Long) j8.e()).longValue()));
                        case 3:
                            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) j8.e()).floatValue()));
                        default:
                            return sharedPreferences.getString(str, (String) j8.e());
                    }
                }
            });
        }
        Bundle bundle = this.f15138f;
        if (bundle == null) {
            return k8.e();
        }
        J7 j8 = (J7) k8;
        int i9 = j8.f14125e;
        String str = j8.f14304b;
        switch (i9) {
            case 0:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str)) ? Boolean.valueOf(bundle.getBoolean("com.google.android.gms.ads.flag.".concat(str))) : (Boolean) j8.e();
            case 1:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str)) ? Integer.valueOf(bundle.getInt("com.google.android.gms.ads.flag.".concat(str))) : (Integer) j8.e();
            case 2:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str)) ? Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(str))) : (Long) j8.e();
            case 3:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str)) ? Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(str))) : (Float) j8.e();
            default:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(str)) ? bundle.getString("com.google.android.gms.ads.flag.".concat(str)) : (String) j8.e();
        }
    }

    public final Object b(J7 j8) {
        return (this.f15135c || this.f15136d) ? a(j8) : j8.e();
    }

    public final void c(final SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return;
        }
        try {
            final int i8 = 1;
            this.f15140h = new JSONObject((String) Q3.b.C(new Gz() { // from class: com.google.android.gms.internal.ads.L7
                @Override // com.google.android.gms.internal.ads.Gz
                public final Object zza() {
                    int i9 = i8;
                    SharedPreferences sharedPreferences2 = sharedPreferences;
                    switch (i9) {
                        case 0:
                            return sharedPreferences2.getString("app_settings_json", "{}");
                        default:
                            return sharedPreferences2.getString("flag_configuration", "{}");
                    }
                }
            }));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            c(sharedPreferences);
        }
    }
}
