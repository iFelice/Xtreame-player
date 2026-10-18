package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Tc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0931Tc extends Cw {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Object f16679l = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Context f16680m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SharedPreferences f16681n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0915Sa f16682o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final p120p3.a f16683p;

    public C0931Tc(Context context, C0915Sa c0915Sa, p120p3.a aVar) {
        this.f16680m = context.getApplicationContext();
        this.f16683p = aVar;
        this.f16682o = c0915Sa;
    }

    public static JSONObject i2(Context context, p120p3.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) AbstractC1915r8.f20679b.l()).booleanValue()) {
                jSONObject.put("package_name", context.getPackageName());
            }
            jSONObject.put("js", aVar.f28196G);
            jSONObject.put("mf", AbstractC1915r8.f20680c.l());
            jSONObject.put("cl", "679313570");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 12451000);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", S3.c.d(context, ModuleDescriptor.MODULE_ID, false));
            jSONObject.put("container_version", 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.Cw
    public final D4.b y() {
        int i8;
        synchronized (this.f16679l) {
            try {
                i8 = 0;
                if (this.f16681n == null) {
                    this.f16681n = this.f16680m.getSharedPreferences("google_ads_flags_meta", 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SharedPreferences sharedPreferences = this.f16681n;
        long j8 = sharedPreferences != null ? sharedPreferences.getLong("js_last_update", 0L) : 0L;
        p083k3.l.f25980A.f25990j.getClass();
        if (System.currentTimeMillis() - j8 < ((Long) AbstractC1915r8.f20681d.l()).longValue()) {
            return Cw.N1(null);
        }
        return Cw.b2(this.f16682o.a(i2(this.f16680m, this.f16683p)), new C0917Sc(this, i8), AbstractC1988se.f20911f);
    }
}
